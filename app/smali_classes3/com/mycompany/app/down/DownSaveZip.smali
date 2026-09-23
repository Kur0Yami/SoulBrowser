.class public Lcom/mycompany/app/down/DownSaveZip;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/List;IIILcom/mycompany/app/main/MainDownSvc$DownZipListener;)V
    .locals 19

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move-object/from16 v8, p5

    .line 6
    .line 7
    if-eqz v6, :cond_18

    .line 8
    .line 9
    if-ltz v7, :cond_18

    .line 10
    .line 11
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lt v7, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_f

    .line 18
    .line 19
    :cond_0
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v9, v0

    .line 24
    check-cast v9, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 25
    .line 26
    if-nez v9, :cond_1

    .line 27
    .line 28
    goto/16 :goto_f

    .line 29
    .line 30
    :cond_1
    iget v0, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 31
    .line 32
    const/4 v10, 0x3

    .line 33
    if-ne v0, v10, :cond_2

    .line 34
    .line 35
    invoke-interface {v8, v6}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    iget-object v0, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    :cond_3
    move-object v1, v6

    .line 56
    move-object v5, v9

    .line 57
    goto/16 :goto_e

    .line 58
    .line 59
    :cond_4
    const/4 v11, 0x1

    .line 60
    iput v11, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 61
    .line 62
    iget-object v3, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v4, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v0, 0x0

    .line 69
    move-object/from16 v2, p0

    .line 70
    .line 71
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x0

    .line 77
    if-nez v0, :cond_6

    .line 78
    .line 79
    invoke-interface {v8}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->isRunning()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    goto/16 :goto_f

    .line 86
    .line 87
    :cond_5
    const/4 v3, 0x0

    .line 88
    move-object/from16 v0, p0

    .line 89
    .line 90
    move-object/from16 v1, p1

    .line 91
    .line 92
    move/from16 v2, p2

    .line 93
    .line 94
    move/from16 v4, p4

    .line 95
    .line 96
    move-object v5, v9

    .line 97
    invoke-static/range {v0 .. v8}, Lcom/mycompany/app/down/DownSaveZip;->c(Landroid/content/Context;Ljava/util/List;IIILcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownZipListener;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_6
    move-object/from16 v2, p0

    .line 102
    .line 103
    move-object/from16 v1, p1

    .line 104
    .line 105
    move-object v5, v9

    .line 106
    const-wide/16 v3, 0x0

    .line 107
    .line 108
    const/4 v12, 0x0

    .line 109
    :try_start_0
    new-instance v13, Ljava/io/File;

    .line 110
    .line 111
    iget-object v14, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 112
    .line 113
    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 117
    .line 118
    .line 119
    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 120
    cmp-long v13, v13, v3

    .line 121
    .line 122
    if-lez v13, :cond_7

    .line 123
    .line 124
    :try_start_1
    iget-object v13, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->R2(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    iput-object v13, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_0
    move-wide/from16 v16, v3

    .line 134
    .line 135
    const/4 v13, 0x0

    .line 136
    const/4 v14, 0x0

    .line 137
    move/from16 v3, p3

    .line 138
    .line 139
    :goto_0
    move/from16 v4, p4

    .line 140
    .line 141
    goto/16 :goto_9

    .line 142
    .line 143
    :cond_7
    :goto_1
    :try_start_2
    invoke-virtual {v0, v11}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->s3(I)I

    .line 154
    .line 155
    .line 156
    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 157
    if-ne v13, v11, :cond_8

    .line 158
    .line 159
    add-int/lit8 v13, p3, 0x1

    .line 160
    .line 161
    move-wide/from16 v16, v3

    .line 162
    .line 163
    move v3, v12

    .line 164
    :goto_2
    const/4 v9, 0x0

    .line 165
    const/4 v14, 0x0

    .line 166
    move/from16 v4, p4

    .line 167
    .line 168
    goto/16 :goto_a

    .line 169
    .line 170
    :cond_8
    const/4 v14, 0x2

    .line 171
    if-ne v13, v14, :cond_a

    .line 172
    .line 173
    :try_start_3
    const-string v13, "Location"

    .line 174
    .line 175
    invoke-virtual {v0, v13}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    invoke-static {v13}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    if-eqz v14, :cond_9

    .line 184
    .line 185
    iget-object v14, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 191
    if-nez v14, :cond_9

    .line 192
    .line 193
    move-object v6, v13

    .line 194
    goto :goto_3

    .line 195
    :catch_1
    move-wide/from16 v16, v3

    .line 196
    .line 197
    move v3, v12

    .line 198
    const/4 v13, 0x0

    .line 199
    const/4 v14, 0x0

    .line 200
    goto :goto_0

    .line 201
    :cond_9
    :goto_3
    move-wide/from16 v16, v3

    .line 202
    .line 203
    move v3, v12

    .line 204
    move v13, v3

    .line 205
    goto :goto_2

    .line 206
    :cond_a
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 207
    .line 208
    .line 209
    move-result-object v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 210
    :try_start_5
    iget-object v14, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v14, v12}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 213
    .line 214
    .line 215
    move-result-object v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 216
    const/16 v15, 0x400

    .line 217
    .line 218
    move-wide/from16 v16, v3

    .line 219
    .line 220
    :try_start_6
    new-array v3, v15, [B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 221
    .line 222
    move/from16 v4, p4

    .line 223
    .line 224
    :goto_4
    :try_start_7
    invoke-interface {v8}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->isRunning()Z

    .line 225
    .line 226
    .line 227
    move-result v18

    .line 228
    if-eqz v18, :cond_b

    .line 229
    .line 230
    invoke-virtual {v13, v3, v12, v15}, Ljava/io/InputStream;->read([BII)I

    .line 231
    .line 232
    .line 233
    move-result v6
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 234
    const/4 v9, -0x1

    .line 235
    if-eq v6, v9, :cond_b

    .line 236
    .line 237
    :try_start_8
    invoke-virtual {v14, v3, v12, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 238
    .line 239
    .line 240
    move v7, v11

    .line 241
    move v4, v12

    .line 242
    const/4 v6, 0x0

    .line 243
    goto :goto_4

    .line 244
    :catch_2
    move v7, v11

    .line 245
    move v3, v12

    .line 246
    move v4, v3

    .line 247
    goto :goto_9

    .line 248
    :catch_3
    move v7, v11

    .line 249
    move v4, v12

    .line 250
    goto :goto_6

    .line 251
    :catch_4
    :goto_5
    move v3, v12

    .line 252
    goto :goto_9

    .line 253
    :catch_5
    :cond_b
    :goto_6
    :try_start_9
    invoke-interface {v8}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->isRunning()Z

    .line 254
    .line 255
    .line 256
    move-result v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 257
    move-object v9, v13

    .line 258
    const/4 v6, 0x0

    .line 259
    move v13, v12

    .line 260
    goto :goto_a

    .line 261
    :catch_6
    move/from16 v4, p4

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :catch_7
    move-wide/from16 v16, v3

    .line 265
    .line 266
    move/from16 v4, p4

    .line 267
    .line 268
    move v3, v12

    .line 269
    :goto_7
    const/4 v14, 0x0

    .line 270
    goto :goto_9

    .line 271
    :catch_8
    move-wide/from16 v16, v3

    .line 272
    .line 273
    move/from16 v4, p4

    .line 274
    .line 275
    move v3, v12

    .line 276
    :goto_8
    const/4 v13, 0x0

    .line 277
    goto :goto_7

    .line 278
    :catch_9
    move-wide/from16 v16, v3

    .line 279
    .line 280
    move/from16 v3, p3

    .line 281
    .line 282
    move/from16 v4, p4

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :goto_9
    move-object v9, v13

    .line 286
    const/4 v6, 0x0

    .line 287
    move v13, v3

    .line 288
    move v3, v12

    .line 289
    :goto_a
    if-eqz v14, :cond_c

    .line 290
    .line 291
    :try_start_a
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 292
    .line 293
    .line 294
    :catch_a
    :cond_c
    if-eqz v9, :cond_d

    .line 295
    .line 296
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 297
    .line 298
    .line 299
    :catch_b
    :cond_d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 300
    .line 301
    .line 302
    if-eqz v3, :cond_f

    .line 303
    .line 304
    new-instance v0, Ljava/io/File;

    .line 305
    .line 306
    iget-object v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 307
    .line 308
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 312
    .line 313
    .line 314
    move-result-wide v14

    .line 315
    cmp-long v0, v14, v16

    .line 316
    .line 317
    if-lez v0, :cond_e

    .line 318
    .line 319
    move v3, v11

    .line 320
    goto :goto_b

    .line 321
    :cond_e
    move v3, v12

    .line 322
    :cond_f
    :goto_b
    invoke-interface {v8}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->isRunning()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-nez v0, :cond_10

    .line 327
    .line 328
    goto/16 :goto_f

    .line 329
    .line 330
    :cond_10
    if-eqz v3, :cond_16

    .line 331
    .line 332
    iget-object v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 333
    .line 334
    invoke-static {v0, v11, v11}, Lcom/mycompany/app/compress/Compress;->C(Ljava/lang/String;ZZ)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-nez v0, :cond_15

    .line 339
    .line 340
    iget-object v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 341
    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_11

    .line 347
    .line 348
    const/4 v9, 0x0

    .line 349
    goto :goto_d

    .line 350
    :cond_11
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->G5(Landroid/content/Context;Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    const/16 v7, 0x2e

    .line 363
    .line 364
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 365
    .line 366
    .line 367
    move-result v7

    .line 368
    if-lez v7, :cond_12

    .line 369
    .line 370
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 371
    .line 372
    .line 373
    move-result v9

    .line 374
    if-ge v7, v9, :cond_12

    .line 375
    .line 376
    invoke-virtual {v6, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v4, "/"

    .line 389
    .line 390
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    if-eqz v3, :cond_13

    .line 397
    .line 398
    const-string v3, ".gif"

    .line 399
    .line 400
    goto :goto_c

    .line 401
    :cond_13
    const-string v3, ".jpg"

    .line 402
    .line 403
    :goto_c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    new-instance v4, Ljava/io/File;

    .line 411
    .line 412
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 416
    .line 417
    .line 418
    move-result-wide v6

    .line 419
    cmp-long v4, v6, v16

    .line 420
    .line 421
    if-lez v4, :cond_14

    .line 422
    .line 423
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->R2(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    :cond_14
    move-object v9, v3

    .line 428
    invoke-static {v2, v0, v9}, Lcom/mycompany/app/main/MainUtil;->w6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 429
    .line 430
    .line 431
    :goto_d
    iput-object v9, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 432
    .line 433
    :cond_15
    iput v10, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 434
    .line 435
    invoke-interface {v8, v1}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 436
    .line 437
    .line 438
    return-void

    .line 439
    :cond_16
    move-object v0, v2

    .line 440
    move v3, v13

    .line 441
    move/from16 v2, p2

    .line 442
    .line 443
    invoke-static/range {v0 .. v8}, Lcom/mycompany/app/down/DownSaveZip;->c(Landroid/content/Context;Ljava/util/List;IIILcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownZipListener;)V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :goto_e
    invoke-interface {v8}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->isRunning()Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-nez v0, :cond_17

    .line 452
    .line 453
    goto :goto_f

    .line 454
    :cond_17
    const/4 v0, 0x4

    .line 455
    iput v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 456
    .line 457
    invoke-interface {v8, v1}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 458
    .line 459
    .line 460
    :cond_18
    :goto_f
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;IIILcom/mycompany/app/main/MainDownSvc$DownZipListener;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, p2, :cond_3

    .line 9
    .line 10
    invoke-interface {p5}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->isRunning()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    mul-int v2, p4, v1

    .line 18
    .line 19
    add-int v5, v2, p3

    .line 20
    .line 21
    if-lt v5, v0, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v3, p0

    .line 27
    move-object v4, p1

    .line 28
    move-object v8, p5

    .line 29
    :try_start_0
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/down/DownSaveZip;->a(Landroid/content/Context;Ljava/util/List;IIILcom/mycompany/app/main/MainDownSvc$DownZipListener;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 38
    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 p1, 0x4

    .line 43
    iput p1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 44
    .line 45
    invoke-interface {v8, v4}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    move-object p0, v3

    .line 51
    move-object p1, v4

    .line 52
    move-object p5, v8

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    :goto_2
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;IIILcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownZipListener;)V
    .locals 12

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    move-object/from16 v6, p5

    .line 4
    .line 5
    move-object/from16 v5, p8

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v8, 0x4

    .line 10
    if-lez p3, :cond_1

    .line 11
    .line 12
    const/16 v3, 0x168

    .line 13
    .line 14
    if-ge p3, v3, :cond_0

    .line 15
    .line 16
    const-wide/16 v3, 0x2710

    .line 17
    .line 18
    :goto_0
    move-wide v9, v3

    .line 19
    move v3, v0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    iput v8, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 22
    .line 23
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    move-object/from16 v3, p6

    .line 34
    .line 35
    iput-object v3, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    if-nez p7, :cond_3

    .line 39
    .line 40
    iget-object v3, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    sget-boolean v3, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    iput-object v3, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 52
    .line 53
    :goto_1
    move v3, v0

    .line 54
    move-wide v9, v1

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    sget v3, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 57
    .line 58
    if-ge v0, v3, :cond_6

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    const-wide/16 v3, 0x7d0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_2
    cmp-long v0, v9, v1

    .line 66
    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    :try_start_0
    new-instance v0, Lcom/mycompany/app/down/DownSaveZip$2;

    .line 70
    .line 71
    move-object v4, p0

    .line 72
    move-object v7, p1

    .line 73
    move v1, p2

    .line 74
    move v2, p3

    .line 75
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/down/DownSaveZip$2;-><init>(IIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownZipListener;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catch_0
    iput v8, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 83
    .line 84
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    invoke-interface {v5}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->a()Landroid/os/Handler;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    if-nez v11, :cond_5

    .line 93
    .line 94
    iput v8, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 95
    .line 96
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    :try_start_1
    new-instance v0, Lcom/mycompany/app/down/DownSaveZip$1;

    .line 101
    .line 102
    move-object v4, p0

    .line 103
    move-object v7, p1

    .line 104
    move v1, p2

    .line 105
    move v2, p3

    .line 106
    invoke-direct/range {v0 .. v7}, Lcom/mycompany/app/down/DownSaveZip$1;-><init>(IIILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownZipListener;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :catch_1
    iput v8, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 114
    .line 115
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_6
    iput v8, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 120
    .line 121
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownZipListener;->b(Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
