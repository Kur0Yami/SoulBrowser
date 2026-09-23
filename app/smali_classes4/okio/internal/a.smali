.class public final synthetic Lokio/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic c:Lokio/internal/ResourceFileSystem;


# direct methods
.method public synthetic constructor <init>(Lokio/internal/ResourceFileSystem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/internal/a;->c:Lokio/internal/ResourceFileSystem;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lokio/internal/a;->c:Lokio/internal/ResourceFileSystem;

    .line 4
    .line 5
    iget-object v2, v0, Lokio/internal/ResourceFileSystem;->f:Ljava/lang/ClassLoader;

    .line 6
    .line 7
    iget-object v3, v0, Lokio/internal/ResourceFileSystem;->g:Lokio/JvmSystemFileSystem;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v4, "getResources(...)"

    .line 16
    .line 17
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v5, "list(...)"

    .line 25
    .line 26
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v6, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v8, 0x0

    .line 39
    move v9, v8

    .line 40
    :cond_0
    :goto_0
    const-string v10, "<this>"

    .line 41
    .line 42
    const-string v11, "toString(...)"

    .line 43
    .line 44
    if-ge v9, v7, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    add-int/lit8 v9, v9, 0x1

    .line 51
    .line 52
    check-cast v13, Ljava/net/URL;

    .line 53
    .line 54
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    const-string v15, "file"

    .line 62
    .line 63
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    if-nez v14, :cond_1

    .line 68
    .line 69
    const/4 v12, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    sget-object v12, Lokio/Path;->f:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v12, Ljava/io/File;

    .line 74
    .line 75
    invoke-virtual {v13}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v10}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    invoke-static {v3, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    :goto_1
    if-eqz v12, :cond_0

    .line 101
    .line 102
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    const-string v0, "META-INF/MANIFEST.MF"

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v4, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    :goto_2
    if-ge v8, v5, :cond_16

    .line 132
    .line 133
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    add-int/lit8 v8, v8, 0x1

    .line 138
    .line 139
    check-cast v0, Ljava/net/URL;

    .line 140
    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v7, "jar:file:"

    .line 152
    .line 153
    invoke-static {v0, v7}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-nez v7, :cond_3

    .line 158
    .line 159
    :goto_3
    move-object/from16 v16, v2

    .line 160
    .line 161
    move-object v2, v3

    .line 162
    move-object v12, v10

    .line 163
    move-object/from16 v19, v11

    .line 164
    .line 165
    const/4 v0, 0x0

    .line 166
    goto/16 :goto_14

    .line 167
    .line 168
    :cond_3
    const-string v7, "!"

    .line 169
    .line 170
    invoke-static {v0, v7}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    const/4 v9, -0x1

    .line 175
    if-ne v7, v9, :cond_4

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    sget-object v9, Lokio/Path;->f:Ljava/lang/String;

    .line 179
    .line 180
    new-instance v9, Ljava/io/File;

    .line 181
    .line 182
    const/4 v13, 0x4

    .line 183
    invoke-virtual {v0, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const-string v7, "substring(...)"

    .line 188
    .line 189
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v0}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    new-instance v9, Lokio/internal/b;

    .line 214
    .line 215
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v0, "not a zip: size="

    .line 219
    .line 220
    const-string v13, "zipPath"

    .line 221
    .line 222
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string v13, "fileSystem"

    .line 226
    .line 227
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v13, "predicate"

    .line 231
    .line 232
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v7}, Lokio/JvmSystemFileSystem;->d(Lokio/Path;)Lokio/FileHandle;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    :try_start_0
    invoke-virtual {v13}, Lokio/FileHandle;->size()J

    .line 240
    .line 241
    .line 242
    move-result-wide v14

    .line 243
    const/16 v12, 0x16

    .line 244
    .line 245
    move-object/from16 v16, v2

    .line 246
    .line 247
    int-to-long v1, v12

    .line 248
    sub-long/2addr v14, v1

    .line 249
    const-wide/16 v1, 0x0

    .line 250
    .line 251
    cmp-long v12, v14, v1

    .line 252
    .line 253
    if-ltz v12, :cond_14

    .line 254
    .line 255
    const-wide/32 v17, 0x10000

    .line 256
    .line 257
    .line 258
    move-object v12, v10

    .line 259
    move-object/from16 v19, v11

    .line 260
    .line 261
    sub-long v10, v14, v17

    .line 262
    .line 263
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 264
    .line 265
    .line 266
    move-result-wide v10

    .line 267
    :goto_4
    invoke-virtual {v13, v14, v15}, Lokio/FileHandle;->e(J)Lokio/Source;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    move-wide/from16 v17, v1

    .line 272
    .line 273
    invoke-static {v0}, Lokio/Okio;->b(Lokio/Source;)Lokio/RealBufferedSource;

    .line 274
    .line 275
    .line 276
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 277
    :try_start_1
    invoke-virtual {v1}, Lokio/RealBufferedSource;->l0()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    const v2, 0x6054b50

    .line 282
    .line 283
    .line 284
    if-ne v0, v2, :cond_12

    .line 285
    .line 286
    invoke-virtual {v1}, Lokio/RealBufferedSource;->t0()S

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    const v2, 0xffff

    .line 291
    .line 292
    .line 293
    and-int/2addr v0, v2

    .line 294
    invoke-virtual {v1}, Lokio/RealBufferedSource;->t0()S

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    and-int/2addr v10, v2

    .line 299
    invoke-virtual {v1}, Lokio/RealBufferedSource;->t0()S

    .line 300
    .line 301
    .line 302
    move-result v11

    .line 303
    and-int/2addr v11, v2

    .line 304
    move/from16 v20, v2

    .line 305
    .line 306
    move-object/from16 v26, v3

    .line 307
    .line 308
    int-to-long v2, v11

    .line 309
    invoke-virtual {v1}, Lokio/RealBufferedSource;->t0()S

    .line 310
    .line 311
    .line 312
    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 313
    and-int v11, v11, v20

    .line 314
    .line 315
    move-wide/from16 v21, v2

    .line 316
    .line 317
    int-to-long v2, v11

    .line 318
    cmp-long v2, v21, v2

    .line 319
    .line 320
    const-string v3, "unsupported zip: spanned"

    .line 321
    .line 322
    if-nez v2, :cond_11

    .line 323
    .line 324
    if-nez v0, :cond_11

    .line 325
    .line 326
    if-nez v10, :cond_11

    .line 327
    .line 328
    const-wide/16 v10, 0x4

    .line 329
    .line 330
    :try_start_2
    invoke-virtual {v1, v10, v11}, Lokio/RealBufferedSource;->skip(J)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Lokio/RealBufferedSource;->l0()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    int-to-long v10, v0

    .line 338
    const-wide v23, 0xffffffffL

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    and-long v23, v10, v23

    .line 344
    .line 345
    invoke-virtual {v1}, Lokio/RealBufferedSource;->t0()S

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    and-int v32, v0, v20

    .line 350
    .line 351
    new-instance v20, Lokio/internal/EocdRecord;

    .line 352
    .line 353
    move/from16 v25, v32

    .line 354
    .line 355
    invoke-direct/range {v20 .. v25}, Lokio/internal/EocdRecord;-><init>(JJI)V

    .line 356
    .line 357
    .line 358
    move/from16 v0, v25

    .line 359
    .line 360
    int-to-long v10, v0

    .line 361
    invoke-virtual {v1, v10, v11}, Lokio/RealBufferedSource;->d(J)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 362
    .line 363
    .line 364
    :try_start_3
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V

    .line 365
    .line 366
    .line 367
    const/16 v1, 0x14

    .line 368
    .line 369
    int-to-long v1, v1

    .line 370
    sub-long/2addr v14, v1

    .line 371
    cmp-long v1, v14, v17

    .line 372
    .line 373
    if-lez v1, :cond_a

    .line 374
    .line 375
    invoke-virtual {v13, v14, v15}, Lokio/FileHandle;->e(J)Lokio/Source;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v1}, Lokio/Okio;->b(Lokio/Source;)Lokio/RealBufferedSource;

    .line 380
    .line 381
    .line 382
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 383
    :try_start_4
    invoke-virtual {v1}, Lokio/RealBufferedSource;->l0()I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    const v10, 0x7064b50

    .line 388
    .line 389
    .line 390
    if-ne v2, v10, :cond_9

    .line 391
    .line 392
    invoke-virtual {v1}, Lokio/RealBufferedSource;->l0()I

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    invoke-virtual {v1}, Lokio/RealBufferedSource;->b()J

    .line 397
    .line 398
    .line 399
    move-result-wide v10

    .line 400
    invoke-virtual {v1}, Lokio/RealBufferedSource;->l0()I

    .line 401
    .line 402
    .line 403
    move-result v14

    .line 404
    const/4 v15, 0x1

    .line 405
    if-ne v14, v15, :cond_8

    .line 406
    .line 407
    if-nez v2, :cond_8

    .line 408
    .line 409
    invoke-virtual {v13, v10, v11}, Lokio/FileHandle;->e(J)Lokio/Source;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-static {v2}, Lokio/Okio;->b(Lokio/Source;)Lokio/RealBufferedSource;

    .line 414
    .line 415
    .line 416
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 417
    :try_start_5
    invoke-virtual {v2}, Lokio/RealBufferedSource;->l0()I

    .line 418
    .line 419
    .line 420
    move-result v10

    .line 421
    const v11, 0x6064b50

    .line 422
    .line 423
    .line 424
    if-ne v10, v11, :cond_6

    .line 425
    .line 426
    const-wide/16 v10, 0xc

    .line 427
    .line 428
    invoke-virtual {v2, v10, v11}, Lokio/RealBufferedSource;->skip(J)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2}, Lokio/RealBufferedSource;->l0()I

    .line 432
    .line 433
    .line 434
    move-result v10

    .line 435
    invoke-virtual {v2}, Lokio/RealBufferedSource;->l0()I

    .line 436
    .line 437
    .line 438
    move-result v11

    .line 439
    invoke-virtual {v2}, Lokio/RealBufferedSource;->b()J

    .line 440
    .line 441
    .line 442
    move-result-wide v28

    .line 443
    invoke-virtual {v2}, Lokio/RealBufferedSource;->b()J

    .line 444
    .line 445
    .line 446
    move-result-wide v14

    .line 447
    cmp-long v14, v28, v14

    .line 448
    .line 449
    if-nez v14, :cond_5

    .line 450
    .line 451
    if-nez v10, :cond_5

    .line 452
    .line 453
    if-nez v11, :cond_5

    .line 454
    .line 455
    const-wide/16 v10, 0x8

    .line 456
    .line 457
    invoke-virtual {v2, v10, v11}, Lokio/RealBufferedSource;->skip(J)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2}, Lokio/RealBufferedSource;->b()J

    .line 461
    .line 462
    .line 463
    move-result-wide v30

    .line 464
    new-instance v27, Lokio/internal/EocdRecord;

    .line 465
    .line 466
    move/from16 v32, v0

    .line 467
    .line 468
    invoke-direct/range {v27 .. v32}, Lokio/internal/EocdRecord;-><init>(JJI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 469
    .line 470
    .line 471
    :try_start_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 472
    .line 473
    :try_start_7
    invoke-virtual {v2}, Lokio/RealBufferedSource;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 474
    .line 475
    .line 476
    const/4 v0, 0x0

    .line 477
    goto :goto_5

    .line 478
    :catchall_0
    move-exception v0

    .line 479
    :goto_5
    move-object/from16 v20, v27

    .line 480
    .line 481
    goto :goto_9

    .line 482
    :catchall_1
    move-exception v0

    .line 483
    move-object v3, v0

    .line 484
    move-object/from16 v20, v27

    .line 485
    .line 486
    goto :goto_7

    .line 487
    :cond_5
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    .line 488
    .line 489
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    throw v0

    .line 493
    :goto_6
    move-object v3, v0

    .line 494
    goto :goto_7

    .line 495
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 496
    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    const-string v14, "bad zip: expected "

    .line 503
    .line 504
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-static {v11}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v11

    .line 511
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    const-string v11, " but was "

    .line 515
    .line 516
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-static {v10}, Lokio/internal/ZipFilesKt;->b(I)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v10

    .line 523
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 534
    :catchall_2
    move-exception v0

    .line 535
    goto :goto_6

    .line 536
    :goto_7
    :try_start_9
    invoke-virtual {v2}, Lokio/RealBufferedSource;->close()V

    .line 537
    .line 538
    .line 539
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 540
    .line 541
    goto :goto_8

    .line 542
    :catchall_3
    move-exception v0

    .line 543
    :try_start_a
    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 544
    .line 545
    .line 546
    :goto_8
    move-object v0, v3

    .line 547
    :goto_9
    if-nez v0, :cond_7

    .line 548
    .line 549
    goto :goto_a

    .line 550
    :cond_7
    throw v0

    .line 551
    :catchall_4
    move-exception v0

    .line 552
    move-object v2, v0

    .line 553
    goto :goto_b

    .line 554
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 555
    .line 556
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    throw v0

    .line 560
    :cond_9
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 561
    .line 562
    :try_start_b
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 563
    .line 564
    .line 565
    const/4 v0, 0x0

    .line 566
    goto :goto_d

    .line 567
    :catchall_5
    move-exception v0

    .line 568
    goto :goto_d

    .line 569
    :goto_b
    :try_start_c
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V

    .line 570
    .line 571
    .line 572
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 573
    .line 574
    goto :goto_c

    .line 575
    :catchall_6
    move-exception v0

    .line 576
    :try_start_d
    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 577
    .line 578
    .line 579
    :goto_c
    move-object v0, v2

    .line 580
    :goto_d
    if-nez v0, :cond_b

    .line 581
    .line 582
    :cond_a
    move-object/from16 v0, v20

    .line 583
    .line 584
    goto :goto_e

    .line 585
    :cond_b
    throw v0

    .line 586
    :catchall_7
    move-exception v0

    .line 587
    move-object v1, v0

    .line 588
    goto/16 :goto_16

    .line 589
    .line 590
    :goto_e
    new-instance v1, Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .line 594
    .line 595
    iget-wide v2, v0, Lokio/internal/EocdRecord;->b:J

    .line 596
    .line 597
    invoke-virtual {v13, v2, v3}, Lokio/FileHandle;->e(J)Lokio/Source;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-static {v2}, Lokio/Okio;->b(Lokio/Source;)Lokio/RealBufferedSource;

    .line 602
    .line 603
    .line 604
    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 605
    :try_start_e
    iget-wide v10, v0, Lokio/internal/EocdRecord;->a:J

    .line 606
    .line 607
    :goto_f
    cmp-long v3, v17, v10

    .line 608
    .line 609
    if-gez v3, :cond_e

    .line 610
    .line 611
    invoke-static {v2}, Lokio/internal/ZipFilesKt;->c(Lokio/RealBufferedSource;)Lokio/internal/ZipEntry;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    iget-wide v14, v3, Lokio/internal/ZipEntry;->h:J

    .line 616
    .line 617
    move-wide/from16 v20, v10

    .line 618
    .line 619
    iget-wide v10, v0, Lokio/internal/EocdRecord;->b:J

    .line 620
    .line 621
    cmp-long v10, v14, v10

    .line 622
    .line 623
    if-gez v10, :cond_d

    .line 624
    .line 625
    invoke-virtual {v9, v3}, Lokio/internal/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v10

    .line 629
    check-cast v10, Ljava/lang/Boolean;

    .line 630
    .line 631
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 632
    .line 633
    .line 634
    move-result v10

    .line 635
    if-eqz v10, :cond_c

    .line 636
    .line 637
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    goto :goto_10

    .line 641
    :catchall_8
    move-exception v0

    .line 642
    move-object v3, v0

    .line 643
    goto :goto_11

    .line 644
    :cond_c
    :goto_10
    const-wide/16 v10, 0x1

    .line 645
    .line 646
    add-long v17, v17, v10

    .line 647
    .line 648
    move-wide/from16 v10, v20

    .line 649
    .line 650
    goto :goto_f

    .line 651
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 652
    .line 653
    const-string v3, "bad zip: local file header offset >= central directory offset"

    .line 654
    .line 655
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v0

    .line 659
    :cond_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 660
    .line 661
    :try_start_f
    invoke-virtual {v2}, Lokio/RealBufferedSource;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 662
    .line 663
    .line 664
    const/4 v0, 0x0

    .line 665
    goto :goto_13

    .line 666
    :catchall_9
    move-exception v0

    .line 667
    goto :goto_13

    .line 668
    :goto_11
    :try_start_10
    invoke-virtual {v2}, Lokio/RealBufferedSource;->close()V

    .line 669
    .line 670
    .line 671
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 672
    .line 673
    goto :goto_12

    .line 674
    :catchall_a
    move-exception v0

    .line 675
    :try_start_11
    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 676
    .line 677
    .line 678
    :goto_12
    move-object v0, v3

    .line 679
    :goto_13
    if-nez v0, :cond_10

    .line 680
    .line 681
    invoke-static {v1}, Lokio/internal/ZipFilesKt;->a(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    new-instance v1, Lokio/ZipFileSystem;

    .line 686
    .line 687
    move-object/from16 v2, v26

    .line 688
    .line 689
    invoke-direct {v1, v7, v2, v0}, Lokio/ZipFileSystem;-><init>(Lokio/Path;Lokio/JvmSystemFileSystem;Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 690
    .line 691
    .line 692
    :try_start_12
    invoke-interface {v13}, Ljava/io/Closeable;->close()V

    .line 693
    .line 694
    .line 695
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 696
    .line 697
    :catchall_b
    sget-object v0, Lokio/internal/ResourceFileSystem;->i:Lokio/Path;

    .line 698
    .line 699
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    :goto_14
    if-eqz v0, :cond_f

    .line 704
    .line 705
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    :cond_f
    move-object/from16 v1, p0

    .line 709
    .line 710
    move-object v3, v2

    .line 711
    move-object v10, v12

    .line 712
    move-object/from16 v2, v16

    .line 713
    .line 714
    move-object/from16 v11, v19

    .line 715
    .line 716
    goto/16 :goto_2

    .line 717
    .line 718
    :cond_10
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 719
    :catchall_c
    move-exception v0

    .line 720
    goto :goto_15

    .line 721
    :cond_11
    :try_start_14
    new-instance v0, Ljava/io/IOException;

    .line 722
    .line 723
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 727
    :cond_12
    move-object v2, v3

    .line 728
    :try_start_15
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V

    .line 729
    .line 730
    .line 731
    const-wide/16 v0, -0x1

    .line 732
    .line 733
    add-long/2addr v14, v0

    .line 734
    cmp-long v0, v14, v10

    .line 735
    .line 736
    if-ltz v0, :cond_13

    .line 737
    .line 738
    move-object v3, v2

    .line 739
    move-wide/from16 v1, v17

    .line 740
    .line 741
    goto/16 :goto_4

    .line 742
    .line 743
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 744
    .line 745
    const-string v1, "not a zip: end of central directory signature not found"

    .line 746
    .line 747
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    throw v0

    .line 751
    :goto_15
    invoke-virtual {v1}, Lokio/RealBufferedSource;->close()V

    .line 752
    .line 753
    .line 754
    throw v0

    .line 755
    :cond_14
    new-instance v1, Ljava/io/IOException;

    .line 756
    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    .line 758
    .line 759
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v13}, Lokio/FileHandle;->size()J

    .line 763
    .line 764
    .line 765
    move-result-wide v3

    .line 766
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 777
    :goto_16
    if-eqz v13, :cond_15

    .line 778
    .line 779
    :try_start_16
    invoke-interface {v13}, Ljava/io/Closeable;->close()V

    .line 780
    .line 781
    .line 782
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 783
    .line 784
    goto :goto_17

    .line 785
    :catchall_d
    move-exception v0

    .line 786
    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 787
    .line 788
    .line 789
    :cond_15
    :goto_17
    throw v1

    .line 790
    :cond_16
    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt;->q(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    return-object v0
.end method
