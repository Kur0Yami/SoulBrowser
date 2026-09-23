.class Lcom/mycompany/app/dialog/DialogDownUrl$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$35;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl$35;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_41

    .line 10
    .line 11
    :cond_0
    iget v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->H1:I

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x5

    .line 15
    const/4 v7, 0x2

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x1

    .line 18
    if-ne v2, v7, :cond_3

    .line 19
    .line 20
    :try_start_0
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v11, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->U0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v2, v11}, Lorg/jsoup/Connection;->referrer(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v11, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->t3(Landroid/content/Context;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    invoke-interface {v2, v11}, Lorg/jsoup/Connection;->userAgent(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto/16 :goto_33

    .line 49
    .line 50
    :cond_1
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->N(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-nez v11, :cond_2

    .line 63
    .line 64
    goto/16 :goto_33

    .line 65
    .line 66
    :cond_2
    iput v10, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 67
    .line 68
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->b0()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12

    .line 71
    .line 72
    .line 73
    goto/16 :goto_33

    .line 74
    .line 75
    :cond_3
    iget v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 76
    .line 77
    if-ne v2, v10, :cond_4

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogDownUrl;->b0()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_33

    .line 83
    .line 84
    :cond_4
    const-string v11, "[contentType=audio]"

    .line 85
    .line 86
    const-string v12, "[contentType=video]"

    .line 87
    .line 88
    const-string v13, "video"

    .line 89
    .line 90
    const-string v14, "x"

    .line 91
    .line 92
    const-string v15, "height"

    .line 93
    .line 94
    const-string v8, "width"

    .line 95
    .line 96
    if-ne v2, v5, :cond_4d

    .line 97
    .line 98
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v16

    .line 104
    if-eqz v16, :cond_6

    .line 105
    .line 106
    :catch_0
    :cond_5
    :goto_0
    const/4 v2, 0x0

    .line 107
    goto/16 :goto_1a

    .line 108
    .line 109
    :cond_6
    const-string v7, "https://cdn.embedly.com/widgets/media.html"

    .line 110
    .line 111
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    const/4 v5, -0x1

    .line 116
    const-string v3, "youtube.com"

    .line 117
    .line 118
    if-eqz v7, :cond_19

    .line 119
    .line 120
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-eqz v7, :cond_8

    .line 129
    .line 130
    :cond_7
    :goto_1
    const/4 v14, 0x0

    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    :cond_8
    const-string v7, "&url=https"

    .line 134
    .line 135
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eq v7, v5, :cond_7

    .line 140
    .line 141
    add-int/lit8 v5, v7, 0xa

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-lt v5, v8, :cond_9

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_9
    const/16 v8, 0x26

    .line 151
    .line 152
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->indexOf(II)I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-gt v8, v5, :cond_a

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_a
    add-int/2addr v7, v6

    .line 160
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_b

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_b
    :try_start_1
    invoke-static {v2}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-interface {v5}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 176
    .line 177
    .line 178
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    goto :goto_2

    .line 180
    :catch_1
    const/4 v5, 0x0

    .line 181
    :goto_2
    if-nez v5, :cond_c

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_c
    :try_start_2
    invoke-virtual {v5, v13}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    if-eqz v5, :cond_7

    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-nez v7, :cond_d

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    move v8, v9

    .line 202
    move v13, v8

    .line 203
    move v11, v10

    .line 204
    const/4 v12, 0x0

    .line 205
    :goto_3
    if-ge v13, v7, :cond_15

    .line 206
    .line 207
    :try_start_3
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    add-int/lit8 v13, v13, 0x1

    .line 212
    .line 213
    check-cast v14, Lorg/jsoup/nodes/Element;

    .line 214
    .line 215
    if-nez v14, :cond_e

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_e
    const-string v15, "src"

    .line 219
    .line 220
    invoke-virtual {v14, v15}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v15

    .line 228
    if-eqz v15, :cond_f

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_f
    const-string v15, "blob:"

    .line 232
    .line 233
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v15

    .line 237
    if-eqz v15, :cond_10

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_10
    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    if-eqz v15, :cond_11

    .line 245
    .line 246
    move v8, v10

    .line 247
    goto :goto_3

    .line 248
    :cond_11
    invoke-static {v14}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v15

    .line 252
    if-nez v15, :cond_16

    .line 253
    .line 254
    if-eqz v11, :cond_13

    .line 255
    .line 256
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    if-eqz v11, :cond_12

    .line 261
    .line 262
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    move-object v12, v11

    .line 267
    :cond_12
    move v11, v9

    .line 268
    :cond_13
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 269
    .line 270
    .line 271
    move-result v15

    .line 272
    if-eqz v15, :cond_14

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_14
    invoke-static {v14, v12}, Lcom/mycompany/app/main/MainUtil;->F1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v14

    .line 279
    invoke-static {v14}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 283
    if-nez v15, :cond_16

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :catch_2
    move v8, v9

    .line 287
    :catch_3
    :cond_15
    if-eqz v8, :cond_7

    .line 288
    .line 289
    move-object v14, v3

    .line 290
    :cond_16
    :goto_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_17

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_17
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_18

    .line 303
    .line 304
    iput-boolean v10, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->k1:Z

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .line 312
    .line 313
    new-instance v3, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 314
    .line 315
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 316
    .line 317
    .line 318
    iput-object v14, v3, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    goto/16 :goto_1a

    .line 324
    .line 325
    :cond_19
    const-string v7, "https://www.redditmedia.com/mediaembed/"

    .line 326
    .line 327
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    const-string v13, "DASHPlaylist.mpd"

    .line 332
    .line 333
    if-eqz v7, :cond_25

    .line 334
    .line 335
    :try_start_4
    invoke-static {v2}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    invoke-interface {v2}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 340
    .line 341
    .line 342
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 343
    goto :goto_5

    .line 344
    :catch_4
    const/4 v2, 0x0

    .line 345
    :goto_5
    if-nez v2, :cond_1b

    .line 346
    .line 347
    :cond_1a
    :goto_6
    const/4 v2, 0x0

    .line 348
    goto :goto_a

    .line 349
    :cond_1b
    :try_start_5
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->getAllElements()Lorg/jsoup/select/Elements;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    if-eqz v2, :cond_1a

    .line 354
    .line 355
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-nez v7, :cond_1c

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 366
    move v4, v9

    .line 367
    move/from16 v17, v4

    .line 368
    .line 369
    :cond_1d
    :goto_7
    if-ge v4, v7, :cond_23

    .line 370
    .line 371
    :try_start_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v18

    .line 375
    add-int/lit8 v4, v4, 0x1

    .line 376
    .line 377
    check-cast v18, Lorg/jsoup/nodes/Element;

    .line 378
    .line 379
    if-nez v18, :cond_1e

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 383
    .line 384
    .line 385
    move-result-object v18

    .line 386
    invoke-virtual/range {v18 .. v18}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 387
    .line 388
    .line 389
    move-result-object v18

    .line 390
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    .line 392
    .line 393
    move-result v19

    .line 394
    if-eqz v19, :cond_1d

    .line 395
    .line 396
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v19

    .line 400
    check-cast v19, Lorg/jsoup/nodes/Attribute;

    .line 401
    .line 402
    if-nez v19, :cond_1f

    .line 403
    .line 404
    goto :goto_9

    .line 405
    :cond_1f
    invoke-virtual/range {v19 .. v19}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    invoke-static {v6}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    move-result v19

    .line 413
    if-nez v19, :cond_21

    .line 414
    .line 415
    :cond_20
    :goto_9
    const/4 v6, 0x5

    .line 416
    goto :goto_8

    .line 417
    :cond_21
    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 418
    .line 419
    .line 420
    move-result v19

    .line 421
    if-eqz v19, :cond_22

    .line 422
    .line 423
    move-object v2, v6

    .line 424
    goto :goto_a

    .line 425
    :cond_22
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 426
    .line 427
    .line 428
    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 429
    if-eqz v6, :cond_20

    .line 430
    .line 431
    move/from16 v17, v10

    .line 432
    .line 433
    goto :goto_9

    .line 434
    :catch_5
    move/from16 v17, v9

    .line 435
    .line 436
    :catch_6
    :cond_23
    if-eqz v17, :cond_1a

    .line 437
    .line 438
    move-object v2, v3

    .line 439
    :goto_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 440
    .line 441
    .line 442
    move-result v4

    .line 443
    if-eqz v4, :cond_24

    .line 444
    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_24
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_25

    .line 452
    .line 453
    iput-boolean v10, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->k1:Z

    .line 454
    .line 455
    goto/16 :goto_0

    .line 456
    .line 457
    :cond_25
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 458
    .line 459
    :try_start_7
    invoke-static {v2}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    invoke-interface {v4, v6}, Lorg/jsoup/Connection;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-interface {v4}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 472
    .line 473
    .line 474
    move-result-object v3
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/LinkageError; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 475
    goto :goto_b

    .line 476
    :catch_7
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->D6(Landroid/content/Context;)V

    .line 477
    .line 478
    .line 479
    :catch_8
    const/4 v3, 0x0

    .line 480
    :goto_b
    if-nez v3, :cond_26

    .line 481
    .line 482
    goto/16 :goto_0

    .line 483
    .line 484
    :cond_26
    :try_start_8
    invoke-virtual {v3, v12}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    if-eqz v4, :cond_5

    .line 489
    .line 490
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    if-nez v6, :cond_27

    .line 495
    .line 496
    goto/16 :goto_0

    .line 497
    .line 498
    :cond_27
    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    move-result v6

    .line 502
    if-ne v6, v5, :cond_28

    .line 503
    .line 504
    goto/16 :goto_0

    .line 505
    .line 506
    :cond_28
    const/16 v7, 0x2f

    .line 507
    .line 508
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->lastIndexOf(II)I

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    if-ne v6, v5, :cond_29

    .line 513
    .line 514
    goto/16 :goto_0

    .line 515
    .line 516
    :cond_29
    add-int/2addr v6, v10

    .line 517
    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    if-eqz v6, :cond_2a

    .line 526
    .line 527
    goto/16 :goto_0

    .line 528
    .line 529
    :cond_2a
    new-instance v6, Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 535
    .line 536
    .line 537
    move-result v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 538
    move v12, v9

    .line 539
    :goto_c
    const-string v13, "BaseURL"

    .line 540
    .line 541
    if-ge v12, v7, :cond_39

    .line 542
    .line 543
    :try_start_9
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v17

    .line 547
    add-int/lit8 v12, v12, 0x1

    .line 548
    .line 549
    check-cast v17, Lorg/jsoup/nodes/Element;

    .line 550
    .line 551
    if-nez v17, :cond_2b

    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_2b
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 555
    .line 556
    .line 557
    move-result-object v9

    .line 558
    if-eqz v9, :cond_38

    .line 559
    .line 560
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    .line 561
    .line 562
    .line 563
    move-result v17

    .line 564
    if-nez v17, :cond_2c

    .line 565
    .line 566
    :goto_d
    const/4 v9, 0x0

    .line 567
    goto :goto_c

    .line 568
    :cond_2c
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 569
    .line 570
    .line 571
    move-result v10

    .line 572
    const/4 v5, 0x0

    .line 573
    :goto_e
    if-ge v5, v10, :cond_37

    .line 574
    .line 575
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v20

    .line 579
    add-int/lit8 v5, v5, 0x1

    .line 580
    .line 581
    move-object/from16 v0, v20

    .line 582
    .line 583
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 584
    .line 585
    if-nez v0, :cond_2d

    .line 586
    .line 587
    move-object/from16 v0, p0

    .line 588
    .line 589
    goto :goto_e

    .line 590
    :cond_2d
    move/from16 v20, v5

    .line 591
    .line 592
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    if-eqz v5, :cond_2e

    .line 597
    .line 598
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    .line 599
    .line 600
    .line 601
    move-result v21

    .line 602
    if-nez v21, :cond_2f

    .line 603
    .line 604
    :cond_2e
    move-object/from16 v0, p0

    .line 605
    .line 606
    move/from16 v5, v20

    .line 607
    .line 608
    goto :goto_e

    .line 609
    :cond_2f
    move/from16 v21, v7

    .line 610
    .line 611
    invoke-virtual {v0, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 616
    .line 617
    .line 618
    move-result v22

    .line 619
    if-eqz v22, :cond_30

    .line 620
    .line 621
    :goto_f
    move-object/from16 v0, p0

    .line 622
    .line 623
    move/from16 v5, v20

    .line 624
    .line 625
    move/from16 v7, v21

    .line 626
    .line 627
    goto :goto_e

    .line 628
    :cond_30
    invoke-virtual {v0, v15}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 633
    .line 634
    .line 635
    move-result v22

    .line 636
    if-eqz v22, :cond_31

    .line 637
    .line 638
    goto :goto_f

    .line 639
    :cond_31
    move-object/from16 v22, v9

    .line 640
    .line 641
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 642
    .line 643
    .line 644
    move-result v9

    .line 645
    move/from16 v24, v10

    .line 646
    .line 647
    const/4 v10, 0x0

    .line 648
    const/16 v23, 0x0

    .line 649
    .line 650
    :goto_10
    if-ge v10, v9, :cond_35

    .line 651
    .line 652
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v25

    .line 656
    add-int/lit8 v10, v10, 0x1

    .line 657
    .line 658
    check-cast v25, Lorg/jsoup/nodes/Element;

    .line 659
    .line 660
    if-nez v25, :cond_32

    .line 661
    .line 662
    move-object/from16 v26, v5

    .line 663
    .line 664
    goto :goto_11

    .line 665
    :cond_32
    move-object/from16 v26, v5

    .line 666
    .line 667
    invoke-virtual/range {v25 .. v25}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v5

    .line 671
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    if-nez v5, :cond_34

    .line 676
    .line 677
    :cond_33
    :goto_11
    move-object/from16 v5, v26

    .line 678
    .line 679
    goto :goto_10

    .line 680
    :cond_34
    invoke-virtual/range {v25 .. v25}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v23

    .line 684
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 685
    .line 686
    .line 687
    move-result v5

    .line 688
    if-nez v5, :cond_33

    .line 689
    .line 690
    :cond_35
    move-object/from16 v5, v23

    .line 691
    .line 692
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 693
    .line 694
    .line 695
    move-result v9

    .line 696
    if-eqz v9, :cond_36

    .line 697
    .line 698
    :goto_12
    move-object/from16 v0, p0

    .line 699
    .line 700
    move/from16 v5, v20

    .line 701
    .line 702
    move/from16 v7, v21

    .line 703
    .line 704
    move-object/from16 v9, v22

    .line 705
    .line 706
    move/from16 v10, v24

    .line 707
    .line 708
    goto/16 :goto_e

    .line 709
    .line 710
    :cond_36
    new-instance v9, Ljava/lang/StringBuilder;

    .line 711
    .line 712
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v5

    .line 725
    new-instance v9, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 740
    .line 741
    .line 742
    move-result v7

    .line 743
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    new-instance v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 748
    .line 749
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 750
    .line 751
    .line 752
    iput-object v5, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 753
    .line 754
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    iput-object v5, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->d:Ljava/lang/String;

    .line 759
    .line 760
    mul-int/2addr v7, v0

    .line 761
    iput v7, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->e:I

    .line 762
    .line 763
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    goto :goto_12

    .line 767
    :cond_37
    move-object/from16 v0, p0

    .line 768
    .line 769
    const/4 v5, -0x1

    .line 770
    const/4 v9, 0x0

    .line 771
    const/4 v10, 0x1

    .line 772
    goto/16 :goto_c

    .line 773
    .line 774
    :cond_38
    move-object/from16 v0, p0

    .line 775
    .line 776
    goto/16 :goto_d

    .line 777
    .line 778
    :cond_39
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    if-eqz v0, :cond_41

    .line 783
    .line 784
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 785
    .line 786
    .line 787
    move-result v0

    .line 788
    const/4 v5, 0x0

    .line 789
    :cond_3a
    :goto_13
    if-ge v5, v0, :cond_41

    .line 790
    .line 791
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    move-result-object v7

    .line 795
    add-int/lit8 v5, v5, 0x1

    .line 796
    .line 797
    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 798
    .line 799
    if-nez v7, :cond_3b

    .line 800
    .line 801
    goto :goto_13

    .line 802
    :cond_3b
    invoke-virtual {v7, v13}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 803
    .line 804
    .line 805
    move-result-object v7

    .line 806
    if-eqz v7, :cond_3a

    .line 807
    .line 808
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    .line 809
    .line 810
    .line 811
    move-result v8

    .line 812
    if-nez v8, :cond_3c

    .line 813
    .line 814
    goto :goto_13

    .line 815
    :cond_3c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 816
    .line 817
    .line 818
    move-result v8

    .line 819
    const/4 v9, 0x0

    .line 820
    :goto_14
    if-ge v9, v8, :cond_3a

    .line 821
    .line 822
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v10

    .line 826
    add-int/lit8 v9, v9, 0x1

    .line 827
    .line 828
    check-cast v10, Lorg/jsoup/nodes/Element;

    .line 829
    .line 830
    if-nez v10, :cond_3d

    .line 831
    .line 832
    goto :goto_14

    .line 833
    :cond_3d
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v10

    .line 837
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 838
    .line 839
    .line 840
    move-result v12

    .line 841
    if-eqz v12, :cond_3e

    .line 842
    .line 843
    goto :goto_14

    .line 844
    :cond_3e
    const/16 v12, 0x5f

    .line 845
    .line 846
    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    .line 847
    .line 848
    .line 849
    move-result v12

    .line 850
    if-lez v12, :cond_3f

    .line 851
    .line 852
    const/16 v14, 0x2e

    .line 853
    .line 854
    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(I)I

    .line 855
    .line 856
    .line 857
    move-result v14

    .line 858
    add-int/lit8 v12, v12, 0x1

    .line 859
    .line 860
    if-le v14, v12, :cond_3f

    .line 861
    .line 862
    invoke-virtual {v10, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v12

    .line 866
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 867
    .line 868
    .line 869
    move-result v14

    .line 870
    const/4 v15, -0x1

    .line 871
    if-eq v14, v15, :cond_40

    .line 872
    .line 873
    goto :goto_15

    .line 874
    :cond_3f
    const/4 v15, -0x1

    .line 875
    :cond_40
    const/4 v12, 0x0

    .line 876
    const/4 v14, 0x0

    .line 877
    :goto_15
    new-instance v15, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    new-instance v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 889
    .line 890
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v15

    .line 897
    iput-object v15, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 898
    .line 899
    iput-object v12, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->d:Ljava/lang/String;

    .line 900
    .line 901
    iput v14, v10, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->e:I

    .line 902
    .line 903
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    goto :goto_14

    .line 907
    :cond_41
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 908
    .line 909
    .line 910
    move-result v0

    .line 911
    if-eqz v0, :cond_42

    .line 912
    .line 913
    goto/16 :goto_0

    .line 914
    .line 915
    :cond_42
    new-instance v0, Lcom/mycompany/app/down/DownParseList$SortM3u8;

    .line 916
    .line 917
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 918
    .line 919
    .line 920
    :try_start_a
    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 921
    .line 922
    .line 923
    :catch_9
    :try_start_b
    invoke-virtual {v3, v11}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    if-eqz v0, :cond_4c

    .line 928
    .line 929
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 930
    .line 931
    .line 932
    move-result v3

    .line 933
    if-nez v3, :cond_43

    .line 934
    .line 935
    goto/16 :goto_19

    .line 936
    .line 937
    :cond_43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    const/4 v4, 0x0

    .line 942
    const/4 v5, 0x0

    .line 943
    :cond_44
    :goto_16
    if-ge v5, v3, :cond_49

    .line 944
    .line 945
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v7

    .line 949
    add-int/lit8 v5, v5, 0x1

    .line 950
    .line 951
    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 952
    .line 953
    if-nez v7, :cond_45

    .line 954
    .line 955
    goto :goto_16

    .line 956
    :cond_45
    invoke-virtual {v7, v13}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 957
    .line 958
    .line 959
    move-result-object v7

    .line 960
    if-eqz v7, :cond_44

    .line 961
    .line 962
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    .line 963
    .line 964
    .line 965
    move-result v8

    .line 966
    if-nez v8, :cond_46

    .line 967
    .line 968
    goto :goto_16

    .line 969
    :cond_46
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 970
    .line 971
    .line 972
    move-result v8

    .line 973
    const/4 v9, 0x0

    .line 974
    :cond_47
    :goto_17
    if-ge v9, v8, :cond_44

    .line 975
    .line 976
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v10

    .line 980
    add-int/lit8 v9, v9, 0x1

    .line 981
    .line 982
    check-cast v10, Lorg/jsoup/nodes/Element;

    .line 983
    .line 984
    if-nez v10, :cond_48

    .line 985
    .line 986
    goto :goto_17

    .line 987
    :cond_48
    invoke-virtual {v10}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v4

    .line 991
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 992
    .line 993
    .line 994
    move-result v10

    .line 995
    if-nez v10, :cond_47

    .line 996
    .line 997
    goto :goto_16

    .line 998
    :cond_49
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 999
    .line 1000
    .line 1001
    move-result v0

    .line 1002
    if-eqz v0, :cond_4a

    .line 1003
    .line 1004
    goto :goto_19

    .line 1005
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v0

    .line 1020
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1021
    .line 1022
    .line 1023
    move-result v2

    .line 1024
    const/4 v3, 0x0

    .line 1025
    :goto_18
    if-ge v3, v2, :cond_4c

    .line 1026
    .line 1027
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v4

    .line 1031
    add-int/lit8 v3, v3, 0x1

    .line 1032
    .line 1033
    check-cast v4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 1034
    .line 1035
    if-nez v4, :cond_4b

    .line 1036
    .line 1037
    goto :goto_18

    .line 1038
    :cond_4b
    iput-object v0, v4, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1039
    .line 1040
    goto :goto_18

    .line 1041
    :cond_4c
    :goto_19
    move-object v2, v6

    .line 1042
    :goto_1a
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->E1:Ljava/util/ArrayList;

    .line 1043
    .line 1044
    goto/16 :goto_33

    .line 1045
    .line 1046
    :cond_4d
    move v0, v6

    .line 1047
    if-ne v2, v0, :cond_76

    .line 1048
    .line 1049
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 1050
    .line 1051
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 1052
    .line 1053
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v2

    .line 1057
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1058
    .line 1059
    .line 1060
    move-result v3

    .line 1061
    if-eqz v3, :cond_4f

    .line 1062
    .line 1063
    :catch_a
    :cond_4e
    :goto_1b
    const/4 v3, 0x0

    .line 1064
    goto/16 :goto_2d

    .line 1065
    .line 1066
    :cond_4f
    :try_start_c
    invoke-static {v2}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v2

    .line 1070
    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v3

    .line 1074
    invoke-interface {v2, v3}, Lorg/jsoup/Connection;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v2

    .line 1078
    invoke-interface {v2}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/LinkageError; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 1082
    goto :goto_1c

    .line 1083
    :catch_b
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->D6(Landroid/content/Context;)V

    .line 1084
    .line 1085
    .line 1086
    :catch_c
    const/4 v0, 0x0

    .line 1087
    :goto_1c
    if-nez v0, :cond_50

    .line 1088
    .line 1089
    goto :goto_1b

    .line 1090
    :cond_50
    :try_start_d
    const-string v2, "ContentProtection"

    .line 1091
    .line 1092
    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v2

    .line 1096
    if-eqz v2, :cond_51

    .line 1097
    .line 1098
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 1099
    .line 1100
    .line 1101
    move-result v2

    .line 1102
    if-lez v2, :cond_51

    .line 1103
    .line 1104
    goto :goto_1b

    .line 1105
    :cond_51
    invoke-virtual {v0, v12}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v2

    .line 1109
    if-eqz v2, :cond_4e

    .line 1110
    .line 1111
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 1112
    .line 1113
    .line 1114
    move-result v3

    .line 1115
    if-nez v3, :cond_52

    .line 1116
    .line 1117
    goto :goto_1b

    .line 1118
    :cond_52
    new-instance v3, Ljava/util/ArrayList;

    .line 1119
    .line 1120
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1124
    .line 1125
    .line 1126
    move-result v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 1127
    const/4 v5, 0x0

    .line 1128
    :goto_1d
    const-string v6, "$"

    .line 1129
    .line 1130
    const-string v7, "$Number"

    .line 1131
    .line 1132
    const-string v9, "media"

    .line 1133
    .line 1134
    const-string v10, "initialization"

    .line 1135
    .line 1136
    const-string v12, ""

    .line 1137
    .line 1138
    if-ge v5, v4, :cond_63

    .line 1139
    .line 1140
    :try_start_e
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v13

    .line 1144
    add-int/lit8 v5, v5, 0x1

    .line 1145
    .line 1146
    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 1147
    .line 1148
    if-nez v13, :cond_53

    .line 1149
    .line 1150
    goto :goto_1d

    .line 1151
    :cond_53
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v13

    .line 1155
    if-eqz v13, :cond_62

    .line 1156
    .line 1157
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    .line 1158
    .line 1159
    .line 1160
    move-result v19

    .line 1161
    if-nez v19, :cond_54

    .line 1162
    .line 1163
    goto :goto_1d

    .line 1164
    :cond_54
    move-object/from16 v19, v2

    .line 1165
    .line 1166
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 1167
    .line 1168
    .line 1169
    move-result v2

    .line 1170
    move/from16 v20, v4

    .line 1171
    .line 1172
    const/4 v4, 0x0

    .line 1173
    :goto_1e
    if-ge v4, v2, :cond_61

    .line 1174
    .line 1175
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v21

    .line 1179
    add-int/lit8 v4, v4, 0x1

    .line 1180
    .line 1181
    move/from16 v22, v2

    .line 1182
    .line 1183
    move-object/from16 v2, v21

    .line 1184
    .line 1185
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 1186
    .line 1187
    if-nez v2, :cond_55

    .line 1188
    .line 1189
    :goto_1f
    move/from16 v2, v22

    .line 1190
    .line 1191
    goto :goto_1e

    .line 1192
    :cond_55
    move/from16 v21, v4

    .line 1193
    .line 1194
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v4

    .line 1198
    if-eqz v4, :cond_56

    .line 1199
    .line 1200
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 1201
    .line 1202
    .line 1203
    move-result v23

    .line 1204
    if-nez v23, :cond_57

    .line 1205
    .line 1206
    :cond_56
    move/from16 v4, v21

    .line 1207
    .line 1208
    goto :goto_1f

    .line 1209
    :cond_57
    move/from16 v23, v5

    .line 1210
    .line 1211
    invoke-virtual {v2, v8}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v5

    .line 1215
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1216
    .line 1217
    .line 1218
    move-result v24

    .line 1219
    if-eqz v24, :cond_58

    .line 1220
    .line 1221
    :goto_20
    move/from16 v4, v21

    .line 1222
    .line 1223
    move/from16 v2, v22

    .line 1224
    .line 1225
    move/from16 v5, v23

    .line 1226
    .line 1227
    goto :goto_1e

    .line 1228
    :cond_58
    invoke-virtual {v2, v15}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v2

    .line 1232
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1233
    .line 1234
    .line 1235
    move-result v24

    .line 1236
    if-eqz v24, :cond_59

    .line 1237
    .line 1238
    goto :goto_20

    .line 1239
    :cond_59
    move-object/from16 v24, v13

    .line 1240
    .line 1241
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1242
    .line 1243
    .line 1244
    move-result v13

    .line 1245
    move-object/from16 v27, v15

    .line 1246
    .line 1247
    const/4 v15, 0x0

    .line 1248
    const/16 v25, 0x0

    .line 1249
    .line 1250
    const/16 v26, 0x0

    .line 1251
    .line 1252
    :goto_21
    if-ge v15, v13, :cond_5e

    .line 1253
    .line 1254
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v28

    .line 1258
    add-int/lit8 v15, v15, 0x1

    .line 1259
    .line 1260
    move-object/from16 v29, v4

    .line 1261
    .line 1262
    move-object/from16 v4, v28

    .line 1263
    .line 1264
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 1265
    .line 1266
    if-nez v4, :cond_5a

    .line 1267
    .line 1268
    goto :goto_22

    .line 1269
    :cond_5a
    invoke-virtual {v4, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v28

    .line 1273
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1274
    .line 1275
    .line 1276
    move-result v30

    .line 1277
    if-eqz v30, :cond_5b

    .line 1278
    .line 1279
    goto :goto_22

    .line 1280
    :cond_5b
    invoke-virtual {v4, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v4

    .line 1284
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v30

    .line 1288
    if-eqz v30, :cond_5c

    .line 1289
    .line 1290
    goto :goto_22

    .line 1291
    :cond_5c
    invoke-virtual {v4, v7, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v4

    .line 1295
    invoke-virtual {v4, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v4

    .line 1299
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1300
    .line 1301
    .line 1302
    move-result v30

    .line 1303
    if-eqz v30, :cond_5d

    .line 1304
    .line 1305
    :goto_22
    move-object/from16 v4, v29

    .line 1306
    .line 1307
    goto :goto_21

    .line 1308
    :cond_5d
    move-object/from16 v26, v4

    .line 1309
    .line 1310
    move-object/from16 v25, v28

    .line 1311
    .line 1312
    goto :goto_22

    .line 1313
    :cond_5e
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v4

    .line 1317
    if-nez v4, :cond_5f

    .line 1318
    .line 1319
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1320
    .line 1321
    .line 1322
    move-result v4

    .line 1323
    if-eqz v4, :cond_60

    .line 1324
    .line 1325
    :cond_5f
    :goto_23
    move/from16 v4, v21

    .line 1326
    .line 1327
    move/from16 v2, v22

    .line 1328
    .line 1329
    move/from16 v5, v23

    .line 1330
    .line 1331
    move-object/from16 v13, v24

    .line 1332
    .line 1333
    move-object/from16 v15, v27

    .line 1334
    .line 1335
    goto/16 :goto_1e

    .line 1336
    .line 1337
    :cond_60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 1352
    .line 1353
    .line 1354
    move-result v5

    .line 1355
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 1356
    .line 1357
    .line 1358
    move-result v2

    .line 1359
    new-instance v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 1360
    .line 1361
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 1362
    .line 1363
    .line 1364
    move-object/from16 v15, v25

    .line 1365
    .line 1366
    iput-object v15, v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->g:Ljava/lang/String;

    .line 1367
    .line 1368
    move-object/from16 v15, v26

    .line 1369
    .line 1370
    iput-object v15, v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 1371
    .line 1372
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v4

    .line 1376
    iput-object v4, v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->d:Ljava/lang/String;

    .line 1377
    .line 1378
    mul-int/2addr v5, v2

    .line 1379
    iput v5, v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->e:I

    .line 1380
    .line 1381
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    .line 1383
    .line 1384
    goto :goto_23

    .line 1385
    :cond_61
    move/from16 v23, v5

    .line 1386
    .line 1387
    move-object/from16 v2, v19

    .line 1388
    .line 1389
    move/from16 v4, v20

    .line 1390
    .line 1391
    goto/16 :goto_1d

    .line 1392
    .line 1393
    :cond_62
    move/from16 v23, v5

    .line 1394
    .line 1395
    goto/16 :goto_1d

    .line 1396
    .line 1397
    :cond_63
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1398
    .line 1399
    .line 1400
    move-result v2

    .line 1401
    if-eqz v2, :cond_64

    .line 1402
    .line 1403
    goto/16 :goto_1b

    .line 1404
    .line 1405
    :cond_64
    new-instance v2, Lcom/mycompany/app/down/DownParseList$SortM3u8;

    .line 1406
    .line 1407
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 1408
    .line 1409
    .line 1410
    :try_start_f
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    .line 1411
    .line 1412
    .line 1413
    :catch_d
    :try_start_10
    invoke-virtual {v0, v11}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v0

    .line 1417
    if-eqz v0, :cond_75

    .line 1418
    .line 1419
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 1420
    .line 1421
    .line 1422
    move-result v2

    .line 1423
    if-nez v2, :cond_65

    .line 1424
    .line 1425
    goto/16 :goto_2d

    .line 1426
    .line 1427
    :cond_65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1428
    .line 1429
    .line 1430
    move-result v2

    .line 1431
    const/4 v4, 0x0

    .line 1432
    const/4 v5, 0x0

    .line 1433
    const/4 v8, 0x0

    .line 1434
    :cond_66
    :goto_24
    if-ge v8, v2, :cond_72

    .line 1435
    .line 1436
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v11

    .line 1440
    add-int/lit8 v8, v8, 0x1

    .line 1441
    .line 1442
    check-cast v11, Lorg/jsoup/nodes/Element;

    .line 1443
    .line 1444
    if-nez v11, :cond_68

    .line 1445
    .line 1446
    :cond_67
    :goto_25
    move-object/from16 v19, v0

    .line 1447
    .line 1448
    move/from16 v20, v2

    .line 1449
    .line 1450
    goto/16 :goto_2b

    .line 1451
    .line 1452
    :cond_68
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v11

    .line 1456
    if-eqz v11, :cond_67

    .line 1457
    .line 1458
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    .line 1459
    .line 1460
    .line 1461
    move-result v13

    .line 1462
    if-nez v13, :cond_69

    .line 1463
    .line 1464
    goto :goto_25

    .line 1465
    :cond_69
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1466
    .line 1467
    .line 1468
    move-result v13

    .line 1469
    const/4 v14, 0x0

    .line 1470
    :goto_26
    if-ge v14, v13, :cond_66

    .line 1471
    .line 1472
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v15

    .line 1476
    add-int/lit8 v14, v14, 0x1

    .line 1477
    .line 1478
    check-cast v15, Lorg/jsoup/nodes/Element;

    .line 1479
    .line 1480
    if-nez v15, :cond_6b

    .line 1481
    .line 1482
    :cond_6a
    :goto_27
    move-object/from16 v19, v0

    .line 1483
    .line 1484
    move/from16 v20, v2

    .line 1485
    .line 1486
    goto :goto_2a

    .line 1487
    :cond_6b
    invoke-virtual {v15}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v15

    .line 1491
    if-eqz v15, :cond_6a

    .line 1492
    .line 1493
    invoke-virtual {v15}, Ljava/util/AbstractCollection;->size()I

    .line 1494
    .line 1495
    .line 1496
    move-result v19

    .line 1497
    if-nez v19, :cond_6c

    .line 1498
    .line 1499
    goto :goto_27

    .line 1500
    :cond_6c
    move-object/from16 v19, v0

    .line 1501
    .line 1502
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 1503
    .line 1504
    .line 1505
    move-result v0

    .line 1506
    move/from16 v20, v2

    .line 1507
    .line 1508
    const/4 v2, 0x0

    .line 1509
    :goto_28
    if-ge v2, v0, :cond_71

    .line 1510
    .line 1511
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v21

    .line 1515
    add-int/lit8 v2, v2, 0x1

    .line 1516
    .line 1517
    move/from16 v22, v0

    .line 1518
    .line 1519
    move-object/from16 v0, v21

    .line 1520
    .line 1521
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 1522
    .line 1523
    if-nez v0, :cond_6d

    .line 1524
    .line 1525
    goto :goto_29

    .line 1526
    :cond_6d
    invoke-virtual {v0, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v21

    .line 1530
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1531
    .line 1532
    .line 1533
    move-result v23

    .line 1534
    if-eqz v23, :cond_6e

    .line 1535
    .line 1536
    goto :goto_29

    .line 1537
    :cond_6e
    invoke-virtual {v0, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0

    .line 1541
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1542
    .line 1543
    .line 1544
    move-result v23

    .line 1545
    if-eqz v23, :cond_6f

    .line 1546
    .line 1547
    goto :goto_29

    .line 1548
    :cond_6f
    invoke-virtual {v0, v7, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v0

    .line 1552
    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1557
    .line 1558
    .line 1559
    move-result v23

    .line 1560
    if-eqz v23, :cond_70

    .line 1561
    .line 1562
    :goto_29
    move/from16 v0, v22

    .line 1563
    .line 1564
    goto :goto_28

    .line 1565
    :cond_70
    move-object v5, v0

    .line 1566
    move-object/from16 v4, v21

    .line 1567
    .line 1568
    goto :goto_29

    .line 1569
    :cond_71
    :goto_2a
    move-object/from16 v0, v19

    .line 1570
    .line 1571
    move/from16 v2, v20

    .line 1572
    .line 1573
    goto :goto_26

    .line 1574
    :goto_2b
    move-object/from16 v0, v19

    .line 1575
    .line 1576
    move/from16 v2, v20

    .line 1577
    .line 1578
    goto/16 :goto_24

    .line 1579
    .line 1580
    :cond_72
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1581
    .line 1582
    .line 1583
    move-result v0

    .line 1584
    if-nez v0, :cond_75

    .line 1585
    .line 1586
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1587
    .line 1588
    .line 1589
    move-result v0

    .line 1590
    if-eqz v0, :cond_73

    .line 1591
    .line 1592
    goto :goto_2d

    .line 1593
    :cond_73
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1594
    .line 1595
    .line 1596
    move-result v0

    .line 1597
    const/4 v2, 0x0

    .line 1598
    :goto_2c
    if-ge v2, v0, :cond_75

    .line 1599
    .line 1600
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v6

    .line 1604
    add-int/lit8 v2, v2, 0x1

    .line 1605
    .line 1606
    check-cast v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 1607
    .line 1608
    if-nez v6, :cond_74

    .line 1609
    .line 1610
    goto :goto_2c

    .line 1611
    :cond_74
    iput-object v4, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->h:Ljava/lang/String;

    .line 1612
    .line 1613
    iput-object v5, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 1614
    .line 1615
    goto :goto_2c

    .line 1616
    :cond_75
    :goto_2d
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->E1:Ljava/util/ArrayList;

    .line 1617
    .line 1618
    goto/16 :goto_33

    .line 1619
    .line 1620
    :cond_76
    move-object/from16 v27, v15

    .line 1621
    .line 1622
    const/4 v0, 0x7

    .line 1623
    if-ne v2, v0, :cond_77

    .line 1624
    .line 1625
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 1626
    .line 1627
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 1628
    .line 1629
    invoke-static {v0, v2}, Lcom/mycompany/app/down/DownParseDzen;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v0

    .line 1633
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->E1:Ljava/util/ArrayList;

    .line 1634
    .line 1635
    goto/16 :goto_33

    .line 1636
    .line 1637
    :cond_77
    const/16 v0, 0x9

    .line 1638
    .line 1639
    if-ne v2, v0, :cond_8f

    .line 1640
    .line 1641
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 1642
    .line 1643
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 1644
    .line 1645
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->U0:Ljava/lang/String;

    .line 1646
    .line 1647
    const-string v4, "base_url"

    .line 1648
    .line 1649
    invoke-static {v0, v2, v3}, Lcom/mycompany/app/down/DownParseVimeo;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v0

    .line 1653
    if-nez v0, :cond_78

    .line 1654
    .line 1655
    :catch_e
    :goto_2e
    const/4 v5, 0x0

    .line 1656
    goto/16 :goto_32

    .line 1657
    .line 1658
    :cond_78
    :try_start_11
    const-string v2, "clip_id"

    .line 1659
    .line 1660
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v2

    .line 1664
    if-nez v2, :cond_79

    .line 1665
    .line 1666
    goto :goto_2e

    .line 1667
    :cond_79
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v2

    .line 1671
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1672
    .line 1673
    .line 1674
    move-result v2

    .line 1675
    if-eqz v2, :cond_7a

    .line 1676
    .line 1677
    goto :goto_2e

    .line 1678
    :cond_7a
    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v2

    .line 1682
    if-nez v2, :cond_7b

    .line 1683
    .line 1684
    goto :goto_2e

    .line 1685
    :cond_7b
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v2

    .line 1689
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1690
    .line 1691
    .line 1692
    move-result v3

    .line 1693
    if-eqz v3, :cond_7c

    .line 1694
    .line 1695
    goto :goto_2e

    .line 1696
    :cond_7c
    const-string v3, "../"

    .line 1697
    .line 1698
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1699
    .line 1700
    .line 1701
    move-result v3

    .line 1702
    if-nez v3, :cond_7d

    .line 1703
    .line 1704
    goto :goto_2e

    .line 1705
    :cond_7d
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v0

    .line 1709
    check-cast v0, Lcom/google/gson/JsonArray;

    .line 1710
    .line 1711
    if-nez v0, :cond_7e

    .line 1712
    .line 1713
    goto :goto_2e

    .line 1714
    :cond_7e
    iget-object v3, v0, Lcom/google/gson/JsonArray;->c:Ljava/util/ArrayList;

    .line 1715
    .line 1716
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1717
    .line 1718
    .line 1719
    move-result v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    .line 1720
    if-nez v3, :cond_7f

    .line 1721
    .line 1722
    goto :goto_2e

    .line 1723
    :cond_7f
    new-instance v5, Ljava/util/ArrayList;

    .line 1724
    .line 1725
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1726
    .line 1727
    .line 1728
    const/4 v6, 0x0

    .line 1729
    :goto_2f
    if-ge v6, v3, :cond_8d

    .line 1730
    .line 1731
    :try_start_12
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonArray;->q(I)Lcom/google/gson/JsonElement;

    .line 1732
    .line 1733
    .line 1734
    move-result-object v7

    .line 1735
    check-cast v7, Lcom/google/gson/JsonObject;

    .line 1736
    .line 1737
    if-nez v7, :cond_80

    .line 1738
    .line 1739
    :catch_f
    :goto_30
    move-object/from16 v11, v27

    .line 1740
    .line 1741
    goto/16 :goto_31

    .line 1742
    .line 1743
    :cond_80
    const-string v9, "id"

    .line 1744
    .line 1745
    invoke-virtual {v7, v9}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v9

    .line 1749
    if-nez v9, :cond_81

    .line 1750
    .line 1751
    goto :goto_30

    .line 1752
    :cond_81
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 1753
    .line 1754
    .line 1755
    move-result-object v9

    .line 1756
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1757
    .line 1758
    .line 1759
    move-result v10

    .line 1760
    if-eqz v10, :cond_82

    .line 1761
    .line 1762
    goto :goto_30

    .line 1763
    :cond_82
    invoke-virtual {v7, v4}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v10

    .line 1767
    if-nez v10, :cond_83

    .line 1768
    .line 1769
    goto :goto_30

    .line 1770
    :cond_83
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v10

    .line 1774
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1775
    .line 1776
    .line 1777
    move-result v10

    .line 1778
    if-eqz v10, :cond_84

    .line 1779
    .line 1780
    goto :goto_30

    .line 1781
    :cond_84
    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1782
    .line 1783
    .line 1784
    move-result-object v10

    .line 1785
    if-nez v10, :cond_85

    .line 1786
    .line 1787
    goto :goto_30

    .line 1788
    :cond_85
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->g()I

    .line 1789
    .line 1790
    .line 1791
    move-result v10
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 1792
    if-gtz v10, :cond_86

    .line 1793
    .line 1794
    goto :goto_30

    .line 1795
    :cond_86
    move-object/from16 v11, v27

    .line 1796
    .line 1797
    :try_start_13
    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v12

    .line 1801
    if-nez v12, :cond_87

    .line 1802
    .line 1803
    goto :goto_31

    .line 1804
    :cond_87
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->g()I

    .line 1805
    .line 1806
    .line 1807
    move-result v12

    .line 1808
    if-gtz v12, :cond_88

    .line 1809
    .line 1810
    goto :goto_31

    .line 1811
    :cond_88
    const-string v13, "init_segment"

    .line 1812
    .line 1813
    invoke-virtual {v7, v13}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v13

    .line 1817
    if-nez v13, :cond_89

    .line 1818
    .line 1819
    goto :goto_31

    .line 1820
    :cond_89
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->p()Ljava/lang/String;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v13

    .line 1824
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1825
    .line 1826
    .line 1827
    move-result v13

    .line 1828
    if-eqz v13, :cond_8a

    .line 1829
    .line 1830
    goto :goto_31

    .line 1831
    :cond_8a
    const-string v13, "segments"

    .line 1832
    .line 1833
    invoke-virtual {v7, v13}, Lcom/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v7

    .line 1837
    check-cast v7, Lcom/google/gson/JsonArray;

    .line 1838
    .line 1839
    if-nez v7, :cond_8b

    .line 1840
    .line 1841
    goto :goto_31

    .line 1842
    :cond_8b
    iget-object v7, v7, Lcom/google/gson/JsonArray;->c:Ljava/util/ArrayList;

    .line 1843
    .line 1844
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1845
    .line 1846
    .line 1847
    move-result v7

    .line 1848
    if-nez v7, :cond_8c

    .line 1849
    .line 1850
    goto :goto_31

    .line 1851
    :cond_8c
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1852
    .line 1853
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1854
    .line 1855
    .line 1856
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1863
    .line 1864
    .line 1865
    new-instance v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 1866
    .line 1867
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 1868
    .line 1869
    .line 1870
    iput-object v2, v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->f:Ljava/lang/String;

    .line 1871
    .line 1872
    iput-object v9, v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 1873
    .line 1874
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v7

    .line 1878
    iput-object v7, v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->d:Ljava/lang/String;

    .line 1879
    .line 1880
    mul-int/2addr v10, v12

    .line 1881
    iput v10, v13, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->e:I

    .line 1882
    .line 1883
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    .line 1884
    .line 1885
    .line 1886
    :catch_10
    :goto_31
    add-int/lit8 v6, v6, 0x1

    .line 1887
    .line 1888
    move-object/from16 v27, v11

    .line 1889
    .line 1890
    goto/16 :goto_2f

    .line 1891
    .line 1892
    :cond_8d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1893
    .line 1894
    .line 1895
    move-result v0

    .line 1896
    if-eqz v0, :cond_8e

    .line 1897
    .line 1898
    goto/16 :goto_2e

    .line 1899
    .line 1900
    :cond_8e
    new-instance v0, Lcom/mycompany/app/down/DownParseList$SortM3u8;

    .line 1901
    .line 1902
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1903
    .line 1904
    .line 1905
    :try_start_14
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11

    .line 1906
    .line 1907
    .line 1908
    :catch_11
    :goto_32
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->E1:Ljava/util/ArrayList;

    .line 1909
    .line 1910
    :catch_12
    :cond_8f
    :goto_33
    new-instance v0, Ljava/util/ArrayList;

    .line 1911
    .line 1912
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1913
    .line 1914
    .line 1915
    iput-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 1916
    .line 1917
    iget v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->r1:I

    .line 1918
    .line 1919
    const-string v2, "MP4"

    .line 1920
    .line 1921
    const/4 v3, 0x1

    .line 1922
    if-eq v0, v3, :cond_9b

    .line 1923
    .line 1924
    const/4 v3, 0x3

    .line 1925
    if-eq v0, v3, :cond_9b

    .line 1926
    .line 1927
    const/4 v3, 0x5

    .line 1928
    if-eq v0, v3, :cond_9b

    .line 1929
    .line 1930
    const/4 v3, 0x7

    .line 1931
    if-eq v0, v3, :cond_9b

    .line 1932
    .line 1933
    const/16 v3, 0x9

    .line 1934
    .line 1935
    if-ne v0, v3, :cond_90

    .line 1936
    .line 1937
    goto/16 :goto_3a

    .line 1938
    .line 1939
    :cond_90
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->F1:Ljava/util/List;

    .line 1940
    .line 1941
    if-eqz v0, :cond_a4

    .line 1942
    .line 1943
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1944
    .line 1945
    .line 1946
    move-result v0

    .line 1947
    if-nez v0, :cond_a4

    .line 1948
    .line 1949
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 1950
    .line 1951
    if-nez v0, :cond_91

    .line 1952
    .line 1953
    goto/16 :goto_41

    .line 1954
    .line 1955
    :cond_91
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->a()Lcom/mycompany/app/web/WebNestView;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v0

    .line 1959
    if-eqz v0, :cond_94

    .line 1960
    .line 1961
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getDownloaded()Ljava/util/List;

    .line 1962
    .line 1963
    .line 1964
    move-result-object v8

    .line 1965
    if-eqz v8, :cond_92

    .line 1966
    .line 1967
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 1968
    .line 1969
    .line 1970
    move-result v3

    .line 1971
    if-nez v3, :cond_92

    .line 1972
    .line 1973
    const/4 v3, 0x1

    .line 1974
    goto :goto_34

    .line 1975
    :cond_92
    const/4 v3, 0x0

    .line 1976
    :goto_34
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getDownFail()Ljava/util/List;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v0

    .line 1980
    if-eqz v0, :cond_93

    .line 1981
    .line 1982
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1983
    .line 1984
    .line 1985
    move-result v4

    .line 1986
    if-nez v4, :cond_93

    .line 1987
    .line 1988
    const/4 v4, 0x1

    .line 1989
    goto :goto_35

    .line 1990
    :cond_93
    const/4 v4, 0x0

    .line 1991
    goto :goto_35

    .line 1992
    :cond_94
    const/4 v0, 0x0

    .line 1993
    const/4 v3, 0x0

    .line 1994
    const/4 v4, 0x0

    .line 1995
    const/4 v8, 0x0

    .line 1996
    :goto_35
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->F1:Ljava/util/List;

    .line 1997
    .line 1998
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1999
    .line 2000
    .line 2001
    move-result v5

    .line 2002
    const/4 v9, 0x0

    .line 2003
    :goto_36
    if-ge v9, v5, :cond_a4

    .line 2004
    .line 2005
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->F1:Ljava/util/List;

    .line 2006
    .line 2007
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v6

    .line 2011
    check-cast v6, Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 2012
    .line 2013
    if-nez v6, :cond_95

    .line 2014
    .line 2015
    goto :goto_39

    .line 2016
    :cond_95
    iget-object v7, v6, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->c:Ljava/lang/String;

    .line 2017
    .line 2018
    iget-object v10, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 2019
    .line 2020
    invoke-static {v10, v7}, Lcom/mycompany/app/dialog/DialogDownUrl;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v10

    .line 2024
    const-string v11, "HD"

    .line 2025
    .line 2026
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2027
    .line 2028
    .line 2029
    move-result v11

    .line 2030
    const-string v12, "HDSD"

    .line 2031
    .line 2032
    const-string v13, "http"

    .line 2033
    .line 2034
    if-eqz v11, :cond_96

    .line 2035
    .line 2036
    iget-object v11, v6, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->a:Ljava/lang/String;

    .line 2037
    .line 2038
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2039
    .line 2040
    .line 2041
    move-result v11

    .line 2042
    if-nez v11, :cond_97

    .line 2043
    .line 2044
    iget-object v11, v6, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->a:Ljava/lang/String;

    .line 2045
    .line 2046
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2047
    .line 2048
    .line 2049
    move-result v11

    .line 2050
    if-nez v11, :cond_97

    .line 2051
    .line 2052
    goto :goto_37

    .line 2053
    :cond_96
    const-string v11, "SD"

    .line 2054
    .line 2055
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2056
    .line 2057
    .line 2058
    move-result v11

    .line 2059
    if-eqz v11, :cond_97

    .line 2060
    .line 2061
    iget-object v11, v6, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->a:Ljava/lang/String;

    .line 2062
    .line 2063
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2064
    .line 2065
    .line 2066
    move-result v11

    .line 2067
    if-nez v11, :cond_97

    .line 2068
    .line 2069
    iget-object v11, v6, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->a:Ljava/lang/String;

    .line 2070
    .line 2071
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2072
    .line 2073
    .line 2074
    move-result v11

    .line 2075
    if-nez v11, :cond_97

    .line 2076
    .line 2077
    goto :goto_37

    .line 2078
    :cond_97
    move-object v12, v2

    .line 2079
    :goto_37
    new-instance v11, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 2080
    .line 2081
    invoke-direct {v11, v9, v7, v12}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2082
    .line 2083
    .line 2084
    iget-boolean v6, v6, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->e:Z

    .line 2085
    .line 2086
    iput-boolean v6, v11, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->h:Z

    .line 2087
    .line 2088
    if-eqz v4, :cond_98

    .line 2089
    .line 2090
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 2091
    .line 2092
    .line 2093
    move-result v6

    .line 2094
    if-eqz v6, :cond_98

    .line 2095
    .line 2096
    const/4 v6, 0x2

    .line 2097
    iput v6, v11, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 2098
    .line 2099
    goto :goto_38

    .line 2100
    :cond_98
    if-eqz v3, :cond_99

    .line 2101
    .line 2102
    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 2103
    .line 2104
    .line 2105
    move-result v6

    .line 2106
    if-eqz v6, :cond_99

    .line 2107
    .line 2108
    const/4 v6, 0x1

    .line 2109
    iput v6, v11, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 2110
    .line 2111
    :cond_99
    :goto_38
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 2112
    .line 2113
    if-eqz v6, :cond_9a

    .line 2114
    .line 2115
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    .line 2117
    .line 2118
    :cond_9a
    :goto_39
    add-int/lit8 v9, v9, 0x1

    .line 2119
    .line 2120
    goto :goto_36

    .line 2121
    :cond_9b
    :goto_3a
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->E1:Ljava/util/ArrayList;

    .line 2122
    .line 2123
    if-eqz v0, :cond_a4

    .line 2124
    .line 2125
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 2126
    .line 2127
    .line 2128
    move-result v0

    .line 2129
    if-nez v0, :cond_a4

    .line 2130
    .line 2131
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->V0:Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;

    .line 2132
    .line 2133
    if-nez v0, :cond_9c

    .line 2134
    .line 2135
    goto/16 :goto_41

    .line 2136
    .line 2137
    :cond_9c
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;->a()Lcom/mycompany/app/web/WebNestView;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v0

    .line 2141
    if-eqz v0, :cond_9f

    .line 2142
    .line 2143
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getDownloaded()Ljava/util/List;

    .line 2144
    .line 2145
    .line 2146
    move-result-object v8

    .line 2147
    if-eqz v8, :cond_9d

    .line 2148
    .line 2149
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 2150
    .line 2151
    .line 2152
    move-result v3

    .line 2153
    if-nez v3, :cond_9d

    .line 2154
    .line 2155
    const/4 v3, 0x1

    .line 2156
    goto :goto_3b

    .line 2157
    :cond_9d
    const/4 v3, 0x0

    .line 2158
    :goto_3b
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->getDownFail()Ljava/util/List;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v0

    .line 2162
    if-eqz v0, :cond_9e

    .line 2163
    .line 2164
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 2165
    .line 2166
    .line 2167
    move-result v4

    .line 2168
    if-nez v4, :cond_9e

    .line 2169
    .line 2170
    const/4 v4, 0x1

    .line 2171
    goto :goto_3c

    .line 2172
    :cond_9e
    const/4 v4, 0x0

    .line 2173
    :goto_3c
    move-object/from16 v31, v8

    .line 2174
    .line 2175
    move-object v8, v0

    .line 2176
    move-object/from16 v0, v31

    .line 2177
    .line 2178
    goto :goto_3d

    .line 2179
    :cond_9f
    const/4 v0, 0x0

    .line 2180
    const/4 v3, 0x0

    .line 2181
    const/4 v4, 0x0

    .line 2182
    const/4 v8, 0x0

    .line 2183
    :goto_3d
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->E1:Ljava/util/ArrayList;

    .line 2184
    .line 2185
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 2186
    .line 2187
    .line 2188
    move-result v5

    .line 2189
    const/4 v9, 0x0

    .line 2190
    :goto_3e
    if-ge v9, v5, :cond_a4

    .line 2191
    .line 2192
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->E1:Ljava/util/ArrayList;

    .line 2193
    .line 2194
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2195
    .line 2196
    .line 2197
    move-result-object v6

    .line 2198
    check-cast v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 2199
    .line 2200
    if-nez v6, :cond_a0

    .line 2201
    .line 2202
    const/4 v6, 0x2

    .line 2203
    const/4 v7, 0x1

    .line 2204
    goto :goto_40

    .line 2205
    :cond_a0
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 2206
    .line 2207
    iget-object v10, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->d:Ljava/lang/String;

    .line 2208
    .line 2209
    invoke-static {v7, v10}, Lcom/mycompany/app/dialog/DialogDownUrl;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v7

    .line 2213
    new-instance v10, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 2214
    .line 2215
    iget-object v6, v6, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->d:Ljava/lang/String;

    .line 2216
    .line 2217
    invoke-direct {v10, v9, v6, v2}, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2218
    .line 2219
    .line 2220
    if-eqz v4, :cond_a2

    .line 2221
    .line 2222
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 2223
    .line 2224
    .line 2225
    move-result v6

    .line 2226
    if-eqz v6, :cond_a2

    .line 2227
    .line 2228
    const/4 v6, 0x2

    .line 2229
    iput v6, v10, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 2230
    .line 2231
    :cond_a1
    const/4 v7, 0x1

    .line 2232
    goto :goto_3f

    .line 2233
    :cond_a2
    const/4 v6, 0x2

    .line 2234
    if-eqz v3, :cond_a1

    .line 2235
    .line 2236
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 2237
    .line 2238
    .line 2239
    move-result v7

    .line 2240
    if-eqz v7, :cond_a1

    .line 2241
    .line 2242
    const/4 v7, 0x1

    .line 2243
    iput v7, v10, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->e:I

    .line 2244
    .line 2245
    :goto_3f
    iget-object v11, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 2246
    .line 2247
    if-eqz v11, :cond_a3

    .line 2248
    .line 2249
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2250
    .line 2251
    .line 2252
    :cond_a3
    :goto_40
    add-int/lit8 v9, v9, 0x1

    .line 2253
    .line 2254
    goto :goto_3e

    .line 2255
    :cond_a4
    iget-object v0, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->F0:Lcom/mycompany/app/view/MyCoverView;

    .line 2256
    .line 2257
    if-nez v0, :cond_a5

    .line 2258
    .line 2259
    goto :goto_41

    .line 2260
    :cond_a5
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$36;

    .line 2261
    .line 2262
    invoke-direct {v2, v1}, Lcom/mycompany/app/dialog/DialogDownUrl$36;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 2263
    .line 2264
    .line 2265
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2266
    .line 2267
    .line 2268
    :goto_41
    return-void
.end method
