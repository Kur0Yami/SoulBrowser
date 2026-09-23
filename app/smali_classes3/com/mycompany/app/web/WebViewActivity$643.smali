.class Lcom/mycompany/app/web/WebViewActivity$643;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$643;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$643;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->qo:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->qo:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->ro:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    if-eqz v4, :cond_2d

    .line 18
    .line 19
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-nez v7, :cond_2d

    .line 28
    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_0

    .line 34
    .line 35
    goto/16 :goto_b

    .line 36
    .line 37
    :cond_0
    :try_start_0
    invoke-static {v2, v4}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 38
    .line 39
    .line 40
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-object v2, v3

    .line 43
    :goto_0
    if-nez v2, :cond_1

    .line 44
    .line 45
    goto/16 :goto_b

    .line 46
    .line 47
    :cond_1
    const-string v7, "facebook.com"

    .line 48
    .line 49
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    const/4 v7, 0x0

    .line 54
    if-eqz v6, :cond_17

    .line 55
    .line 56
    const-string v4, "http"

    .line 57
    .line 58
    :try_start_1
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->getAllElements()Lorg/jsoup/select/Elements;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_8

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_8

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    move-object v8, v3

    .line 75
    move v9, v7

    .line 76
    :cond_2
    :goto_1
    if-ge v9, v6, :cond_9

    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    add-int/lit8 v9, v9, 0x1

    .line 83
    .line 84
    check-cast v10, Lorg/jsoup/nodes/Element;

    .line 85
    .line 86
    if-nez v10, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-virtual {v10}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_2

    .line 102
    .line 103
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    check-cast v11, Lorg/jsoup/nodes/Attribute;

    .line 108
    .line 109
    if-nez v11, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {v11}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_5

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    if-nez v12, :cond_6

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    const-string v12, ".jpg"

    .line 131
    .line 132
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    if-nez v12, :cond_7

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    move-object v8, v11

    .line 140
    goto :goto_1

    .line 141
    :catch_1
    :cond_8
    move-object v8, v3

    .line 142
    :catch_2
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_a

    .line 147
    .line 148
    goto/16 :goto_5

    .line 149
    .line 150
    :cond_a
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_14

    .line 155
    .line 156
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    const-string v6, "\"http"

    .line 161
    .line 162
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    const/4 v9, -0x1

    .line 167
    if-eq v6, v9, :cond_e

    .line 168
    .line 169
    add-int/lit8 v9, v6, 0x5

    .line 170
    .line 171
    if-lt v9, v2, :cond_b

    .line 172
    .line 173
    goto/16 :goto_5

    .line 174
    .line 175
    :cond_b
    const/16 v10, 0x22

    .line 176
    .line 177
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->indexOf(II)I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    add-int/2addr v6, v5

    .line 182
    if-gt v9, v6, :cond_c

    .line 183
    .line 184
    goto/16 :goto_5

    .line 185
    .line 186
    :cond_c
    if-le v9, v2, :cond_d

    .line 187
    .line 188
    goto/16 :goto_5

    .line 189
    .line 190
    :cond_d
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    goto :goto_3

    .line 195
    :cond_e
    const-string v6, "\'http"

    .line 196
    .line 197
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eq v6, v9, :cond_12

    .line 202
    .line 203
    add-int/lit8 v9, v6, 0x5

    .line 204
    .line 205
    if-lt v9, v2, :cond_f

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_f
    const/16 v10, 0x27

    .line 209
    .line 210
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->indexOf(II)I

    .line 211
    .line 212
    .line 213
    move-result v9

    .line 214
    add-int/2addr v6, v5

    .line 215
    if-gt v9, v6, :cond_10

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_10
    if-le v9, v2, :cond_11

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_11
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    :cond_12
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    if-eqz v2, :cond_13

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_13
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-nez v2, :cond_14

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_14
    const-string v2, ""

    .line 240
    .line 241
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_15

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_15
    :try_start_3
    const-string v4, "\\/"

    .line 249
    .line 250
    const-string v6, "/"

    .line 251
    .line 252
    invoke-virtual {v8, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    const/16 v6, 0x5c

    .line 257
    .line 258
    const/16 v9, 0x25

    .line 259
    .line 260
    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    const-string v6, " "

    .line 265
    .line 266
    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    const-string v4, "UTF-8"

    .line 271
    .line 272
    invoke-static {v8, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 276
    goto :goto_4

    .line 277
    :catch_3
    move-object v4, v8

    .line 278
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_16

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_16
    const-string v3, "amp;"

    .line 286
    .line 287
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-nez v2, :cond_2d

    .line 296
    .line 297
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->ro:Ljava/lang/String;

    .line 298
    .line 299
    iput-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->wo:Z

    .line 300
    .line 301
    goto/16 :goto_b

    .line 302
    .line 303
    :cond_17
    invoke-static {v2}, Lcom/mycompany/app/web/WebReadTask;->r(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    if-nez v8, :cond_18

    .line 312
    .line 313
    goto :goto_6

    .line 314
    :cond_18
    invoke-static {v2}, Lcom/mycompany/app/web/WebReadTask;->l(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    if-nez v8, :cond_19

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_19
    invoke-static {v2}, Lcom/mycompany/app/web/WebReadTask;->t(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    if-nez v8, :cond_1a

    .line 334
    .line 335
    goto :goto_6

    .line 336
    :cond_1a
    invoke-static {v2}, Lcom/mycompany/app/web/WebReadTask;->k(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    :goto_6
    const-string v8, "youtube.com"

    .line 341
    .line 342
    const-string v9, "blob:"

    .line 343
    .line 344
    const-string v10, "src"

    .line 345
    .line 346
    const-string v11, "video"

    .line 347
    .line 348
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    :try_start_4
    invoke-virtual {v2, v11}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 353
    .line 354
    .line 355
    move-result-object v12

    .line 356
    if-eqz v12, :cond_20

    .line 357
    .line 358
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    .line 359
    .line 360
    .line 361
    move-result v13

    .line 362
    if-eqz v13, :cond_20

    .line 363
    .line 364
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 365
    .line 366
    .line 367
    move-result v13

    .line 368
    move v14, v7

    .line 369
    :goto_7
    if-ge v14, v13, :cond_20

    .line 370
    .line 371
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v15

    .line 375
    add-int/lit8 v14, v14, 0x1

    .line 376
    .line 377
    check-cast v15, Lorg/jsoup/nodes/Element;

    .line 378
    .line 379
    if-nez v15, :cond_1b

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_1b
    invoke-virtual {v15, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v15

    .line 386
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 387
    .line 388
    .line 389
    move-result v16

    .line 390
    if-eqz v16, :cond_1c

    .line 391
    .line 392
    goto :goto_7

    .line 393
    :cond_1c
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v16

    .line 397
    if-eqz v16, :cond_1d

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_1d
    invoke-virtual {v15, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 401
    .line 402
    .line 403
    move-result v16

    .line 404
    if-eqz v16, :cond_1e

    .line 405
    .line 406
    goto :goto_7

    .line 407
    :cond_1e
    invoke-static {v15}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 408
    .line 409
    .line 410
    move-result v16

    .line 411
    if-nez v16, :cond_1f

    .line 412
    .line 413
    invoke-static {v15, v4}, Lcom/mycompany/app/main/MainUtil;->F1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v15

    .line 417
    invoke-static {v15}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 421
    if-nez v16, :cond_1f

    .line 422
    .line 423
    goto :goto_7

    .line 424
    :cond_1f
    move-object v3, v15

    .line 425
    goto :goto_9

    .line 426
    :catch_4
    :cond_20
    :try_start_5
    const-string v12, "source"

    .line 427
    .line 428
    invoke-virtual {v2, v12}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    if-eqz v2, :cond_28

    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 435
    .line 436
    .line 437
    move-result v12

    .line 438
    if-eqz v12, :cond_28

    .line 439
    .line 440
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 441
    .line 442
    .line 443
    move-result v12

    .line 444
    move v13, v7

    .line 445
    :goto_8
    if-ge v13, v12, :cond_28

    .line 446
    .line 447
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v14

    .line 451
    add-int/lit8 v13, v13, 0x1

    .line 452
    .line 453
    check-cast v14, Lorg/jsoup/nodes/Element;

    .line 454
    .line 455
    if-nez v14, :cond_21

    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_21
    const-string v15, "type"

    .line 459
    .line 460
    invoke-virtual {v14, v15}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v15

    .line 464
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 465
    .line 466
    .line 467
    move-result v16

    .line 468
    if-eqz v16, :cond_22

    .line 469
    .line 470
    goto :goto_8

    .line 471
    :cond_22
    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 472
    .line 473
    .line 474
    move-result v15

    .line 475
    if-nez v15, :cond_23

    .line 476
    .line 477
    goto :goto_8

    .line 478
    :cond_23
    invoke-virtual {v14, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v14

    .line 482
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 483
    .line 484
    .line 485
    move-result v15

    .line 486
    if-eqz v15, :cond_24

    .line 487
    .line 488
    goto :goto_8

    .line 489
    :cond_24
    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 490
    .line 491
    .line 492
    move-result v15

    .line 493
    if-eqz v15, :cond_25

    .line 494
    .line 495
    goto :goto_8

    .line 496
    :cond_25
    invoke-virtual {v14, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 497
    .line 498
    .line 499
    move-result v15

    .line 500
    if-eqz v15, :cond_26

    .line 501
    .line 502
    goto :goto_8

    .line 503
    :cond_26
    invoke-static {v14}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 504
    .line 505
    .line 506
    move-result v15

    .line 507
    if-nez v15, :cond_27

    .line 508
    .line 509
    invoke-static {v14, v4}, Lcom/mycompany/app/main/MainUtil;->F1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v14

    .line 513
    invoke-static {v14}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 514
    .line 515
    .line 516
    move-result v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 517
    if-nez v15, :cond_27

    .line 518
    .line 519
    goto :goto_8

    .line 520
    :cond_27
    move-object v3, v14

    .line 521
    :catch_5
    :cond_28
    :goto_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-nez v2, :cond_29

    .line 526
    .line 527
    iput-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->ro:Ljava/lang/String;

    .line 528
    .line 529
    iput-boolean v7, v1, Lcom/mycompany/app/web/WebViewActivity;->wo:Z

    .line 530
    .line 531
    goto :goto_a

    .line 532
    :cond_29
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-nez v2, :cond_2a

    .line 537
    .line 538
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->ro:Ljava/lang/String;

    .line 539
    .line 540
    iput-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->wo:Z

    .line 541
    .line 542
    :cond_2a
    :goto_a
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->xo:Ljava/lang/String;

    .line 543
    .line 544
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 545
    .line 546
    .line 547
    move-result v2

    .line 548
    if-eqz v2, :cond_2b

    .line 549
    .line 550
    goto :goto_b

    .line 551
    :cond_2b
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 552
    .line 553
    if-nez v2, :cond_2c

    .line 554
    .line 555
    goto :goto_b

    .line 556
    :cond_2c
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$647;

    .line 557
    .line 558
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$647;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 559
    .line 560
    .line 561
    const-wide/16 v6, 0x12c

    .line 562
    .line 563
    invoke-virtual {v2, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 564
    .line 565
    .line 566
    :cond_2d
    :goto_b
    iput-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->so:Z

    .line 567
    .line 568
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->P7()V

    .line 569
    .line 570
    .line 571
    return-void
.end method
