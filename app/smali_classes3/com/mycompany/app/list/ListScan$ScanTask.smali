.class Lcom/mycompany/app/list/ListScan$ScanTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/ListScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/ListScan;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/list/ListScan$ScanTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "_size"

    .line 4
    .line 5
    const-string v2, "last_modified"

    .line 6
    .line 7
    const-string v3, "_display_name"

    .line 8
    .line 9
    const-string v4, "document_id"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iput-boolean v5, v0, Lcom/mycompany/app/list/ListScan$ScanTask;->f:Z

    .line 13
    .line 14
    iget-object v6, v0, Lcom/mycompany/app/list/ListScan$ScanTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    if-nez v6, :cond_0

    .line 17
    .line 18
    goto/16 :goto_f

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    check-cast v6, Lcom/mycompany/app/list/ListScan;

    .line 25
    .line 26
    if-eqz v6, :cond_1b

    .line 27
    .line 28
    iget v7, v6, Lcom/mycompany/app/list/ListScan;->b:I

    .line 29
    .line 30
    iget-object v8, v6, Lcom/mycompany/app/list/ListScan;->a:Landroid/content/Context;

    .line 31
    .line 32
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 33
    .line 34
    if-eqz v9, :cond_1

    .line 35
    .line 36
    goto/16 :goto_f

    .line 37
    .line 38
    :cond_1
    const/4 v10, 0x3

    .line 39
    const/4 v11, 0x2

    .line 40
    if-ne v7, v5, :cond_2

    .line 41
    .line 42
    sget-object v12, Lcom/mycompany/app/pref/PrefPath;->s:Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    if-ne v7, v11, :cond_3

    .line 46
    .line 47
    sget-object v12, Lcom/mycompany/app/pref/PrefPath;->t:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    if-ne v7, v10, :cond_4

    .line 51
    .line 52
    sget-object v12, Lcom/mycompany/app/pref/PrefPath;->u:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const/4 v12, 0x0

    .line 56
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    if-eqz v13, :cond_5

    .line 61
    .line 62
    goto/16 :goto_f

    .line 63
    .line 64
    :cond_5
    :try_start_0
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v13

    .line 68
    invoke-static {v13}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    invoke-static {v13, v14}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v16

    .line 76
    filled-new-array {v4, v3, v2, v1}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v17

    .line 80
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    .line 82
    .line 83
    move-result-object v15

    .line 84
    const/16 v19, 0x0

    .line 85
    .line 86
    const/16 v20, 0x0

    .line 87
    .line 88
    const/16 v18, 0x0

    .line 89
    .line 90
    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 91
    .line 92
    .line 93
    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    if-eqz v14, :cond_1a

    .line 95
    .line 96
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    if-eqz v15, :cond_1a

    .line 101
    .line 102
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const-string v15, "content://com.android.providers.downloads.documents/tree/downloads/document/downloads"

    .line 119
    .line 120
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    invoke-static {v8}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 125
    .line 126
    .line 127
    move-result-object v16

    .line 128
    invoke-virtual/range {v16 .. v16}, Lcom/mycompany/app/data/DataList;->d()I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    invoke-static {v8}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 133
    .line 134
    .line 135
    move-result-object v16

    .line 136
    invoke-virtual/range {v16 .. v16}, Lcom/mycompany/app/data/DataList;->d()I

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    invoke-static {v8}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 141
    .line 142
    .line 143
    move-result-object v16

    .line 144
    invoke-virtual/range {v16 .. v16}, Lcom/mycompany/app/data/DataList;->d()I

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    const/16 v16, 0x0

    .line 149
    .line 150
    move/from16 v20, v16

    .line 151
    .line 152
    move/from16 v21, v20

    .line 153
    .line 154
    move/from16 v22, v21

    .line 155
    .line 156
    move/from16 v23, v22

    .line 157
    .line 158
    const/16 v17, 0x0

    .line 159
    .line 160
    :goto_1
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 161
    .line 162
    if-eqz v5, :cond_6

    .line 163
    .line 164
    goto/16 :goto_f

    .line 165
    .line 166
    :cond_6
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    .line 172
    .line 173
    move-result v24

    .line 174
    if-eqz v24, :cond_7

    .line 175
    .line 176
    move/from16 v26, v1

    .line 177
    .line 178
    move/from16 v25, v2

    .line 179
    .line 180
    move/from16 v24, v3

    .line 181
    .line 182
    :goto_2
    move/from16 v27, v4

    .line 183
    .line 184
    :goto_3
    move-object/from16 v28, v6

    .line 185
    .line 186
    goto/16 :goto_9

    .line 187
    .line 188
    :cond_7
    invoke-static {v5}, Lcom/mycompany/app/data/DataUtil;->d(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    move/from16 v24, v3

    .line 193
    .line 194
    iget-boolean v3, v6, Lcom/mycompany/app/list/ListScan;->c:Z

    .line 195
    .line 196
    if-eqz v3, :cond_9

    .line 197
    .line 198
    const/4 v3, 0x1

    .line 199
    if-eq v0, v3, :cond_8

    .line 200
    .line 201
    const/4 v3, 0x2

    .line 202
    if-eq v0, v3, :cond_8

    .line 203
    .line 204
    const/4 v3, 0x3

    .line 205
    if-eq v0, v3, :cond_8

    .line 206
    .line 207
    :goto_4
    move/from16 v26, v1

    .line 208
    .line 209
    move/from16 v25, v2

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    move/from16 v25, v2

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    if-eq v0, v7, :cond_8

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :goto_5
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 219
    .line 220
    .line 221
    move-result-wide v2

    .line 222
    const-wide/16 v26, 0x0

    .line 223
    .line 224
    cmp-long v26, v2, v26

    .line 225
    .line 226
    if-nez v26, :cond_a

    .line 227
    .line 228
    move/from16 v26, v1

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_a
    move/from16 v26, v1

    .line 232
    .line 233
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-static {v13, v1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    if-nez v1, :cond_b

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_b
    move/from16 v27, v4

    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v28

    .line 254
    if-eqz v28, :cond_c

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_c
    move-object/from16 v28, v6

    .line 258
    .line 259
    const/4 v6, 0x1

    .line 260
    if-ne v7, v6, :cond_e

    .line 261
    .line 262
    move/from16 v6, v21

    .line 263
    .line 264
    if-ge v6, v9, :cond_d

    .line 265
    .line 266
    move/from16 v21, v6

    .line 267
    .line 268
    invoke-static {v8}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-virtual {v6, v4}, Lcom/mycompany/app/data/DataList;->i(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-eqz v6, :cond_12

    .line 277
    .line 278
    add-int/lit8 v21, v21, 0x1

    .line 279
    .line 280
    :goto_6
    move/from16 v0, v25

    .line 281
    .line 282
    const/4 v2, 0x2

    .line 283
    const/4 v3, 0x1

    .line 284
    const/4 v4, 0x3

    .line 285
    goto/16 :goto_c

    .line 286
    .line 287
    :catch_0
    move-object v9, v14

    .line 288
    goto/16 :goto_d

    .line 289
    .line 290
    :cond_d
    move/from16 v21, v6

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_e
    const/4 v6, 0x2

    .line 294
    if-ne v7, v6, :cond_10

    .line 295
    .line 296
    move/from16 v6, v22

    .line 297
    .line 298
    if-ge v6, v10, :cond_f

    .line 299
    .line 300
    move/from16 v22, v6

    .line 301
    .line 302
    invoke-static {v8}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-virtual {v6, v4}, Lcom/mycompany/app/data/DataList;->i(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    if-eqz v6, :cond_12

    .line 311
    .line 312
    add-int/lit8 v22, v22, 0x1

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_f
    move/from16 v22, v6

    .line 316
    .line 317
    goto :goto_7

    .line 318
    :cond_10
    const/4 v6, 0x3

    .line 319
    if-ne v7, v6, :cond_12

    .line 320
    .line 321
    move/from16 v6, v23

    .line 322
    .line 323
    if-ge v6, v11, :cond_11

    .line 324
    .line 325
    move/from16 v23, v6

    .line 326
    .line 327
    invoke-static {v8}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    invoke-virtual {v6, v4}, Lcom/mycompany/app/data/DataList;->i(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    if-eqz v6, :cond_12

    .line 336
    .line 337
    add-int/lit8 v23, v23, 0x1

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_11
    move/from16 v23, v6

    .line 341
    .line 342
    :cond_12
    :goto_7
    if-eqz v15, :cond_14

    .line 343
    .line 344
    :try_start_2
    invoke-static {v8, v1}, Landroidx/documentfile/provider/DocumentFile;->b(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->e()Z

    .line 349
    .line 350
    .line 351
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 352
    if-eqz v1, :cond_13

    .line 353
    .line 354
    const/4 v1, 0x1

    .line 355
    goto :goto_8

    .line 356
    :catch_1
    :cond_13
    move/from16 v1, v16

    .line 357
    .line 358
    :goto_8
    if-nez v1, :cond_14

    .line 359
    .line 360
    :goto_9
    goto :goto_6

    .line 361
    :cond_14
    if-nez v20, :cond_15

    .line 362
    .line 363
    :try_start_3
    invoke-static {v8, v12}, Lcom/mycompany/app/main/MainUri;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v17

    .line 367
    const/16 v20, 0x1

    .line 368
    .line 369
    :cond_15
    move-object/from16 v1, v17

    .line 370
    .line 371
    new-instance v6, Lcom/mycompany/app/main/MainUri$UriItem;

    .line 372
    .line 373
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 374
    .line 375
    .line 376
    iput v0, v6, Lcom/mycompany/app/main/MainUri$UriItem;->a:I

    .line 377
    .line 378
    iput-object v12, v6, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 379
    .line 380
    iput-object v1, v6, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 381
    .line 382
    iput-object v4, v6, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 383
    .line 384
    iput-object v5, v6, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 385
    .line 386
    move/from16 v0, v25

    .line 387
    .line 388
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 389
    .line 390
    .line 391
    move-result-wide v4

    .line 392
    iput-wide v4, v6, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 393
    .line 394
    iput-wide v2, v6, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 395
    .line 396
    const/4 v3, 0x1

    .line 397
    if-ne v7, v3, :cond_16

    .line 398
    .line 399
    invoke-static {v8}, Lcom/mycompany/app/data/DataAlbum;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataAlbum;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v2, v6}, Lcom/mycompany/app/data/DataList;->b(Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 404
    .line 405
    .line 406
    const/4 v2, 0x2

    .line 407
    :goto_a
    const/4 v4, 0x3

    .line 408
    goto :goto_b

    .line 409
    :cond_16
    const/4 v2, 0x2

    .line 410
    if-ne v7, v2, :cond_17

    .line 411
    .line 412
    invoke-static {v8}, Lcom/mycompany/app/data/DataPdf;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataPdf;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    invoke-virtual {v4, v6}, Lcom/mycompany/app/data/DataList;->b(Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 417
    .line 418
    .line 419
    goto :goto_a

    .line 420
    :cond_17
    const/4 v4, 0x3

    .line 421
    if-ne v7, v4, :cond_18

    .line 422
    .line 423
    invoke-static {v8}, Lcom/mycompany/app/data/DataCmp;->m(Landroid/content/Context;)Lcom/mycompany/app/data/DataCmp;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-virtual {v5, v6}, Lcom/mycompany/app/data/DataList;->b(Lcom/mycompany/app/main/MainUri$UriItem;)V

    .line 428
    .line 429
    .line 430
    :cond_18
    :goto_b
    move-object/from16 v17, v1

    .line 431
    .line 432
    :goto_c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 433
    .line 434
    .line 435
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 436
    if-nez v1, :cond_19

    .line 437
    .line 438
    goto :goto_e

    .line 439
    :cond_19
    move v2, v0

    .line 440
    move/from16 v3, v24

    .line 441
    .line 442
    move/from16 v1, v26

    .line 443
    .line 444
    move/from16 v4, v27

    .line 445
    .line 446
    move-object/from16 v6, v28

    .line 447
    .line 448
    move-object/from16 v0, p0

    .line 449
    .line 450
    goto/16 :goto_1

    .line 451
    .line 452
    :catch_2
    const/4 v9, 0x0

    .line 453
    :goto_d
    move-object v14, v9

    .line 454
    :cond_1a
    :goto_e
    if-eqz v14, :cond_1b

    .line 455
    .line 456
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 457
    .line 458
    .line 459
    :cond_1b
    :goto_f
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListScan$ScanTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/list/ListScan;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/list/ListScan;->e:Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/list/ListScan$ScanTask;->f:Z

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/ListScan;->d:Lcom/mycompany/app/list/ListScan$ListScanListener;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/mycompany/app/list/ListScan$ListScanListener;->c()V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/ListScan$ScanTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/list/ListScan;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/list/ListScan;->e:Lcom/mycompany/app/list/ListScan$ScanTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/list/ListScan;->d:Lcom/mycompany/app/list/ListScan$ListScanListener;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/mycompany/app/list/ListScan$ListScanListener;->b()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
