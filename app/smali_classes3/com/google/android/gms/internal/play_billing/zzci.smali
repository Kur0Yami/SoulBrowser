.class final Lcom/google/android/gms/internal/play_billing/zzci;
.super Lcom/google/android/gms/internal/play_billing/zzbz;
.source "SourceFile"


# static fields
.field public static final k:Lcom/google/android/gms/internal/play_billing/zzbz;


# instance fields
.field public final transient h:Ljava/lang/Object;

.field public final transient i:[Ljava/lang/Object;

.field public final transient j:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzci;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzci;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzci;->k:Lcom/google/android/gms/internal/play_billing/zzbz;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzci;->h:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzci;->i:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzci;->j:I

    .line 9
    .line 10
    return-void
.end method

.method public static e(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzby;)Lcom/google/android/gms/internal/play_billing/zzci;
    .locals 19

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzci;->k:Lcom/google/android/gms/internal/play_billing/zzbz;

    .line 10
    .line 11
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzci;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v0, v5, :cond_1

    .line 18
    .line 19
    aget-object v0, v1, v4

    .line 20
    .line 21
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    aget-object v0, v1, v5

    .line 25
    .line 26
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzci;

    .line 30
    .line 31
    invoke-direct {v0, v3, v1, v5}, Lcom/google/android/gms/internal/play_billing/zzci;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_1
    array-length v6, v1

    .line 36
    shr-int/2addr v6, v5

    .line 37
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/zzbj;->b(II)V

    .line 38
    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const v8, 0x2ccccccc

    .line 46
    .line 47
    .line 48
    if-ge v7, v8, :cond_2

    .line 49
    .line 50
    add-int/lit8 v8, v7, -0x1

    .line 51
    .line 52
    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    :goto_0
    add-int/2addr v8, v8

    .line 57
    int-to-double v9, v8

    .line 58
    const-wide v11, 0x3fe6666666666666L    # 0.7

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    mul-double/2addr v9, v11

    .line 64
    int-to-double v11, v7

    .line 65
    cmpg-double v9, v9, v11

    .line 66
    .line 67
    if-gez v9, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/high16 v8, 0x40000000    # 2.0f

    .line 71
    .line 72
    if-ge v7, v8, :cond_18

    .line 73
    .line 74
    :cond_3
    if-ne v0, v5, :cond_4

    .line 75
    .line 76
    aget-object v0, v1, v4

    .line 77
    .line 78
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    aget-object v0, v1, v5

    .line 82
    .line 83
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move/from16 v16, v4

    .line 87
    .line 88
    move v0, v5

    .line 89
    move/from16 v17, v0

    .line 90
    .line 91
    :goto_1
    move/from16 v18, v6

    .line 92
    .line 93
    goto/16 :goto_c

    .line 94
    .line 95
    :cond_4
    add-int/lit8 v7, v8, -0x1

    .line 96
    .line 97
    const/16 v9, 0x80

    .line 98
    .line 99
    const/4 v10, 0x3

    .line 100
    const/4 v11, -0x1

    .line 101
    if-gt v8, v9, :cond_a

    .line 102
    .line 103
    new-array v8, v8, [B

    .line 104
    .line 105
    invoke-static {v8, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 106
    .line 107
    .line 108
    move v9, v4

    .line 109
    move v11, v9

    .line 110
    :goto_2
    if-ge v9, v0, :cond_8

    .line 111
    .line 112
    add-int v12, v11, v11

    .line 113
    .line 114
    add-int v13, v9, v9

    .line 115
    .line 116
    aget-object v14, v1, v13

    .line 117
    .line 118
    invoke-static {v14}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    xor-int/2addr v13, v5

    .line 122
    aget-object v13, v1, v13

    .line 123
    .line 124
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/zzbs;->a(I)I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    :goto_3
    and-int/2addr v15, v7

    .line 136
    move/from16 v16, v4

    .line 137
    .line 138
    aget-byte v4, v8, v15

    .line 139
    .line 140
    move/from16 v17, v5

    .line 141
    .line 142
    const/16 v5, 0xff

    .line 143
    .line 144
    and-int/2addr v4, v5

    .line 145
    if-ne v4, v5, :cond_6

    .line 146
    .line 147
    int-to-byte v4, v12

    .line 148
    aput-byte v4, v8, v15

    .line 149
    .line 150
    if-ge v11, v9, :cond_5

    .line 151
    .line 152
    aput-object v14, v1, v12

    .line 153
    .line 154
    xor-int/lit8 v4, v12, 0x1

    .line 155
    .line 156
    aput-object v13, v1, v4

    .line 157
    .line 158
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    aget-object v5, v1, v4

    .line 162
    .line 163
    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    if-eqz v5, :cond_7

    .line 168
    .line 169
    xor-int/lit8 v3, v4, 0x1

    .line 170
    .line 171
    new-instance v4, Lcom/google/android/gms/internal/play_billing/zzbx;

    .line 172
    .line 173
    aget-object v5, v1, v3

    .line 174
    .line 175
    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-direct {v4, v14, v13, v5}, Lcom/google/android/gms/internal/play_billing/zzbx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    aput-object v13, v1, v3

    .line 182
    .line 183
    move-object v3, v4

    .line 184
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 185
    .line 186
    move/from16 v4, v16

    .line 187
    .line 188
    move/from16 v5, v17

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 192
    .line 193
    move/from16 v4, v16

    .line 194
    .line 195
    move/from16 v5, v17

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_8
    move/from16 v16, v4

    .line 199
    .line 200
    move/from16 v17, v5

    .line 201
    .line 202
    if-ne v11, v0, :cond_9

    .line 203
    .line 204
    move/from16 v18, v6

    .line 205
    .line 206
    move-object v3, v8

    .line 207
    goto/16 :goto_c

    .line 208
    .line 209
    :cond_9
    new-array v4, v10, [Ljava/lang/Object;

    .line 210
    .line 211
    aput-object v8, v4, v16

    .line 212
    .line 213
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    aput-object v5, v4, v17

    .line 218
    .line 219
    aput-object v3, v4, v6

    .line 220
    .line 221
    :goto_5
    move-object v3, v4

    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :cond_a
    move/from16 v16, v4

    .line 225
    .line 226
    move/from16 v17, v5

    .line 227
    .line 228
    const v4, 0x8000

    .line 229
    .line 230
    .line 231
    if-gt v8, v4, :cond_10

    .line 232
    .line 233
    new-array v4, v8, [S

    .line 234
    .line 235
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([SS)V

    .line 236
    .line 237
    .line 238
    move/from16 v5, v16

    .line 239
    .line 240
    move v8, v5

    .line 241
    :goto_6
    if-ge v5, v0, :cond_e

    .line 242
    .line 243
    add-int v9, v8, v8

    .line 244
    .line 245
    add-int v11, v5, v5

    .line 246
    .line 247
    aget-object v12, v1, v11

    .line 248
    .line 249
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    xor-int/lit8 v11, v11, 0x1

    .line 253
    .line 254
    aget-object v11, v1, v11

    .line 255
    .line 256
    invoke-static {v11}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    .line 260
    .line 261
    .line 262
    move-result v13

    .line 263
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/zzbs;->a(I)I

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    :goto_7
    and-int/2addr v13, v7

    .line 268
    aget-short v14, v4, v13

    .line 269
    .line 270
    int-to-char v14, v14

    .line 271
    const v15, 0xffff

    .line 272
    .line 273
    .line 274
    if-ne v14, v15, :cond_c

    .line 275
    .line 276
    int-to-short v14, v9

    .line 277
    aput-short v14, v4, v13

    .line 278
    .line 279
    if-ge v8, v5, :cond_b

    .line 280
    .line 281
    aput-object v12, v1, v9

    .line 282
    .line 283
    xor-int/lit8 v9, v9, 0x1

    .line 284
    .line 285
    aput-object v11, v1, v9

    .line 286
    .line 287
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_c
    aget-object v15, v1, v14

    .line 291
    .line 292
    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v15

    .line 296
    if-eqz v15, :cond_d

    .line 297
    .line 298
    xor-int/lit8 v3, v14, 0x1

    .line 299
    .line 300
    new-instance v9, Lcom/google/android/gms/internal/play_billing/zzbx;

    .line 301
    .line 302
    aget-object v13, v1, v3

    .line 303
    .line 304
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    invoke-direct {v9, v12, v11, v13}, Lcom/google/android/gms/internal/play_billing/zzbx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    aput-object v11, v1, v3

    .line 311
    .line 312
    move-object v3, v9

    .line 313
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 314
    .line 315
    goto :goto_6

    .line 316
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_e
    if-ne v8, v0, :cond_f

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_f
    new-array v5, v10, [Ljava/lang/Object;

    .line 323
    .line 324
    aput-object v4, v5, v16

    .line 325
    .line 326
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    aput-object v4, v5, v17

    .line 331
    .line 332
    aput-object v3, v5, v6

    .line 333
    .line 334
    move-object v3, v5

    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :cond_10
    new-array v4, v8, [I

    .line 338
    .line 339
    invoke-static {v4, v11}, Ljava/util/Arrays;->fill([II)V

    .line 340
    .line 341
    .line 342
    move/from16 v5, v16

    .line 343
    .line 344
    move v8, v5

    .line 345
    :goto_9
    if-ge v5, v0, :cond_14

    .line 346
    .line 347
    add-int v9, v8, v8

    .line 348
    .line 349
    add-int v12, v5, v5

    .line 350
    .line 351
    aget-object v13, v1, v12

    .line 352
    .line 353
    invoke-static {v13}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    xor-int/lit8 v12, v12, 0x1

    .line 357
    .line 358
    aget-object v12, v1, v12

    .line 359
    .line 360
    invoke-static {v12}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 364
    .line 365
    .line 366
    move-result v14

    .line 367
    invoke-static {v14}, Lcom/google/android/gms/internal/play_billing/zzbs;->a(I)I

    .line 368
    .line 369
    .line 370
    move-result v14

    .line 371
    :goto_a
    and-int/2addr v14, v7

    .line 372
    aget v15, v4, v14

    .line 373
    .line 374
    if-ne v15, v11, :cond_12

    .line 375
    .line 376
    aput v9, v4, v14

    .line 377
    .line 378
    if-ge v8, v5, :cond_11

    .line 379
    .line 380
    aput-object v13, v1, v9

    .line 381
    .line 382
    xor-int/lit8 v9, v9, 0x1

    .line 383
    .line 384
    aput-object v12, v1, v9

    .line 385
    .line 386
    :cond_11
    add-int/lit8 v8, v8, 0x1

    .line 387
    .line 388
    move/from16 v18, v6

    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_12
    move/from16 v18, v6

    .line 392
    .line 393
    aget-object v6, v1, v15

    .line 394
    .line 395
    invoke-virtual {v13, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    if-eqz v6, :cond_13

    .line 400
    .line 401
    xor-int/lit8 v3, v15, 0x1

    .line 402
    .line 403
    new-instance v6, Lcom/google/android/gms/internal/play_billing/zzbx;

    .line 404
    .line 405
    aget-object v9, v1, v3

    .line 406
    .line 407
    invoke-static {v9}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    invoke-direct {v6, v13, v12, v9}, Lcom/google/android/gms/internal/play_billing/zzbx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    aput-object v12, v1, v3

    .line 414
    .line 415
    move-object v3, v6

    .line 416
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 417
    .line 418
    move/from16 v6, v18

    .line 419
    .line 420
    goto :goto_9

    .line 421
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 422
    .line 423
    move/from16 v6, v18

    .line 424
    .line 425
    goto :goto_a

    .line 426
    :cond_14
    move/from16 v18, v6

    .line 427
    .line 428
    if-ne v8, v0, :cond_15

    .line 429
    .line 430
    move-object v3, v4

    .line 431
    goto :goto_c

    .line 432
    :cond_15
    new-array v5, v10, [Ljava/lang/Object;

    .line 433
    .line 434
    aput-object v4, v5, v16

    .line 435
    .line 436
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    aput-object v4, v5, v17

    .line 441
    .line 442
    aput-object v3, v5, v18

    .line 443
    .line 444
    move-object v3, v5

    .line 445
    :goto_c
    instance-of v4, v3, [Ljava/lang/Object;

    .line 446
    .line 447
    if-eqz v4, :cond_17

    .line 448
    .line 449
    check-cast v3, [Ljava/lang/Object;

    .line 450
    .line 451
    aget-object v0, v3, v18

    .line 452
    .line 453
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzbx;

    .line 454
    .line 455
    if-eqz v2, :cond_16

    .line 456
    .line 457
    iput-object v0, v2, Lcom/google/android/gms/internal/play_billing/zzby;->c:Lcom/google/android/gms/internal/play_billing/zzbx;

    .line 458
    .line 459
    aget-object v0, v3, v16

    .line 460
    .line 461
    aget-object v2, v3, v17

    .line 462
    .line 463
    check-cast v2, Ljava/lang/Integer;

    .line 464
    .line 465
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    add-int v3, v2, v2

    .line 470
    .line 471
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    move-object v3, v0

    .line 476
    move v0, v2

    .line 477
    goto :goto_d

    .line 478
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbx;->a()Ljava/lang/IllegalArgumentException;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    throw v0

    .line 483
    :cond_17
    :goto_d
    new-instance v2, Lcom/google/android/gms/internal/play_billing/zzci;

    .line 484
    .line 485
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzci;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 486
    .line 487
    .line 488
    return-object v2

    .line 489
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 490
    .line 491
    const-string v1, "collection too large"

    .line 492
    .line 493
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/play_billing/zzbt;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzch;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzci;->i:[Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/zzci;->j:I

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzch;-><init>([Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/play_billing/zzca;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzcf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzci;->i:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzci;->j:I

    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>(Lcom/google/android/gms/internal/play_billing/zzbz;[Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/play_billing/zzca;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzch;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzci;->i:[Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p0, Lcom/google/android/gms/internal/play_billing/zzci;->j:I

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/play_billing/zzch;-><init>([Ljava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzcg;

    .line 12
    .line 13
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/play_billing/zzcg;-><init>(Lcom/google/android/gms/internal/play_billing/zzbz;Lcom/google/android/gms/internal/play_billing/zzbw;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    :cond_0
    :goto_0
    move-object p1, v0

    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_1
    const/4 v1, 0x1

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/play_billing/zzci;->j:I

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/play_billing/zzci;->i:[Ljava/lang/Object;

    .line 11
    .line 12
    if-ne v2, v1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aget-object v2, v3, v2

    .line 16
    .line 17
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    aget-object p1, v3, v1

    .line 27
    .line 28
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/zzci;->h:Ljava/lang/Object;

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    instance-of v4, v2, [B

    .line 39
    .line 40
    const/4 v5, -0x1

    .line 41
    if-eqz v4, :cond_6

    .line 42
    .line 43
    move-object v4, v2

    .line 44
    check-cast v4, [B

    .line 45
    .line 46
    array-length v2, v4

    .line 47
    add-int/lit8 v6, v2, -0x1

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzbs;->a(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    :goto_1
    and-int/2addr v2, v6

    .line 58
    aget-byte v5, v4, v2

    .line 59
    .line 60
    const/16 v7, 0xff

    .line 61
    .line 62
    and-int/2addr v5, v7

    .line 63
    if-ne v5, v7, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    aget-object v7, v3, v5

    .line 67
    .line 68
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    xor-int/lit8 p1, v5, 0x1

    .line 75
    .line 76
    aget-object p1, v3, p1

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    instance-of v4, v2, [S

    .line 83
    .line 84
    if-eqz v4, :cond_9

    .line 85
    .line 86
    move-object v4, v2

    .line 87
    check-cast v4, [S

    .line 88
    .line 89
    array-length v2, v4

    .line 90
    add-int/lit8 v6, v2, -0x1

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/zzbs;->a(I)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :goto_2
    and-int/2addr v2, v6

    .line 101
    aget-short v5, v4, v2

    .line 102
    .line 103
    int-to-char v5, v5

    .line 104
    const v7, 0xffff

    .line 105
    .line 106
    .line 107
    if-ne v5, v7, :cond_7

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_7
    aget-object v7, v3, v5

    .line 111
    .line 112
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-eqz v7, :cond_8

    .line 117
    .line 118
    xor-int/lit8 p1, v5, 0x1

    .line 119
    .line 120
    aget-object p1, v3, p1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_9
    check-cast v2, [I

    .line 127
    .line 128
    array-length v4, v2

    .line 129
    add-int/2addr v4, v5

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/zzbs;->a(I)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    :goto_3
    and-int/2addr v6, v4

    .line 139
    aget v7, v2, v6

    .line 140
    .line 141
    if-ne v7, v5, :cond_a

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_a
    aget-object v8, v3, v7

    .line 146
    .line 147
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_c

    .line 152
    .line 153
    xor-int/lit8 p1, v7, 0x1

    .line 154
    .line 155
    aget-object p1, v3, p1

    .line 156
    .line 157
    :goto_4
    if-nez p1, :cond_b

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_b
    return-object p1

    .line 161
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_3
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzci;->j:I

    return v0
.end method
