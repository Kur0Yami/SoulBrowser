.class public Lcom/mycompany/app/down/DownParseDzen;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 24

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    :catch_0
    :cond_0
    :goto_0
    const/16 p1, 0x0

    .line 12
    .line 13
    goto/16 :goto_12

    .line 14
    .line 15
    :cond_1
    :try_start_0
    invoke-static {v0}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v0, v1}, Lorg/jsoup/Connection;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 31
    goto :goto_1

    .line 32
    :catch_1
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/main/MainUtil;->D6(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    :catch_2
    const/4 v0, 0x0

    .line 36
    :goto_1
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :try_start_1
    const-string v1, "BaseURL"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 60
    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const-string v4, "[mimeType*=\'video\']"

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-nez v5, :cond_6

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    move v7, v3

    .line 100
    :goto_2
    const-string v8, "media"

    .line 101
    .line 102
    const-string v9, "initialization"

    .line 103
    .line 104
    const-string v10, "id"

    .line 105
    .line 106
    const-string v11, "$RepresentationID$"

    .line 107
    .line 108
    if-ge v7, v6, :cond_18

    .line 109
    .line 110
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    check-cast v12, Lorg/jsoup/nodes/Element;

    .line 117
    .line 118
    if-nez v12, :cond_7

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    if-eqz v12, :cond_17

    .line 126
    .line 127
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-nez v13, :cond_8

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    move v14, v3

    .line 139
    :cond_9
    :goto_3
    if-ge v14, v13, :cond_17

    .line 140
    .line 141
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v15

    .line 145
    add-int/lit8 v14, v14, 0x1

    .line 146
    .line 147
    check-cast v15, Lorg/jsoup/nodes/Element;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .line 149
    if-nez v15, :cond_a

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_a
    const/16 p1, 0x0

    .line 153
    .line 154
    :try_start_3
    invoke-virtual {v15}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_9

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-nez v16, :cond_b

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_b
    invoke-virtual {v15, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v16

    .line 175
    if-eqz v16, :cond_c

    .line 176
    .line 177
    :goto_4
    const/4 v3, 0x0

    .line 178
    goto :goto_3

    .line 179
    :cond_c
    move-object/from16 v16, v4

    .line 180
    .line 181
    const-string v4, "width"

    .line 182
    .line 183
    invoke-virtual {v15, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v17

    .line 191
    if-eqz v17, :cond_d

    .line 192
    .line 193
    move-object/from16 v4, v16

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_d
    move/from16 v17, v6

    .line 197
    .line 198
    const-string v6, "height"

    .line 199
    .line 200
    invoke-virtual {v15, v6}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v15

    .line 208
    if-eqz v15, :cond_e

    .line 209
    .line 210
    move-object/from16 v4, v16

    .line 211
    .line 212
    move/from16 v6, v17

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    move-object/from16 v18, p1

    .line 220
    .line 221
    move-object/from16 v19, v18

    .line 222
    .line 223
    move/from16 v20, v7

    .line 224
    .line 225
    const/4 v7, 0x0

    .line 226
    :goto_5
    if-ge v7, v15, :cond_14

    .line 227
    .line 228
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v21

    .line 232
    add-int/lit8 v7, v7, 0x1

    .line 233
    .line 234
    move-object/from16 v22, v2

    .line 235
    .line 236
    move-object/from16 v2, v21

    .line 237
    .line 238
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 239
    .line 240
    if-nez v2, :cond_f

    .line 241
    .line 242
    move/from16 v21, v7

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_f
    move/from16 v21, v7

    .line 246
    .line 247
    invoke-virtual {v2, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result v23

    .line 255
    if-eqz v23, :cond_10

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_10
    invoke-virtual {v7, v11, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v23

    .line 266
    if-eqz v23, :cond_11

    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_11
    invoke-virtual {v2, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v23

    .line 277
    if-eqz v23, :cond_12

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_12
    invoke-virtual {v2, v11, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result v23

    .line 288
    if-eqz v23, :cond_13

    .line 289
    .line 290
    :goto_6
    move/from16 v7, v21

    .line 291
    .line 292
    move-object/from16 v2, v22

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_13
    move-object/from16 v19, v2

    .line 296
    .line 297
    move-object/from16 v18, v7

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_14
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    if-nez v2, :cond_15

    .line 305
    .line 306
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_16

    .line 311
    .line 312
    :cond_15
    :goto_7
    move-object/from16 v4, v16

    .line 313
    .line 314
    move/from16 v6, v17

    .line 315
    .line 316
    move/from16 v7, v20

    .line 317
    .line 318
    goto/16 :goto_4

    .line 319
    .line 320
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v3, "x"

    .line 329
    .line 330
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    new-instance v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 345
    .line 346
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 347
    .line 348
    .line 349
    iput-object v1, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 350
    .line 351
    move-object/from16 v7, v18

    .line 352
    .line 353
    iput-object v7, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->g:Ljava/lang/String;

    .line 354
    .line 355
    move-object/from16 v7, v19

    .line 356
    .line 357
    iput-object v7, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    iput-object v2, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->d:Ljava/lang/String;

    .line 364
    .line 365
    mul-int/2addr v3, v4

    .line 366
    iput v3, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->e:I

    .line 367
    .line 368
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_17
    move/from16 v20, v7

    .line 373
    .line 374
    goto/16 :goto_2

    .line 375
    .line 376
    :cond_18
    const/16 p1, 0x0

    .line 377
    .line 378
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_19

    .line 383
    .line 384
    goto/16 :goto_12

    .line 385
    .line 386
    :cond_19
    new-instance v1, Lcom/mycompany/app/down/DownParseList$SortM3u8;

    .line 387
    .line 388
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 389
    .line 390
    .line 391
    :try_start_4
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 392
    .line 393
    .line 394
    :catch_3
    :try_start_5
    const-string v1, "[mimeType*=\'audio\']"

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eqz v0, :cond_2c

    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-nez v1, :cond_1a

    .line 407
    .line 408
    goto/16 :goto_11

    .line 409
    .line 410
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    move-object/from16 v2, p1

    .line 415
    .line 416
    move-object v3, v2

    .line 417
    const/4 v4, 0x0

    .line 418
    :cond_1b
    :goto_8
    if-ge v4, v1, :cond_29

    .line 419
    .line 420
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    add-int/lit8 v4, v4, 0x1

    .line 425
    .line 426
    check-cast v6, Lorg/jsoup/nodes/Element;

    .line 427
    .line 428
    if-nez v6, :cond_1d

    .line 429
    .line 430
    :cond_1c
    :goto_9
    move-object/from16 v16, v0

    .line 431
    .line 432
    move/from16 v17, v1

    .line 433
    .line 434
    goto/16 :goto_f

    .line 435
    .line 436
    :cond_1d
    invoke-virtual {v6}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 437
    .line 438
    .line 439
    move-result-object v6

    .line 440
    if-eqz v6, :cond_1c

    .line 441
    .line 442
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    if-nez v7, :cond_1e

    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_1e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 450
    .line 451
    .line 452
    move-result v7

    .line 453
    const/4 v12, 0x0

    .line 454
    :goto_a
    if-ge v12, v7, :cond_1b

    .line 455
    .line 456
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v13

    .line 460
    add-int/lit8 v12, v12, 0x1

    .line 461
    .line 462
    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 463
    .line 464
    if-nez v13, :cond_20

    .line 465
    .line 466
    :cond_1f
    :goto_b
    move-object/from16 v16, v0

    .line 467
    .line 468
    move/from16 v17, v1

    .line 469
    .line 470
    goto/16 :goto_e

    .line 471
    .line 472
    :cond_20
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 473
    .line 474
    .line 475
    move-result-object v14

    .line 476
    if-eqz v14, :cond_1f

    .line 477
    .line 478
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->size()I

    .line 479
    .line 480
    .line 481
    move-result v15

    .line 482
    if-nez v15, :cond_21

    .line 483
    .line 484
    goto :goto_b

    .line 485
    :cond_21
    invoke-virtual {v13, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v13

    .line 489
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 490
    .line 491
    .line 492
    move-result v15

    .line 493
    if-eqz v15, :cond_22

    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_22
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 497
    .line 498
    .line 499
    move-result v15

    .line 500
    move-object/from16 v16, v0

    .line 501
    .line 502
    const/4 v0, 0x0

    .line 503
    :goto_c
    if-ge v0, v15, :cond_28

    .line 504
    .line 505
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v17

    .line 509
    add-int/lit8 v0, v0, 0x1

    .line 510
    .line 511
    move/from16 v18, v0

    .line 512
    .line 513
    move-object/from16 v0, v17

    .line 514
    .line 515
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 516
    .line 517
    if-nez v0, :cond_23

    .line 518
    .line 519
    move/from16 v17, v1

    .line 520
    .line 521
    goto :goto_d

    .line 522
    :cond_23
    move/from16 v17, v1

    .line 523
    .line 524
    invoke-virtual {v0, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 529
    .line 530
    .line 531
    move-result v19

    .line 532
    if-eqz v19, :cond_24

    .line 533
    .line 534
    goto :goto_d

    .line 535
    :cond_24
    invoke-virtual {v1, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 540
    .line 541
    .line 542
    move-result v19

    .line 543
    if-eqz v19, :cond_25

    .line 544
    .line 545
    goto :goto_d

    .line 546
    :cond_25
    invoke-virtual {v0, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 551
    .line 552
    .line 553
    move-result v19

    .line 554
    if-eqz v19, :cond_26

    .line 555
    .line 556
    goto :goto_d

    .line 557
    :cond_26
    invoke-virtual {v0, v11, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 562
    .line 563
    .line 564
    move-result v19

    .line 565
    if-eqz v19, :cond_27

    .line 566
    .line 567
    :goto_d
    move/from16 v1, v17

    .line 568
    .line 569
    move/from16 v0, v18

    .line 570
    .line 571
    goto :goto_c

    .line 572
    :cond_27
    move-object v3, v0

    .line 573
    move-object v2, v1

    .line 574
    goto :goto_d

    .line 575
    :cond_28
    move-object/from16 v0, v16

    .line 576
    .line 577
    goto :goto_a

    .line 578
    :goto_e
    move-object/from16 v0, v16

    .line 579
    .line 580
    move/from16 v1, v17

    .line 581
    .line 582
    goto/16 :goto_a

    .line 583
    .line 584
    :goto_f
    move-object/from16 v0, v16

    .line 585
    .line 586
    move/from16 v1, v17

    .line 587
    .line 588
    goto/16 :goto_8

    .line 589
    .line 590
    :cond_29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-nez v0, :cond_2c

    .line 595
    .line 596
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-eqz v0, :cond_2a

    .line 601
    .line 602
    goto :goto_11

    .line 603
    :cond_2a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    const/4 v1, 0x0

    .line 608
    :goto_10
    if-ge v1, v0, :cond_2c

    .line 609
    .line 610
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    add-int/lit8 v1, v1, 0x1

    .line 615
    .line 616
    check-cast v4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 617
    .line 618
    if-nez v4, :cond_2b

    .line 619
    .line 620
    goto :goto_10

    .line 621
    :cond_2b
    iput-object v2, v4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->h:Ljava/lang/String;

    .line 622
    .line 623
    iput-object v3, v4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 624
    .line 625
    goto :goto_10

    .line 626
    :cond_2c
    :goto_11
    return-object v5

    .line 627
    :catch_4
    :goto_12
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    const-string v0, "<,>"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_7

    .line 20
    .line 21
    array-length v0, p0

    .line 22
    const/4 v2, 0x5

    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    aget-object v0, p0, v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_2
    const/4 v2, 0x1

    .line 33
    aget-object v2, p0, v2

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_3
    const/4 v3, 0x2

    .line 39
    aget-object v3, p0, v3

    .line 40
    .line 41
    if-nez v3, :cond_4

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_4
    const/4 v4, 0x3

    .line 45
    aget-object v4, p0, v4

    .line 46
    .line 47
    const/4 v5, 0x4

    .line 48
    aget-object p0, p0, v5

    .line 49
    .line 50
    const-string v5, "isNull"

    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_5

    .line 57
    .line 58
    move-object v4, v1

    .line 59
    :cond_5
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    move-object v1, p0

    .line 67
    :goto_0
    new-instance p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 68
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 73
    .line 74
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->g:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v3, p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v4, p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->h:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_7
    :goto_1
    return-object v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    move-object/from16 v6, p5

    .line 2
    .line 3
    if-nez v6, :cond_0

    .line 4
    .line 5
    if-nez p6, :cond_0

    .line 6
    .line 7
    goto/16 :goto_8

    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_12

    .line 14
    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_12

    .line 20
    .line 21
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_8

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    const/16 v1, 0xa

    .line 31
    .line 32
    const/4 v8, -0x1

    .line 33
    if-ge v0, v1, :cond_2

    .line 34
    .line 35
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseDzen;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    :cond_2
    move v9, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    invoke-static {v0, p0, p1, p4, p2}, Lcom/mycompany/app/down/DownParseDzen;->f(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    move v9, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_1
    if-ne v9, v8, :cond_5

    .line 55
    .line 56
    goto/16 :goto_8

    .line 57
    .line 58
    :cond_5
    iget v0, v6, Lcom/mycompany/app/main/MainDownSvc$DownItem;->w:I

    .line 59
    .line 60
    const/4 v10, 0x1

    .line 61
    if-le v0, v10, :cond_8

    .line 62
    .line 63
    add-int/lit8 v1, v0, -0x1

    .line 64
    .line 65
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseDzen;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_6
    invoke-static {v1, p0, p1, p4, p2}, Lcom/mycompany/app/down/DownParseDzen;->f(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_8

    .line 77
    .line 78
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseDzen;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_7

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_7
    invoke-static {v0, p0, p1, p4, p2}, Lcom/mycompany/app/down/DownParseDzen;->f(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_8

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_8
    :goto_2
    move v1, v8

    .line 93
    :goto_3
    if-ne v1, v8, :cond_f

    .line 94
    .line 95
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseDzen;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    :cond_9
    :goto_4
    move v1, v8

    .line 102
    goto :goto_6

    .line 103
    :cond_a
    const/16 v1, 0x64

    .line 104
    .line 105
    invoke-static {v1, p0, p1, p4, p2}, Lcom/mycompany/app/down/DownParseDzen;->f(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_b

    .line 110
    .line 111
    const/16 v2, 0x32

    .line 112
    .line 113
    move-object v0, p0

    .line 114
    move-object v3, p1

    .line 115
    move-object v5, p2

    .line 116
    move-object v4, p4

    .line 117
    move-object/from16 v7, p6

    .line 118
    .line 119
    invoke-static/range {v0 .. v7}, Lcom/mycompany/app/down/DownParseDzen;->d(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    goto :goto_6

    .line 124
    :cond_b
    const/16 v1, 0x32

    .line 125
    .line 126
    :goto_5
    if-le v1, v8, :cond_9

    .line 127
    .line 128
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseDzen;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_c

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_c
    invoke-static {v1, p0, p1, p4, p2}, Lcom/mycompany/app/down/DownParseDzen;->f(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_d

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_d
    add-int/lit8 v1, v1, -0x32

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :goto_6
    if-ne v1, v8, :cond_e

    .line 146
    .line 147
    move v1, v9

    .line 148
    :cond_e
    const/16 v2, 0x14

    .line 149
    .line 150
    move-object v0, p0

    .line 151
    move-object v3, p1

    .line 152
    move-object v5, p2

    .line 153
    move-object v4, p4

    .line 154
    move-object/from16 v6, p5

    .line 155
    .line 156
    move-object/from16 v7, p6

    .line 157
    .line 158
    invoke-static/range {v0 .. v7}, Lcom/mycompany/app/down/DownParseDzen;->d(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    const/16 v2, 0xa

    .line 163
    .line 164
    invoke-static/range {v0 .. v7}, Lcom/mycompany/app/down/DownParseDzen;->d(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    const/4 v2, 0x5

    .line 169
    invoke-static/range {v0 .. v7}, Lcom/mycompany/app/down/DownParseDzen;->d(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    const/4 v2, 0x2

    .line 174
    invoke-static/range {v0 .. v7}, Lcom/mycompany/app/down/DownParseDzen;->d(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    const/4 v2, 0x1

    .line 179
    invoke-static/range {v0 .. v7}, Lcom/mycompany/app/down/DownParseDzen;->d(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    add-int/2addr v1, v10

    .line 207
    :goto_7
    if-ge v9, v1, :cond_11

    .line 208
    .line 209
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseDzen;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_10

    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_10
    invoke-static {p1}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    const-string p3, "$Number$"

    .line 221
    .line 222
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p4, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    add-int/lit8 v9, v9, 0x1

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_11
    return-object p0

    .line 244
    :cond_12
    :goto_8
    const/4 p0, 0x0

    .line 245
    return-object p0
.end method

.method public static d(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I
    .locals 3

    .line 1
    :goto_0
    add-int v0, p1, p2

    .line 2
    .line 3
    move v2, v0

    .line 4
    move v0, p1

    .line 5
    move p1, v2

    .line 6
    const v1, 0x186a0

    .line 7
    .line 8
    .line 9
    if-ge p1, v1, :cond_1

    .line 10
    .line 11
    invoke-static {p6, p7}, Lcom/mycompany/app/down/DownParseDzen;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {p1, p0, p3, p4, p5}, Lcom/mycompany/app/down/DownParseDzen;->f(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v0
.end method

.method public static e(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget p0, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 4
    .line 5
    const/4 p1, 0x6

    .line 6
    if-ne p0, p1, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/mycompany/app/main/MainUtil$LoopCancelListener;->isCancelled()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    :goto_0
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static f(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "$Number$"

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p3, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1, p0, p4}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method
