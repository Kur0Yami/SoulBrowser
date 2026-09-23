.class Lcom/mycompany/app/main/MainTransLocale$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransLocale$8;->c:Lcom/mycompany/app/main/MainTransLocale;

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransLocale$8;->c:Lcom/mycompany/app/main/MainTransLocale;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainTransLocale;->x:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/main/MainTransLocale;->x:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v4, 0x5

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v8

    .line 18
    if-eqz v8, :cond_1

    .line 19
    .line 20
    :cond_0
    :goto_0
    move v2, v7

    .line 21
    goto/16 :goto_7

    .line 22
    .line 23
    :cond_1
    iget-object v8, v1, Lcom/mycompany/app/main/MainTransLocale;->p:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2, v8}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 26
    .line 27
    .line 28
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-object v2, v3

    .line 31
    :goto_1
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v8, "div"

    .line 35
    .line 36
    invoke-virtual {v2, v8}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-nez v8, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget v8, v1, Lcom/mycompany/app/main/MainTransLocale;->s:I

    .line 50
    .line 51
    if-ge v8, v4, :cond_4

    .line 52
    .line 53
    move v8, v6

    .line 54
    goto :goto_2

    .line 55
    :cond_4
    move v8, v7

    .line 56
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    move v10, v7

    .line 61
    move v11, v10

    .line 62
    :cond_5
    :goto_3
    if-ge v11, v9, :cond_e

    .line 63
    .line 64
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    add-int/lit8 v11, v11, 0x1

    .line 69
    .line 70
    check-cast v12, Lorg/jsoup/nodes/Element;

    .line 71
    .line 72
    if-nez v12, :cond_6

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_6
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->id()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v13

    .line 83
    iget-object v14, v1, Lcom/mycompany/app/main/MainTransLocale;->f:Ljava/util/List;

    .line 84
    .line 85
    if-eqz v14, :cond_8

    .line 86
    .line 87
    if-ltz v13, :cond_8

    .line 88
    .line 89
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    if-lt v13, v15, :cond_7

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    check-cast v13, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_8
    :goto_4
    move-object v13, v3

    .line 104
    :goto_5
    if-nez v13, :cond_9

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_9
    const-string v14, "p"

    .line 108
    .line 109
    invoke-virtual {v12, v14}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    if-nez v12, :cond_a

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_a
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    if-eqz v15, :cond_b

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_b
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    if-eqz v15, :cond_c

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_c
    iput-object v14, v13, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->i:Ljava/lang/String;

    .line 139
    .line 140
    const-string v14, "font"

    .line 141
    .line 142
    invoke-virtual {v12, v14}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    if-nez v12, :cond_d

    .line 147
    .line 148
    iput v6, v13, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->k:I

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_d
    iput v5, v13, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->k:I

    .line 152
    .line 153
    :goto_6
    iget v12, v13, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->k:I

    .line 154
    .line 155
    if-eq v12, v5, :cond_5

    .line 156
    .line 157
    move v10, v6

    .line 158
    if-eqz v8, :cond_5

    .line 159
    .line 160
    :cond_e
    xor-int/lit8 v2, v10, 0x1

    .line 161
    .line 162
    :goto_7
    if-nez v2, :cond_10

    .line 163
    .line 164
    iget v2, v1, Lcom/mycompany/app/main/MainTransLocale;->s:I

    .line 165
    .line 166
    if-ge v2, v4, :cond_10

    .line 167
    .line 168
    add-int/2addr v2, v6

    .line 169
    iput v2, v1, Lcom/mycompany/app/main/MainTransLocale;->s:I

    .line 170
    .line 171
    iget-object v1, v1, Lcom/mycompany/app/main/MainTransLocale;->h:Lcom/mycompany/app/view/MyWebSafe;

    .line 172
    .line 173
    if-nez v1, :cond_f

    .line 174
    .line 175
    goto/16 :goto_12

    .line 176
    .line 177
    :cond_f
    new-instance v2, Lcom/mycompany/app/main/MainTransLocale$8$1;

    .line 178
    .line 179
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTransLocale$8$1;-><init>(Lcom/mycompany/app/main/MainTransLocale$8;)V

    .line 180
    .line 181
    .line 182
    const-wide/16 v3, 0x64

    .line 183
    .line 184
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_10
    iget-object v2, v1, Lcom/mycompany/app/main/MainTransLocale;->f:Ljava/util/List;

    .line 189
    .line 190
    if-eqz v2, :cond_2b

    .line 191
    .line 192
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_11

    .line 197
    .line 198
    goto/16 :goto_11

    .line 199
    .line 200
    :cond_11
    iget-object v4, v1, Lcom/mycompany/app/main/MainTransLocale;->o:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-eqz v8, :cond_12

    .line 207
    .line 208
    goto/16 :goto_11

    .line 209
    .line 210
    :cond_12
    new-instance v8, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    move v10, v7

    .line 224
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result v11

    .line 228
    if-eqz v11, :cond_24

    .line 229
    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v11

    .line 234
    check-cast v11, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 235
    .line 236
    if-nez v11, :cond_13

    .line 237
    .line 238
    goto :goto_8

    .line 239
    :cond_13
    iget-object v12, v11, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->i:Ljava/lang/String;

    .line 240
    .line 241
    iput-object v3, v11, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->i:Ljava/lang/String;

    .line 242
    .line 243
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    if-eqz v13, :cond_14

    .line 248
    .line 249
    goto/16 :goto_c

    .line 250
    .line 251
    :cond_14
    const v13, 0xff1d

    .line 252
    .line 253
    .line 254
    const/16 v14, 0x3d

    .line 255
    .line 256
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    const-string v13, " = "

    .line 261
    .line 262
    const-string v14, " ("

    .line 263
    .line 264
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v12

    .line 268
    const-string v13, "="

    .line 269
    .line 270
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    const-string v13, "Turkey"

    .line 275
    .line 276
    const-string v15, "T\u00fcrkiye"

    .line 277
    .line 278
    invoke-virtual {v12, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    if-eqz v13, :cond_15

    .line 287
    .line 288
    goto/16 :goto_c

    .line 289
    .line 290
    :cond_15
    iget-boolean v13, v1, Lcom/mycompany/app/main/MainTransLocale;->q:Z

    .line 291
    .line 292
    if-eqz v13, :cond_19

    .line 293
    .line 294
    const-string v13, "\ud280\ub974\ud0a4\uc608"

    .line 295
    .line 296
    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v12

    .line 300
    const-string v13, "\uccb4\uc288\ud2f0\ub098"

    .line 301
    .line 302
    const-string v15, "\uccb4\ucf54"

    .line 303
    .line 304
    invoke-virtual {v12, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    const-string v13, "\ubc29\uae00\ub77c "

    .line 309
    .line 310
    const-string v15, "\ubcb5\uace8\uc5b4 "

    .line 311
    .line 312
    invoke-virtual {v12, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    const-string v13, "\uc5b4 ("

    .line 317
    .line 318
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    if-nez v15, :cond_16

    .line 323
    .line 324
    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v12

    .line 328
    :cond_16
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 329
    .line 330
    .line 331
    move-result v13

    .line 332
    const-string v14, "\uc5b4"

    .line 333
    .line 334
    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v14

    .line 338
    if-eqz v14, :cond_17

    .line 339
    .line 340
    if-le v13, v6, :cond_17

    .line 341
    .line 342
    add-int/lit8 v13, v13, -0x1

    .line 343
    .line 344
    invoke-virtual {v12, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v12

    .line 348
    goto :goto_9

    .line 349
    :cond_17
    const-string v14, " \uc655\uad6d"

    .line 350
    .line 351
    invoke-virtual {v12, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v14

    .line 355
    if-eqz v14, :cond_18

    .line 356
    .line 357
    const/4 v14, 0x3

    .line 358
    if-le v13, v14, :cond_18

    .line 359
    .line 360
    add-int/lit8 v13, v13, -0x3

    .line 361
    .line 362
    invoke-virtual {v12, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v12

    .line 366
    :cond_18
    :goto_9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 367
    .line 368
    .line 369
    move-result v13

    .line 370
    if-eqz v13, :cond_19

    .line 371
    .line 372
    goto :goto_c

    .line 373
    :cond_19
    if-eqz v9, :cond_1c

    .line 374
    .line 375
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result v13

    .line 379
    if-eqz v13, :cond_1a

    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_1a
    :try_start_1
    const-string v13, "\\("

    .line 383
    .line 384
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v13

    .line 388
    if-eqz v13, :cond_1c

    .line 389
    .line 390
    array-length v14, v13

    .line 391
    if-eq v14, v5, :cond_1b

    .line 392
    .line 393
    goto :goto_a

    .line 394
    :cond_1b
    aget-object v14, v13, v7

    .line 395
    .line 396
    invoke-static {v14, v9}, Lcom/mycompany/app/main/MainUtil;->h2(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v14

    .line 400
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 401
    .line 402
    .line 403
    move-result v15

    .line 404
    if-eqz v15, :cond_1d

    .line 405
    .line 406
    :catch_1
    :cond_1c
    :goto_a
    move-object v13, v3

    .line 407
    goto :goto_b

    .line 408
    :cond_1d
    aget-object v13, v13, v6

    .line 409
    .line 410
    invoke-static {v13, v9}, Lcom/mycompany/app/main/MainUtil;->h2(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 415
    .line 416
    .line 417
    move-result v15

    .line 418
    if-eqz v15, :cond_1e

    .line 419
    .line 420
    goto :goto_a

    .line 421
    :cond_1e
    new-instance v15, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v14, "("

    .line 430
    .line 431
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    :goto_b
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 442
    .line 443
    .line 444
    move-result v14

    .line 445
    if-nez v14, :cond_1f

    .line 446
    .line 447
    move-object v12, v13

    .line 448
    :cond_1f
    const-string v13, ")"

    .line 449
    .line 450
    invoke-static {v12, v13}, Landroid/support/v4/media/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v12

    .line 454
    iput-object v12, v11, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 457
    .line 458
    .line 459
    move-result v12

    .line 460
    if-nez v12, :cond_20

    .line 461
    .line 462
    iget-object v12, v11, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 463
    .line 464
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 465
    .line 466
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v12

    .line 470
    iput-object v12, v11, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->j:Ljava/lang/String;

    .line 471
    .line 472
    :cond_20
    :goto_c
    iget-object v12, v1, Lcom/mycompany/app/main/MainTransLocale;->b:Landroid/content/Context;

    .line 473
    .line 474
    iget-object v13, v11, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 475
    .line 476
    sget-object v14, Lcom/mycompany/app/db/book/DbBookLocale;->c:Lcom/mycompany/app/db/book/DbBookLocale;

    .line 477
    .line 478
    if-eqz v12, :cond_21

    .line 479
    .line 480
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 481
    .line 482
    .line 483
    move-result v14

    .line 484
    if-eqz v14, :cond_22

    .line 485
    .line 486
    :cond_21
    move-object/from16 v16, v2

    .line 487
    .line 488
    move-object/from16 v17, v4

    .line 489
    .line 490
    goto :goto_d

    .line 491
    :cond_22
    const-string v14, "_name"

    .line 492
    .line 493
    filled-new-array {v14}, [Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v15

    .line 497
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    invoke-static {v12}, Lcom/mycompany/app/db/book/DbBookLocale;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLocale;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 510
    .line 511
    .line 512
    move-result-object v12

    .line 513
    const-string v7, "DbBookLocale_table"

    .line 514
    .line 515
    const-string v5, "_code=? AND _index=?"

    .line 516
    .line 517
    invoke-static {v12, v7, v15, v5, v3}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    move-result v15

    .line 521
    if-eqz v15, :cond_21

    .line 522
    .line 523
    const-string v6, "_code"

    .line 524
    .line 525
    invoke-static {v6, v4}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    move-object/from16 v16, v2

    .line 530
    .line 531
    const-string v2, "_index"

    .line 532
    .line 533
    move-object/from16 v17, v4

    .line 534
    .line 535
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v6, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    const/4 v2, 0x1

    .line 546
    if-ne v15, v2, :cond_23

    .line 547
    .line 548
    invoke-static {v12, v7, v6, v5, v3}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    goto :goto_d

    .line 552
    :cond_23
    invoke-static {v12, v7, v6}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 553
    .line 554
    .line 555
    :goto_d
    iget-object v2, v11, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 556
    .line 557
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    add-int/lit8 v10, v10, 0x1

    .line 561
    .line 562
    move-object/from16 v2, v16

    .line 563
    .line 564
    move-object/from16 v4, v17

    .line 565
    .line 566
    const/4 v3, 0x0

    .line 567
    const/4 v5, 0x2

    .line 568
    const/4 v6, 0x1

    .line 569
    const/4 v7, 0x0

    .line 570
    goto/16 :goto_8

    .line 571
    .line 572
    :cond_24
    iput-object v8, v1, Lcom/mycompany/app/main/MainTransLocale;->g:Ljava/util/ArrayList;

    .line 573
    .line 574
    :try_start_2
    iget-object v2, v1, Lcom/mycompany/app/main/MainTransLocale;->e:Ljava/util/List;

    .line 575
    .line 576
    if-eqz v2, :cond_2b

    .line 577
    .line 578
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    if-eqz v3, :cond_25

    .line 583
    .line 584
    goto :goto_11

    .line 585
    :cond_25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    if-eqz v3, :cond_2b

    .line 594
    .line 595
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    check-cast v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 600
    .line 601
    if-nez v3, :cond_26

    .line 602
    .line 603
    goto :goto_e

    .line 604
    :cond_26
    iget v4, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 605
    .line 606
    const/4 v5, 0x1

    .line 607
    if-eq v4, v5, :cond_27

    .line 608
    .line 609
    goto :goto_e

    .line 610
    :cond_27
    iget v4, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 611
    .line 612
    add-int/lit16 v4, v4, -0x3e8

    .line 613
    .line 614
    iget-object v6, v1, Lcom/mycompany/app/main/MainTransLocale;->g:Ljava/util/ArrayList;

    .line 615
    .line 616
    if-eqz v6, :cond_29

    .line 617
    .line 618
    if-ltz v4, :cond_29

    .line 619
    .line 620
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    if-lt v4, v7, :cond_28

    .line 625
    .line 626
    goto :goto_f

    .line 627
    :cond_28
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v4

    .line 631
    check-cast v4, Ljava/lang/String;

    .line 632
    .line 633
    goto :goto_10

    .line 634
    :cond_29
    :goto_f
    const/4 v4, 0x0

    .line 635
    :goto_10
    iput-object v4, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 636
    .line 637
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 638
    .line 639
    .line 640
    move-result v4

    .line 641
    if-nez v4, :cond_2a

    .line 642
    .line 643
    iget-object v4, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 644
    .line 645
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 646
    .line 647
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v4

    .line 651
    iput-object v4, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->j:Ljava/lang/String;

    .line 652
    .line 653
    :cond_2a
    const/4 v4, 0x2

    .line 654
    iput v4, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->k:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 655
    .line 656
    goto :goto_e

    .line 657
    :catch_2
    :cond_2b
    :goto_11
    iget-object v1, v1, Lcom/mycompany/app/main/MainTransLocale;->h:Lcom/mycompany/app/view/MyWebSafe;

    .line 658
    .line 659
    if-nez v1, :cond_2c

    .line 660
    .line 661
    :goto_12
    return-void

    .line 662
    :cond_2c
    new-instance v2, Lcom/mycompany/app/main/MainTransLocale$8$2;

    .line 663
    .line 664
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTransLocale$8$2;-><init>(Lcom/mycompany/app/main/MainTransLocale$8;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 668
    .line 669
    .line 670
    return-void
.end method
