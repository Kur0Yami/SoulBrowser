.class Lcom/mycompany/app/quick/QuickNewsGoogle$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickNewsGoogle;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$9;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

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
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle$9;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 4
    .line 5
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->E:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    iput-object v7, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->E:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v8, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->t:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz v8, :cond_2b

    .line 13
    .line 14
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto/16 :goto_17

    .line 21
    .line 22
    :cond_0
    if-nez v4, :cond_1

    .line 23
    .line 24
    goto/16 :goto_18

    .line 25
    .line 26
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    if-nez v9, :cond_2

    .line 31
    .line 32
    goto/16 :goto_18

    .line 33
    .line 34
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v10, 0x0

    .line 39
    move v3, v10

    .line 40
    move v5, v3

    .line 41
    move v6, v5

    .line 42
    :goto_0
    const/4 v11, -0x1

    .line 43
    if-ge v6, v2, :cond_12

    .line 44
    .line 45
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    check-cast v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 52
    .line 53
    iget-object v14, v1, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 54
    .line 55
    if-nez v14, :cond_3

    .line 56
    .line 57
    goto/16 :goto_17

    .line 58
    .line 59
    :cond_3
    if-nez v13, :cond_4

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_4
    iget-object v14, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->e:Ljava/lang/String;

    .line 64
    .line 65
    if-nez v14, :cond_5

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_5
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v15

    .line 72
    if-nez v15, :cond_6

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_6
    const/16 v7, 0x2f

    .line 76
    .line 77
    invoke-virtual {v14, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-ne v7, v11, :cond_7

    .line 82
    .line 83
    :goto_1
    const/4 v7, 0x0

    .line 84
    goto :goto_3

    .line 85
    :cond_7
    const/16 v12, 0x3f

    .line 86
    .line 87
    invoke-virtual {v14, v12}, Ljava/lang/String;->lastIndexOf(I)I

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-ne v12, v11, :cond_8

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_8
    move v15, v12

    .line 95
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    if-lt v7, v15, :cond_9

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_9
    invoke-virtual {v14, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    if-eqz v12, :cond_a

    .line 109
    .line 110
    move v12, v11

    .line 111
    goto :goto_4

    .line 112
    :cond_a
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-ltz v12, :cond_b

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_b
    if-lez v5, :cond_c

    .line 120
    .line 121
    invoke-static {v4, v10, v5, v7}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    :cond_c
    :goto_4
    if-gez v12, :cond_11

    .line 126
    .line 127
    iget-object v7, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v7}, Lcom/mycompany/app/quick/QuickNewsGoogle;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    if-eqz v12, :cond_d

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_d
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-ltz v11, :cond_e

    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_e
    if-lez v5, :cond_f

    .line 148
    .line 149
    invoke-static {v4, v10, v5, v7}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    :cond_f
    :goto_5
    if-gez v11, :cond_10

    .line 154
    .line 155
    :goto_6
    const/4 v7, 0x0

    .line 156
    goto :goto_0

    .line 157
    :cond_10
    move v12, v11

    .line 158
    :cond_11
    iput v12, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->m:I

    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    add-int v5, v12, v3

    .line 165
    .line 166
    iput v5, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->n:I

    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    goto :goto_6

    .line 170
    :cond_12
    if-nez v3, :cond_13

    .line 171
    .line 172
    goto/16 :goto_18

    .line 173
    .line 174
    :cond_13
    new-instance v2, Lcom/mycompany/app/quick/QuickNews$SortPos;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    .line 178
    .line 179
    :try_start_1
    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .line 181
    .line 182
    :catch_0
    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    move v12, v10

    .line 187
    :goto_7
    if-ge v12, v7, :cond_2c

    .line 188
    .line 189
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 190
    .line 191
    if-nez v2, :cond_14

    .line 192
    .line 193
    goto/16 :goto_17

    .line 194
    .line 195
    :cond_14
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    move-object v13, v2

    .line 200
    check-cast v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 201
    .line 202
    if-nez v13, :cond_16

    .line 203
    .line 204
    :cond_15
    :goto_8
    const/4 v0, 0x1

    .line 205
    goto/16 :goto_16

    .line 206
    .line 207
    :cond_16
    iget v2, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->n:I

    .line 208
    .line 209
    if-nez v2, :cond_17

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_17
    add-int/lit8 v3, v12, 0x1

    .line 213
    .line 214
    if-ltz v3, :cond_1a

    .line 215
    .line 216
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-lt v3, v5, :cond_18

    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_18
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 228
    .line 229
    if-nez v3, :cond_19

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_19
    iget v3, v3, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->m:I

    .line 233
    .line 234
    if-le v3, v2, :cond_1a

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_1a
    :goto_9
    move v3, v9

    .line 238
    :goto_a
    iget-object v5, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    const-string v14, "\""

    .line 245
    .line 246
    const-string v15, "\"http"

    .line 247
    .line 248
    if-eqz v5, :cond_23

    .line 249
    .line 250
    move v5, v2

    .line 251
    move/from16 v16, v11

    .line 252
    .line 253
    :goto_b
    if-ge v5, v3, :cond_1e

    .line 254
    .line 255
    add-int/lit8 v10, v5, 0x1

    .line 256
    .line 257
    if-ne v10, v3, :cond_1b

    .line 258
    .line 259
    goto :goto_e

    .line 260
    :cond_1b
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 261
    .line 262
    .line 263
    move-result v11

    .line 264
    const/16 v6, 0x2e

    .line 265
    .line 266
    if-ne v11, v6, :cond_1d

    .line 267
    .line 268
    sget-object v6, Lcom/mycompany/app/quick/QuickNewsGoogle;->I:[Ljava/lang/String;

    .line 269
    .line 270
    const/4 v11, 0x0

    .line 271
    :goto_c
    const/16 v0, 0x9

    .line 272
    .line 273
    if-ge v11, v0, :cond_1d

    .line 274
    .line 275
    aget-object v0, v6, v11

    .line 276
    .line 277
    invoke-virtual {v4, v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_1c

    .line 282
    .line 283
    move/from16 v16, v5

    .line 284
    .line 285
    goto :goto_d

    .line 286
    :cond_1c
    add-int/lit8 v11, v11, 0x1

    .line 287
    .line 288
    goto :goto_c

    .line 289
    :cond_1d
    :goto_d
    if-lez v16, :cond_1f

    .line 290
    .line 291
    :cond_1e
    :goto_e
    move/from16 v0, v16

    .line 292
    .line 293
    const/4 v5, 0x5

    .line 294
    goto :goto_f

    .line 295
    :cond_1f
    move-object/from16 v0, p0

    .line 296
    .line 297
    move v5, v10

    .line 298
    const/4 v10, 0x0

    .line 299
    const/4 v11, -0x1

    .line 300
    goto :goto_b

    .line 301
    :goto_f
    if-ge v0, v5, :cond_20

    .line 302
    .line 303
    :goto_10
    const/4 v0, 0x0

    .line 304
    goto :goto_11

    .line 305
    :cond_20
    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    if-gez v6, :cond_21

    .line 310
    .line 311
    goto :goto_10

    .line 312
    :cond_21
    add-int/lit8 v6, v6, 0x1

    .line 313
    .line 314
    invoke-virtual {v4, v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-gt v0, v6, :cond_22

    .line 319
    .line 320
    goto :goto_10

    .line 321
    :cond_22
    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    :goto_11
    iput-object v0, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 330
    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-nez v0, :cond_24

    .line 336
    .line 337
    const/4 v0, 0x1

    .line 338
    iput-boolean v0, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->u:Z

    .line 339
    .line 340
    goto :goto_12

    .line 341
    :cond_23
    const/4 v5, 0x5

    .line 342
    :cond_24
    :goto_12
    iget-object v0, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_26

    .line 349
    .line 350
    move/from16 v17, v5

    .line 351
    .line 352
    iget-object v5, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 353
    .line 354
    const/4 v6, 0x0

    .line 355
    move/from16 v0, v17

    .line 356
    .line 357
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/quick/QuickNewsGoogle;->j(IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    iput-object v5, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 362
    .line 363
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_25

    .line 368
    .line 369
    goto/16 :goto_8

    .line 370
    .line 371
    :cond_25
    const/4 v5, 0x1

    .line 372
    iput-boolean v5, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->u:Z

    .line 373
    .line 374
    goto :goto_13

    .line 375
    :cond_26
    move v0, v5

    .line 376
    :goto_13
    iget-object v5, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 377
    .line 378
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-eqz v5, :cond_15

    .line 383
    .line 384
    iget-object v5, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 385
    .line 386
    const/4 v6, 0x1

    .line 387
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/quick/QuickNewsGoogle;->j(IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    iput-object v5, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 392
    .line 393
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 394
    .line 395
    .line 396
    move-result v5

    .line 397
    if-eqz v5, :cond_2a

    .line 398
    .line 399
    iget-object v5, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 400
    .line 401
    iput-object v5, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-eqz v5, :cond_2a

    .line 408
    .line 409
    const-string v5, "favicon"

    .line 410
    .line 411
    invoke-static {v4, v2, v3, v5}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-ge v2, v0, :cond_27

    .line 416
    .line 417
    :goto_14
    const/4 v0, 0x0

    .line 418
    goto :goto_15

    .line 419
    :cond_27
    invoke-virtual {v4, v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-gez v0, :cond_28

    .line 424
    .line 425
    goto :goto_14

    .line 426
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 427
    .line 428
    invoke-virtual {v4, v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-gt v2, v0, :cond_29

    .line 433
    .line 434
    goto :goto_14

    .line 435
    :cond_29
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    :goto_15
    iput-object v0, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 444
    .line 445
    :cond_2a
    iget-object v0, v13, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 446
    .line 447
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-nez v0, :cond_15

    .line 452
    .line 453
    const/4 v0, 0x1

    .line 454
    iput-boolean v0, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->u:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 455
    .line 456
    :goto_16
    add-int/lit8 v12, v12, 0x1

    .line 457
    .line 458
    move-object/from16 v0, p0

    .line 459
    .line 460
    const/4 v10, 0x0

    .line 461
    const/4 v11, -0x1

    .line 462
    goto/16 :goto_7

    .line 463
    .line 464
    :cond_2b
    :goto_17
    const/4 v8, 0x0

    .line 465
    :catch_1
    :cond_2c
    :goto_18
    iget-boolean v0, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->u:Z

    .line 466
    .line 467
    if-nez v0, :cond_2d

    .line 468
    .line 469
    const/4 v0, 0x0

    .line 470
    invoke-virtual {v1, v0}, Lcom/mycompany/app/quick/QuickNewsGoogle;->f(Ljava/util/List;)V

    .line 471
    .line 472
    .line 473
    return-void

    .line 474
    :cond_2d
    invoke-virtual {v1, v8}, Lcom/mycompany/app/quick/QuickNewsGoogle;->g(Ljava/util/List;)Ljava/util/List;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {v1, v0}, Lcom/mycompany/app/quick/QuickNewsGoogle;->f(Ljava/util/List;)V

    .line 479
    .line 480
    .line 481
    return-void
.end method
