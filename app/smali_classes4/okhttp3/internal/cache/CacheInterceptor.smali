.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lokhttp3/internal/cache/CacheInterceptor;",
        "Lokhttp3/Interceptor;",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 35

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "chain"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 14
    .line 15
    const-string v3, "request"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lokhttp3/internal/cache/CacheStrategy;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-direct {v4, v2, v5}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    .line 24
    .line 25
    .line 26
    iget-object v6, v2, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    .line 27
    .line 28
    const-string v8, "headers"

    .line 29
    .line 30
    if-nez v6, :cond_1a

    .line 31
    .line 32
    sget-object v6, Lokhttp3/CacheControl;->n:Lokhttp3/CacheControl$Companion;

    .line 33
    .line 34
    iget-object v9, v2, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v10, "<this>"

    .line 43
    .line 44
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9}, Lokhttp3/Headers;->size()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    move-object v15, v5

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x1

    .line 57
    const/16 v16, 0x0

    .line 58
    .line 59
    const/16 v17, 0x0

    .line 60
    .line 61
    const/16 v18, -0x1

    .line 62
    .line 63
    const/16 v19, -0x1

    .line 64
    .line 65
    const/16 v20, 0x0

    .line 66
    .line 67
    const/16 v21, 0x0

    .line 68
    .line 69
    const/16 v22, 0x0

    .line 70
    .line 71
    const/16 v23, -0x1

    .line 72
    .line 73
    const/16 v24, -0x1

    .line 74
    .line 75
    const/16 v25, 0x0

    .line 76
    .line 77
    const/16 v26, 0x0

    .line 78
    .line 79
    const/16 v27, 0x0

    .line 80
    .line 81
    :goto_0
    if-ge v13, v6, :cond_18

    .line 82
    .line 83
    invoke-virtual {v9, v13}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const/16 v28, 0x1

    .line 88
    .line 89
    invoke-virtual {v9, v13}, Lokhttp3/Headers;->k(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    const-string v5, "Cache-Control"

    .line 94
    .line 95
    invoke-static {v7, v5}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_1

    .line 100
    .line 101
    if-eqz v15, :cond_0

    .line 102
    .line 103
    :goto_1
    const/4 v14, 0x0

    .line 104
    goto :goto_2

    .line 105
    :cond_0
    move-object v15, v11

    .line 106
    goto :goto_2

    .line 107
    :cond_1
    const-string v5, "Pragma"

    .line 108
    .line 109
    invoke-static {v7, v5}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_17

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :goto_2
    const/4 v5, 0x0

    .line 117
    :goto_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-ge v5, v7, :cond_17

    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    move v12, v5

    .line 128
    :goto_4
    if-ge v12, v7, :cond_3

    .line 129
    .line 130
    move-object/from16 v30, v4

    .line 131
    .line 132
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    move/from16 v31, v6

    .line 137
    .line 138
    const-string v6, "=,;"

    .line 139
    .line 140
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;C)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 148
    .line 149
    move-object/from16 v4, v30

    .line 150
    .line 151
    move/from16 v6, v31

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_3
    move-object/from16 v30, v4

    .line 155
    .line 156
    move/from16 v31, v6

    .line 157
    .line 158
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    :goto_5
    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    const-string v5, "substring(...)"

    .line 167
    .line 168
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v4}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eq v12, v6, :cond_a

    .line 184
    .line 185
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    const/16 v7, 0x2c

    .line 190
    .line 191
    if-eq v6, v7, :cond_a

    .line 192
    .line 193
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    const/16 v7, 0x3b

    .line 198
    .line 199
    if-ne v6, v7, :cond_4

    .line 200
    .line 201
    goto/16 :goto_a

    .line 202
    .line 203
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 204
    .line 205
    sget-object v6, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 206
    .line 207
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    :goto_6
    if-ge v12, v6, :cond_6

    .line 215
    .line 216
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    move/from16 v32, v6

    .line 221
    .line 222
    const/16 v6, 0x20

    .line 223
    .line 224
    if-eq v7, v6, :cond_5

    .line 225
    .line 226
    const/16 v6, 0x9

    .line 227
    .line 228
    if-eq v7, v6, :cond_5

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 232
    .line 233
    move/from16 v6, v32

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_6
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    :goto_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-ge v12, v6, :cond_7

    .line 245
    .line 246
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    const/16 v7, 0x22

    .line 251
    .line 252
    if-ne v6, v7, :cond_7

    .line 253
    .line 254
    add-int/lit8 v12, v12, 0x1

    .line 255
    .line 256
    const/4 v6, 0x4

    .line 257
    invoke-static {v11, v7, v12, v6}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    invoke-virtual {v11, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    add-int/lit8 v6, v6, 0x1

    .line 269
    .line 270
    move v5, v6

    .line 271
    goto :goto_b

    .line 272
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    move v7, v12

    .line 277
    :goto_8
    if-ge v7, v6, :cond_9

    .line 278
    .line 279
    move/from16 v32, v6

    .line 280
    .line 281
    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    move/from16 v33, v7

    .line 286
    .line 287
    const-string v7, ",;"

    .line 288
    .line 289
    invoke-static {v7, v6}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;C)Z

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-eqz v6, :cond_8

    .line 294
    .line 295
    move/from16 v7, v33

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_8
    add-int/lit8 v7, v33, 0x1

    .line 299
    .line 300
    move/from16 v6, v32

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    :goto_9
    invoke-virtual {v11, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-static {v6}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    move/from16 v34, v7

    .line 323
    .line 324
    move-object v7, v5

    .line 325
    move/from16 v5, v34

    .line 326
    .line 327
    goto :goto_b

    .line 328
    :cond_a
    :goto_a
    add-int/lit8 v12, v12, 0x1

    .line 329
    .line 330
    move v5, v12

    .line 331
    const/4 v7, 0x0

    .line 332
    :goto_b
    const-string v6, "no-cache"

    .line 333
    .line 334
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    if-eqz v6, :cond_c

    .line 339
    .line 340
    move/from16 v16, v28

    .line 341
    .line 342
    :cond_b
    :goto_c
    move-object/from16 v4, v30

    .line 343
    .line 344
    move/from16 v6, v31

    .line 345
    .line 346
    goto/16 :goto_3

    .line 347
    .line 348
    :cond_c
    const-string v6, "no-store"

    .line 349
    .line 350
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    if-eqz v6, :cond_d

    .line 355
    .line 356
    move/from16 v17, v28

    .line 357
    .line 358
    goto :goto_c

    .line 359
    :cond_d
    const-string v6, "max-age"

    .line 360
    .line 361
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    if-eqz v6, :cond_e

    .line 366
    .line 367
    const/4 v6, -0x1

    .line 368
    invoke-static {v6, v7}, Lokhttp3/internal/_UtilCommonKt;->m(ILjava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result v18

    .line 372
    goto :goto_c

    .line 373
    :cond_e
    const/4 v6, -0x1

    .line 374
    const-string v12, "s-maxage"

    .line 375
    .line 376
    invoke-static {v12, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v12

    .line 380
    if-eqz v12, :cond_f

    .line 381
    .line 382
    invoke-static {v6, v7}, Lokhttp3/internal/_UtilCommonKt;->m(ILjava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v19

    .line 386
    goto :goto_c

    .line 387
    :cond_f
    const-string v6, "private"

    .line 388
    .line 389
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    if-eqz v6, :cond_10

    .line 394
    .line 395
    move/from16 v20, v28

    .line 396
    .line 397
    goto :goto_c

    .line 398
    :cond_10
    const-string v6, "public"

    .line 399
    .line 400
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    if-eqz v6, :cond_11

    .line 405
    .line 406
    move/from16 v21, v28

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_11
    const-string v6, "must-revalidate"

    .line 410
    .line 411
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result v6

    .line 415
    if-eqz v6, :cond_12

    .line 416
    .line 417
    move/from16 v22, v28

    .line 418
    .line 419
    goto :goto_c

    .line 420
    :cond_12
    const-string v6, "max-stale"

    .line 421
    .line 422
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    if-eqz v6, :cond_13

    .line 427
    .line 428
    const v4, 0x7fffffff

    .line 429
    .line 430
    .line 431
    invoke-static {v4, v7}, Lokhttp3/internal/_UtilCommonKt;->m(ILjava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move-result v23

    .line 435
    goto :goto_c

    .line 436
    :cond_13
    const-string v6, "min-fresh"

    .line 437
    .line 438
    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    if-eqz v6, :cond_14

    .line 443
    .line 444
    const/4 v6, -0x1

    .line 445
    invoke-static {v6, v7}, Lokhttp3/internal/_UtilCommonKt;->m(ILjava/lang/String;)I

    .line 446
    .line 447
    .line 448
    move-result v24

    .line 449
    goto :goto_c

    .line 450
    :cond_14
    const/4 v6, -0x1

    .line 451
    const-string v7, "only-if-cached"

    .line 452
    .line 453
    invoke-static {v7, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 454
    .line 455
    .line 456
    move-result v7

    .line 457
    if-eqz v7, :cond_15

    .line 458
    .line 459
    move/from16 v25, v28

    .line 460
    .line 461
    goto :goto_c

    .line 462
    :cond_15
    const-string v7, "no-transform"

    .line 463
    .line 464
    invoke-static {v7, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    if-eqz v7, :cond_16

    .line 469
    .line 470
    move/from16 v26, v28

    .line 471
    .line 472
    goto/16 :goto_c

    .line 473
    .line 474
    :cond_16
    const-string v7, "immutable"

    .line 475
    .line 476
    invoke-static {v7, v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    if-eqz v4, :cond_b

    .line 481
    .line 482
    move/from16 v27, v28

    .line 483
    .line 484
    goto/16 :goto_c

    .line 485
    .line 486
    :cond_17
    move-object/from16 v30, v4

    .line 487
    .line 488
    move/from16 v31, v6

    .line 489
    .line 490
    const/4 v6, -0x1

    .line 491
    add-int/lit8 v13, v13, 0x1

    .line 492
    .line 493
    move-object/from16 v4, v30

    .line 494
    .line 495
    move/from16 v6, v31

    .line 496
    .line 497
    const/4 v5, 0x0

    .line 498
    goto/16 :goto_0

    .line 499
    .line 500
    :cond_18
    move-object/from16 v30, v4

    .line 501
    .line 502
    if-nez v14, :cond_19

    .line 503
    .line 504
    const/16 v28, 0x0

    .line 505
    .line 506
    goto :goto_d

    .line 507
    :cond_19
    move-object/from16 v28, v15

    .line 508
    .line 509
    :goto_d
    new-instance v15, Lokhttp3/CacheControl;

    .line 510
    .line 511
    invoke-direct/range {v15 .. v28}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iput-object v15, v2, Lokhttp3/Request;->f:Lokhttp3/CacheControl;

    .line 515
    .line 516
    move-object v6, v15

    .line 517
    goto :goto_e

    .line 518
    :cond_1a
    move-object/from16 v30, v4

    .line 519
    .line 520
    :goto_e
    iget-boolean v2, v6, Lokhttp3/CacheControl;->j:Z

    .line 521
    .line 522
    if-eqz v2, :cond_1b

    .line 523
    .line 524
    new-instance v4, Lokhttp3/internal/cache/CacheStrategy;

    .line 525
    .line 526
    const/4 v2, 0x0

    .line 527
    invoke-direct {v4, v2, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    .line 528
    .line 529
    .line 530
    goto :goto_f

    .line 531
    :cond_1b
    move-object/from16 v4, v30

    .line 532
    .line 533
    :goto_f
    iget-object v2, v1, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 534
    .line 535
    if-nez v2, :cond_1c

    .line 536
    .line 537
    sget-object v2, Lokhttp3/EventListener;->a:Lokhttp3/EventListener$Companion$NONE$1;

    .line 538
    .line 539
    :cond_1c
    const-string v5, "call"

    .line 540
    .line 541
    iget-object v6, v4, Lokhttp3/internal/cache/CacheStrategy;->a:Lokhttp3/Request;

    .line 542
    .line 543
    iget-object v4, v4, Lokhttp3/internal/cache/CacheStrategy;->b:Lokhttp3/Response;

    .line 544
    .line 545
    if-nez v6, :cond_1d

    .line 546
    .line 547
    if-nez v4, :cond_1d

    .line 548
    .line 549
    new-instance v2, Lokhttp3/Response$Builder;

    .line 550
    .line 551
    invoke-direct {v2}, Lokhttp3/Response$Builder;-><init>()V

    .line 552
    .line 553
    .line 554
    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 555
    .line 556
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    iput-object v0, v2, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 560
    .line 561
    sget-object v0, Lokhttp3/Protocol;->h:Lokhttp3/Protocol;

    .line 562
    .line 563
    const-string v3, "protocol"

    .line 564
    .line 565
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    iput-object v0, v2, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 569
    .line 570
    const/16 v0, 0x1f8

    .line 571
    .line 572
    iput v0, v2, Lokhttp3/Response$Builder;->c:I

    .line 573
    .line 574
    const-string v0, "message"

    .line 575
    .line 576
    const-string v3, "Unsatisfiable Request (only-if-cached)"

    .line 577
    .line 578
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    iput-object v3, v2, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 582
    .line 583
    const-wide/16 v3, -0x1

    .line 584
    .line 585
    iput-wide v3, v2, Lokhttp3/Response$Builder;->l:J

    .line 586
    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 588
    .line 589
    .line 590
    move-result-wide v3

    .line 591
    iput-wide v3, v2, Lokhttp3/Response$Builder;->m:J

    .line 592
    .line 593
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    const-string v1, "response"

    .line 601
    .line 602
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    return-object v0

    .line 606
    :cond_1d
    const-string v3, "cacheResponse"

    .line 607
    .line 608
    if-nez v6, :cond_1e

    .line 609
    .line 610
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v4}, Lokhttp3/Response;->b()Lokhttp3/Response$Builder;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-static {v4}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    invoke-static {v3, v4}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 622
    .line 623
    .line 624
    iput-object v4, v0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 625
    .line 626
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual {v2, v1, v0}, Lokhttp3/EventListener;->a(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 631
    .line 632
    .line 633
    return-object v0

    .line 634
    :cond_1e
    if-eqz v4, :cond_1f

    .line 635
    .line 636
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    const-string v1, "cachedResponse"

    .line 640
    .line 641
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    :cond_1f
    invoke-virtual {v0, v6}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    const-string v1, "networkResponse"

    .line 649
    .line 650
    if-eqz v4, :cond_29

    .line 651
    .line 652
    iget v2, v0, Lokhttp3/Response;->h:I

    .line 653
    .line 654
    const/16 v5, 0x130

    .line 655
    .line 656
    if-ne v2, v5, :cond_28

    .line 657
    .line 658
    invoke-virtual {v4}, Lokhttp3/Response;->b()Lokhttp3/Response$Builder;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    iget-object v5, v4, Lokhttp3/Response;->j:Lokhttp3/Headers;

    .line 663
    .line 664
    iget-object v6, v0, Lokhttp3/Response;->j:Lokhttp3/Headers;

    .line 665
    .line 666
    new-instance v7, Lokhttp3/Headers$Builder;

    .line 667
    .line 668
    invoke-direct {v7}, Lokhttp3/Headers$Builder;-><init>()V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v5}, Lokhttp3/Headers;->size()I

    .line 672
    .line 673
    .line 674
    move-result v9

    .line 675
    const/4 v10, 0x0

    .line 676
    :goto_10
    const-string v11, "Content-Type"

    .line 677
    .line 678
    const-string v12, "Content-Encoding"

    .line 679
    .line 680
    const-string v13, "Content-Length"

    .line 681
    .line 682
    if-ge v10, v9, :cond_24

    .line 683
    .line 684
    invoke-virtual {v5, v10}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v14

    .line 688
    invoke-virtual {v5, v10}, Lokhttp3/Headers;->k(I)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v15

    .line 692
    move-object/from16 v16, v5

    .line 693
    .line 694
    const-string v5, "Warning"

    .line 695
    .line 696
    invoke-static {v5, v14}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 697
    .line 698
    .line 699
    move-result v5

    .line 700
    if-eqz v5, :cond_20

    .line 701
    .line 702
    const-string v5, "1"

    .line 703
    .line 704
    invoke-static {v15, v5}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    if-eqz v5, :cond_20

    .line 709
    .line 710
    goto :goto_12

    .line 711
    :cond_20
    invoke-static {v13, v14}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 712
    .line 713
    .line 714
    move-result v5

    .line 715
    if-nez v5, :cond_22

    .line 716
    .line 717
    invoke-static {v12, v14}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 718
    .line 719
    .line 720
    move-result v5

    .line 721
    if-nez v5, :cond_22

    .line 722
    .line 723
    invoke-static {v11, v14}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 724
    .line 725
    .line 726
    move-result v5

    .line 727
    if-eqz v5, :cond_21

    .line 728
    .line 729
    goto :goto_11

    .line 730
    :cond_21
    invoke-static {v14}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Ljava/lang/String;)Z

    .line 731
    .line 732
    .line 733
    move-result v5

    .line 734
    if-eqz v5, :cond_22

    .line 735
    .line 736
    invoke-virtual {v6, v14}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v5

    .line 740
    if-nez v5, :cond_23

    .line 741
    .line 742
    :cond_22
    :goto_11
    invoke-virtual {v7, v14, v15}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    :cond_23
    :goto_12
    add-int/lit8 v10, v10, 0x1

    .line 746
    .line 747
    move-object/from16 v5, v16

    .line 748
    .line 749
    goto :goto_10

    .line 750
    :cond_24
    invoke-virtual {v6}, Lokhttp3/Headers;->size()I

    .line 751
    .line 752
    .line 753
    move-result v5

    .line 754
    const/4 v9, 0x0

    .line 755
    :goto_13
    if-ge v9, v5, :cond_27

    .line 756
    .line 757
    invoke-virtual {v6, v9}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v10

    .line 761
    invoke-static {v13, v10}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 762
    .line 763
    .line 764
    move-result v14

    .line 765
    if-nez v14, :cond_26

    .line 766
    .line 767
    invoke-static {v12, v10}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 768
    .line 769
    .line 770
    move-result v14

    .line 771
    if-nez v14, :cond_26

    .line 772
    .line 773
    invoke-static {v11, v10}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 774
    .line 775
    .line 776
    move-result v14

    .line 777
    if-eqz v14, :cond_25

    .line 778
    .line 779
    goto :goto_14

    .line 780
    :cond_25
    invoke-static {v10}, Lokhttp3/internal/cache/CacheInterceptor$Companion;->a(Ljava/lang/String;)Z

    .line 781
    .line 782
    .line 783
    move-result v14

    .line 784
    if-eqz v14, :cond_26

    .line 785
    .line 786
    invoke-virtual {v6, v9}, Lokhttp3/Headers;->k(I)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v14

    .line 790
    invoke-virtual {v7, v10, v14}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    :cond_26
    :goto_14
    add-int/lit8 v9, v9, 0x1

    .line 794
    .line 795
    goto :goto_13

    .line 796
    :cond_27
    invoke-virtual {v7}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    invoke-virtual {v5}, Lokhttp3/Headers;->g()Lokhttp3/Headers$Builder;

    .line 804
    .line 805
    .line 806
    move-result-object v5

    .line 807
    iput-object v5, v2, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 808
    .line 809
    iget-wide v5, v0, Lokhttp3/Response;->p:J

    .line 810
    .line 811
    iput-wide v5, v2, Lokhttp3/Response$Builder;->l:J

    .line 812
    .line 813
    iget-wide v5, v0, Lokhttp3/Response;->q:J

    .line 814
    .line 815
    iput-wide v5, v2, Lokhttp3/Response$Builder;->m:J

    .line 816
    .line 817
    invoke-static {v4}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    invoke-static {v3, v4}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 822
    .line 823
    .line 824
    iput-object v4, v2, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 825
    .line 826
    invoke-static {v0}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    invoke-static {v1, v3}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 831
    .line 832
    .line 833
    iput-object v3, v2, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 834
    .line 835
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 836
    .line 837
    .line 838
    iget-object v0, v0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 839
    .line 840
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 841
    .line 842
    .line 843
    const/16 v29, 0x0

    .line 844
    .line 845
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 846
    .line 847
    .line 848
    throw v29

    .line 849
    :cond_28
    const/16 v29, 0x0

    .line 850
    .line 851
    iget-object v2, v4, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 852
    .line 853
    invoke-static {v2}, Lokhttp3/internal/_UtilCommonKt;->a(Ljava/io/Closeable;)V

    .line 854
    .line 855
    .line 856
    goto :goto_15

    .line 857
    :cond_29
    const/16 v29, 0x0

    .line 858
    .line 859
    :goto_15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0}, Lokhttp3/Response;->b()Lokhttp3/Response$Builder;

    .line 863
    .line 864
    .line 865
    move-result-object v2

    .line 866
    if-eqz v4, :cond_2a

    .line 867
    .line 868
    invoke-static {v4}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    goto :goto_16

    .line 873
    :cond_2a
    move-object/from16 v5, v29

    .line 874
    .line 875
    :goto_16
    invoke-static {v3, v5}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 876
    .line 877
    .line 878
    iput-object v5, v2, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 879
    .line 880
    invoke-static {v0}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    invoke-static {v1, v0}, Lokhttp3/Response$Builder;->b(Ljava/lang/String;Lokhttp3/Response;)V

    .line 885
    .line 886
    .line 887
    iput-object v0, v2, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 888
    .line 889
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 890
    .line 891
    .line 892
    move-result-object v0

    .line 893
    return-object v0
.end method
