.class public Lorg/apache/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1a

    .line 6
    .line 7
    :cond_0
    if-ne p1, p2, :cond_1

    .line 8
    .line 9
    goto/16 :goto_1a

    .line 10
    .line 11
    :cond_1
    const/4 v0, -0x1

    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_2
    const/4 v1, 0x1

    .line 18
    if-nez p2, :cond_3

    .line 19
    .line 20
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3b

    .line 32
    .line 33
    instance-of v2, p1, [J

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    if-eqz v2, :cond_9

    .line 37
    .line 38
    check-cast p1, [J

    .line 39
    .line 40
    check-cast p2, [J

    .line 41
    .line 42
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    goto/16 :goto_1a

    .line 47
    .line 48
    :cond_4
    if-ne p1, p2, :cond_5

    .line 49
    .line 50
    goto/16 :goto_1a

    .line 51
    .line 52
    :cond_5
    array-length v2, p1

    .line 53
    array-length v4, p2

    .line 54
    if-eq v2, v4, :cond_7

    .line 55
    .line 56
    array-length p1, p1

    .line 57
    array-length p2, p2

    .line 58
    if-ge p1, p2, :cond_6

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_6
    move v0, v1

    .line 62
    :goto_0
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 63
    .line 64
    return-void

    .line 65
    :cond_7
    :goto_1
    array-length v0, p1

    .line 66
    if-ge v3, v0, :cond_3a

    .line 67
    .line 68
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 69
    .line 70
    if-nez v0, :cond_3a

    .line 71
    .line 72
    aget-wide v1, p1, v3

    .line 73
    .line 74
    aget-wide v4, p2, v3

    .line 75
    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_8
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 84
    .line 85
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_9
    instance-of v2, p1, [I

    .line 89
    .line 90
    if-eqz v2, :cond_f

    .line 91
    .line 92
    check-cast p1, [I

    .line 93
    .line 94
    check-cast p2, [I

    .line 95
    .line 96
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 97
    .line 98
    if-eqz v2, :cond_a

    .line 99
    .line 100
    goto/16 :goto_1a

    .line 101
    .line 102
    :cond_a
    if-ne p1, p2, :cond_b

    .line 103
    .line 104
    goto/16 :goto_1a

    .line 105
    .line 106
    :cond_b
    array-length v2, p1

    .line 107
    array-length v4, p2

    .line 108
    if-eq v2, v4, :cond_d

    .line 109
    .line 110
    array-length p1, p1

    .line 111
    array-length p2, p2

    .line 112
    if-ge p1, p2, :cond_c

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_c
    move v0, v1

    .line 116
    :goto_3
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 117
    .line 118
    return-void

    .line 119
    :cond_d
    :goto_4
    array-length v0, p1

    .line 120
    if-ge v3, v0, :cond_3a

    .line 121
    .line 122
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 123
    .line 124
    if-nez v0, :cond_3a

    .line 125
    .line 126
    aget v1, p1, v3

    .line 127
    .line 128
    aget v2, p2, v3

    .line 129
    .line 130
    if-eqz v0, :cond_e

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 138
    .line 139
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_f
    instance-of v2, p1, [S

    .line 143
    .line 144
    if-eqz v2, :cond_15

    .line 145
    .line 146
    check-cast p1, [S

    .line 147
    .line 148
    check-cast p2, [S

    .line 149
    .line 150
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 151
    .line 152
    if-eqz v2, :cond_10

    .line 153
    .line 154
    goto/16 :goto_1a

    .line 155
    .line 156
    :cond_10
    if-ne p1, p2, :cond_11

    .line 157
    .line 158
    goto/16 :goto_1a

    .line 159
    .line 160
    :cond_11
    array-length v2, p1

    .line 161
    array-length v4, p2

    .line 162
    if-eq v2, v4, :cond_13

    .line 163
    .line 164
    array-length p1, p1

    .line 165
    array-length p2, p2

    .line 166
    if-ge p1, p2, :cond_12

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_12
    move v0, v1

    .line 170
    :goto_6
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 171
    .line 172
    return-void

    .line 173
    :cond_13
    :goto_7
    array-length v0, p1

    .line 174
    if-ge v3, v0, :cond_3a

    .line 175
    .line 176
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 177
    .line 178
    if-nez v0, :cond_3a

    .line 179
    .line 180
    aget-short v1, p1, v3

    .line 181
    .line 182
    aget-short v2, p2, v3

    .line 183
    .line 184
    if-eqz v0, :cond_14

    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_14
    invoke-static {v1, v2}, Ljava/lang/Short;->compare(SS)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 192
    .line 193
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_15
    instance-of v2, p1, [C

    .line 197
    .line 198
    if-eqz v2, :cond_1b

    .line 199
    .line 200
    check-cast p1, [C

    .line 201
    .line 202
    check-cast p2, [C

    .line 203
    .line 204
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 205
    .line 206
    if-eqz v2, :cond_16

    .line 207
    .line 208
    goto/16 :goto_1a

    .line 209
    .line 210
    :cond_16
    if-ne p1, p2, :cond_17

    .line 211
    .line 212
    goto/16 :goto_1a

    .line 213
    .line 214
    :cond_17
    array-length v2, p1

    .line 215
    array-length v4, p2

    .line 216
    if-eq v2, v4, :cond_19

    .line 217
    .line 218
    array-length p1, p1

    .line 219
    array-length p2, p2

    .line 220
    if-ge p1, p2, :cond_18

    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_18
    move v0, v1

    .line 224
    :goto_9
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 225
    .line 226
    return-void

    .line 227
    :cond_19
    :goto_a
    array-length v0, p1

    .line 228
    if-ge v3, v0, :cond_3a

    .line 229
    .line 230
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 231
    .line 232
    if-nez v0, :cond_3a

    .line 233
    .line 234
    aget-char v1, p1, v3

    .line 235
    .line 236
    aget-char v2, p2, v3

    .line 237
    .line 238
    if-eqz v0, :cond_1a

    .line 239
    .line 240
    goto :goto_b

    .line 241
    :cond_1a
    invoke-static {v1, v2}, Ljava/lang/Character;->compare(CC)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 246
    .line 247
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 248
    .line 249
    goto :goto_a

    .line 250
    :cond_1b
    instance-of v2, p1, [B

    .line 251
    .line 252
    if-eqz v2, :cond_21

    .line 253
    .line 254
    check-cast p1, [B

    .line 255
    .line 256
    check-cast p2, [B

    .line 257
    .line 258
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 259
    .line 260
    if-eqz v2, :cond_1c

    .line 261
    .line 262
    goto/16 :goto_1a

    .line 263
    .line 264
    :cond_1c
    if-ne p1, p2, :cond_1d

    .line 265
    .line 266
    goto/16 :goto_1a

    .line 267
    .line 268
    :cond_1d
    array-length v2, p1

    .line 269
    array-length v4, p2

    .line 270
    if-eq v2, v4, :cond_1f

    .line 271
    .line 272
    array-length p1, p1

    .line 273
    array-length p2, p2

    .line 274
    if-ge p1, p2, :cond_1e

    .line 275
    .line 276
    goto :goto_c

    .line 277
    :cond_1e
    move v0, v1

    .line 278
    :goto_c
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 279
    .line 280
    return-void

    .line 281
    :cond_1f
    :goto_d
    array-length v0, p1

    .line 282
    if-ge v3, v0, :cond_3a

    .line 283
    .line 284
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 285
    .line 286
    if-nez v0, :cond_3a

    .line 287
    .line 288
    aget-byte v1, p1, v3

    .line 289
    .line 290
    aget-byte v2, p2, v3

    .line 291
    .line 292
    if-eqz v0, :cond_20

    .line 293
    .line 294
    goto :goto_e

    .line 295
    :cond_20
    invoke-static {v1, v2}, Ljava/lang/Byte;->compare(BB)I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 300
    .line 301
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 302
    .line 303
    goto :goto_d

    .line 304
    :cond_21
    instance-of v2, p1, [D

    .line 305
    .line 306
    if-eqz v2, :cond_27

    .line 307
    .line 308
    check-cast p1, [D

    .line 309
    .line 310
    check-cast p2, [D

    .line 311
    .line 312
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 313
    .line 314
    if-eqz v2, :cond_22

    .line 315
    .line 316
    goto/16 :goto_1a

    .line 317
    .line 318
    :cond_22
    if-ne p1, p2, :cond_23

    .line 319
    .line 320
    goto/16 :goto_1a

    .line 321
    .line 322
    :cond_23
    array-length v2, p1

    .line 323
    array-length v4, p2

    .line 324
    if-eq v2, v4, :cond_25

    .line 325
    .line 326
    array-length p1, p1

    .line 327
    array-length p2, p2

    .line 328
    if-ge p1, p2, :cond_24

    .line 329
    .line 330
    goto :goto_f

    .line 331
    :cond_24
    move v0, v1

    .line 332
    :goto_f
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 333
    .line 334
    return-void

    .line 335
    :cond_25
    :goto_10
    array-length v0, p1

    .line 336
    if-ge v3, v0, :cond_3a

    .line 337
    .line 338
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 339
    .line 340
    if-nez v0, :cond_3a

    .line 341
    .line 342
    aget-wide v1, p1, v3

    .line 343
    .line 344
    aget-wide v4, p2, v3

    .line 345
    .line 346
    if-eqz v0, :cond_26

    .line 347
    .line 348
    goto :goto_11

    .line 349
    :cond_26
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 354
    .line 355
    :goto_11
    add-int/lit8 v3, v3, 0x1

    .line 356
    .line 357
    goto :goto_10

    .line 358
    :cond_27
    instance-of v2, p1, [F

    .line 359
    .line 360
    if-eqz v2, :cond_2d

    .line 361
    .line 362
    check-cast p1, [F

    .line 363
    .line 364
    check-cast p2, [F

    .line 365
    .line 366
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 367
    .line 368
    if-eqz v2, :cond_28

    .line 369
    .line 370
    goto/16 :goto_1a

    .line 371
    .line 372
    :cond_28
    if-ne p1, p2, :cond_29

    .line 373
    .line 374
    goto/16 :goto_1a

    .line 375
    .line 376
    :cond_29
    array-length v2, p1

    .line 377
    array-length v4, p2

    .line 378
    if-eq v2, v4, :cond_2b

    .line 379
    .line 380
    array-length p1, p1

    .line 381
    array-length p2, p2

    .line 382
    if-ge p1, p2, :cond_2a

    .line 383
    .line 384
    goto :goto_12

    .line 385
    :cond_2a
    move v0, v1

    .line 386
    :goto_12
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 387
    .line 388
    return-void

    .line 389
    :cond_2b
    :goto_13
    array-length v0, p1

    .line 390
    if-ge v3, v0, :cond_3a

    .line 391
    .line 392
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 393
    .line 394
    if-nez v0, :cond_3a

    .line 395
    .line 396
    aget v1, p1, v3

    .line 397
    .line 398
    aget v2, p2, v3

    .line 399
    .line 400
    if-eqz v0, :cond_2c

    .line 401
    .line 402
    goto :goto_14

    .line 403
    :cond_2c
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 408
    .line 409
    :goto_14
    add-int/lit8 v3, v3, 0x1

    .line 410
    .line 411
    goto :goto_13

    .line 412
    :cond_2d
    instance-of v2, p1, [Z

    .line 413
    .line 414
    if-eqz v2, :cond_35

    .line 415
    .line 416
    check-cast p1, [Z

    .line 417
    .line 418
    check-cast p2, [Z

    .line 419
    .line 420
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 421
    .line 422
    if-eqz v2, :cond_2e

    .line 423
    .line 424
    goto :goto_1a

    .line 425
    :cond_2e
    if-ne p1, p2, :cond_2f

    .line 426
    .line 427
    goto :goto_1a

    .line 428
    :cond_2f
    array-length v2, p1

    .line 429
    array-length v4, p2

    .line 430
    if-eq v2, v4, :cond_31

    .line 431
    .line 432
    array-length p1, p1

    .line 433
    array-length p2, p2

    .line 434
    if-ge p1, p2, :cond_30

    .line 435
    .line 436
    goto :goto_15

    .line 437
    :cond_30
    move v0, v1

    .line 438
    :goto_15
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 439
    .line 440
    return-void

    .line 441
    :cond_31
    :goto_16
    array-length v2, p1

    .line 442
    if-ge v3, v2, :cond_3a

    .line 443
    .line 444
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 445
    .line 446
    if-nez v2, :cond_3a

    .line 447
    .line 448
    aget-boolean v4, p1, v3

    .line 449
    .line 450
    aget-boolean v5, p2, v3

    .line 451
    .line 452
    if-eqz v2, :cond_32

    .line 453
    .line 454
    goto :goto_17

    .line 455
    :cond_32
    if-ne v4, v5, :cond_33

    .line 456
    .line 457
    goto :goto_17

    .line 458
    :cond_33
    if-eqz v4, :cond_34

    .line 459
    .line 460
    iput v1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 461
    .line 462
    goto :goto_17

    .line 463
    :cond_34
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 464
    .line 465
    :goto_17
    add-int/lit8 v3, v3, 0x1

    .line 466
    .line 467
    goto :goto_16

    .line 468
    :cond_35
    check-cast p1, [Ljava/lang/Object;

    .line 469
    .line 470
    check-cast p2, [Ljava/lang/Object;

    .line 471
    .line 472
    iget v2, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 473
    .line 474
    if-eqz v2, :cond_36

    .line 475
    .line 476
    goto :goto_1a

    .line 477
    :cond_36
    if-ne p1, p2, :cond_37

    .line 478
    .line 479
    goto :goto_1a

    .line 480
    :cond_37
    array-length v2, p1

    .line 481
    array-length v4, p2

    .line 482
    if-eq v2, v4, :cond_39

    .line 483
    .line 484
    array-length p1, p1

    .line 485
    array-length p2, p2

    .line 486
    if-ge p1, p2, :cond_38

    .line 487
    .line 488
    goto :goto_18

    .line 489
    :cond_38
    move v0, v1

    .line 490
    :goto_18
    iput v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 491
    .line 492
    return-void

    .line 493
    :cond_39
    :goto_19
    array-length v0, p1

    .line 494
    if-ge v3, v0, :cond_3a

    .line 495
    .line 496
    iget v0, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 497
    .line 498
    if-nez v0, :cond_3a

    .line 499
    .line 500
    aget-object v0, p1, v3

    .line 501
    .line 502
    aget-object v1, p2, v3

    .line 503
    .line 504
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/builder/CompareToBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 505
    .line 506
    .line 507
    add-int/lit8 v3, v3, 0x1

    .line 508
    .line 509
    goto :goto_19

    .line 510
    :cond_3a
    :goto_1a
    return-void

    .line 511
    :cond_3b
    check-cast p1, Ljava/lang/Comparable;

    .line 512
    .line 513
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 514
    .line 515
    .line 516
    move-result p1

    .line 517
    iput p1, p0, Lorg/apache/commons/lang3/builder/CompareToBuilder;->c:I

    .line 518
    .line 519
    return-void
.end method
