.class Lcom/mycompany/app/web/WebSearchAdapter$8;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSearchAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter$8;->a:Lcom/mycompany/app/web/WebSearchAdapter;

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
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter$8;->a:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebSearchAdapter;->j:Z

    .line 6
    .line 7
    iget-boolean v3, v1, Lcom/mycompany/app/web/WebSearchAdapter;->q:Z

    .line 8
    .line 9
    iget-object v4, v1, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    :goto_0
    move-object/from16 v16, v5

    .line 15
    .line 16
    goto/16 :goto_19

    .line 17
    .line 18
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 41
    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v6, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-boolean v7, v1, Lcom/mycompany/app/web/WebSearchAdapter;->f:Z

    .line 52
    .line 53
    if-nez v7, :cond_3

    .line 54
    .line 55
    move-object v7, v5

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget-object v7, v1, Lcom/mycompany/app/web/WebSearchAdapter;->d:Lcom/mycompany/app/web/WebViewActivity;

    .line 58
    .line 59
    invoke-static {v7}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iget-object v7, v7, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 64
    .line 65
    :goto_1
    const/4 v8, -0x1

    .line 66
    const/4 v9, 0x0

    .line 67
    if-eqz v7, :cond_d

    .line 68
    .line 69
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-nez v10, :cond_d

    .line 74
    .line 75
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object v10, v5

    .line 80
    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_b

    .line 85
    .line 86
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    check-cast v11, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 91
    .line 92
    iget-object v12, v11, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    if-eqz v12, :cond_5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    iget-object v12, v11, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 102
    .line 103
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 104
    .line 105
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    if-eqz v2, :cond_8

    .line 110
    .line 111
    iget-object v14, v11, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v14, v12, v4}, Lcom/mycompany/app/main/InitialSearch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v15

    .line 121
    if-nez v15, :cond_8

    .line 122
    .line 123
    invoke-virtual {v14, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    iput-object v12, v11, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    .line 128
    .line 129
    if-nez v10, :cond_6

    .line 130
    .line 131
    new-instance v10, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    :cond_6
    if-eqz v3, :cond_7

    .line 137
    .line 138
    invoke-interface {v10, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_8
    invoke-virtual {v12, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v12

    .line 150
    if-eq v12, v8, :cond_4

    .line 151
    .line 152
    iput-object v4, v11, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    .line 153
    .line 154
    if-nez v10, :cond_9

    .line 155
    .line 156
    new-instance v10, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    :cond_9
    if-eqz v3, :cond_a

    .line 162
    .line 163
    invoke-interface {v10, v9, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_a
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_b
    if-eqz v10, :cond_d

    .line 172
    .line 173
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_d

    .line 178
    .line 179
    if-eqz v3, :cond_c

    .line 180
    .line 181
    invoke-virtual {v6, v9, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_c
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    .line 187
    .line 188
    :cond_d
    :goto_3
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 189
    .line 190
    if-eqz v7, :cond_47

    .line 191
    .line 192
    const-string v7, "UTF-8"

    .line 193
    .line 194
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_e

    .line 199
    .line 200
    :goto_4
    move/from16 v22, v2

    .line 201
    .line 202
    move/from16 v24, v3

    .line 203
    .line 204
    move-object v7, v5

    .line 205
    move-object/from16 v16, v7

    .line 206
    .line 207
    goto/16 :goto_15

    .line 208
    .line 209
    :cond_e
    const/4 v10, 0x1

    .line 210
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebSearchAdapter;->B(Z)V

    .line 211
    .line 212
    .line 213
    :try_start_0
    invoke-static {v4, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_5

    .line 218
    :catch_0
    move-object v7, v4

    .line 219
    :goto_5
    new-instance v11, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    iget-object v12, v1, Lcom/mycompany/app/web/WebSearchAdapter;->k:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v15, v1, Lcom/mycompany/app/web/WebSearchAdapter;->d:Lcom/mycompany/app/web/WebViewActivity;

    .line 233
    .line 234
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v16

    .line 238
    const/16 v14, 0x3e8

    .line 239
    .line 240
    const/16 v18, 0x0

    .line 241
    .line 242
    const/16 v13, 0x3e8

    .line 243
    .line 244
    const/16 v17, 0x0

    .line 245
    .line 246
    invoke-static/range {v13 .. v18}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    iput-object v7, v1, Lcom/mycompany/app/web/WebSearchAdapter;->o:Ljava/net/HttpURLConnection;

    .line 251
    .line 252
    if-nez v7, :cond_f

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_f
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-static {v5, v7, v9}, Lcom/mycompany/app/main/MainUtil;->A3(Landroid/content/Context;Ljava/io/InputStream;Z)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    :try_start_2
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    goto :goto_6

    .line 268
    :catch_1
    move-object v7, v5

    .line 269
    :catch_2
    :goto_6
    invoke-virtual {v1, v10}, Lcom/mycompany/app/web/WebSearchAdapter;->B(Z)V

    .line 270
    .line 271
    .line 272
    sget v11, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 273
    .line 274
    const-string v12, "http://"

    .line 275
    .line 276
    const-string v13, "https://"

    .line 277
    .line 278
    const-string v14, ","

    .line 279
    .line 280
    const/16 v15, 0x5d

    .line 281
    .line 282
    move-object/from16 v16, v5

    .line 283
    .line 284
    const/16 v5, 0x5b

    .line 285
    .line 286
    const/16 v9, 0x22

    .line 287
    .line 288
    if-ne v11, v10, :cond_21

    .line 289
    .line 290
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v11

    .line 294
    if-eqz v11, :cond_11

    .line 295
    .line 296
    :cond_10
    :goto_7
    move-object/from16 v7, v16

    .line 297
    .line 298
    goto/16 :goto_b

    .line 299
    .line 300
    :cond_11
    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(I)I

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    if-ne v5, v8, :cond_12

    .line 305
    .line 306
    goto :goto_7

    .line 307
    :cond_12
    add-int/2addr v5, v10

    .line 308
    invoke-virtual {v7, v15, v5}, Ljava/lang/String;->indexOf(II)I

    .line 309
    .line 310
    .line 311
    move-result v11

    .line 312
    if-ne v11, v8, :cond_13

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_13
    if-lt v5, v11, :cond_14

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_14
    invoke-virtual {v7, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    if-eqz v7, :cond_15

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_15
    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    if-eqz v5, :cond_10

    .line 334
    .line 335
    array-length v7, v5

    .line 336
    if-nez v7, :cond_16

    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_16
    new-instance v7, Ljava/util/ArrayList;

    .line 340
    .line 341
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .line 343
    .line 344
    array-length v11, v5

    .line 345
    move v15, v10

    .line 346
    const/4 v14, 0x0

    .line 347
    :goto_8
    if-ge v14, v11, :cond_20

    .line 348
    .line 349
    aget-object v8, v5, v14

    .line 350
    .line 351
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 352
    .line 353
    .line 354
    move-result v18

    .line 355
    if-eqz v18, :cond_17

    .line 356
    .line 357
    :goto_9
    move/from16 v18, v10

    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_17
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-gt v0, v10, :cond_18

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_18
    move/from16 v18, v10

    .line 368
    .line 369
    add-int/lit8 v10, v0, -0x1

    .line 370
    .line 371
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->lastIndexOf(II)I

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    const/4 v9, -0x1

    .line 376
    if-ne v10, v9, :cond_19

    .line 377
    .line 378
    goto :goto_a

    .line 379
    :cond_19
    add-int/lit8 v10, v10, 0x1

    .line 380
    .line 381
    if-lt v10, v0, :cond_1a

    .line 382
    .line 383
    goto :goto_a

    .line 384
    :cond_1a
    invoke-virtual {v8, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    if-eqz v8, :cond_1b

    .line 393
    .line 394
    goto :goto_a

    .line 395
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 400
    .line 401
    .line 402
    move-result v8

    .line 403
    if-eqz v8, :cond_1c

    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_1c
    if-eqz v15, :cond_1d

    .line 407
    .line 408
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v8

    .line 412
    if-eqz v8, :cond_1d

    .line 413
    .line 414
    const/4 v15, 0x0

    .line 415
    goto :goto_a

    .line 416
    :cond_1d
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    move-result v8

    .line 420
    if-nez v8, :cond_1f

    .line 421
    .line 422
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-eqz v8, :cond_1e

    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_1e
    new-instance v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 430
    .line 431
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 432
    .line 433
    .line 434
    iput-object v0, v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 435
    .line 436
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    :cond_1f
    :goto_a
    add-int/lit8 v14, v14, 0x1

    .line 440
    .line 441
    move-object/from16 v0, p0

    .line 442
    .line 443
    move/from16 v10, v18

    .line 444
    .line 445
    const/4 v8, -0x1

    .line 446
    const/16 v9, 0x22

    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_20
    :goto_b
    move/from16 v22, v2

    .line 450
    .line 451
    move/from16 v24, v3

    .line 452
    .line 453
    goto/16 :goto_15

    .line 454
    .line 455
    :cond_21
    move/from16 v18, v10

    .line 456
    .line 457
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-eqz v0, :cond_23

    .line 462
    .line 463
    :cond_22
    :goto_c
    move/from16 v22, v2

    .line 464
    .line 465
    move/from16 v24, v3

    .line 466
    .line 467
    move-object/from16 v7, v16

    .line 468
    .line 469
    goto/16 :goto_15

    .line 470
    .line 471
    :cond_23
    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(I)I

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    const/4 v9, -0x1

    .line 476
    if-ne v0, v9, :cond_24

    .line 477
    .line 478
    goto :goto_c

    .line 479
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 480
    .line 481
    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->indexOf(II)I

    .line 482
    .line 483
    .line 484
    move-result v8

    .line 485
    if-ne v8, v9, :cond_25

    .line 486
    .line 487
    goto :goto_c

    .line 488
    :cond_25
    if-lt v0, v8, :cond_26

    .line 489
    .line 490
    goto :goto_c

    .line 491
    :cond_26
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 496
    .line 497
    .line 498
    move-result v9

    .line 499
    if-eqz v9, :cond_27

    .line 500
    .line 501
    goto :goto_c

    .line 502
    :cond_27
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    if-eqz v0, :cond_22

    .line 507
    .line 508
    array-length v9, v0

    .line 509
    if-nez v9, :cond_28

    .line 510
    .line 511
    goto :goto_c

    .line 512
    :cond_28
    add-int/lit8 v8, v8, 0x1

    .line 513
    .line 514
    array-length v9, v0

    .line 515
    add-int/lit8 v9, v9, -0x1

    .line 516
    .line 517
    new-instance v10, Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .line 521
    .line 522
    array-length v11, v0

    .line 523
    move/from16 v20, v18

    .line 524
    .line 525
    const/4 v15, 0x0

    .line 526
    const/16 v19, 0x0

    .line 527
    .line 528
    :goto_d
    if-ge v15, v11, :cond_32

    .line 529
    .line 530
    aget-object v5, v0, v15

    .line 531
    .line 532
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 533
    .line 534
    .line 535
    move-result v21

    .line 536
    if-eqz v21, :cond_29

    .line 537
    .line 538
    move-object/from16 v21, v0

    .line 539
    .line 540
    move/from16 v22, v2

    .line 541
    .line 542
    :goto_e
    move/from16 v24, v3

    .line 543
    .line 544
    goto/16 :goto_11

    .line 545
    .line 546
    :cond_29
    move-object/from16 v21, v0

    .line 547
    .line 548
    move/from16 v22, v2

    .line 549
    .line 550
    const/16 v0, 0x22

    .line 551
    .line 552
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    const/4 v0, -0x1

    .line 557
    if-ne v2, v0, :cond_2a

    .line 558
    .line 559
    goto :goto_e

    .line 560
    :cond_2a
    move/from16 v23, v2

    .line 561
    .line 562
    move/from16 v24, v3

    .line 563
    .line 564
    const/16 v2, 0x22

    .line 565
    .line 566
    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    if-ne v3, v0, :cond_2b

    .line 571
    .line 572
    goto :goto_11

    .line 573
    :cond_2b
    add-int/lit8 v2, v23, 0x1

    .line 574
    .line 575
    if-lt v2, v3, :cond_2c

    .line 576
    .line 577
    goto :goto_11

    .line 578
    :cond_2c
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    if-eqz v2, :cond_2d

    .line 587
    .line 588
    goto :goto_11

    .line 589
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    if-eqz v2, :cond_2e

    .line 598
    .line 599
    goto :goto_11

    .line 600
    :cond_2e
    if-eqz v20, :cond_2f

    .line 601
    .line 602
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    if-eqz v2, :cond_2f

    .line 607
    .line 608
    const/16 v20, 0x0

    .line 609
    .line 610
    goto :goto_11

    .line 611
    :cond_2f
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 612
    .line 613
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    if-nez v3, :cond_31

    .line 621
    .line 622
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    if-eqz v3, :cond_30

    .line 627
    .line 628
    goto :goto_f

    .line 629
    :cond_30
    iput-object v0, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 630
    .line 631
    goto :goto_10

    .line 632
    :cond_31
    :goto_f
    iput-object v0, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 633
    .line 634
    const/4 v3, 0x0

    .line 635
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->H1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    iput-object v0, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 640
    .line 641
    move/from16 v19, v18

    .line 642
    .line 643
    :goto_10
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    :goto_11
    add-int/lit8 v15, v15, 0x1

    .line 647
    .line 648
    move-object/from16 v0, v21

    .line 649
    .line 650
    move/from16 v2, v22

    .line 651
    .line 652
    move/from16 v3, v24

    .line 653
    .line 654
    const/16 v5, 0x5b

    .line 655
    .line 656
    goto/16 :goto_d

    .line 657
    .line 658
    :cond_32
    move/from16 v22, v2

    .line 659
    .line 660
    move/from16 v24, v3

    .line 661
    .line 662
    if-nez v19, :cond_33

    .line 663
    .line 664
    goto/16 :goto_14

    .line 665
    .line 666
    :cond_33
    const/16 v0, 0x5b

    .line 667
    .line 668
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->indexOf(II)I

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    const/4 v2, -0x1

    .line 673
    if-ne v0, v2, :cond_34

    .line 674
    .line 675
    goto/16 :goto_14

    .line 676
    .line 677
    :cond_34
    add-int/lit8 v0, v0, 0x1

    .line 678
    .line 679
    const/16 v3, 0x5d

    .line 680
    .line 681
    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->indexOf(II)I

    .line 682
    .line 683
    .line 684
    move-result v3

    .line 685
    if-ne v3, v2, :cond_35

    .line 686
    .line 687
    goto/16 :goto_14

    .line 688
    .line 689
    :cond_35
    if-lt v0, v3, :cond_36

    .line 690
    .line 691
    goto/16 :goto_14

    .line 692
    .line 693
    :cond_36
    invoke-virtual {v7, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    if-eqz v2, :cond_37

    .line 702
    .line 703
    goto/16 :goto_14

    .line 704
    .line 705
    :cond_37
    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    if-eqz v0, :cond_42

    .line 710
    .line 711
    array-length v2, v0

    .line 712
    if-eq v2, v9, :cond_38

    .line 713
    .line 714
    goto :goto_14

    .line 715
    :cond_38
    const/4 v2, 0x0

    .line 716
    :goto_12
    if-ge v2, v9, :cond_42

    .line 717
    .line 718
    aget-object v3, v0, v2

    .line 719
    .line 720
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 721
    .line 722
    .line 723
    move-result v5

    .line 724
    if-eqz v5, :cond_39

    .line 725
    .line 726
    const/16 v5, 0x22

    .line 727
    .line 728
    const/4 v8, -0x1

    .line 729
    goto :goto_13

    .line 730
    :cond_39
    const/16 v5, 0x22

    .line 731
    .line 732
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 733
    .line 734
    .line 735
    move-result v7

    .line 736
    const/4 v8, -0x1

    .line 737
    if-ne v7, v8, :cond_3a

    .line 738
    .line 739
    goto :goto_13

    .line 740
    :cond_3a
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 741
    .line 742
    .line 743
    move-result v11

    .line 744
    if-ne v11, v8, :cond_3b

    .line 745
    .line 746
    goto :goto_13

    .line 747
    :cond_3b
    add-int/lit8 v7, v7, 0x1

    .line 748
    .line 749
    if-lt v7, v11, :cond_3c

    .line 750
    .line 751
    goto :goto_13

    .line 752
    :cond_3c
    invoke-virtual {v3, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 757
    .line 758
    .line 759
    move-result v7

    .line 760
    if-eqz v7, :cond_3d

    .line 761
    .line 762
    goto :goto_13

    .line 763
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v3

    .line 767
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 768
    .line 769
    .line 770
    move-result v7

    .line 771
    if-eqz v7, :cond_3e

    .line 772
    .line 773
    goto :goto_13

    .line 774
    :cond_3e
    add-int/lit8 v7, v2, 0x1

    .line 775
    .line 776
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 777
    .line 778
    .line 779
    move-result v11

    .line 780
    if-lt v7, v11, :cond_3f

    .line 781
    .line 782
    goto :goto_13

    .line 783
    :cond_3f
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v7

    .line 787
    check-cast v7, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 788
    .line 789
    if-nez v7, :cond_40

    .line 790
    .line 791
    goto :goto_13

    .line 792
    :cond_40
    iget-object v11, v7, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 793
    .line 794
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 795
    .line 796
    .line 797
    move-result v11

    .line 798
    if-eqz v11, :cond_41

    .line 799
    .line 800
    goto :goto_13

    .line 801
    :cond_41
    iput-object v3, v7, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 802
    .line 803
    :goto_13
    add-int/lit8 v2, v2, 0x1

    .line 804
    .line 805
    goto :goto_12

    .line 806
    :cond_42
    :goto_14
    move-object v7, v10

    .line 807
    :goto_15
    if-eqz v7, :cond_48

    .line 808
    .line 809
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-nez v0, :cond_48

    .line 814
    .line 815
    if-eqz v22, :cond_45

    .line 816
    .line 817
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    const/4 v2, 0x0

    .line 822
    :cond_43
    :goto_16
    if-ge v2, v0, :cond_45

    .line 823
    .line 824
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    add-int/lit8 v2, v2, 0x1

    .line 829
    .line 830
    check-cast v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 831
    .line 832
    iget-object v5, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 833
    .line 834
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 835
    .line 836
    .line 837
    move-result v5

    .line 838
    if-eqz v5, :cond_44

    .line 839
    .line 840
    goto :goto_16

    .line 841
    :cond_44
    iget-object v5, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 842
    .line 843
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 844
    .line 845
    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v5

    .line 849
    iget-object v9, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 850
    .line 851
    invoke-static {v9, v5, v4}, Lcom/mycompany/app/main/InitialSearch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v5

    .line 855
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 856
    .line 857
    .line 858
    move-result v9

    .line 859
    if-nez v9, :cond_43

    .line 860
    .line 861
    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v5

    .line 865
    iput-object v5, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    .line 866
    .line 867
    goto :goto_16

    .line 868
    :cond_45
    if-eqz v24, :cond_46

    .line 869
    .line 870
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 871
    .line 872
    .line 873
    const/4 v3, 0x0

    .line 874
    invoke-virtual {v6, v3, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 875
    .line 876
    .line 877
    goto :goto_17

    .line 878
    :cond_46
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 879
    .line 880
    .line 881
    goto :goto_17

    .line 882
    :cond_47
    move/from16 v24, v3

    .line 883
    .line 884
    move-object/from16 v16, v5

    .line 885
    .line 886
    :cond_48
    :goto_17
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter;->g:Ljava/util/List;

    .line 887
    .line 888
    if-eqz v0, :cond_49

    .line 889
    .line 890
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    if-nez v0, :cond_49

    .line 895
    .line 896
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter;->g:Ljava/util/List;

    .line 897
    .line 898
    sget v2, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 899
    .line 900
    invoke-static {v1, v0, v6, v4, v2}, Lcom/mycompany/app/web/WebSearchAdapter;->w(Lcom/mycompany/app/web/WebSearchAdapter;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 901
    .line 902
    .line 903
    :cond_49
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter;->h:Ljava/util/List;

    .line 904
    .line 905
    if-eqz v0, :cond_4a

    .line 906
    .line 907
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    if-nez v0, :cond_4a

    .line 912
    .line 913
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter;->h:Ljava/util/List;

    .line 914
    .line 915
    sget v2, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 916
    .line 917
    invoke-static {v1, v0, v6, v4, v2}, Lcom/mycompany/app/web/WebSearchAdapter;->w(Lcom/mycompany/app/web/WebSearchAdapter;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 918
    .line 919
    .line 920
    :cond_4a
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter;->i:Ljava/util/List;

    .line 921
    .line 922
    if-eqz v0, :cond_4b

    .line 923
    .line 924
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    if-nez v0, :cond_4b

    .line 929
    .line 930
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter;->i:Ljava/util/List;

    .line 931
    .line 932
    sget v2, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 933
    .line 934
    invoke-static {v1, v0, v6, v4, v2}, Lcom/mycompany/app/web/WebSearchAdapter;->w(Lcom/mycompany/app/web/WebSearchAdapter;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 935
    .line 936
    .line 937
    :cond_4b
    iget-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 938
    .line 939
    if-eqz v0, :cond_4d

    .line 940
    .line 941
    check-cast v0, Lcom/mycompany/app/web/WebViewActivity$250;

    .line 942
    .line 943
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity$250;->d()Z

    .line 944
    .line 945
    .line 946
    move-result v0

    .line 947
    if-eqz v0, :cond_4d

    .line 948
    .line 949
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 950
    .line 951
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 952
    .line 953
    .line 954
    const/4 v1, 0x2

    .line 955
    iput v1, v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 956
    .line 957
    iput-object v4, v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 958
    .line 959
    if-eqz v24, :cond_4c

    .line 960
    .line 961
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    goto :goto_18

    .line 965
    :cond_4c
    const/4 v3, 0x0

    .line 966
    invoke-virtual {v6, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 967
    .line 968
    .line 969
    :cond_4d
    :goto_18
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 970
    .line 971
    .line 972
    move-result v0

    .line 973
    if-eqz v0, :cond_4e

    .line 974
    .line 975
    :goto_19
    return-object v16

    .line 976
    :cond_4e
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 977
    .line 978
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 979
    .line 980
    .line 981
    const/4 v1, 0x3

    .line 982
    iput v1, v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 983
    .line 984
    if-eqz v24, :cond_4f

    .line 985
    .line 986
    const/4 v3, 0x0

    .line 987
    invoke-virtual {v6, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 988
    .line 989
    .line 990
    goto :goto_1a

    .line 991
    :cond_4f
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    .line 993
    .line 994
    :goto_1a
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 995
    .line 996
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 997
    .line 998
    .line 999
    iput-object v6, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1000
    .line 1001
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1002
    .line 1003
    .line 1004
    move-result v1

    .line 1005
    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 1006
    .line 1007
    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter$8;->a:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->l:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

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
    iget v4, v0, Lcom/mycompany/app/web/WebSearchAdapter;->r:I

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
    iput-object p1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->l:Ljava/lang/String;

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
    iput-object p2, v0, Lcom/mycompany/app/web/WebSearchAdapter;->z:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->s:Z

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter;->s:Z

    .line 87
    .line 88
    iget-object p1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->t:Landroid/os/Handler;

    .line 89
    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    new-instance p2, Lcom/mycompany/app/web/WebSearchAdapter$9;

    .line 94
    .line 95
    invoke-direct {p2, v0}, Lcom/mycompany/app/web/WebSearchAdapter$9;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

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
    iput-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->z:Ljava/util/ArrayList;

    .line 103
    .line 104
    iget-boolean p1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->s:Z

    .line 105
    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_7
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter;->s:Z

    .line 110
    .line 111
    iget-object p1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->t:Landroid/os/Handler;

    .line 112
    .line 113
    if-nez p1, :cond_8

    .line 114
    .line 115
    :goto_2
    return-void

    .line 116
    :cond_8
    new-instance p2, Lcom/mycompany/app/web/WebSearchAdapter$9;

    .line 117
    .line 118
    invoke-direct {p2, v0}, Lcom/mycompany/app/web/WebSearchAdapter$9;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    .line 123
    .line 124
    return-void
.end method
