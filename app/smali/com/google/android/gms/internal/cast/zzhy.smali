.class public abstract Lcom/google/android/gms/internal/cast/zzhy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lj$/util/Map;


# instance fields
.field public transient c:Lcom/google/android/gms/internal/cast/zzhz;

.field public transient f:Lcom/google/android/gms/internal/cast/zzhz;

.field public transient g:Lcom/google/android/gms/internal/cast/zzhr;


# direct methods
.method public static a(Ljava/util/Set;)V
    .locals 18

    .line 1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/a;->A(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/cast/zzhx;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    add-int/2addr v1, v1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    iput-object v1, v2, Lcom/google/android/gms/internal/cast/zzhx;->a:[Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput v1, v2, Lcom/google/android/gms/internal/cast/zzhx;->b:I

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v3, v2, Lcom/google/android/gms/internal/cast/zzhx;->a:[Ljava/lang/Object;

    .line 33
    .line 34
    array-length v4, v3

    .line 35
    add-int/2addr v0, v0

    .line 36
    if-le v0, v4, :cond_1

    .line 37
    .line 38
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/cast/zzhq;->a(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, v2, Lcom/google/android/gms/internal/cast/zzhx;->a:[Ljava/lang/Object;

    .line 47
    .line 48
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x1

    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Ljava/util/Map$Entry;

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget v6, v2, Lcom/google/android/gms/internal/cast/zzhx;->b:I

    .line 74
    .line 75
    add-int/2addr v6, v4

    .line 76
    iget-object v7, v2, Lcom/google/android/gms/internal/cast/zzhx;->a:[Ljava/lang/Object;

    .line 77
    .line 78
    array-length v8, v7

    .line 79
    add-int/2addr v6, v6

    .line 80
    if-le v6, v8, :cond_2

    .line 81
    .line 82
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/cast/zzhq;->a(II)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    iput-object v6, v2, Lcom/google/android/gms/internal/cast/zzhx;->a:[Ljava/lang/Object;

    .line 91
    .line 92
    :cond_2
    if-eqz v5, :cond_4

    .line 93
    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    iget-object v6, v2, Lcom/google/android/gms/internal/cast/zzhx;->a:[Ljava/lang/Object;

    .line 97
    .line 98
    iget v7, v2, Lcom/google/android/gms/internal/cast/zzhx;->b:I

    .line 99
    .line 100
    add-int v8, v7, v7

    .line 101
    .line 102
    aput-object v5, v6, v8

    .line 103
    .line 104
    add-int/2addr v8, v4

    .line 105
    aput-object v3, v6, v8

    .line 106
    .line 107
    add-int/2addr v7, v4

    .line 108
    iput v7, v2, Lcom/google/android/gms/internal/cast/zzhx;->b:I

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    add-int/lit8 v2, v2, 0x1a

    .line 124
    .line 125
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    .line 127
    .line 128
    const-string v2, "null value in entry: "

    .line 129
    .line 130
    const-string v4, "=null"

    .line 131
    .line 132
    invoke-static {v3, v2, v1, v4}, Landroid/support/v4/media/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 141
    .line 142
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v2, "null key in entry: null="

    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_5
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzhx;->c:Lcom/google/android/gms/internal/cast/zzhw;

    .line 157
    .line 158
    if-nez v0, :cond_1c

    .line 159
    .line 160
    iget v0, v2, Lcom/google/android/gms/internal/cast/zzhx;->b:I

    .line 161
    .line 162
    iget-object v3, v2, Lcom/google/android/gms/internal/cast/zzhx;->a:[Ljava/lang/Object;

    .line 163
    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    goto/16 :goto_e

    .line 167
    .line 168
    :cond_6
    if-ne v0, v4, :cond_7

    .line 169
    .line 170
    aget-object v0, v3, v1

    .line 171
    .line 172
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    aget-object v0, v3, v4

    .line 176
    .line 177
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    goto/16 :goto_e

    .line 181
    .line 182
    :cond_7
    array-length v5, v3

    .line 183
    shr-int/2addr v5, v4

    .line 184
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/cast/zzhd;->c(II)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzhz;->p(I)I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    const/4 v6, 0x2

    .line 192
    const/4 v7, 0x0

    .line 193
    if-ne v0, v4, :cond_8

    .line 194
    .line 195
    aget-object v0, v3, v1

    .line 196
    .line 197
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    aget-object v0, v3, v4

    .line 201
    .line 202
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move/from16 v16, v1

    .line 206
    .line 207
    move/from16 p0, v4

    .line 208
    .line 209
    :goto_2
    move/from16 v17, v6

    .line 210
    .line 211
    goto/16 :goto_d

    .line 212
    .line 213
    :cond_8
    add-int/lit8 v8, v5, -0x1

    .line 214
    .line 215
    const/16 v9, 0x80

    .line 216
    .line 217
    const/4 v10, 0x3

    .line 218
    const/4 v11, -0x1

    .line 219
    if-gt v5, v9, :cond_e

    .line 220
    .line 221
    new-array v5, v5, [B

    .line 222
    .line 223
    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 224
    .line 225
    .line 226
    move v9, v1

    .line 227
    move v11, v9

    .line 228
    :goto_3
    if-ge v9, v0, :cond_c

    .line 229
    .line 230
    add-int v12, v11, v11

    .line 231
    .line 232
    add-int v13, v9, v9

    .line 233
    .line 234
    aget-object v14, v3, v13

    .line 235
    .line 236
    invoke-static {v14}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    xor-int/2addr v13, v4

    .line 240
    aget-object v13, v3, v13

    .line 241
    .line 242
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 246
    .line 247
    .line 248
    move-result v15

    .line 249
    invoke-static {v15}, Lcom/google/android/gms/internal/cast/zzho;->a(I)I

    .line 250
    .line 251
    .line 252
    move-result v15

    .line 253
    :goto_4
    and-int/2addr v15, v8

    .line 254
    move/from16 v16, v1

    .line 255
    .line 256
    aget-byte v1, v5, v15

    .line 257
    .line 258
    move/from16 p0, v4

    .line 259
    .line 260
    const/16 v4, 0xff

    .line 261
    .line 262
    and-int/2addr v1, v4

    .line 263
    if-ne v1, v4, :cond_a

    .line 264
    .line 265
    int-to-byte v1, v12

    .line 266
    aput-byte v1, v5, v15

    .line 267
    .line 268
    if-ge v11, v9, :cond_9

    .line 269
    .line 270
    aput-object v14, v3, v12

    .line 271
    .line 272
    xor-int/lit8 v1, v12, 0x1

    .line 273
    .line 274
    aput-object v13, v3, v1

    .line 275
    .line 276
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_a
    aget-object v4, v3, v1

    .line 280
    .line 281
    invoke-virtual {v14, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_b

    .line 286
    .line 287
    xor-int/lit8 v1, v1, 0x1

    .line 288
    .line 289
    new-instance v4, Lcom/google/android/gms/internal/cast/zzhw;

    .line 290
    .line 291
    aget-object v7, v3, v1

    .line 292
    .line 293
    invoke-static {v7}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    invoke-direct {v4, v14, v13, v7}, Lcom/google/android/gms/internal/cast/zzhw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    aput-object v13, v3, v1

    .line 300
    .line 301
    move-object v7, v4

    .line 302
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 303
    .line 304
    move/from16 v4, p0

    .line 305
    .line 306
    move/from16 v1, v16

    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 310
    .line 311
    move/from16 v4, p0

    .line 312
    .line 313
    move/from16 v1, v16

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_c
    move/from16 v16, v1

    .line 317
    .line 318
    move/from16 p0, v4

    .line 319
    .line 320
    if-ne v11, v0, :cond_d

    .line 321
    .line 322
    move-object v7, v5

    .line 323
    goto :goto_2

    .line 324
    :cond_d
    new-array v0, v10, [Ljava/lang/Object;

    .line 325
    .line 326
    aput-object v5, v0, v16

    .line 327
    .line 328
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    aput-object v1, v0, p0

    .line 333
    .line 334
    aput-object v7, v0, v6

    .line 335
    .line 336
    :goto_6
    move-object v7, v0

    .line 337
    goto/16 :goto_2

    .line 338
    .line 339
    :cond_e
    move/from16 v16, v1

    .line 340
    .line 341
    move/from16 p0, v4

    .line 342
    .line 343
    const v1, 0x8000

    .line 344
    .line 345
    .line 346
    if-gt v5, v1, :cond_14

    .line 347
    .line 348
    new-array v1, v5, [S

    .line 349
    .line 350
    invoke-static {v1, v11}, Ljava/util/Arrays;->fill([SS)V

    .line 351
    .line 352
    .line 353
    move/from16 v4, v16

    .line 354
    .line 355
    move v5, v4

    .line 356
    :goto_7
    if-ge v4, v0, :cond_12

    .line 357
    .line 358
    add-int v9, v5, v5

    .line 359
    .line 360
    add-int v11, v4, v4

    .line 361
    .line 362
    aget-object v12, v3, v11

    .line 363
    .line 364
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    xor-int/lit8 v11, v11, 0x1

    .line 368
    .line 369
    aget-object v11, v3, v11

    .line 370
    .line 371
    invoke-static {v11}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 375
    .line 376
    .line 377
    move-result v13

    .line 378
    invoke-static {v13}, Lcom/google/android/gms/internal/cast/zzho;->a(I)I

    .line 379
    .line 380
    .line 381
    move-result v13

    .line 382
    :goto_8
    and-int/2addr v13, v8

    .line 383
    aget-short v14, v1, v13

    .line 384
    .line 385
    int-to-char v14, v14

    .line 386
    const v15, 0xffff

    .line 387
    .line 388
    .line 389
    if-ne v14, v15, :cond_10

    .line 390
    .line 391
    int-to-short v14, v9

    .line 392
    aput-short v14, v1, v13

    .line 393
    .line 394
    if-ge v5, v4, :cond_f

    .line 395
    .line 396
    aput-object v12, v3, v9

    .line 397
    .line 398
    xor-int/lit8 v9, v9, 0x1

    .line 399
    .line 400
    aput-object v11, v3, v9

    .line 401
    .line 402
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 403
    .line 404
    goto :goto_9

    .line 405
    :cond_10
    aget-object v15, v3, v14

    .line 406
    .line 407
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v15

    .line 411
    if-eqz v15, :cond_11

    .line 412
    .line 413
    xor-int/lit8 v7, v14, 0x1

    .line 414
    .line 415
    new-instance v9, Lcom/google/android/gms/internal/cast/zzhw;

    .line 416
    .line 417
    aget-object v13, v3, v7

    .line 418
    .line 419
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    invoke-direct {v9, v12, v11, v13}, Lcom/google/android/gms/internal/cast/zzhw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    aput-object v11, v3, v7

    .line 426
    .line 427
    move-object v7, v9

    .line 428
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 429
    .line 430
    goto :goto_7

    .line 431
    :cond_11
    add-int/lit8 v13, v13, 0x1

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_12
    if-ne v5, v0, :cond_13

    .line 435
    .line 436
    move-object v7, v1

    .line 437
    goto/16 :goto_2

    .line 438
    .line 439
    :cond_13
    new-array v0, v10, [Ljava/lang/Object;

    .line 440
    .line 441
    aput-object v1, v0, v16

    .line 442
    .line 443
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    aput-object v1, v0, p0

    .line 448
    .line 449
    aput-object v7, v0, v6

    .line 450
    .line 451
    goto :goto_6

    .line 452
    :cond_14
    new-array v1, v5, [I

    .line 453
    .line 454
    invoke-static {v1, v11}, Ljava/util/Arrays;->fill([II)V

    .line 455
    .line 456
    .line 457
    move/from16 v4, v16

    .line 458
    .line 459
    move v5, v4

    .line 460
    :goto_a
    if-ge v4, v0, :cond_18

    .line 461
    .line 462
    add-int v9, v5, v5

    .line 463
    .line 464
    add-int v12, v4, v4

    .line 465
    .line 466
    aget-object v13, v3, v12

    .line 467
    .line 468
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    xor-int/lit8 v12, v12, 0x1

    .line 472
    .line 473
    aget-object v12, v3, v12

    .line 474
    .line 475
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 479
    .line 480
    .line 481
    move-result v14

    .line 482
    invoke-static {v14}, Lcom/google/android/gms/internal/cast/zzho;->a(I)I

    .line 483
    .line 484
    .line 485
    move-result v14

    .line 486
    :goto_b
    and-int/2addr v14, v8

    .line 487
    aget v15, v1, v14

    .line 488
    .line 489
    if-ne v15, v11, :cond_16

    .line 490
    .line 491
    aput v9, v1, v14

    .line 492
    .line 493
    if-ge v5, v4, :cond_15

    .line 494
    .line 495
    aput-object v13, v3, v9

    .line 496
    .line 497
    xor-int/lit8 v9, v9, 0x1

    .line 498
    .line 499
    aput-object v12, v3, v9

    .line 500
    .line 501
    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 502
    .line 503
    move/from16 v17, v6

    .line 504
    .line 505
    goto :goto_c

    .line 506
    :cond_16
    move/from16 v17, v6

    .line 507
    .line 508
    aget-object v6, v3, v15

    .line 509
    .line 510
    invoke-virtual {v13, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v6

    .line 514
    if-eqz v6, :cond_17

    .line 515
    .line 516
    xor-int/lit8 v6, v15, 0x1

    .line 517
    .line 518
    new-instance v7, Lcom/google/android/gms/internal/cast/zzhw;

    .line 519
    .line 520
    aget-object v9, v3, v6

    .line 521
    .line 522
    invoke-static {v9}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    invoke-direct {v7, v13, v12, v9}, Lcom/google/android/gms/internal/cast/zzhw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    aput-object v12, v3, v6

    .line 529
    .line 530
    :goto_c
    add-int/lit8 v4, v4, 0x1

    .line 531
    .line 532
    move/from16 v6, v17

    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_17
    add-int/lit8 v14, v14, 0x1

    .line 536
    .line 537
    move/from16 v6, v17

    .line 538
    .line 539
    goto :goto_b

    .line 540
    :cond_18
    move/from16 v17, v6

    .line 541
    .line 542
    if-ne v5, v0, :cond_19

    .line 543
    .line 544
    move-object v7, v1

    .line 545
    goto :goto_d

    .line 546
    :cond_19
    new-array v0, v10, [Ljava/lang/Object;

    .line 547
    .line 548
    aput-object v1, v0, v16

    .line 549
    .line 550
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    aput-object v1, v0, p0

    .line 555
    .line 556
    aput-object v7, v0, v17

    .line 557
    .line 558
    move-object v7, v0

    .line 559
    :goto_d
    nop

    .line 560
    instance-of v0, v7, [Ljava/lang/Object;

    .line 561
    .line 562
    if-eqz v0, :cond_1a

    .line 563
    .line 564
    check-cast v7, [Ljava/lang/Object;

    .line 565
    .line 566
    aget-object v0, v7, v17

    .line 567
    .line 568
    check-cast v0, Lcom/google/android/gms/internal/cast/zzhw;

    .line 569
    .line 570
    iput-object v0, v2, Lcom/google/android/gms/internal/cast/zzhx;->c:Lcom/google/android/gms/internal/cast/zzhw;

    .line 571
    .line 572
    aget-object v0, v7, v16

    .line 573
    .line 574
    aget-object v0, v7, p0

    .line 575
    .line 576
    check-cast v0, Ljava/lang/Integer;

    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    add-int/2addr v0, v0

    .line 583
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    :cond_1a
    :goto_e
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/zzhx;->c:Lcom/google/android/gms/internal/cast/zzhw;

    .line 587
    .line 588
    if-nez v0, :cond_1b

    .line 589
    .line 590
    return-void

    .line 591
    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzhw;->a()Ljava/lang/IllegalArgumentException;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    throw v0

    .line 596
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzhw;->a()Ljava/lang/IllegalArgumentException;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    throw v0
.end method


# virtual methods
.method public abstract b()Lcom/google/android/gms/internal/cast/zzhz;
.end method

.method public abstract c()Lcom/google/android/gms/internal/cast/zzhz;
.end method

.method public final clear()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$computeIfPresent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzhy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->g:Lcom/google/android/gms/internal/cast/zzhr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzhy;->d()Lcom/google/android/gms/internal/cast/zzhr;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->g:Lcom/google/android/gms/internal/cast/zzhr;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzhr;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public abstract d()Lcom/google/android/gms/internal/cast/zzhr;
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->c:Lcom/google/android/gms/internal/cast/zzhz;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzhy;->b()Lcom/google/android/gms/internal/cast/zzhz;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->c:Lcom/google/android/gms/internal/cast/zzhz;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzhy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->c:Lcom/google/android/gms/internal/cast/zzhz;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzhy;->b()Lcom/google/android/gms/internal/cast/zzhz;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->c:Lcom/google/android/gms/internal/cast/zzhz;

    .line 10
    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v3, v1

    .line 35
    :goto_1
    add-int/2addr v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v2
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->f:Lcom/google/android/gms/internal/cast/zzhz;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzhy;->c()Lcom/google/android/gms/internal/cast/zzhz;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->f:Lcom/google/android/gms/internal/cast/zzhz;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lj$/util/Map$-CC;->$default$merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$remove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lj$/util/Map$-CC;->$default$replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    const-wide/16 v2, 0x8

    .line 9
    .line 10
    mul-long/2addr v0, v2

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-wide/32 v3, 0x40000000

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    long-to-int v0, v0

    .line 21
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x7b

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/util/Map$Entry;

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    const-string v1, ", "

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 v1, 0x3d

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    const/16 v0, 0x7d

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    add-int/lit8 v2, v2, 0x21

    .line 101
    .line 102
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .line 104
    .line 105
    const-string v2, "size cannot be negative but was: "

    .line 106
    .line 107
    invoke-static {v0, v2, v3}, Landroidx/work/impl/workers/a;->r(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v1
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->g:Lcom/google/android/gms/internal/cast/zzhr;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzhy;->d()Lcom/google/android/gms/internal/cast/zzhr;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzhy;->g:Lcom/google/android/gms/internal/cast/zzhr;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method
