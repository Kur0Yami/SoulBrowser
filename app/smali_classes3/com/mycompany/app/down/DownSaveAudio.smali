.class public Lcom/mycompany/app/down/DownSaveAudio;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IIZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    .locals 24

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v7, p6

    .line 4
    .line 5
    const-string v0, "bytes="

    .line 6
    .line 7
    if-eqz v1, :cond_22

    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v2, :cond_20

    .line 15
    .line 16
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->l:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_19

    .line 25
    .line 26
    :cond_0
    iget-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->B:J

    .line 27
    .line 28
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->m:Ljava/lang/String;

    .line 29
    .line 30
    sget v6, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 31
    .line 32
    const-string v6, "/"

    .line 33
    .line 34
    invoke-static {v2, v6}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static {v6, v3}, Lcom/mycompany/app/main/MainUtil;->x1(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v8, "a"

    .line 47
    .line 48
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Lcom/mycompany/app/main/MainDownSvc;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    new-instance v9, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 65
    .line 66
    .line 67
    move-result-wide v9

    .line 68
    const-wide/16 v11, 0x0

    .line 69
    .line 70
    cmp-long v13, v9, v11

    .line 71
    .line 72
    if-lez v13, :cond_4

    .line 73
    .line 74
    if-nez p5, :cond_1

    .line 75
    .line 76
    iget-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 77
    .line 78
    add-long/2addr v4, v9

    .line 79
    iput-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 80
    .line 81
    :cond_1
    iget-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 82
    .line 83
    cmp-long v0, v4, v11

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget-wide v8, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 88
    .line 89
    cmp-long v0, v4, v8

    .line 90
    .line 91
    if-gez v0, :cond_2

    .line 92
    .line 93
    iput-wide v8, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 94
    .line 95
    :cond_2
    iget-wide v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 96
    .line 97
    iget-wide v8, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 98
    .line 99
    cmp-long v0, v4, v8

    .line 100
    .line 101
    if-lez v0, :cond_3

    .line 102
    .line 103
    iput-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 104
    .line 105
    :cond_3
    iget v0, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 106
    .line 107
    if-ne v0, v3, :cond_22

    .line 108
    .line 109
    invoke-interface {v7, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    move-object/from16 v15, p0

    .line 114
    .line 115
    invoke-static {v15, v2}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    .line 116
    .line 117
    .line 118
    move-result-wide v9

    .line 119
    if-nez p5, :cond_5

    .line 120
    .line 121
    iget-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 122
    .line 123
    add-long/2addr v13, v9

    .line 124
    iput-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 125
    .line 126
    :cond_5
    iget-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 127
    .line 128
    cmp-long v16, v13, v11

    .line 129
    .line 130
    if-eqz v16, :cond_6

    .line 131
    .line 132
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 133
    .line 134
    cmp-long v13, v13, v6

    .line 135
    .line 136
    if-gez v13, :cond_6

    .line 137
    .line 138
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 139
    .line 140
    :cond_6
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 141
    .line 142
    iget-wide v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 143
    .line 144
    cmp-long v6, v6, v13

    .line 145
    .line 146
    if-lez v6, :cond_7

    .line 147
    .line 148
    iput-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 149
    .line 150
    :cond_7
    cmp-long v6, v4, v11

    .line 151
    .line 152
    if-lez v6, :cond_8

    .line 153
    .line 154
    cmp-long v7, v9, v4

    .line 155
    .line 156
    if-ltz v7, :cond_8

    .line 157
    .line 158
    new-instance v0, Ljava/io/File;

    .line 159
    .line 160
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v2, Ljava/io/File;

    .line 164
    .line 165
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 169
    .line 170
    .line 171
    iget v0, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 172
    .line 173
    if-ne v0, v3, :cond_22

    .line 174
    .line 175
    move-object/from16 v7, p6

    .line 176
    .line 177
    invoke-interface {v7, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_8
    move-object/from16 v7, p6

    .line 182
    .line 183
    iget v13, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 184
    .line 185
    iget-object v14, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 186
    .line 187
    move-object/from16 v17, v14

    .line 188
    .line 189
    const/4 v14, -0x1

    .line 190
    const/16 v18, 0x0

    .line 191
    .line 192
    move/from16 v16, v13

    .line 193
    .line 194
    const/4 v13, -0x1

    .line 195
    move/from16 v20, v16

    .line 196
    .line 197
    move-object/from16 v16, p2

    .line 198
    .line 199
    invoke-static/range {v13 .. v18}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    move-wide v14, v4

    .line 204
    const/4 v5, 0x0

    .line 205
    move v4, v6

    .line 206
    const/4 v6, 0x0

    .line 207
    if-nez v13, :cond_a

    .line 208
    .line 209
    iget v0, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 210
    .line 211
    if-eq v0, v3, :cond_9

    .line 212
    .line 213
    goto/16 :goto_1a

    .line 214
    .line 215
    :cond_9
    const/4 v3, 0x0

    .line 216
    move-object/from16 v0, p0

    .line 217
    .line 218
    move-object/from16 v2, p2

    .line 219
    .line 220
    move/from16 v4, p4

    .line 221
    .line 222
    invoke-static/range {v0 .. v7}, Lcom/mycompany/app/down/DownSaveAudio;->b(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IILjava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_a
    cmp-long v16, v9, v11

    .line 227
    .line 228
    if-lez v16, :cond_b

    .line 229
    .line 230
    move v5, v3

    .line 231
    goto :goto_0

    .line 232
    :cond_b
    const/4 v5, 0x0

    .line 233
    :goto_0
    const/4 v6, 0x2

    .line 234
    const/16 v17, 0x0

    .line 235
    .line 236
    move-wide/from16 v21, v11

    .line 237
    .line 238
    if-eqz v5, :cond_d

    .line 239
    .line 240
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v0, "-"

    .line 249
    .line 250
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    if-lez v4, :cond_c

    .line 254
    .line 255
    const-wide/16 v9, 0x1

    .line 256
    .line 257
    sub-long v9, v14, v9

    .line 258
    .line 259
    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :catch_0
    move-object/from16 v0, p2

    .line 264
    .line 265
    move/from16 v19, p3

    .line 266
    .line 267
    move/from16 v12, p4

    .line 268
    .line 269
    move-object/from16 v7, p6

    .line 270
    .line 271
    move-object/from16 v23, v17

    .line 272
    .line 273
    const/4 v3, 0x0

    .line 274
    :goto_1
    const/4 v6, 0x0

    .line 275
    goto/16 :goto_17

    .line 276
    .line 277
    :cond_c
    :goto_2
    const-string v0, "Accept-Ranges"

    .line 278
    .line 279
    const-string v4, "bytes"

    .line 280
    .line 281
    invoke-virtual {v13, v0, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v0, "Range"

    .line 285
    .line 286
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-virtual {v13, v0, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    .line 293
    :cond_d
    :try_start_1
    invoke-virtual {v13, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v13}, Ljava/net/URLConnection;->connect()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->s3(I)I

    .line 304
    .line 305
    .line 306
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17

    .line 307
    if-ne v0, v3, :cond_e

    .line 308
    .line 309
    add-int/lit8 v0, p3, 0x1

    .line 310
    .line 311
    move/from16 v12, p4

    .line 312
    .line 313
    move-object/from16 v7, p6

    .line 314
    .line 315
    move v3, v0

    .line 316
    move-object/from16 v23, v17

    .line 317
    .line 318
    const/4 v5, 0x0

    .line 319
    const/4 v6, 0x0

    .line 320
    const/4 v11, 0x4

    .line 321
    const/16 v16, 0x0

    .line 322
    .line 323
    move-object/from16 v0, p2

    .line 324
    .line 325
    goto/16 :goto_15

    .line 326
    .line 327
    :cond_e
    if-ne v0, v6, :cond_11

    .line 328
    .line 329
    :try_start_2
    const-string v0, "Location"

    .line 330
    .line 331
    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 339
    if-eqz v0, :cond_f

    .line 340
    .line 341
    move-object/from16 v0, p2

    .line 342
    .line 343
    :try_start_3
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 347
    if-nez v4, :cond_10

    .line 348
    .line 349
    goto :goto_5

    .line 350
    :catch_1
    :goto_3
    move/from16 v12, p4

    .line 351
    .line 352
    move-object/from16 v7, p6

    .line 353
    .line 354
    move-object/from16 v23, v17

    .line 355
    .line 356
    const/4 v3, 0x0

    .line 357
    const/4 v6, 0x0

    .line 358
    :goto_4
    const/16 v19, 0x0

    .line 359
    .line 360
    goto/16 :goto_17

    .line 361
    .line 362
    :cond_f
    move-object/from16 v0, p2

    .line 363
    .line 364
    :cond_10
    const/4 v5, 0x0

    .line 365
    :goto_5
    move/from16 v12, p4

    .line 366
    .line 367
    move-object/from16 v7, p6

    .line 368
    .line 369
    move-object/from16 v23, v17

    .line 370
    .line 371
    const/4 v3, 0x0

    .line 372
    const/4 v6, 0x0

    .line 373
    const/4 v11, 0x4

    .line 374
    const/16 v16, 0x0

    .line 375
    .line 376
    goto/16 :goto_15

    .line 377
    .line 378
    :catch_2
    move-object/from16 v0, p2

    .line 379
    .line 380
    goto :goto_3

    .line 381
    :cond_11
    move-object/from16 v0, p2

    .line 382
    .line 383
    :try_start_4
    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 384
    .line 385
    .line 386
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16

    .line 387
    :try_start_5
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 388
    .line 389
    .line 390
    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    .line 391
    const/16 v9, 0x400

    .line 392
    .line 393
    :try_start_6
    new-array v10, v9, [B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14

    .line 394
    .line 395
    move/from16 v12, p4

    .line 396
    .line 397
    const/16 v16, 0x0

    .line 398
    .line 399
    :goto_6
    :try_start_7
    iget v14, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12

    .line 400
    .line 401
    if-ne v14, v3, :cond_18

    .line 402
    .line 403
    const/4 v14, 0x0

    .line 404
    :try_start_8
    invoke-virtual {v4, v10, v14, v9}, Ljava/io/InputStream;->read([BII)I

    .line 405
    .line 406
    .line 407
    move-result v15
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    .line 408
    const/4 v14, -0x1

    .line 409
    if-eq v15, v14, :cond_18

    .line 410
    .line 411
    int-to-long v11, v15

    .line 412
    :try_start_9
    iget-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 413
    .line 414
    add-long/2addr v6, v11

    .line 415
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->p:J

    .line 416
    .line 417
    iget-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    .line 418
    .line 419
    cmp-long v16, v11, v21

    .line 420
    .line 421
    if-eqz v16, :cond_12

    .line 422
    .line 423
    cmp-long v11, v11, v6

    .line 424
    .line 425
    if-gez v11, :cond_12

    .line 426
    .line 427
    :try_start_a
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J
    :try_end_a
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 428
    .line 429
    goto :goto_8

    .line 430
    :catch_3
    move-object/from16 v7, p6

    .line 431
    .line 432
    move v6, v3

    .line 433
    move-object/from16 v23, v4

    .line 434
    .line 435
    move-object/from16 v17, v5

    .line 436
    .line 437
    const/4 v3, 0x0

    .line 438
    :goto_7
    const/4 v12, 0x0

    .line 439
    goto :goto_4

    .line 440
    :catch_4
    move-object/from16 v7, p6

    .line 441
    .line 442
    move/from16 v16, v3

    .line 443
    .line 444
    move-object/from16 v23, v4

    .line 445
    .line 446
    const/4 v3, 0x0

    .line 447
    const/4 v12, 0x0

    .line 448
    goto/16 :goto_13

    .line 449
    .line 450
    :cond_12
    :goto_8
    :try_start_b
    iget-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J
    :try_end_b
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    .line 451
    .line 452
    cmp-long v16, v11, v21

    .line 453
    .line 454
    if-lez v16, :cond_15

    .line 455
    .line 456
    :try_start_c
    div-int/lit8 v9, v15, 0xa
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 457
    .line 458
    move-object/from16 v23, v4

    .line 459
    .line 460
    int-to-long v3, v9

    .line 461
    add-long/2addr v11, v3

    .line 462
    :try_start_d
    iput-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 463
    .line 464
    cmp-long v3, v6, v11

    .line 465
    .line 466
    if-lez v3, :cond_14

    .line 467
    .line 468
    move-wide/from16 v3, v21

    .line 469
    .line 470
    iput-wide v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J

    .line 471
    .line 472
    :cond_13
    :goto_9
    const/4 v3, 0x0

    .line 473
    goto :goto_d

    .line 474
    :catch_5
    :goto_a
    move-object/from16 v7, p6

    .line 475
    .line 476
    move-object/from16 v17, v5

    .line 477
    .line 478
    const/4 v3, 0x0

    .line 479
    const/4 v6, 0x1

    .line 480
    goto :goto_7

    .line 481
    :catch_6
    :goto_b
    move-object/from16 v7, p6

    .line 482
    .line 483
    const/4 v3, 0x0

    .line 484
    const/4 v12, 0x0

    .line 485
    :goto_c
    const/16 v16, 0x1

    .line 486
    .line 487
    goto/16 :goto_13

    .line 488
    .line 489
    :cond_14
    iget-wide v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->o:J

    .line 490
    .line 491
    cmp-long v6, v11, v3

    .line 492
    .line 493
    if-lez v6, :cond_13

    .line 494
    .line 495
    iput-wide v3, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->q:J
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 496
    .line 497
    goto :goto_9

    .line 498
    :catch_7
    move-object/from16 v23, v4

    .line 499
    .line 500
    goto :goto_a

    .line 501
    :catch_8
    move-object/from16 v23, v4

    .line 502
    .line 503
    goto :goto_b

    .line 504
    :cond_15
    move-object/from16 v23, v4

    .line 505
    .line 506
    goto :goto_9

    .line 507
    :goto_d
    :try_start_e
    invoke-virtual {v5, v10, v3, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 508
    .line 509
    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 511
    .line 512
    .line 513
    move-result-wide v6

    .line 514
    iget-wide v11, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 515
    .line 516
    const-wide/16 v21, 0x0

    .line 517
    .line 518
    cmp-long v4, v11, v21

    .line 519
    .line 520
    if-eqz v4, :cond_17

    .line 521
    .line 522
    sub-long v11, v6, v11

    .line 523
    .line 524
    const-wide/16 v15, 0x320

    .line 525
    .line 526
    cmp-long v4, v11, v15

    .line 527
    .line 528
    if-lez v4, :cond_16

    .line 529
    .line 530
    goto :goto_e

    .line 531
    :cond_16
    move-object/from16 v7, p6

    .line 532
    .line 533
    goto :goto_11

    .line 534
    :cond_17
    :goto_e
    iput-wide v6, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->t:J

    .line 535
    .line 536
    iget v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 537
    .line 538
    const/4 v6, 0x1

    .line 539
    if-ne v4, v6, :cond_16

    .line 540
    .line 541
    move-object/from16 v7, p6

    .line 542
    .line 543
    :try_start_f
    invoke-interface {v7, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->d(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 544
    .line 545
    .line 546
    goto :goto_11

    .line 547
    :catch_9
    :goto_f
    move v12, v3

    .line 548
    move/from16 v19, v12

    .line 549
    .line 550
    move-object/from16 v17, v5

    .line 551
    .line 552
    const/4 v6, 0x1

    .line 553
    goto/16 :goto_17

    .line 554
    .line 555
    :catch_a
    :goto_10
    move v12, v3

    .line 556
    goto :goto_c

    .line 557
    :goto_11
    move v12, v3

    .line 558
    move-object/from16 v4, v23

    .line 559
    .line 560
    const/4 v3, 0x1

    .line 561
    const/4 v6, 0x2

    .line 562
    const/16 v9, 0x400

    .line 563
    .line 564
    const/16 v16, 0x1

    .line 565
    .line 566
    goto/16 :goto_6

    .line 567
    .line 568
    :catch_b
    move-object/from16 v7, p6

    .line 569
    .line 570
    goto :goto_f

    .line 571
    :catch_c
    move-object/from16 v7, p6

    .line 572
    .line 573
    goto :goto_10

    .line 574
    :catch_d
    move-object/from16 v7, p6

    .line 575
    .line 576
    move-object/from16 v23, v4

    .line 577
    .line 578
    const/4 v3, 0x0

    .line 579
    goto :goto_f

    .line 580
    :catch_e
    move-object/from16 v7, p6

    .line 581
    .line 582
    move-object/from16 v23, v4

    .line 583
    .line 584
    const/4 v3, 0x0

    .line 585
    goto :goto_10

    .line 586
    :catch_f
    :cond_18
    move-object/from16 v7, p6

    .line 587
    .line 588
    move-object/from16 v23, v4

    .line 589
    .line 590
    const/4 v3, 0x0

    .line 591
    goto :goto_13

    .line 592
    :catch_10
    move-object/from16 v7, p6

    .line 593
    .line 594
    move-object/from16 v23, v4

    .line 595
    .line 596
    move v3, v14

    .line 597
    :goto_12
    move/from16 v19, v3

    .line 598
    .line 599
    move-object/from16 v17, v5

    .line 600
    .line 601
    move/from16 v6, v16

    .line 602
    .line 603
    goto/16 :goto_17

    .line 604
    .line 605
    :catch_11
    move-object/from16 v7, p6

    .line 606
    .line 607
    move-object/from16 v23, v4

    .line 608
    .line 609
    move v3, v14

    .line 610
    :goto_13
    move/from16 v6, v16

    .line 611
    .line 612
    goto :goto_14

    .line 613
    :catch_12
    move-object/from16 v7, p6

    .line 614
    .line 615
    move-object/from16 v23, v4

    .line 616
    .line 617
    const/4 v3, 0x0

    .line 618
    goto :goto_12

    .line 619
    :goto_14
    :try_start_10
    iget v4, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    .line 620
    .line 621
    const/4 v9, 0x1

    .line 622
    move-object/from16 v17, v5

    .line 623
    .line 624
    move/from16 v16, v6

    .line 625
    .line 626
    move/from16 v11, v20

    .line 627
    .line 628
    const/4 v5, 0x0

    .line 629
    if-ne v4, v9, :cond_19

    .line 630
    .line 631
    const/4 v6, 0x1

    .line 632
    goto :goto_15

    .line 633
    :cond_19
    move v6, v3

    .line 634
    :goto_15
    move v4, v12

    .line 635
    goto :goto_18

    .line 636
    :catch_13
    move/from16 v19, v3

    .line 637
    .line 638
    move-object/from16 v17, v5

    .line 639
    .line 640
    goto :goto_17

    .line 641
    :catch_14
    move-object/from16 v7, p6

    .line 642
    .line 643
    move-object/from16 v23, v4

    .line 644
    .line 645
    const/4 v3, 0x0

    .line 646
    move/from16 v12, p4

    .line 647
    .line 648
    move/from16 v19, v3

    .line 649
    .line 650
    move-object/from16 v17, v5

    .line 651
    .line 652
    goto/16 :goto_1

    .line 653
    .line 654
    :catch_15
    move-object/from16 v7, p6

    .line 655
    .line 656
    move-object/from16 v23, v4

    .line 657
    .line 658
    const/4 v3, 0x0

    .line 659
    move/from16 v12, p4

    .line 660
    .line 661
    move/from16 v19, v3

    .line 662
    .line 663
    goto/16 :goto_1

    .line 664
    .line 665
    :catch_16
    move-object/from16 v7, p6

    .line 666
    .line 667
    const/4 v3, 0x0

    .line 668
    move/from16 v12, p4

    .line 669
    .line 670
    move/from16 v19, v3

    .line 671
    .line 672
    :goto_16
    move-object/from16 v23, v17

    .line 673
    .line 674
    goto/16 :goto_1

    .line 675
    .line 676
    :catch_17
    move-object/from16 v0, p2

    .line 677
    .line 678
    move-object/from16 v7, p6

    .line 679
    .line 680
    const/4 v3, 0x0

    .line 681
    move/from16 v19, p3

    .line 682
    .line 683
    move/from16 v12, p4

    .line 684
    .line 685
    goto :goto_16

    .line 686
    :goto_17
    move/from16 v16, v6

    .line 687
    .line 688
    const/4 v5, 0x0

    .line 689
    const/4 v11, 0x4

    .line 690
    move v6, v3

    .line 691
    move/from16 v3, v19

    .line 692
    .line 693
    goto :goto_15

    .line 694
    :goto_18
    if-eqz v17, :cond_1a

    .line 695
    .line 696
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18

    .line 697
    .line 698
    .line 699
    :catch_18
    :cond_1a
    if-eqz v23, :cond_1b

    .line 700
    .line 701
    :try_start_12
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_19

    .line 702
    .line 703
    .line 704
    :catch_19
    :cond_1b
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 705
    .line 706
    .line 707
    if-eqz v6, :cond_1c

    .line 708
    .line 709
    new-instance v6, Ljava/io/File;

    .line 710
    .line 711
    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    new-instance v2, Ljava/io/File;

    .line 715
    .line 716
    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 720
    .line 721
    .line 722
    :cond_1c
    iget v2, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 723
    .line 724
    const/4 v9, 0x1

    .line 725
    if-eq v2, v9, :cond_1d

    .line 726
    .line 727
    goto :goto_1a

    .line 728
    :cond_1d
    const/4 v2, 0x2

    .line 729
    if-ne v11, v2, :cond_1e

    .line 730
    .line 731
    invoke-interface {v7, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 732
    .line 733
    .line 734
    goto :goto_1a

    .line 735
    :cond_1e
    const/4 v14, 0x4

    .line 736
    if-ne v11, v14, :cond_1f

    .line 737
    .line 738
    move-object v2, v0

    .line 739
    move/from16 v6, v16

    .line 740
    .line 741
    move-object/from16 v0, p0

    .line 742
    .line 743
    invoke-static/range {v0 .. v7}, Lcom/mycompany/app/down/DownSaveAudio;->b(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IILjava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V

    .line 744
    .line 745
    .line 746
    goto :goto_1a

    .line 747
    :cond_1f
    invoke-interface {v7, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->e(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 748
    .line 749
    .line 750
    goto :goto_1a

    .line 751
    :cond_20
    :goto_19
    iget v0, v1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 752
    .line 753
    const/4 v9, 0x1

    .line 754
    if-eq v0, v9, :cond_21

    .line 755
    .line 756
    goto :goto_1a

    .line 757
    :cond_21
    invoke-interface {v7, v1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 758
    .line 759
    .line 760
    :cond_22
    :goto_1a
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Ljava/lang/String;IILjava/lang/String;ZLcom/mycompany/app/main/MainDownSvc$DownSaveListener;)V
    .locals 9

    .line 1
    move-object/from16 v5, p7

    .line 2
    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    if-lez p3, :cond_1

    .line 8
    .line 9
    const/16 v2, 0x168

    .line 10
    .line 11
    if-ge p3, v2, :cond_0

    .line 12
    .line 13
    const-wide/16 v2, 0x2710

    .line 14
    .line 15
    :goto_0
    move-object v6, p2

    .line 16
    move-wide v7, v2

    .line 17
    move v2, p4

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->c(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    move v2, p4

    .line 30
    move-object v6, p5

    .line 31
    :goto_1
    move-wide v7, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    if-nez p6, :cond_3

    .line 34
    .line 35
    iget-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    sget-boolean v2, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    iput-object v2, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->g:Ljava/lang/String;

    .line 47
    .line 48
    move-object v6, p2

    .line 49
    move v2, p4

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    sget v2, Lcom/mycompany/app/pref/PrefZone;->k0:I

    .line 52
    .line 53
    if-ge p4, v2, :cond_6

    .line 54
    .line 55
    add-int/lit8 p4, p4, 0x1

    .line 56
    .line 57
    const-wide/16 v2, 0x7d0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_2
    cmp-long p2, v7, v0

    .line 61
    .line 62
    const/4 p4, 0x1

    .line 63
    if-nez p2, :cond_4

    .line 64
    .line 65
    :try_start_0
    new-instance v0, Lcom/mycompany/app/down/DownSaveAudio$2;

    .line 66
    .line 67
    move-object v3, p0

    .line 68
    move-object v4, p1

    .line 69
    move v1, p3

    .line 70
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/down/DownSaveAudio$2;-><init>(IILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catch_0
    iput-boolean p4, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 78
    .line 79
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    invoke-interface {v5}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->a()Landroid/os/Handler;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    if-nez p2, :cond_5

    .line 88
    .line 89
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_5
    :try_start_1
    new-instance v0, Lcom/mycompany/app/down/DownSaveAudio$1;

    .line 94
    .line 95
    move-object v3, p0

    .line 96
    move-object v4, p1

    .line 97
    move v1, p3

    .line 98
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/down/DownSaveAudio$1;-><init>(IILandroid/content/Context;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :catch_1
    iput-boolean p4, p1, Lcom/mycompany/app/main/MainDownSvc$DownItem;->N:Z

    .line 106
    .line 107
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    invoke-interface {v5, p1}, Lcom/mycompany/app/main/MainDownSvc$DownSaveListener;->b(Lcom/mycompany/app/main/MainDownSvc$DownItem;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    return-void
.end method
