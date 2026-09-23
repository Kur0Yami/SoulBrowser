.class Lcom/mycompany/app/web/WebViewActivity$358$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$358;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$358;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$358$1;->c:Lcom/mycompany/app/web/WebViewActivity$358;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$358$1;->c:Lcom/mycompany/app/web/WebViewActivity$358;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$358;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->nk:Z

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->ok:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->pk:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->qk:Ljava/lang/String;

    .line 14
    .line 15
    iget-wide v6, v1, Lcom/mycompany/app/web/WebViewActivity;->rk:J

    .line 16
    .line 17
    iget v8, v1, Lcom/mycompany/app/web/WebViewActivity;->sk:I

    .line 18
    .line 19
    iget-object v9, v1, Lcom/mycompany/app/web/WebViewActivity;->tk:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->uk:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v11, v1, Lcom/mycompany/app/web/WebViewActivity;->vk:Ljava/lang/String;

    .line 24
    .line 25
    iget-boolean v12, v1, Lcom/mycompany/app/web/WebViewActivity;->wk:Z

    .line 26
    .line 27
    iget-object v13, v1, Lcom/mycompany/app/web/WebViewActivity;->xk:Ljava/util/List;

    .line 28
    .line 29
    iget v14, v1, Lcom/mycompany/app/web/WebViewActivity;->yk:I

    .line 30
    .line 31
    iget-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->zk:Ljava/util/ArrayList;

    .line 32
    .line 33
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Ak:Z

    .line 34
    .line 35
    move/from16 v16, v2

    .line 36
    .line 37
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Bk:Ljava/lang/String;

    .line 38
    .line 39
    move-object/from16 v17, v10

    .line 40
    .line 41
    iget-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Ck:Ljava/lang/String;

    .line 42
    .line 43
    move-object/from16 v18, v10

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->ok:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->pk:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->qk:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->tk:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->uk:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->vk:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->xk:Ljava/util/List;

    .line 59
    .line 60
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->zk:Ljava/util/ArrayList;

    .line 61
    .line 62
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Bk:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Ck:Ljava/lang/String;

    .line 65
    .line 66
    const/16 v19, 0x2

    .line 67
    .line 68
    const/4 v10, 0x5

    .line 69
    if-ne v8, v10, :cond_d

    .line 70
    .line 71
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v20

    .line 75
    if-nez v20, :cond_d

    .line 76
    .line 77
    const-string v10, "https://www.instagram.com/"

    .line 78
    .line 79
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v21

    .line 83
    if-eqz v21, :cond_2

    .line 84
    .line 85
    const-string v12, "reel/"

    .line 86
    .line 87
    move/from16 v21, v8

    .line 88
    .line 89
    const/16 v8, 0x1a

    .line 90
    .line 91
    invoke-virtual {v3, v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-nez v8, :cond_1

    .line 96
    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-nez v8, :cond_1

    .line 102
    .line 103
    const-string v8, "/feed/"

    .line 104
    .line 105
    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-nez v8, :cond_1

    .line 110
    .line 111
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_1

    .line 116
    .line 117
    move/from16 v23, v0

    .line 118
    .line 119
    move-object v3, v2

    .line 120
    :goto_0
    move-object/from16 v22, v11

    .line 121
    .line 122
    move/from16 v12, v19

    .line 123
    .line 124
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 125
    goto/16 :goto_7

    .line 126
    .line 127
    :cond_1
    move/from16 v23, v0

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_2
    move/from16 v21, v8

    .line 131
    .line 132
    const-string v8, "insta_dummy"

    .line 133
    .line 134
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-eqz v8, :cond_b

    .line 139
    .line 140
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_3

    .line 145
    .line 146
    :goto_2
    move/from16 v23, v0

    .line 147
    .line 148
    move-object/from16 v22, v11

    .line 149
    .line 150
    const/4 v0, 0x0

    .line 151
    goto :goto_4

    .line 152
    :cond_3
    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-nez v3, :cond_4

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_4
    const-string v3, "/reels/"

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-gtz v8, :cond_5

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_5
    add-int/lit8 v10, v8, 0x7

    .line 169
    .line 170
    const/16 v12, 0x2f

    .line 171
    .line 172
    invoke-virtual {v2, v12, v10}, Ljava/lang/String;->indexOf(II)I

    .line 173
    .line 174
    .line 175
    move-result v12

    .line 176
    move-object/from16 v22, v11

    .line 177
    .line 178
    const-string v11, "/reel/"

    .line 179
    .line 180
    if-le v12, v10, :cond_9

    .line 181
    .line 182
    add-int/lit8 v10, v12, 0x1

    .line 183
    .line 184
    move/from16 v23, v0

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-ne v10, v0, :cond_6

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    const/4 v0, 0x0

    .line 194
    invoke-virtual {v2, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_7

    .line 203
    .line 204
    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    goto :goto_4

    .line 209
    :cond_7
    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    if-eqz v10, :cond_8

    .line 218
    .line 219
    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    goto :goto_4

    .line 224
    :cond_8
    const-string v3, "/reel"

    .line 225
    .line 226
    invoke-static {v8, v3, v0}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    goto :goto_4

    .line 231
    :cond_9
    move/from16 v23, v0

    .line 232
    .line 233
    :goto_3
    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-nez v3, :cond_a

    .line 242
    .line 243
    move-object v3, v0

    .line 244
    goto :goto_5

    .line 245
    :cond_a
    move-object v3, v2

    .line 246
    :goto_5
    move/from16 v12, v19

    .line 247
    .line 248
    const/4 v0, 0x1

    .line 249
    goto :goto_7

    .line 250
    :cond_b
    move/from16 v23, v0

    .line 251
    .line 252
    move-object/from16 v22, v11

    .line 253
    .line 254
    const-string v0, "twit_dummy"

    .line 255
    .line 256
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    .line 262
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->Q3(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_c

    .line 271
    .line 272
    :goto_6
    const/4 v0, 0x0

    .line 273
    const/4 v12, 0x1

    .line 274
    goto :goto_7

    .line 275
    :cond_c
    move-object v3, v2

    .line 276
    goto :goto_6

    .line 277
    :cond_d
    move/from16 v23, v0

    .line 278
    .line 279
    move/from16 v21, v8

    .line 280
    .line 281
    move-object/from16 v22, v11

    .line 282
    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :goto_7
    if-nez v21, :cond_11

    .line 286
    .line 287
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    if-nez v10, :cond_11

    .line 292
    .line 293
    const-string v10, "image"

    .line 294
    .line 295
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    if-eqz v10, :cond_e

    .line 300
    .line 301
    const/4 v10, 0x4

    .line 302
    goto :goto_8

    .line 303
    :cond_e
    const-string v10, "video"

    .line 304
    .line 305
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    if-eqz v10, :cond_f

    .line 310
    .line 311
    const/4 v10, 0x5

    .line 312
    goto :goto_8

    .line 313
    :cond_f
    const-string v10, "audio"

    .line 314
    .line 315
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v10

    .line 319
    if-nez v10, :cond_10

    .line 320
    .line 321
    const-string v10, "application/ogg"

    .line 322
    .line 323
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    if-nez v10, :cond_10

    .line 328
    .line 329
    const-string v10, "application/x-ogg"

    .line 330
    .line 331
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v10

    .line 335
    if-eqz v10, :cond_11

    .line 336
    .line 337
    :cond_10
    const/4 v10, 0x6

    .line 338
    goto :goto_8

    .line 339
    :cond_11
    move/from16 v10, v21

    .line 340
    .line 341
    :goto_8
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v11

    .line 345
    if-nez v11, :cond_12

    .line 346
    .line 347
    move v2, v10

    .line 348
    move-object/from16 v11, v22

    .line 349
    .line 350
    move/from16 v22, v0

    .line 351
    .line 352
    const/4 v0, 0x0

    .line 353
    goto/16 :goto_c

    .line 354
    .line 355
    :cond_12
    const-string v11, "pornhub.com"

    .line 356
    .line 357
    const/4 v2, 0x5

    .line 358
    if-ne v10, v2, :cond_1c

    .line 359
    .line 360
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    if-nez v2, :cond_13

    .line 367
    .line 368
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 369
    .line 370
    const/16 v20, 0x4

    .line 371
    .line 372
    const-string v8, "soundcloud.com"

    .line 373
    .line 374
    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_14

    .line 379
    .line 380
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-nez v2, :cond_14

    .line 385
    .line 386
    const-string v2, ".mp3"

    .line 387
    .line 388
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    if-eqz v2, :cond_14

    .line 393
    .line 394
    const-string v5, "audio/*"

    .line 395
    .line 396
    const-string v11, "Sound.mp3"

    .line 397
    .line 398
    move/from16 v22, v0

    .line 399
    .line 400
    const/4 v0, 0x0

    .line 401
    const/4 v2, 0x6

    .line 402
    goto/16 :goto_c

    .line 403
    .line 404
    :cond_13
    const/16 v20, 0x4

    .line 405
    .line 406
    :cond_14
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->z2(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    move-object/from16 v21, v5

    .line 415
    .line 416
    const-string v5, "mp4"

    .line 417
    .line 418
    if-nez v8, :cond_16

    .line 419
    .line 420
    const-string v8, ".m3u8"

    .line 421
    .line 422
    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-eqz v8, :cond_15

    .line 427
    .line 428
    new-instance v8, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 434
    .line 435
    .line 436
    move-result v11

    .line 437
    add-int/lit8 v11, v11, -0x4

    .line 438
    .line 439
    move/from16 v22, v0

    .line 440
    .line 441
    const/4 v0, 0x0

    .line 442
    invoke-virtual {v2, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    move-object v11, v0

    .line 457
    :goto_9
    const/4 v0, 0x0

    .line 458
    goto :goto_b

    .line 459
    :cond_15
    move/from16 v22, v0

    .line 460
    .line 461
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->W0(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->K(Ljava/lang/String;)Z

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    if-eqz v0, :cond_17

    .line 470
    .line 471
    move-object v11, v2

    .line 472
    goto :goto_9

    .line 473
    :cond_16
    move/from16 v22, v0

    .line 474
    .line 475
    invoke-static/range {v18 .. v18}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_17

    .line 484
    .line 485
    const/4 v0, 0x0

    .line 486
    const/4 v11, 0x0

    .line 487
    goto :goto_b

    .line 488
    :cond_17
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 489
    .line 490
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 491
    .line 492
    .line 493
    move-result v8

    .line 494
    if-nez v8, :cond_18

    .line 495
    .line 496
    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    if-eqz v0, :cond_18

    .line 501
    .line 502
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->c3(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    :cond_18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    if-nez v0, :cond_19

    .line 511
    .line 512
    const-string v0, "tsfile:"

    .line 513
    .line 514
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    if-nez v0, :cond_19

    .line 519
    .line 520
    const/4 v0, 0x0

    .line 521
    invoke-static {v3, v0}, Lcom/mycompany/app/main/MainUtil;->U3(Ljava/lang/String;Z)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v8

    .line 525
    invoke-static {v8}, Lcom/mycompany/app/compress/Compress;->K(Ljava/lang/String;)Z

    .line 526
    .line 527
    .line 528
    move-result v11

    .line 529
    if-eqz v11, :cond_1a

    .line 530
    .line 531
    move-object v5, v8

    .line 532
    goto :goto_a

    .line 533
    :cond_19
    const/4 v0, 0x0

    .line 534
    :cond_1a
    :goto_a
    const-string v8, "."

    .line 535
    .line 536
    invoke-static {v2, v8, v5}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    move-object v11, v2

    .line 541
    :cond_1b
    :goto_b
    move v2, v10

    .line 542
    move-object/from16 v5, v21

    .line 543
    .line 544
    goto :goto_c

    .line 545
    :cond_1c
    move/from16 v22, v0

    .line 546
    .line 547
    move-object/from16 v21, v5

    .line 548
    .line 549
    const/4 v0, 0x0

    .line 550
    const/4 v2, 0x4

    .line 551
    if-ne v10, v2, :cond_1d

    .line 552
    .line 553
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 554
    .line 555
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    if-nez v5, :cond_1d

    .line 560
    .line 561
    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 562
    .line 563
    .line 564
    move-result v2

    .line 565
    if-eqz v2, :cond_1d

    .line 566
    .line 567
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->d6(Ljava/lang/String;)Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    if-eqz v2, :cond_1d

    .line 572
    .line 573
    invoke-static/range {v18 .. v18}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v11

    .line 577
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-nez v2, :cond_1b

    .line 582
    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .line 587
    .line 588
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->c3(Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v5

    .line 592
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string v5, ".gif"

    .line 596
    .line 597
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v11

    .line 604
    goto :goto_b

    .line 605
    :cond_1d
    move v2, v10

    .line 606
    move-object/from16 v5, v21

    .line 607
    .line 608
    const/4 v11, 0x0

    .line 609
    :goto_c
    sget-object v8, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 610
    .line 611
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 612
    .line 613
    .line 614
    move-result v8

    .line 615
    if-nez v8, :cond_1f

    .line 616
    .line 617
    sget-object v8, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 618
    .line 619
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 620
    .line 621
    .line 622
    move-result v8

    .line 623
    if-nez v8, :cond_1f

    .line 624
    .line 625
    if-nez v12, :cond_1f

    .line 626
    .line 627
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->Dk:Ljava/lang/String;

    .line 628
    .line 629
    iput-object v11, v1, Lcom/mycompany/app/web/WebViewActivity;->Ek:Ljava/lang/String;

    .line 630
    .line 631
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Fk:Ljava/lang/String;

    .line 632
    .line 633
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 634
    .line 635
    if-nez v0, :cond_1e

    .line 636
    .line 637
    goto/16 :goto_12

    .line 638
    .line 639
    :cond_1e
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$359;

    .line 640
    .line 641
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$359;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    .line 646
    .line 647
    return-void

    .line 648
    :cond_1f
    if-nez v16, :cond_21

    .line 649
    .line 650
    const/4 v8, 0x4

    .line 651
    if-eq v2, v8, :cond_20

    .line 652
    .line 653
    goto :goto_d

    .line 654
    :cond_20
    move v8, v0

    .line 655
    goto :goto_e

    .line 656
    :cond_21
    :goto_d
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->h2()Z

    .line 657
    .line 658
    .line 659
    move-result v8

    .line 660
    :goto_e
    if-eqz v8, :cond_23

    .line 661
    .line 662
    if-eqz v16, :cond_22

    .line 663
    .line 664
    move/from16 v0, v19

    .line 665
    .line 666
    goto :goto_f

    .line 667
    :cond_22
    const/4 v0, 0x1

    .line 668
    :cond_23
    :goto_f
    iput-object v9, v1, Lcom/mycompany/app/web/WebViewActivity;->mk:Ljava/lang/String;

    .line 669
    .line 670
    iget-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 671
    .line 672
    if-eqz v8, :cond_24

    .line 673
    .line 674
    const/4 v8, 0x1

    .line 675
    iput-boolean v8, v1, Lcom/mycompany/app/web/WebViewActivity;->nb:Z

    .line 676
    .line 677
    sput-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 678
    .line 679
    :cond_24
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 680
    .line 681
    .line 682
    move-result v8

    .line 683
    if-eqz v8, :cond_25

    .line 684
    .line 685
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->Z2(Ljava/lang/String;)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v10

    .line 689
    goto :goto_10

    .line 690
    :cond_25
    move-object/from16 v10, v17

    .line 691
    .line 692
    :goto_10
    iget-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 693
    .line 694
    if-eqz v8, :cond_26

    .line 695
    .line 696
    invoke-virtual {v8}, Lcom/mycompany/app/web/WebNestView;->getPubList()Ljava/util/List;

    .line 697
    .line 698
    .line 699
    move-result-object v8

    .line 700
    goto :goto_11

    .line 701
    :cond_26
    const/4 v8, 0x0

    .line 702
    :goto_11
    iput v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Gk:I

    .line 703
    .line 704
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->Hk:Ljava/lang/String;

    .line 705
    .line 706
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->Ik:Ljava/lang/String;

    .line 707
    .line 708
    iput-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Jk:Ljava/lang/String;

    .line 709
    .line 710
    iput-wide v6, v1, Lcom/mycompany/app/web/WebViewActivity;->Kk:J

    .line 711
    .line 712
    iput v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Lk:I

    .line 713
    .line 714
    iput-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->Mk:Ljava/lang/String;

    .line 715
    .line 716
    iput-object v13, v1, Lcom/mycompany/app/web/WebViewActivity;->Nk:Ljava/util/List;

    .line 717
    .line 718
    iput v14, v1, Lcom/mycompany/app/web/WebViewActivity;->Ok:I

    .line 719
    .line 720
    iput-object v15, v1, Lcom/mycompany/app/web/WebViewActivity;->Pk:Ljava/util/ArrayList;

    .line 721
    .line 722
    move/from16 v0, v23

    .line 723
    .line 724
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Qk:Z

    .line 725
    .line 726
    iput-object v11, v1, Lcom/mycompany/app/web/WebViewActivity;->Rk:Ljava/lang/String;

    .line 727
    .line 728
    iput v12, v1, Lcom/mycompany/app/web/WebViewActivity;->Sk:I

    .line 729
    .line 730
    iput-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->Tk:Ljava/util/List;

    .line 731
    .line 732
    move/from16 v0, v22

    .line 733
    .line 734
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Uk:Z

    .line 735
    .line 736
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 737
    .line 738
    if-nez v0, :cond_27

    .line 739
    .line 740
    :goto_12
    return-void

    .line 741
    :cond_27
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$360;

    .line 742
    .line 743
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$360;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 747
    .line 748
    .line 749
    return-void
.end method
