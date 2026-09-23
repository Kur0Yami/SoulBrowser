.class Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;->onTwitImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface$1;->c:Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface$1;->c:Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebSnsTwit$WebAppInterface;->a:Lcom/mycompany/app/web/WebSnsTwit;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebSnsTwit;->n:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/web/WebSnsTwit;->o:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iput-object v4, v1, Lcom/mycompany/app/web/WebSnsTwit;->n:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v4, v1, Lcom/mycompany/app/web/WebSnsTwit;->o:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v5, v1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 17
    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    goto/16 :goto_10

    .line 21
    .line 22
    :cond_0
    iget-object v5, v1, Lcom/mycompany/app/web/WebSnsTwit;->g:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    goto/16 :goto_f

    .line 31
    .line 32
    :cond_1
    :try_start_0
    invoke-static {v5, v2}, Lcom/mycompany/app/web/WebSnsTask;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    move-object v2, v5

    .line 43
    :cond_2
    const-string v5, "extended_entities"

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_1f

    .line 50
    .line 51
    array-length v5, v2

    .line 52
    if-nez v5, :cond_3

    .line 53
    .line 54
    goto/16 :goto_f

    .line 55
    .line 56
    :cond_3
    array-length v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 57
    move-object v8, v4

    .line 58
    move-object v9, v8

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    :goto_0
    if-ge v7, v5, :cond_18

    .line 62
    .line 63
    :try_start_1
    aget-object v11, v2, v7

    .line 64
    .line 65
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    if-eqz v12, :cond_5

    .line 70
    .line 71
    :cond_4
    :goto_1
    move-object/from16 v16, v2

    .line 72
    .line 73
    move/from16 v17, v5

    .line 74
    .line 75
    move/from16 v18, v7

    .line 76
    .line 77
    goto/16 :goto_a

    .line 78
    .line 79
    :cond_5
    const-string v12, "content_type"

    .line 80
    .line 81
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    if-eqz v12, :cond_4

    .line 86
    .line 87
    array-length v13, v12

    .line 88
    if-nez v13, :cond_6

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    array-length v13, v12

    .line 92
    move-object v15, v4

    .line 93
    const/4 v6, 0x0

    .line 94
    const/4 v14, 0x0

    .line 95
    :goto_2
    if-ge v14, v13, :cond_e

    .line 96
    .line 97
    aget-object v4, v12, v14

    .line 98
    .line 99
    const-string v0, "video/mp4"

    .line 100
    .line 101
    invoke-static {v4, v0}, Lcom/mycompany/app/web/WebSnsTask;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_8

    .line 110
    .line 111
    :cond_7
    :goto_3
    move-object/from16 v16, v2

    .line 112
    .line 113
    move/from16 v17, v5

    .line 114
    .line 115
    move/from16 v18, v7

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_8
    const-string v4, ".mp4"

    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_9

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_9
    if-nez v8, :cond_b

    .line 128
    .line 129
    new-instance v8, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :catch_0
    :cond_a
    move-object v4, v9

    .line 139
    goto/16 :goto_f

    .line 140
    .line 141
    :cond_b
    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_7

    .line 146
    .line 147
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :goto_4
    invoke-static {v0}, Lcom/mycompany/app/web/WebSnsTask;->k(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    if-eqz v4, :cond_c

    .line 155
    .line 156
    move-object/from16 v16, v2

    .line 157
    .line 158
    iget-object v2, v4, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 159
    .line 160
    iget v4, v4, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->j:I

    .line 161
    .line 162
    :goto_5
    move/from16 v17, v5

    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_c
    move-object/from16 v16, v2

    .line 166
    .line 167
    move v4, v6

    .line 168
    const/4 v2, 0x0

    .line 169
    goto :goto_5

    .line 170
    :goto_6
    new-instance v5, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 171
    .line 172
    move/from16 v18, v7

    .line 173
    .line 174
    const-string v7, "MP4"

    .line 175
    .line 176
    invoke-direct {v5, v6, v2, v7}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iput-object v0, v5, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 180
    .line 181
    iput v4, v5, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->j:I

    .line 182
    .line 183
    if-nez v15, :cond_d

    .line 184
    .line 185
    new-instance v15, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    :cond_d
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    add-int/lit8 v6, v6, 0x1

    .line 194
    .line 195
    :goto_7
    add-int/lit8 v14, v14, 0x1

    .line 196
    .line 197
    move-object/from16 v0, p0

    .line 198
    .line 199
    move-object/from16 v2, v16

    .line 200
    .line 201
    move/from16 v5, v17

    .line 202
    .line 203
    move/from16 v7, v18

    .line 204
    .line 205
    const/4 v4, 0x0

    .line 206
    goto :goto_2

    .line 207
    :cond_e
    move-object/from16 v16, v2

    .line 208
    .line 209
    move/from16 v17, v5

    .line 210
    .line 211
    move/from16 v18, v7

    .line 212
    .line 213
    if-eqz v15, :cond_17

    .line 214
    .line 215
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_f

    .line 220
    .line 221
    goto/16 :goto_a

    .line 222
    .line 223
    :cond_f
    new-instance v0, Lcom/mycompany/app/web/WebSnsTask$SortSize;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    .line 227
    .line 228
    :try_start_2
    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    .line 230
    .line 231
    :catch_1
    :try_start_3
    const-string v0, "media_url_https"

    .line 232
    .line 233
    invoke-static {v11, v0}, Lcom/mycompany/app/web/WebSnsTask;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_12

    .line 242
    .line 243
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    const/4 v4, 0x0

    .line 248
    :goto_8
    if-ge v4, v2, :cond_11

    .line 249
    .line 250
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    check-cast v5, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 257
    .line 258
    if-nez v5, :cond_10

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_10
    iput-object v0, v5, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-nez v2, :cond_12

    .line 269
    .line 270
    const/4 v2, 0x0

    .line 271
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-nez v2, :cond_12

    .line 280
    .line 281
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_12

    .line 286
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 290
    .line 291
    .line 292
    :try_start_4
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 293
    .line 294
    .line 295
    move-object v9, v0

    .line 296
    const/4 v10, 0x0

    .line 297
    goto :goto_b

    .line 298
    :catch_2
    move-object v4, v0

    .line 299
    goto/16 :goto_f

    .line 300
    .line 301
    :cond_12
    if-eqz v9, :cond_16

    .line 302
    .line 303
    :try_start_5
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_13

    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_13
    if-nez v10, :cond_14

    .line 311
    .line 312
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    const/4 v2, 0x1

    .line 317
    sub-int/2addr v0, v2

    .line 318
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 323
    .line 324
    const/4 v4, 0x2

    .line 325
    iput v4, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->k:I

    .line 326
    .line 327
    const/4 v0, 0x0

    .line 328
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    check-cast v4, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 333
    .line 334
    iput v2, v4, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->k:I

    .line 335
    .line 336
    :cond_14
    invoke-interface {v9, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    .line 338
    .line 339
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_15

    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_15
    if-nez v10, :cond_17

    .line 347
    .line 348
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 349
    .line 350
    .line 351
    move-result v10

    .line 352
    goto :goto_a

    .line 353
    :cond_16
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 356
    .line 357
    .line 358
    :try_start_6
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 359
    .line 360
    .line 361
    move-object v9, v0

    .line 362
    :cond_17
    :goto_a
    add-int/lit8 v7, v18, 0x1

    .line 363
    .line 364
    move-object/from16 v0, p0

    .line 365
    .line 366
    move-object/from16 v2, v16

    .line 367
    .line 368
    move/from16 v5, v17

    .line 369
    .line 370
    const/4 v4, 0x0

    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_18
    :goto_b
    if-eqz v9, :cond_19

    .line 374
    .line 375
    :try_start_7
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_1a

    .line 380
    .line 381
    :cond_19
    const/4 v4, 0x0

    .line 382
    goto :goto_f

    .line 383
    :cond_1a
    if-lez v10, :cond_1b

    .line 384
    .line 385
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-ge v10, v0, :cond_1b

    .line 390
    .line 391
    const/4 v0, 0x0

    .line 392
    invoke-interface {v9, v0, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 393
    .line 394
    .line 395
    move-result-object v9

    .line 396
    goto :goto_c

    .line 397
    :cond_1b
    const/4 v0, 0x0

    .line 398
    :goto_c
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    move v6, v0

    .line 403
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_a

    .line 408
    .line 409
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    check-cast v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 414
    .line 415
    if-nez v0, :cond_1c

    .line 416
    .line 417
    goto :goto_d

    .line 418
    :cond_1c
    iput v6, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->a:I

    .line 419
    .line 420
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 421
    .line 422
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-eqz v3, :cond_1d

    .line 427
    .line 428
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 429
    .line 430
    const/4 v4, 0x0

    .line 431
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUtil;->j1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    iput-object v3, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 436
    .line 437
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-eqz v3, :cond_1e

    .line 442
    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .line 447
    .line 448
    const-string v5, ""

    .line 449
    .line 450
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    iput-object v3, v0, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 461
    .line 462
    goto :goto_e

    .line 463
    :cond_1d
    const/4 v4, 0x0

    .line 464
    :cond_1e
    :goto_e
    add-int/lit8 v6, v6, 0x1

    .line 465
    .line 466
    goto :goto_d

    .line 467
    :catch_3
    :cond_1f
    :goto_f
    iget-object v0, v1, Lcom/mycompany/app/web/WebSnsTwit;->c:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 468
    .line 469
    if-eqz v0, :cond_20

    .line 470
    .line 471
    check-cast v0, Lcom/mycompany/app/web/WebSnsLoad$9;

    .line 472
    .line 473
    invoke-virtual {v0, v4}, Lcom/mycompany/app/web/WebSnsLoad$9;->a(Ljava/util/List;)V

    .line 474
    .line 475
    .line 476
    :cond_20
    :goto_10
    return-void
.end method
