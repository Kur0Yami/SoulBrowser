.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onFansDet(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$10;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

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
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$10;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Zg:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->ah:Ljava/lang/String;

    .line 10
    .line 11
    iget v4, v1, Lcom/mycompany/app/web/WebViewActivity;->bh:I

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Zg:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->ah:Ljava/lang/String;

    .line 17
    .line 18
    const-string v6, "youtube.com"

    .line 19
    .line 20
    const-string v7, "blob:"

    .line 21
    .line 22
    const-string v8, "src"

    .line 23
    .line 24
    const-string v9, "video"

    .line 25
    .line 26
    :try_start_0
    invoke-static {v2}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 27
    .line 28
    .line 29
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-object v2, v5

    .line 32
    :goto_0
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto/16 :goto_d

    .line 35
    .line 36
    :cond_0
    iget-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 37
    .line 38
    const/4 v11, 0x1

    .line 39
    invoke-static {v10, v11}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    const/4 v11, 0x0

    .line 44
    :try_start_1
    invoke-virtual {v2, v9}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    if-eqz v12, :cond_8

    .line 49
    .line 50
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    if-eqz v13, :cond_8

    .line 55
    .line 56
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    move-object v14, v5

    .line 61
    move v15, v11

    .line 62
    :goto_1
    if-ge v15, v13, :cond_9

    .line 63
    .line 64
    :try_start_2
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v16

    .line 68
    add-int/lit8 v15, v15, 0x1

    .line 69
    .line 70
    move-object/from16 v5, v16

    .line 71
    .line 72
    check-cast v5, Lorg/jsoup/nodes/Element;

    .line 73
    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    invoke-virtual {v5, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    if-eqz v16, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v16

    .line 92
    if-eqz v16, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    if-eqz v16, :cond_4

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v16

    .line 106
    if-nez v16, :cond_6

    .line 107
    .line 108
    invoke-static {v5, v10}, Lcom/mycompany/app/main/MainUtil;->F1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v16

    .line 116
    if-nez v16, :cond_6

    .line 117
    .line 118
    :cond_5
    :goto_2
    const/4 v5, 0x0

    .line 119
    goto :goto_1

    .line 120
    :cond_6
    if-nez v14, :cond_7

    .line 121
    .line 122
    new-instance v16, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    move-object/from16 v14, v16

    .line 128
    .line 129
    :cond_7
    invoke-interface {v14, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    if-nez v16, :cond_5

    .line 134
    .line 135
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :catch_1
    :cond_8
    const/4 v14, 0x0

    .line 140
    :catch_2
    :cond_9
    :try_start_3
    const-string v5, "source"

    .line 141
    .line 142
    invoke-virtual {v2, v5}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-eqz v2, :cond_13

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_13

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    move v12, v11

    .line 159
    :cond_a
    :goto_3
    if-ge v12, v5, :cond_13

    .line 160
    .line 161
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    add-int/lit8 v12, v12, 0x1

    .line 166
    .line 167
    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 168
    .line 169
    if-nez v13, :cond_b

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_b
    const-string v15, "type"

    .line 173
    .line 174
    invoke-virtual {v13, v15}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v16

    .line 182
    if-eqz v16, :cond_c

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_c
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-nez v15, :cond_d

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_d
    invoke-virtual {v13, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v13

    .line 196
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    if-eqz v15, :cond_e

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_e
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v15

    .line 207
    if-eqz v15, :cond_f

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_f
    invoke-virtual {v13, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    if-eqz v15, :cond_10

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_10
    invoke-static {v13}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    if-nez v15, :cond_11

    .line 222
    .line 223
    invoke-static {v13, v10}, Lcom/mycompany/app/main/MainUtil;->F1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    invoke-static {v13}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v15

    .line 231
    if-nez v15, :cond_11

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_11
    if-nez v14, :cond_12

    .line 235
    .line 236
    new-instance v15, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    move-object v14, v15

    .line 242
    :cond_12
    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v15

    .line 246
    if-nez v15, :cond_a

    .line 247
    .line 248
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :catch_3
    :cond_13
    if-eqz v14, :cond_20

    .line 253
    .line 254
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_14

    .line 259
    .line 260
    goto/16 :goto_8

    .line 261
    .line 262
    :cond_14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_17

    .line 267
    .line 268
    :try_start_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    move v5, v11

    .line 273
    :cond_15
    if-ge v5, v2, :cond_17

    .line 274
    .line 275
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    add-int/lit8 v5, v5, 0x1

    .line 280
    .line 281
    check-cast v6, Ljava/lang/String;

    .line 282
    .line 283
    iget-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 284
    .line 285
    if-nez v7, :cond_16

    .line 286
    .line 287
    const/4 v6, 0x0

    .line 288
    goto :goto_4

    .line 289
    :cond_16
    invoke-virtual {v7, v6}, Lcom/mycompany/app/web/WebNestView;->n(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    invoke-virtual {v7, v6}, Lcom/mycompany/app/web/WebNestView;->o(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 298
    .line 299
    .line 300
    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 301
    if-nez v7, :cond_15

    .line 302
    .line 303
    move-object v3, v6

    .line 304
    :catch_4
    :cond_17
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    move v6, v11

    .line 309
    const/4 v5, 0x0

    .line 310
    :goto_5
    if-ge v6, v2, :cond_1f

    .line 311
    .line 312
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    add-int/lit8 v6, v6, 0x1

    .line 317
    .line 318
    check-cast v7, Ljava/lang/String;

    .line 319
    .line 320
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    if-eqz v8, :cond_18

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_18
    const-string v8, "video/*"

    .line 328
    .line 329
    const/4 v9, 0x0

    .line 330
    invoke-static {v7, v9, v8, v11}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v9

    .line 338
    if-nez v9, :cond_19

    .line 339
    .line 340
    :goto_6
    const/4 v9, 0x0

    .line 341
    goto :goto_7

    .line 342
    :cond_19
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    if-nez v8, :cond_1a

    .line 347
    .line 348
    goto :goto_6

    .line 349
    :cond_1a
    const/16 v10, 0x5f

    .line 350
    .line 351
    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    if-lez v10, :cond_1c

    .line 356
    .line 357
    add-int/lit8 v10, v10, 0x1

    .line 358
    .line 359
    if-lt v10, v8, :cond_1b

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_1b
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    :cond_1c
    :goto_7
    if-nez v9, :cond_1d

    .line 367
    .line 368
    goto :goto_5

    .line 369
    :cond_1d
    if-nez v5, :cond_1e

    .line 370
    .line 371
    new-instance v5, Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .line 375
    .line 376
    :cond_1e
    new-instance v8, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 377
    .line 378
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 379
    .line 380
    .line 381
    iput-object v7, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 382
    .line 383
    iput-object v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 384
    .line 385
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_1f
    if-eqz v5, :cond_20

    .line 390
    .line 391
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    if-eqz v2, :cond_21

    .line 396
    .line 397
    :cond_20
    :goto_8
    const/4 v6, 0x0

    .line 398
    goto :goto_a

    .line 399
    :cond_21
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$SortName;

    .line 400
    .line 401
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 402
    .line 403
    .line 404
    :try_start_5
    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 405
    .line 406
    .line 407
    :catch_5
    if-nez v4, :cond_26

    .line 408
    .line 409
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    const/4 v9, 0x0

    .line 414
    :goto_9
    if-ge v11, v2, :cond_24

    .line 415
    .line 416
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    add-int/lit8 v11, v11, 0x1

    .line 421
    .line 422
    check-cast v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 423
    .line 424
    if-nez v6, :cond_22

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :cond_22
    if-nez v9, :cond_23

    .line 428
    .line 429
    new-instance v7, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .line 433
    .line 434
    move-object v9, v7

    .line 435
    :cond_23
    iget-object v6, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 436
    .line 437
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_24
    const/4 v6, 0x0

    .line 442
    invoke-virtual {v1, v6, v6, v3, v9}, Lcom/mycompany/app/web/WebViewActivity;->D7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 443
    .line 444
    .line 445
    :cond_25
    :goto_a
    move-object v5, v6

    .line 446
    goto :goto_d

    .line 447
    :cond_26
    const/4 v6, 0x0

    .line 448
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    :goto_b
    if-ge v11, v2, :cond_25

    .line 453
    .line 454
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 459
    .line 460
    if-nez v7, :cond_27

    .line 461
    .line 462
    goto :goto_c

    .line 463
    :cond_27
    new-instance v8, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 464
    .line 465
    iget-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 466
    .line 467
    const-string v10, "MP4"

    .line 468
    .line 469
    invoke-direct {v8, v11, v9, v10}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 473
    .line 474
    iput-object v7, v8, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 475
    .line 476
    iput-object v3, v8, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->f:Ljava/lang/String;

    .line 477
    .line 478
    if-nez v6, :cond_28

    .line 479
    .line 480
    new-instance v6, Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .line 484
    .line 485
    :cond_28
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 489
    .line 490
    goto :goto_b

    .line 491
    :goto_d
    if-nez v4, :cond_29

    .line 492
    .line 493
    goto :goto_e

    .line 494
    :cond_29
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->ch:Ljava/util/ArrayList;

    .line 495
    .line 496
    iget-object v1, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 497
    .line 498
    if-nez v1, :cond_2a

    .line 499
    .line 500
    :goto_e
    return-void

    .line 501
    :cond_2a
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$10$1;

    .line 502
    .line 503
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$10$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$10;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    .line 508
    .line 509
    return-void
.end method
