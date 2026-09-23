.class Lcom/mycompany/app/dialog/DialogEditArea$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$1;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea$1;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_18

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditArea;->D0:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogEditArea;->D0:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    :cond_1
    :goto_0
    move-object v7, v3

    .line 24
    goto :goto_3

    .line 25
    :cond_2
    const-string v4, "!@!"

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    array-length v4, v2

    .line 34
    if-nez v4, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    array-length v4, v2

    .line 38
    move-object v7, v3

    .line 39
    move v6, v5

    .line 40
    :goto_1
    if-ge v6, v4, :cond_6

    .line 41
    .line 42
    aget-object v8, v2, v6

    .line 43
    .line 44
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    if-eqz v9, :cond_4

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    if-nez v7, :cond_5

    .line 52
    .line 53
    new-instance v7, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    :cond_5
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_6
    :goto_3
    const/4 v2, 0x1

    .line 65
    if-nez v7, :cond_7

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_8

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_8
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogEditArea;->r0:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogEditArea;->s0:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Ljava/lang/String;

    .line 88
    .line 89
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogEditArea;->t0:Ljava/lang/String;

    .line 90
    .line 91
    if-le v4, v2, :cond_9

    .line 92
    .line 93
    invoke-interface {v7, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogEditArea;->x0:Ljava/util/List;

    .line 98
    .line 99
    :cond_9
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditArea;->t0:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogEditArea;->u0:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogEditArea;->s0:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v6, "##"

    .line 114
    .line 115
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogEditArea;->u0:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogEditArea;->w0:Ljava/lang/String;

    .line 128
    .line 129
    :goto_4
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 130
    .line 131
    if-nez v4, :cond_a

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_a
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditArea;->t0:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    if-eqz v6, :cond_b

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_b
    const-string v6, ">"

    .line 144
    .line 145
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    if-eqz v6, :cond_10

    .line 150
    .line 151
    array-length v7, v6

    .line 152
    if-nez v7, :cond_c

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_c
    array-length v4, v6

    .line 156
    move v7, v5

    .line 157
    move v8, v7

    .line 158
    :goto_5
    if-ge v7, v4, :cond_13

    .line 159
    .line 160
    aget-object v9, v6, v7

    .line 161
    .line 162
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 163
    .line 164
    if-nez v10, :cond_d

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_d
    invoke-static {v8, v9}, Lcom/mycompany/app/dialog/DialogEditArea;->F(ILjava/lang/String;)Ljava/util/ArrayList;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    if-eqz v9, :cond_13

    .line 172
    .line 173
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-eqz v10, :cond_e

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_e
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogEditArea;->y0:Ljava/util/ArrayList;

    .line 181
    .line 182
    if-nez v10, :cond_f

    .line 183
    .line 184
    new-instance v10, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    iput-object v10, v1, Lcom/mycompany/app/dialog/DialogEditArea;->y0:Ljava/util/ArrayList;

    .line 190
    .line 191
    :cond_f
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogEditArea;->y0:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    add-int/lit8 v8, v8, 0x1

    .line 197
    .line 198
    add-int/lit8 v7, v7, 0x1

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_10
    :goto_6
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 202
    .line 203
    if-nez v6, :cond_11

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_11
    invoke-static {v5, v4}, Lcom/mycompany/app/dialog/DialogEditArea;->F(ILjava/lang/String;)Ljava/util/ArrayList;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    if-eqz v4, :cond_13

    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_12

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    iput-object v6, v1, Lcom/mycompany/app/dialog/DialogEditArea;->y0:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    :cond_13
    :goto_7
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 230
    .line 231
    if-nez v4, :cond_14

    .line 232
    .line 233
    goto/16 :goto_17

    .line 234
    .line 235
    :cond_14
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogEditArea;->y0:Ljava/util/ArrayList;

    .line 236
    .line 237
    if-eqz v4, :cond_3b

    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_15

    .line 244
    .line 245
    goto/16 :goto_17

    .line 246
    .line 247
    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    move-object v8, v3

    .line 252
    move v7, v5

    .line 253
    :goto_8
    if-ge v7, v6, :cond_38

    .line 254
    .line 255
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 256
    .line 257
    if-nez v9, :cond_16

    .line 258
    .line 259
    goto/16 :goto_17

    .line 260
    .line 261
    :cond_16
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    check-cast v9, Ljava/util/List;

    .line 266
    .line 267
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogEditArea;->x0:Ljava/util/List;

    .line 268
    .line 269
    if-eqz v10, :cond_18

    .line 270
    .line 271
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    if-lt v7, v11, :cond_17

    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_17
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    check-cast v10, Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    if-eqz v11, :cond_19

    .line 289
    .line 290
    :cond_18
    :goto_9
    move-object v10, v3

    .line 291
    goto :goto_a

    .line 292
    :cond_19
    const-string v11, "null"

    .line 293
    .line 294
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    if-eqz v11, :cond_1a

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_1a
    :goto_a
    if-eqz v9, :cond_27

    .line 302
    .line 303
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    if-eqz v11, :cond_1b

    .line 308
    .line 309
    goto/16 :goto_f

    .line 310
    .line 311
    :cond_1b
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 312
    .line 313
    .line 314
    move-result v11

    .line 315
    if-eqz v11, :cond_1c

    .line 316
    .line 317
    goto/16 :goto_10

    .line 318
    .line 319
    :cond_1c
    const/16 v11, 0x5b

    .line 320
    .line 321
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    .line 322
    .line 323
    .line 324
    move-result v12

    .line 325
    const/4 v13, -0x1

    .line 326
    if-ne v12, v13, :cond_1d

    .line 327
    .line 328
    goto/16 :goto_10

    .line 329
    .line 330
    :cond_1d
    :goto_b
    if-eq v12, v13, :cond_28

    .line 331
    .line 332
    add-int/lit8 v14, v12, 0x1

    .line 333
    .line 334
    const/16 v15, 0x5d

    .line 335
    .line 336
    invoke-virtual {v10, v15, v14}, Ljava/lang/String;->indexOf(II)I

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    if-ne v14, v13, :cond_1e

    .line 341
    .line 342
    goto :goto_10

    .line 343
    :cond_1e
    add-int/lit8 v14, v14, 0x1

    .line 344
    .line 345
    invoke-virtual {v10, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v12

    .line 349
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 350
    .line 351
    .line 352
    move-result v15

    .line 353
    if-eqz v15, :cond_1f

    .line 354
    .line 355
    goto :goto_10

    .line 356
    :cond_1f
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 357
    .line 358
    .line 359
    move-result v15

    .line 360
    if-eqz v15, :cond_20

    .line 361
    .line 362
    goto :goto_e

    .line 363
    :cond_20
    invoke-static {v12}, Lcom/mycompany/app/dialog/DialogEditArea;->E(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v15

    .line 367
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 368
    .line 369
    .line 370
    move-result v16

    .line 371
    if-eqz v16, :cond_21

    .line 372
    .line 373
    goto :goto_e

    .line 374
    :cond_21
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 375
    .line 376
    .line 377
    move-result v16

    .line 378
    if-eqz v16, :cond_22

    .line 379
    .line 380
    goto :goto_d

    .line 381
    :cond_22
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 382
    .line 383
    .line 384
    move-result v16

    .line 385
    if-eqz v16, :cond_23

    .line 386
    .line 387
    goto :goto_d

    .line 388
    :cond_23
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object v16

    .line 392
    :goto_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v17

    .line 396
    if-eqz v17, :cond_25

    .line 397
    .line 398
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v17

    .line 402
    move-object/from16 v3, v17

    .line 403
    .line 404
    check-cast v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 405
    .line 406
    iget-object v3, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->g:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    if-eqz v3, :cond_24

    .line 413
    .line 414
    const/4 v3, 0x0

    .line 415
    goto :goto_e

    .line 416
    :cond_24
    const/4 v3, 0x0

    .line 417
    goto :goto_c

    .line 418
    :cond_25
    :goto_d
    new-instance v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 419
    .line 420
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 421
    .line 422
    .line 423
    iput v2, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 424
    .line 425
    iput v7, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 426
    .line 427
    iput-object v15, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->g:Ljava/lang/String;

    .line 428
    .line 429
    iput-object v12, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->h:Ljava/lang/String;

    .line 430
    .line 431
    :goto_e
    if-eqz v3, :cond_26

    .line 432
    .line 433
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    :cond_26
    invoke-virtual {v10, v11, v14}, Ljava/lang/String;->indexOf(II)I

    .line 437
    .line 438
    .line 439
    move-result v12

    .line 440
    const/4 v3, 0x0

    .line 441
    goto :goto_b

    .line 442
    :cond_27
    :goto_f
    const/4 v9, 0x0

    .line 443
    :cond_28
    :goto_10
    if-eqz v9, :cond_34

    .line 444
    .line 445
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-eqz v3, :cond_29

    .line 450
    .line 451
    goto/16 :goto_13

    .line 452
    .line 453
    :cond_29
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    if-eqz v3, :cond_2a

    .line 458
    .line 459
    goto :goto_11

    .line 460
    :cond_2a
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    check-cast v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 465
    .line 466
    if-eqz v3, :cond_2b

    .line 467
    .line 468
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 469
    .line 470
    iput v10, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->d:I

    .line 471
    .line 472
    :cond_2b
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    sub-int/2addr v3, v2

    .line 477
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    check-cast v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 482
    .line 483
    if-eqz v3, :cond_2c

    .line 484
    .line 485
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 486
    .line 487
    iput v10, v3, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->e:I

    .line 488
    .line 489
    :cond_2c
    :goto_11
    const/4 v3, 0x2

    .line 490
    if-ge v6, v3, :cond_2d

    .line 491
    .line 492
    goto :goto_14

    .line 493
    :cond_2d
    if-nez v7, :cond_2e

    .line 494
    .line 495
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    sub-int/2addr v10, v2

    .line 500
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v10

    .line 504
    check-cast v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 505
    .line 506
    if-eqz v10, :cond_35

    .line 507
    .line 508
    iput v3, v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->c:I

    .line 509
    .line 510
    goto :goto_14

    .line 511
    :cond_2e
    add-int/lit8 v10, v6, -0x1

    .line 512
    .line 513
    if-ne v7, v10, :cond_30

    .line 514
    .line 515
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v10

    .line 519
    check-cast v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 520
    .line 521
    if-eqz v10, :cond_2f

    .line 522
    .line 523
    iput v2, v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->c:I

    .line 524
    .line 525
    :cond_2f
    new-instance v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 526
    .line 527
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 528
    .line 529
    .line 530
    iput v3, v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 531
    .line 532
    iput v7, v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 533
    .line 534
    invoke-interface {v9, v5, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    goto :goto_14

    .line 538
    :cond_30
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 539
    .line 540
    .line 541
    move-result v10

    .line 542
    if-ne v10, v2, :cond_31

    .line 543
    .line 544
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v10

    .line 548
    check-cast v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 549
    .line 550
    if-eqz v10, :cond_33

    .line 551
    .line 552
    const/4 v11, 0x3

    .line 553
    iput v11, v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->c:I

    .line 554
    .line 555
    goto :goto_12

    .line 556
    :cond_31
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v10

    .line 560
    check-cast v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 561
    .line 562
    if-eqz v10, :cond_32

    .line 563
    .line 564
    iput v2, v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->c:I

    .line 565
    .line 566
    :cond_32
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 567
    .line 568
    .line 569
    move-result v10

    .line 570
    sub-int/2addr v10, v2

    .line 571
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v10

    .line 575
    check-cast v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 576
    .line 577
    if-eqz v10, :cond_33

    .line 578
    .line 579
    iput v3, v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->c:I

    .line 580
    .line 581
    :cond_33
    :goto_12
    new-instance v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 582
    .line 583
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 584
    .line 585
    .line 586
    iput v3, v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->a:I

    .line 587
    .line 588
    iput v7, v10, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->b:I

    .line 589
    .line 590
    invoke-interface {v9, v5, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    goto :goto_14

    .line 594
    :cond_34
    :goto_13
    const/4 v9, 0x0

    .line 595
    :cond_35
    :goto_14
    if-eqz v9, :cond_38

    .line 596
    .line 597
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    if-eqz v3, :cond_36

    .line 602
    .line 603
    goto :goto_15

    .line 604
    :cond_36
    if-nez v8, :cond_37

    .line 605
    .line 606
    new-instance v8, Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .line 610
    .line 611
    :cond_37
    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    .line 613
    .line 614
    add-int/lit8 v7, v7, 0x1

    .line 615
    .line 616
    const/4 v3, 0x0

    .line 617
    goto/16 :goto_8

    .line 618
    .line 619
    :cond_38
    :goto_15
    if-eqz v8, :cond_3b

    .line 620
    .line 621
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    if-eqz v3, :cond_39

    .line 626
    .line 627
    goto :goto_17

    .line 628
    :cond_39
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    move v4, v5

    .line 633
    :goto_16
    if-ge v4, v3, :cond_3a

    .line 634
    .line 635
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v6

    .line 639
    add-int/lit8 v4, v4, 0x1

    .line 640
    .line 641
    check-cast v6, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;

    .line 642
    .line 643
    iput v5, v6, Lcom/mycompany/app/main/MainAreaAdapter$AreaItem;->f:I

    .line 644
    .line 645
    add-int/2addr v5, v2

    .line 646
    goto :goto_16

    .line 647
    :cond_3a
    iput-object v8, v1, Lcom/mycompany/app/dialog/DialogEditArea;->z0:Ljava/util/ArrayList;

    .line 648
    .line 649
    invoke-static {v8}, Lcom/mycompany/app/dialog/DialogEditArea;->C(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogEditArea;->A0:Ljava/util/ArrayList;

    .line 654
    .line 655
    :cond_3b
    :goto_17
    iget-object v1, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 656
    .line 657
    if-nez v1, :cond_3c

    .line 658
    .line 659
    :goto_18
    return-void

    .line 660
    :cond_3c
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditArea$1$1;

    .line 661
    .line 662
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditArea$1$1;-><init>(Lcom/mycompany/app/dialog/DialogEditArea$1;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 666
    .line 667
    .line 668
    return-void
.end method
