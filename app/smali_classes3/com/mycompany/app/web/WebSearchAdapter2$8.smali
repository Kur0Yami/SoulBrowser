.class Lcom/mycompany/app/web/WebSearchAdapter2$8;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSearchAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebSearchAdapter2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2$8;->a:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_1
    return-object v0
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2$8;->a:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->l:Z

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    :goto_0
    move-object/from16 v16, v4

    .line 13
    .line 14
    goto/16 :goto_19

    .line 15
    .line 16
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 39
    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->h:Z

    .line 50
    .line 51
    if-nez v6, :cond_3

    .line 52
    .line 53
    move-object v6, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object v6, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->c:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v6}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v6, v6, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 62
    .line 63
    :goto_1
    const/4 v7, -0x1

    .line 64
    const/4 v8, 0x0

    .line 65
    if-eqz v6, :cond_d

    .line 66
    .line 67
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-nez v9, :cond_d

    .line 72
    .line 73
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    move-object v9, v4

    .line 78
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-eqz v10, :cond_b

    .line 83
    .line 84
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    check-cast v10, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 89
    .line 90
    iget-object v11, v10, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    if-eqz v11, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    iget-object v11, v10, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 100
    .line 101
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 102
    .line 103
    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    if-eqz v2, :cond_8

    .line 108
    .line 109
    iget-object v13, v10, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v13, v11, v3}, Lcom/mycompany/app/main/InitialSearch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    if-nez v14, :cond_8

    .line 120
    .line 121
    invoke-virtual {v13, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    iput-object v11, v10, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    .line 126
    .line 127
    if-nez v9, :cond_6

    .line 128
    .line 129
    new-instance v9, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .line 133
    .line 134
    :cond_6
    iget-boolean v11, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 135
    .line 136
    if-eqz v11, :cond_7

    .line 137
    .line 138
    invoke-interface {v9, v8, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_8
    invoke-virtual {v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    if-eq v11, v7, :cond_4

    .line 151
    .line 152
    iput-object v3, v10, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    .line 153
    .line 154
    if-nez v9, :cond_9

    .line 155
    .line 156
    new-instance v9, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    :cond_9
    iget-boolean v11, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 162
    .line 163
    if-eqz v11, :cond_a

    .line 164
    .line 165
    invoke-interface {v9, v8, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_a
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_b
    if-eqz v9, :cond_d

    .line 174
    .line 175
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    if-nez v6, :cond_d

    .line 180
    .line 181
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 182
    .line 183
    if-eqz v6, :cond_c

    .line 184
    .line 185
    invoke-virtual {v5, v8, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_c
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    .line 191
    .line 192
    :cond_d
    :goto_3
    sget v6, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 193
    .line 194
    const/4 v9, 0x1

    .line 195
    if-eqz v6, :cond_47

    .line 196
    .line 197
    const-string v6, "UTF-8"

    .line 198
    .line 199
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    if-eqz v10, :cond_e

    .line 204
    .line 205
    :goto_4
    move/from16 v21, v2

    .line 206
    .line 207
    move-object v10, v4

    .line 208
    move-object/from16 v16, v10

    .line 209
    .line 210
    move/from16 v18, v9

    .line 211
    .line 212
    goto/16 :goto_15

    .line 213
    .line 214
    :cond_e
    invoke-virtual {v1, v9}, Lcom/mycompany/app/web/WebSearchAdapter2;->i(Z)V

    .line 215
    .line 216
    .line 217
    :try_start_0
    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_5

    .line 222
    :catch_0
    move-object v6, v3

    .line 223
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    iget-object v11, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->m:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    iget-object v14, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->c:Landroid/content/Context;

    .line 237
    .line 238
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    const/16 v13, 0x3e8

    .line 243
    .line 244
    const/16 v17, 0x0

    .line 245
    .line 246
    const/16 v12, 0x3e8

    .line 247
    .line 248
    const/16 v16, 0x0

    .line 249
    .line 250
    invoke-static/range {v12 .. v17}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    iput-object v6, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->q:Ljava/net/HttpURLConnection;

    .line 255
    .line 256
    if-nez v6, :cond_f

    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_f
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-static {v4, v6, v8}, Lcom/mycompany/app/main/MainUtil;->A3(Landroid/content/Context;Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    :try_start_2
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 271
    goto :goto_6

    .line 272
    :catch_1
    move-object v6, v4

    .line 273
    :catch_2
    :goto_6
    invoke-virtual {v1, v9}, Lcom/mycompany/app/web/WebSearchAdapter2;->i(Z)V

    .line 274
    .line 275
    .line 276
    sget v10, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 277
    .line 278
    const-string v11, "http://"

    .line 279
    .line 280
    const-string v12, "https://"

    .line 281
    .line 282
    const-string v13, ","

    .line 283
    .line 284
    const/16 v14, 0x5d

    .line 285
    .line 286
    const/16 v15, 0x5b

    .line 287
    .line 288
    move-object/from16 v16, v4

    .line 289
    .line 290
    const/16 v4, 0x22

    .line 291
    .line 292
    if-ne v10, v9, :cond_21

    .line 293
    .line 294
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    if-eqz v10, :cond_11

    .line 299
    .line 300
    :cond_10
    :goto_7
    move/from16 v18, v9

    .line 301
    .line 302
    move-object/from16 v10, v16

    .line 303
    .line 304
    goto/16 :goto_b

    .line 305
    .line 306
    :cond_11
    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(I)I

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    if-ne v10, v7, :cond_12

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_12
    add-int/2addr v10, v9

    .line 314
    invoke-virtual {v6, v14, v10}, Ljava/lang/String;->indexOf(II)I

    .line 315
    .line 316
    .line 317
    move-result v14

    .line 318
    if-ne v14, v7, :cond_13

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_13
    if-lt v10, v14, :cond_14

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_14
    invoke-virtual {v6, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    if-eqz v10, :cond_15

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_15
    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    if-eqz v6, :cond_10

    .line 340
    .line 341
    array-length v10, v6

    .line 342
    if-nez v10, :cond_16

    .line 343
    .line 344
    goto :goto_7

    .line 345
    :cond_16
    new-instance v10, Ljava/util/ArrayList;

    .line 346
    .line 347
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .line 349
    .line 350
    array-length v13, v6

    .line 351
    move v14, v8

    .line 352
    move v15, v9

    .line 353
    :goto_8
    if-ge v14, v13, :cond_20

    .line 354
    .line 355
    aget-object v8, v6, v14

    .line 356
    .line 357
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v17

    .line 361
    if-eqz v17, :cond_17

    .line 362
    .line 363
    :goto_9
    move/from16 v18, v9

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_17
    invoke-virtual {v8, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 367
    .line 368
    .line 369
    move-result v7

    .line 370
    if-gt v7, v9, :cond_18

    .line 371
    .line 372
    goto :goto_9

    .line 373
    :cond_18
    move/from16 v18, v9

    .line 374
    .line 375
    add-int/lit8 v9, v7, -0x1

    .line 376
    .line 377
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->lastIndexOf(II)I

    .line 378
    .line 379
    .line 380
    move-result v9

    .line 381
    const/4 v4, -0x1

    .line 382
    if-ne v9, v4, :cond_19

    .line 383
    .line 384
    goto :goto_a

    .line 385
    :cond_19
    add-int/lit8 v9, v9, 0x1

    .line 386
    .line 387
    if-lt v9, v7, :cond_1a

    .line 388
    .line 389
    goto :goto_a

    .line 390
    :cond_1a
    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    if-eqz v7, :cond_1b

    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_1b
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 406
    .line 407
    .line 408
    move-result v7

    .line 409
    if-eqz v7, :cond_1c

    .line 410
    .line 411
    goto :goto_a

    .line 412
    :cond_1c
    if-eqz v15, :cond_1d

    .line 413
    .line 414
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    if-eqz v7, :cond_1d

    .line 419
    .line 420
    const/4 v15, 0x0

    .line 421
    goto :goto_a

    .line 422
    :cond_1d
    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    if-nez v7, :cond_1f

    .line 427
    .line 428
    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    if-eqz v7, :cond_1e

    .line 433
    .line 434
    goto :goto_a

    .line 435
    :cond_1e
    new-instance v7, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 436
    .line 437
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 438
    .line 439
    .line 440
    iput-object v4, v7, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    :cond_1f
    :goto_a
    add-int/lit8 v14, v14, 0x1

    .line 446
    .line 447
    move/from16 v9, v18

    .line 448
    .line 449
    const/16 v4, 0x22

    .line 450
    .line 451
    const/4 v7, -0x1

    .line 452
    const/4 v8, 0x0

    .line 453
    goto :goto_8

    .line 454
    :cond_20
    move/from16 v18, v9

    .line 455
    .line 456
    :goto_b
    move/from16 v21, v2

    .line 457
    .line 458
    goto/16 :goto_15

    .line 459
    .line 460
    :cond_21
    move/from16 v18, v9

    .line 461
    .line 462
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_23

    .line 467
    .line 468
    :cond_22
    :goto_c
    move/from16 v21, v2

    .line 469
    .line 470
    move-object/from16 v10, v16

    .line 471
    .line 472
    goto/16 :goto_15

    .line 473
    .line 474
    :cond_23
    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(I)I

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    const/4 v7, -0x1

    .line 479
    if-ne v4, v7, :cond_24

    .line 480
    .line 481
    goto :goto_c

    .line 482
    :cond_24
    add-int/lit8 v4, v4, 0x1

    .line 483
    .line 484
    invoke-virtual {v6, v14, v4}, Ljava/lang/String;->indexOf(II)I

    .line 485
    .line 486
    .line 487
    move-result v8

    .line 488
    if-ne v8, v7, :cond_25

    .line 489
    .line 490
    goto :goto_c

    .line 491
    :cond_25
    if-lt v4, v8, :cond_26

    .line 492
    .line 493
    goto :goto_c

    .line 494
    :cond_26
    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    if-eqz v7, :cond_27

    .line 503
    .line 504
    goto :goto_c

    .line 505
    :cond_27
    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    if-eqz v4, :cond_22

    .line 510
    .line 511
    array-length v7, v4

    .line 512
    if-nez v7, :cond_28

    .line 513
    .line 514
    goto :goto_c

    .line 515
    :cond_28
    add-int/lit8 v8, v8, 0x1

    .line 516
    .line 517
    array-length v7, v4

    .line 518
    add-int/lit8 v7, v7, -0x1

    .line 519
    .line 520
    new-instance v9, Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .line 524
    .line 525
    array-length v10, v4

    .line 526
    move/from16 v20, v18

    .line 527
    .line 528
    const/4 v14, 0x0

    .line 529
    const/16 v19, 0x0

    .line 530
    .line 531
    :goto_d
    if-ge v14, v10, :cond_32

    .line 532
    .line 533
    aget-object v15, v4, v14

    .line 534
    .line 535
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 536
    .line 537
    .line 538
    move-result v21

    .line 539
    if-eqz v21, :cond_29

    .line 540
    .line 541
    move/from16 v21, v2

    .line 542
    .line 543
    :goto_e
    move-object/from16 v23, v4

    .line 544
    .line 545
    goto/16 :goto_11

    .line 546
    .line 547
    :cond_29
    move/from16 v21, v2

    .line 548
    .line 549
    const/16 v0, 0x22

    .line 550
    .line 551
    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    const/4 v0, -0x1

    .line 556
    if-ne v2, v0, :cond_2a

    .line 557
    .line 558
    goto :goto_e

    .line 559
    :cond_2a
    move/from16 v22, v2

    .line 560
    .line 561
    move-object/from16 v23, v4

    .line 562
    .line 563
    const/16 v2, 0x22

    .line 564
    .line 565
    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    if-ne v4, v0, :cond_2b

    .line 570
    .line 571
    goto :goto_11

    .line 572
    :cond_2b
    add-int/lit8 v2, v22, 0x1

    .line 573
    .line 574
    if-lt v2, v4, :cond_2c

    .line 575
    .line 576
    goto :goto_11

    .line 577
    :cond_2c
    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 582
    .line 583
    .line 584
    move-result v2

    .line 585
    if-eqz v2, :cond_2d

    .line 586
    .line 587
    goto :goto_11

    .line 588
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_2e

    .line 597
    .line 598
    goto :goto_11

    .line 599
    :cond_2e
    if-eqz v20, :cond_2f

    .line 600
    .line 601
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    if-eqz v2, :cond_2f

    .line 606
    .line 607
    const/16 v20, 0x0

    .line 608
    .line 609
    goto :goto_11

    .line 610
    :cond_2f
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 611
    .line 612
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    if-nez v4, :cond_31

    .line 620
    .line 621
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    if-eqz v4, :cond_30

    .line 626
    .line 627
    goto :goto_f

    .line 628
    :cond_30
    iput-object v0, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 629
    .line 630
    goto :goto_10

    .line 631
    :cond_31
    :goto_f
    iput-object v0, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 632
    .line 633
    const/4 v4, 0x0

    .line 634
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->H1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    iput-object v0, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 639
    .line 640
    move/from16 v19, v18

    .line 641
    .line 642
    :goto_10
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    :goto_11
    add-int/lit8 v14, v14, 0x1

    .line 646
    .line 647
    move-object/from16 v0, p0

    .line 648
    .line 649
    move/from16 v2, v21

    .line 650
    .line 651
    move-object/from16 v4, v23

    .line 652
    .line 653
    const/16 v15, 0x5b

    .line 654
    .line 655
    goto :goto_d

    .line 656
    :cond_32
    move/from16 v21, v2

    .line 657
    .line 658
    if-nez v19, :cond_33

    .line 659
    .line 660
    goto/16 :goto_14

    .line 661
    .line 662
    :cond_33
    const/16 v0, 0x5b

    .line 663
    .line 664
    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->indexOf(II)I

    .line 665
    .line 666
    .line 667
    move-result v0

    .line 668
    const/4 v4, -0x1

    .line 669
    if-ne v0, v4, :cond_34

    .line 670
    .line 671
    goto/16 :goto_14

    .line 672
    .line 673
    :cond_34
    add-int/lit8 v0, v0, 0x1

    .line 674
    .line 675
    const/16 v2, 0x5d

    .line 676
    .line 677
    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->indexOf(II)I

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    if-ne v2, v4, :cond_35

    .line 682
    .line 683
    goto/16 :goto_14

    .line 684
    .line 685
    :cond_35
    if-lt v0, v2, :cond_36

    .line 686
    .line 687
    goto/16 :goto_14

    .line 688
    .line 689
    :cond_36
    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 694
    .line 695
    .line 696
    move-result v2

    .line 697
    if-eqz v2, :cond_37

    .line 698
    .line 699
    goto/16 :goto_14

    .line 700
    .line 701
    :cond_37
    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    if-eqz v0, :cond_42

    .line 706
    .line 707
    array-length v2, v0

    .line 708
    if-eq v2, v7, :cond_38

    .line 709
    .line 710
    goto :goto_14

    .line 711
    :cond_38
    const/4 v2, 0x0

    .line 712
    :goto_12
    if-ge v2, v7, :cond_42

    .line 713
    .line 714
    aget-object v4, v0, v2

    .line 715
    .line 716
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 717
    .line 718
    .line 719
    move-result v6

    .line 720
    if-eqz v6, :cond_39

    .line 721
    .line 722
    const/16 v6, 0x22

    .line 723
    .line 724
    const/4 v10, -0x1

    .line 725
    goto :goto_13

    .line 726
    :cond_39
    const/16 v6, 0x22

    .line 727
    .line 728
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    .line 729
    .line 730
    .line 731
    move-result v8

    .line 732
    const/4 v10, -0x1

    .line 733
    if-ne v8, v10, :cond_3a

    .line 734
    .line 735
    goto :goto_13

    .line 736
    :cond_3a
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 737
    .line 738
    .line 739
    move-result v11

    .line 740
    if-ne v11, v10, :cond_3b

    .line 741
    .line 742
    goto :goto_13

    .line 743
    :cond_3b
    add-int/lit8 v8, v8, 0x1

    .line 744
    .line 745
    if-lt v8, v11, :cond_3c

    .line 746
    .line 747
    goto :goto_13

    .line 748
    :cond_3c
    invoke-virtual {v4, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 753
    .line 754
    .line 755
    move-result v8

    .line 756
    if-eqz v8, :cond_3d

    .line 757
    .line 758
    goto :goto_13

    .line 759
    :cond_3d
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v4

    .line 763
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 764
    .line 765
    .line 766
    move-result v8

    .line 767
    if-eqz v8, :cond_3e

    .line 768
    .line 769
    goto :goto_13

    .line 770
    :cond_3e
    add-int/lit8 v8, v2, 0x1

    .line 771
    .line 772
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 773
    .line 774
    .line 775
    move-result v11

    .line 776
    if-lt v8, v11, :cond_3f

    .line 777
    .line 778
    goto :goto_13

    .line 779
    :cond_3f
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v8

    .line 783
    check-cast v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 784
    .line 785
    if-nez v8, :cond_40

    .line 786
    .line 787
    goto :goto_13

    .line 788
    :cond_40
    iget-object v11, v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 789
    .line 790
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 791
    .line 792
    .line 793
    move-result v11

    .line 794
    if-eqz v11, :cond_41

    .line 795
    .line 796
    goto :goto_13

    .line 797
    :cond_41
    iput-object v4, v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 798
    .line 799
    :goto_13
    add-int/lit8 v2, v2, 0x1

    .line 800
    .line 801
    goto :goto_12

    .line 802
    :cond_42
    :goto_14
    move-object v10, v9

    .line 803
    :goto_15
    if-eqz v10, :cond_48

    .line 804
    .line 805
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    if-nez v0, :cond_48

    .line 810
    .line 811
    if-eqz v21, :cond_45

    .line 812
    .line 813
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 814
    .line 815
    .line 816
    move-result v0

    .line 817
    const/4 v2, 0x0

    .line 818
    :cond_43
    :goto_16
    if-ge v2, v0, :cond_45

    .line 819
    .line 820
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v4

    .line 824
    add-int/lit8 v2, v2, 0x1

    .line 825
    .line 826
    check-cast v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 827
    .line 828
    iget-object v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 829
    .line 830
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 831
    .line 832
    .line 833
    move-result v6

    .line 834
    if-eqz v6, :cond_44

    .line 835
    .line 836
    goto :goto_16

    .line 837
    :cond_44
    iget-object v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 838
    .line 839
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 840
    .line 841
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v6

    .line 845
    iget-object v8, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 846
    .line 847
    invoke-static {v8, v6, v3}, Lcom/mycompany/app/main/InitialSearch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v6

    .line 851
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 852
    .line 853
    .line 854
    move-result v8

    .line 855
    if-nez v8, :cond_43

    .line 856
    .line 857
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v6

    .line 861
    iput-object v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    .line 862
    .line 863
    goto :goto_16

    .line 864
    :cond_45
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 865
    .line 866
    if-eqz v0, :cond_46

    .line 867
    .line 868
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 869
    .line 870
    .line 871
    const/4 v4, 0x0

    .line 872
    invoke-virtual {v5, v4, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 873
    .line 874
    .line 875
    goto :goto_17

    .line 876
    :cond_46
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 877
    .line 878
    .line 879
    goto :goto_17

    .line 880
    :cond_47
    move-object/from16 v16, v4

    .line 881
    .line 882
    move/from16 v18, v9

    .line 883
    .line 884
    :cond_48
    :goto_17
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->i:Ljava/util/List;

    .line 885
    .line 886
    if-eqz v0, :cond_49

    .line 887
    .line 888
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 889
    .line 890
    .line 891
    move-result v0

    .line 892
    if-nez v0, :cond_49

    .line 893
    .line 894
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->i:Ljava/util/List;

    .line 895
    .line 896
    sget v2, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 897
    .line 898
    invoke-static {v1, v0, v5, v3, v2}, Lcom/mycompany/app/web/WebSearchAdapter2;->c(Lcom/mycompany/app/web/WebSearchAdapter2;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 899
    .line 900
    .line 901
    :cond_49
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->j:Ljava/util/List;

    .line 902
    .line 903
    if-eqz v0, :cond_4a

    .line 904
    .line 905
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 906
    .line 907
    .line 908
    move-result v0

    .line 909
    if-nez v0, :cond_4a

    .line 910
    .line 911
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->j:Ljava/util/List;

    .line 912
    .line 913
    sget v2, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 914
    .line 915
    invoke-static {v1, v0, v5, v3, v2}, Lcom/mycompany/app/web/WebSearchAdapter2;->c(Lcom/mycompany/app/web/WebSearchAdapter2;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 916
    .line 917
    .line 918
    :cond_4a
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->k:Ljava/util/List;

    .line 919
    .line 920
    if-eqz v0, :cond_4b

    .line 921
    .line 922
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 923
    .line 924
    .line 925
    move-result v0

    .line 926
    if-nez v0, :cond_4b

    .line 927
    .line 928
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->k:Ljava/util/List;

    .line 929
    .line 930
    sget v2, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 931
    .line 932
    invoke-static {v1, v0, v5, v3, v2}, Lcom/mycompany/app/web/WebSearchAdapter2;->c(Lcom/mycompany/app/web/WebSearchAdapter2;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 933
    .line 934
    .line 935
    :cond_4b
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 936
    .line 937
    if-eqz v0, :cond_4d

    .line 938
    .line 939
    invoke-interface {v0}, Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;->d()Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_4d

    .line 944
    .line 945
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 946
    .line 947
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 948
    .line 949
    .line 950
    const/4 v2, 0x2

    .line 951
    iput v2, v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 952
    .line 953
    iput-object v3, v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 954
    .line 955
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 956
    .line 957
    if-eqz v2, :cond_4c

    .line 958
    .line 959
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    .line 961
    .line 962
    goto :goto_18

    .line 963
    :cond_4c
    const/4 v4, 0x0

    .line 964
    invoke-virtual {v5, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 965
    .line 966
    .line 967
    :cond_4d
    :goto_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    if-eqz v0, :cond_4e

    .line 972
    .line 973
    :goto_19
    return-object v16

    .line 974
    :cond_4e
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 975
    .line 976
    const/4 v2, 0x3

    .line 977
    if-eqz v0, :cond_51

    .line 978
    .line 979
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 980
    .line 981
    if-nez v0, :cond_4f

    .line 982
    .line 983
    goto :goto_1a

    .line 984
    :cond_4f
    invoke-interface {v0}, Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;->b()I

    .line 985
    .line 986
    .line 987
    move-result v0

    .line 988
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 989
    .line 990
    if-le v0, v3, :cond_50

    .line 991
    .line 992
    sub-int/2addr v0, v3

    .line 993
    div-int v4, v0, v3

    .line 994
    .line 995
    goto :goto_1b

    .line 996
    :cond_50
    :goto_1a
    const/4 v4, 0x0

    .line 997
    :goto_1b
    iput v4, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->s:I

    .line 998
    .line 999
    const/4 v4, 0x0

    .line 1000
    :goto_1c
    iget v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->s:I

    .line 1001
    .line 1002
    if-ge v4, v0, :cond_52

    .line 1003
    .line 1004
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 1005
    .line 1006
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1007
    .line 1008
    .line 1009
    iput v2, v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 1010
    .line 1011
    const/4 v3, 0x0

    .line 1012
    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1013
    .line 1014
    .line 1015
    add-int/lit8 v4, v4, 0x1

    .line 1016
    .line 1017
    goto :goto_1c

    .line 1018
    :cond_51
    move/from16 v0, v18

    .line 1019
    .line 1020
    iput v0, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->s:I

    .line 1021
    .line 1022
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 1023
    .line 1024
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1025
    .line 1026
    .line 1027
    iput v2, v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 1028
    .line 1029
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    :cond_52
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 1033
    .line 1034
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 1035
    .line 1036
    .line 1037
    iput-object v5, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1038
    .line 1039
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1040
    .line 1041
    .line 1042
    move-result v1

    .line 1043
    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 1044
    .line 1045
    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2$8;->a:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->n:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/4 v2, 0x1

    .line 12
    if-eqz p2, :cond_6

    .line 13
    .line 14
    iget v3, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 15
    .line 16
    iget v4, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->s:I

    .line 17
    .line 18
    sub-int/2addr v3, v4

    .line 19
    if-gtz v3, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->n:Ljava/lang/String;

    .line 49
    .line 50
    :cond_2
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Ljava/util/List;

    .line 53
    .line 54
    new-instance p2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 74
    .line 75
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iput-object p2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->A:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->u:Z

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->u:Z

    .line 87
    .line 88
    iget-object p1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->v:Landroid/os/Handler;

    .line 89
    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    new-instance p2, Lcom/mycompany/app/web/WebSearchAdapter2$9;

    .line 94
    .line 95
    invoke-direct {p2, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$9;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_6
    :goto_1
    iput-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->A:Ljava/util/ArrayList;

    .line 103
    .line 104
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->u:Z

    .line 105
    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->u:Z

    .line 110
    .line 111
    iget-object p1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->v:Landroid/os/Handler;

    .line 112
    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    :goto_2
    return-void

    .line 116
    :cond_8
    new-instance p2, Lcom/mycompany/app/web/WebSearchAdapter2$9;

    .line 117
    .line 118
    invoke-direct {p2, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$9;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    .line 123
    .line 124
    return-void
.end method
