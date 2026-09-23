.class public Lcom/mycompany/app/down/DownParseM3u8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/util/List;

.field public h:Ljava/util/ArrayList;

.field public i:Z

.field public j:I

.field public k:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/down/DownParseM3u8;->k:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Lcom/mycompany/app/down/DownParseM3u8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/mycompany/app/down/DownParseM3u8;->d:Z

    .line 7
    .line 8
    iput-boolean v2, v0, Lcom/mycompany/app/down/DownParseM3u8;->f:Z

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput-object v3, v0, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 12
    .line 13
    iput-object v3, v0, Lcom/mycompany/app/down/DownParseM3u8;->h:Ljava/util/ArrayList;

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/mycompany/app/down/DownParseM3u8;->i:Z

    .line 16
    .line 17
    iget v4, v0, Lcom/mycompany/app/down/DownParseM3u8;->j:I

    .line 18
    .line 19
    const/16 v5, 0x32

    .line 20
    .line 21
    if-le v4, v5, :cond_0

    .line 22
    .line 23
    invoke-interface {v1, v3}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/mycompany/app/down/DownParseM3u8;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-object v4, v3

    .line 33
    :goto_0
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    :cond_1
    move-object v0, v3

    .line 42
    goto/16 :goto_e

    .line 43
    .line 44
    :cond_2
    iget-boolean v5, v0, Lcom/mycompany/app/down/DownParseM3u8;->f:Z

    .line 45
    .line 46
    const-string v6, "#"

    .line 47
    .line 48
    const-string v8, "/"

    .line 49
    .line 50
    if-eqz v5, :cond_19

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    move-object v11, v3

    .line 59
    goto/16 :goto_9

    .line 60
    .line 61
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    move v7, v2

    .line 66
    move v14, v7

    .line 67
    move v15, v14

    .line 68
    move/from16 v16, v15

    .line 69
    .line 70
    move-object v2, v3

    .line 71
    move-object v9, v2

    .line 72
    move-object v10, v9

    .line 73
    move-object v11, v10

    .line 74
    move-object v12, v11

    .line 75
    move-object v13, v12

    .line 76
    :goto_1
    if-ge v7, v5, :cond_16

    .line 77
    .line 78
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v17

    .line 82
    add-int/lit8 v7, v7, 0x1

    .line 83
    .line 84
    move/from16 v18, v5

    .line 85
    .line 86
    move-object/from16 v5, v17

    .line 87
    .line 88
    check-cast v5, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v17

    .line 94
    if-eqz v17, :cond_4

    .line 95
    .line 96
    move/from16 v17, v7

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v17

    .line 104
    if-eqz v17, :cond_c

    .line 105
    .line 106
    move/from16 v17, v7

    .line 107
    .line 108
    const-string v7, "#EXT-X-KEY"

    .line 109
    .line 110
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_5

    .line 115
    .line 116
    move/from16 v19, v7

    .line 117
    .line 118
    const-string v7, "IV="

    .line 119
    .line 120
    invoke-static {v5, v7}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    move/from16 v19, v7

    .line 126
    .line 127
    const/4 v7, 0x0

    .line 128
    :goto_2
    if-nez v19, :cond_6

    .line 129
    .line 130
    move-object/from16 v20, v7

    .line 131
    .line 132
    const-string v7, "#EXT-X-MAP"

    .line 133
    .line 134
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_a

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    move-object/from16 v20, v7

    .line 142
    .line 143
    :goto_3
    const-string v7, "URI="

    .line 144
    .line 145
    invoke-static {v5, v7}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eqz v7, :cond_7

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_8

    .line 161
    .line 162
    const/4 v7, 0x1

    .line 163
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_8

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_8
    if-eqz v19, :cond_9

    .line 175
    .line 176
    move-object v12, v5

    .line 177
    move/from16 v7, v17

    .line 178
    .line 179
    move/from16 v5, v18

    .line 180
    .line 181
    move-object/from16 v3, v20

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_9
    if-nez v11, :cond_b

    .line 185
    .line 186
    new-instance v7, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 189
    .line 190
    .line 191
    :try_start_3
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 192
    .line 193
    .line 194
    move-object v11, v7

    .line 195
    :cond_a
    :goto_4
    move/from16 v7, v17

    .line 196
    .line 197
    move/from16 v5, v18

    .line 198
    .line 199
    goto :goto_1

    .line 200
    :catch_1
    move-object v11, v7

    .line 201
    goto/16 :goto_9

    .line 202
    .line 203
    :cond_b
    :try_start_4
    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-nez v7, :cond_a

    .line 208
    .line 209
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_c
    move/from16 v17, v7

    .line 214
    .line 215
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    if-eqz v7, :cond_d

    .line 220
    .line 221
    const/4 v7, 0x1

    .line 222
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-eqz v7, :cond_d

    .line 231
    .line 232
    :goto_5
    goto :goto_4

    .line 233
    :cond_d
    if-nez v11, :cond_e

    .line 234
    .line 235
    new-instance v7, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 238
    .line 239
    .line 240
    :try_start_5
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 241
    .line 242
    .line 243
    move-object v11, v7

    .line 244
    goto :goto_6

    .line 245
    :cond_e
    :try_start_6
    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-nez v7, :cond_f

    .line 250
    .line 251
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    :cond_f
    :goto_6
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_15

    .line 259
    .line 260
    if-nez v9, :cond_10

    .line 261
    .line 262
    new-instance v9, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    :cond_10
    new-instance v5, Lcom/mycompany/app/main/MainDownSvc$EncItem;

    .line 268
    .line 269
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-static {v13, v12}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    move/from16 v19, v7

    .line 277
    .line 278
    const/4 v7, -0x1

    .line 279
    if-eqz v19, :cond_11

    .line 280
    .line 281
    iput v14, v5, Lcom/mycompany/app/main/MainDownSvc$EncItem;->a:I

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_11
    iput v7, v5, Lcom/mycompany/app/main/MainDownSvc$EncItem;->a:I

    .line 285
    .line 286
    iput-object v12, v5, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 287
    .line 288
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    if-nez v15, :cond_12

    .line 293
    .line 294
    const-string v13, "http"

    .line 295
    .line 296
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 297
    .line 298
    .line 299
    move-result v13

    .line 300
    iput-boolean v13, v0, Lcom/mycompany/app/down/DownParseM3u8;->i:Z

    .line 301
    .line 302
    move-object v13, v12

    .line 303
    const/4 v15, 0x1

    .line 304
    goto :goto_7

    .line 305
    :cond_12
    move-object v13, v12

    .line 306
    :goto_7
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    if-nez v10, :cond_13

    .line 310
    .line 311
    new-instance v10, Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .line 315
    .line 316
    :cond_13
    new-instance v5, Lcom/mycompany/app/main/MainDownSvc$EncItem;

    .line 317
    .line 318
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v19

    .line 325
    if-eqz v19, :cond_14

    .line 326
    .line 327
    move/from16 v7, v16

    .line 328
    .line 329
    iput v7, v5, Lcom/mycompany/app/main/MainDownSvc$EncItem;->a:I

    .line 330
    .line 331
    move/from16 v16, v7

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_14
    move v2, v7

    .line 335
    iput v2, v5, Lcom/mycompany/app/main/MainDownSvc$EncItem;->a:I

    .line 336
    .line 337
    iput-object v3, v5, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 338
    .line 339
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 340
    .line 341
    .line 342
    move-result v16

    .line 343
    move-object v2, v3

    .line 344
    :goto_8
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :cond_15
    move/from16 v7, v16

    .line 350
    .line 351
    goto/16 :goto_4

    .line 352
    .line 353
    :cond_16
    iput-object v9, v0, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 354
    .line 355
    iput-object v10, v0, Lcom/mycompany/app/down/DownParseM3u8;->h:Ljava/util/ArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 356
    .line 357
    goto :goto_9

    .line 358
    :catch_2
    const/4 v11, 0x0

    .line 359
    :catch_3
    :goto_9
    if-eqz v11, :cond_17

    .line 360
    .line 361
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-eqz v2, :cond_18

    .line 366
    .line 367
    :cond_17
    const/4 v0, 0x0

    .line 368
    goto :goto_a

    .line 369
    :cond_18
    const/4 v2, 0x0

    .line 370
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    move-object v5, v2

    .line 375
    check-cast v5, Ljava/lang/String;

    .line 376
    .line 377
    new-instance v6, Lcom/mycompany/app/down/DownParseM3u8$2;

    .line 378
    .line 379
    invoke-direct {v6, v1}, Lcom/mycompany/app/down/DownParseM3u8$2;-><init>(Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 380
    .line 381
    .line 382
    move-object/from16 v2, p1

    .line 383
    .line 384
    move-object/from16 v3, p2

    .line 385
    .line 386
    move-object/from16 v4, p3

    .line 387
    .line 388
    move-object v1, v11

    .line 389
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/down/DownParseM3u8;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_f

    .line 393
    .line 394
    :goto_a
    invoke-interface {v1, v0}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_f

    .line 398
    .line 399
    :cond_19
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_1b

    .line 404
    .line 405
    :catch_4
    :cond_1a
    const/4 v5, 0x0

    .line 406
    goto/16 :goto_d

    .line 407
    .line 408
    :cond_1b
    :try_start_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    move v3, v2

    .line 413
    const/4 v2, 0x0

    .line 414
    :goto_b
    if-ge v3, v0, :cond_1a

    .line 415
    .line 416
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    add-int/lit8 v3, v3, 0x1

    .line 421
    .line 422
    check-cast v5, Ljava/lang/String;

    .line 423
    .line 424
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    if-eqz v7, :cond_1c

    .line 429
    .line 430
    :goto_c
    const/4 v7, 0x1

    .line 431
    goto :goto_b

    .line 432
    :cond_1c
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    move-result v7

    .line 436
    if-eqz v7, :cond_1d

    .line 437
    .line 438
    move-object v2, v5

    .line 439
    goto :goto_b

    .line 440
    :cond_1d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 441
    .line 442
    .line 443
    move-result v7

    .line 444
    if-eqz v7, :cond_1e

    .line 445
    .line 446
    goto :goto_c

    .line 447
    :cond_1e
    const-string v7, "#EXT-X-STREAM-INF"

    .line 448
    .line 449
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v7

    .line 453
    if-nez v7, :cond_1f

    .line 454
    .line 455
    goto :goto_c

    .line 456
    :cond_1f
    const-string v7, "RESOLUTION="

    .line 457
    .line 458
    invoke-static {v2, v7}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v7

    .line 466
    if-eqz v7, :cond_20

    .line 467
    .line 468
    const-string v7, "QUALITY="

    .line 469
    .line 470
    invoke-static {v2, v7}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v7

    .line 474
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 475
    .line 476
    .line 477
    move-result v7

    .line 478
    if-eqz v7, :cond_20

    .line 479
    .line 480
    const-string v7, "BANDWIDTH="

    .line 481
    .line 482
    invoke-static {v2, v7}, Lcom/mycompany/app/down/DownParseList;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    if-eqz v7, :cond_20

    .line 491
    .line 492
    goto :goto_c

    .line 493
    :cond_20
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    if-eqz v7, :cond_21

    .line 498
    .line 499
    const/4 v7, 0x1

    .line 500
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 505
    .line 506
    .line 507
    move-result v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 508
    if-eqz v9, :cond_21

    .line 509
    .line 510
    goto :goto_b

    .line 511
    :cond_21
    :goto_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_22

    .line 516
    .line 517
    const/4 v0, 0x0

    .line 518
    invoke-interface {v1, v0}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 519
    .line 520
    .line 521
    goto :goto_f

    .line 522
    :cond_22
    new-instance v6, Lcom/mycompany/app/down/DownParseM3u8$3;

    .line 523
    .line 524
    invoke-direct {v6, v1}, Lcom/mycompany/app/down/DownParseM3u8$3;-><init>(Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 525
    .line 526
    .line 527
    const/4 v1, 0x0

    .line 528
    move-object/from16 v0, p0

    .line 529
    .line 530
    move-object/from16 v2, p1

    .line 531
    .line 532
    move-object/from16 v3, p2

    .line 533
    .line 534
    move-object/from16 v4, p3

    .line 535
    .line 536
    invoke-virtual/range {v0 .. v6}, Lcom/mycompany/app/down/DownParseM3u8;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 537
    .line 538
    .line 539
    goto :goto_f

    .line 540
    :goto_e
    invoke-interface {v1, v0}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 541
    .line 542
    .line 543
    :goto_f
    return-void
.end method

.method public static b(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_5

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/mycompany/app/main/MainDownSvc$EncItem;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-nez v5, :cond_3

    .line 49
    .line 50
    invoke-static {v3, p2}, Lcom/mycompany/app/down/DownParseM3u8;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {v3, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_4

    .line 67
    .line 68
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iput-object v3, v2, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    return-object p0
.end method

.method public static d(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    if-ltz p1, :cond_4

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    if-lt p1, p0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/16 v1, 0x2f

    .line 13
    .line 14
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->indexOf(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-lez p1, :cond_4

    .line 19
    .line 20
    if-le p1, p0, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    if-ne p1, p0, :cond_3

    .line 24
    .line 25
    return-object p2

    .line 26
    :cond_3
    const/4 p0, 0x0

    .line 27
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static e(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-static {v2, p2}, Lcom/mycompany/app/down/DownParseM3u8;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    return-object v1
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/mycompany/app/down/DownParseM3u8;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    const/16 v2, 0x3f

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0x2f

    .line 19
    .line 20
    if-lez v2, :cond_2

    .line 21
    .line 22
    if-ge v2, v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_0
    if-lez v2, :cond_5

    .line 34
    .line 35
    if-le v2, v1, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    if-ne v2, v1, :cond_4

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_4
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static h(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gt p2, v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    if-nez p0, :cond_2

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_2
    if-lez p2, :cond_7

    .line 20
    .line 21
    add-int/lit8 p2, p2, -0x1

    .line 22
    .line 23
    if-le p2, p1, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    const/16 v0, 0x2f

    .line 27
    .line 28
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->lastIndexOf(II)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-lez p2, :cond_7

    .line 33
    .line 34
    if-le p2, p1, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-gt p2, v0, :cond_5

    .line 42
    .line 43
    return-object p3

    .line 44
    :cond_5
    if-ne p2, p1, :cond_6

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_6
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_7
    :goto_0
    return-object v1
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    const-string v2, "://"

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-lez v2, :cond_4

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x3

    .line 21
    .line 22
    if-le v2, v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    if-ne v2, v1, :cond_3

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static l(Ljava/lang/String;)Lcom/mycompany/app/main/MainDownSvc$M3u8Item;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    const-string v0, "<,>"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_5

    .line 20
    .line 21
    array-length v0, p0

    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    aget-object v0, p0, v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_2
    const/4 v2, 0x1

    .line 33
    aget-object v2, p0, v2

    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_3
    const/4 v3, 0x2

    .line 39
    aget-object p0, p0, v3

    .line 40
    .line 41
    const-string v3, "isNull"

    .line 42
    .line 43
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    move-object v1, p0

    .line 51
    :goto_0
    new-instance p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->a:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v2, p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->b:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/main/MainDownSvc$M3u8Item;->c:Ljava/lang/String;

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_5
    :goto_1
    return-object v1
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/16 v0, 0x3f

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lt v0, v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const-string v0, "/"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-static {v0, p0, p1}, Landroid/support/v4/media/a;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_4

    .line 47
    .line 48
    :cond_3
    :goto_0
    return-object p1

    .line 49
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_10

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/mycompany/app/main/MainDownSvc$EncItem;

    .line 27
    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    goto/16 :goto_4

    .line 31
    .line 32
    :cond_2
    iget-object v3, v3, Lcom/mycompany/app/main/MainDownSvc$EncItem;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_6

    .line 47
    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x1

    .line 53
    if-eqz v4, :cond_5

    .line 54
    .line 55
    :cond_4
    move v4, v2

    .line 56
    goto :goto_0

    .line 57
    :cond_5
    const/16 v4, 0x3f

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/4 v6, -0x1

    .line 64
    if-eq v4, v6, :cond_4

    .line 65
    .line 66
    move v4, v5

    .line 67
    :goto_0
    xor-int/2addr v4, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_6
    move v4, v2

    .line 70
    :goto_1
    invoke-static {p1}, Lcom/mycompany/app/down/DownParseM3u8;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_7

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_7
    const/16 v6, 0x2f

    .line 83
    .line 84
    invoke-static {v6, v3}, Lcom/mycompany/app/main/MainUtil;->r(ILjava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_b

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    :goto_2
    if-gt v6, v7, :cond_10

    .line 99
    .line 100
    invoke-static {v3, v5, p3, v4}, Lcom/mycompany/app/down/DownParseM3u8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    iget-object v9, p0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v9, v8, p2}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_8

    .line 111
    .line 112
    invoke-static {v0, v4, v5, p3}, Lcom/mycompany/app/down/DownParseM3u8;->b(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :cond_8
    if-eqz v4, :cond_9

    .line 119
    .line 120
    invoke-static {v3, v5, v1, v2}, Lcom/mycompany/app/down/DownParseM3u8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    iget-object v9, p0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {v9, v8, p2}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_9

    .line 131
    .line 132
    invoke-static {v0, v2, v5, v1}, Lcom/mycompany/app/down/DownParseM3u8;->b(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :cond_9
    invoke-static {v7, v6, p1}, Lcom/mycompany/app/down/DownParseM3u8;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-nez v8, :cond_10

    .line 147
    .line 148
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_a

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    move-object v11, v6

    .line 160
    move v6, v5

    .line 161
    move-object v5, v11

    .line 162
    goto :goto_2

    .line 163
    :cond_b
    invoke-static {p1}, Lcom/mycompany/app/down/DownParseM3u8;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_c

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    :goto_3
    if-lez v7, :cond_10

    .line 183
    .line 184
    invoke-static {v3, v6, p3, v4}, Lcom/mycompany/app/down/DownParseM3u8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    iget-object v10, p0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 189
    .line 190
    invoke-static {v10, v9, p2}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    if-eqz v9, :cond_d

    .line 195
    .line 196
    invoke-static {v0, v4, v6, p3}, Lcom/mycompany/app/down/DownParseM3u8;->b(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    goto :goto_4

    .line 201
    :cond_d
    if-eqz v4, :cond_e

    .line 202
    .line 203
    invoke-static {v3, v6, v1, v2}, Lcom/mycompany/app/down/DownParseM3u8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    iget-object v10, p0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 208
    .line 209
    invoke-static {v10, v9, p2}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-eqz v9, :cond_e

    .line 214
    .line 215
    invoke-static {v0, v2, v6, v1}, Lcom/mycompany/app/down/DownParseM3u8;->b(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    goto :goto_4

    .line 220
    :cond_e
    invoke-static {p1, v8, v7, v5}, Lcom/mycompany/app/down/DownParseM3u8;->h(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-nez v9, :cond_10

    .line 229
    .line 230
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-eqz v6, :cond_f

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 238
    .line 239
    .line 240
    move-result v6

    .line 241
    move-object v11, v7

    .line 242
    move v7, v6

    .line 243
    move-object v6, v11

    .line 244
    goto :goto_3

    .line 245
    :cond_10
    :goto_4
    if-eqz v1, :cond_11

    .line 246
    .line 247
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_11

    .line 252
    .line 253
    iput-object v1, p0, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 254
    .line 255
    :cond_11
    iget-object p1, p0, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 256
    .line 257
    return-object p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    iget-object v2, p0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v5, 0x1

    .line 5
    const/4 v0, 0x0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-object p2

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 21
    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/mycompany/app/down/DownParseM3u8;->c:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->R5(Ljava/net/HttpURLConnection;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->d:Z

    .line 34
    .line 35
    :catch_0
    move-object v0, p2

    .line 36
    move-object v2, v0

    .line 37
    move-object v3, v2

    .line 38
    move-object v4, v3

    .line 39
    goto/16 :goto_9

    .line 40
    .line 41
    :catch_1
    move-object v0, p2

    .line 42
    move-object v2, v0

    .line 43
    move-object v3, v2

    .line 44
    move-object v4, v3

    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    iput-boolean v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->b:Z

    .line 52
    .line 53
    const-string v2, "gzip"

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .line 66
    .line 67
    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 68
    .line 69
    .line 70
    :try_start_2
    new-instance v3, Ljava/io/InputStreamReader;

    .line 71
    .line 72
    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catch_2
    move-object v0, p2

    .line 77
    move-object v3, v0

    .line 78
    :goto_0
    move-object v4, v3

    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :catch_3
    move-object v0, p2

    .line 82
    move-object v3, v0

    .line 83
    :goto_1
    move-object v4, v3

    .line 84
    :goto_2
    move-object p2, v1

    .line 85
    goto/16 :goto_8

    .line 86
    .line 87
    :catch_4
    move-object v0, p2

    .line 88
    move-object v2, v0

    .line 89
    move-object v3, v2

    .line 90
    goto :goto_0

    .line 91
    :catch_5
    move-object v0, p2

    .line 92
    move-object v2, v0

    .line 93
    move-object v3, v2

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/InputStreamReader;

    .line 96
    .line 97
    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 98
    .line 99
    .line 100
    move-object v2, p2

    .line 101
    :goto_3
    :try_start_4
    new-instance v4, Ljava/io/BufferedReader;

    .line 102
    .line 103
    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 104
    .line 105
    .line 106
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_7

    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    const-string v6, "#EXT-X-ENDLIST"

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_4

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_4
    const-string v6, "#EXTINF"

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_5

    .line 139
    .line 140
    iput-boolean v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->f:Z

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :catch_6
    move-object v0, p2

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    :goto_5
    if-nez p2, :cond_6

    .line 146
    .line 147
    new-instance v6, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    move-object p2, v6

    .line 153
    :cond_6
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :catch_7
    :cond_7
    :goto_6
    move-object v0, p2

    .line 158
    :goto_7
    move-object p2, v1

    .line 159
    goto :goto_9

    .line 160
    :catch_8
    move-object v0, p2

    .line 161
    move-object v4, v0

    .line 162
    goto :goto_7

    .line 163
    :catch_9
    move-object v0, p2

    .line 164
    move-object v4, v0

    .line 165
    goto :goto_2

    .line 166
    :goto_8
    iget-object v1, p0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->D6(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    :goto_9
    if-eqz v4, :cond_8

    .line 172
    .line 173
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 174
    .line 175
    .line 176
    :catch_a
    :cond_8
    if-eqz v3, :cond_9

    .line 177
    .line 178
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    .line 179
    .line 180
    .line 181
    :catch_b
    :cond_9
    if-eqz v2, :cond_a

    .line 182
    .line 183
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    .line 184
    .line 185
    .line 186
    :catch_c
    :cond_a
    if-eqz p2, :cond_b

    .line 187
    .line 188
    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    .line 189
    .line 190
    .line 191
    :catch_d
    :cond_b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 192
    .line 193
    .line 194
    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->b:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->e:Z

    .line 5
    .line 6
    iget v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->j:I

    .line 7
    .line 8
    const/16 v1, 0x32

    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-interface {p4, p1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Lcom/mycompany/app/down/DownParseM3u8$1;

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move-object v4, p3

    .line 23
    move-object v5, p4

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/down/DownParseM3u8$1;-><init>(Lcom/mycompany/app/down/DownParseM3u8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v1, Lcom/mycompany/app/down/DownParseM3u8;->k:Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    return-void
.end method

.method public final m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    iget v7, v0, Lcom/mycompany/app/down/DownParseM3u8;->j:I

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    add-int/2addr v7, v8

    .line 19
    iput v7, v0, Lcom/mycompany/app/down/DownParseM3u8;->j:I

    .line 20
    .line 21
    const/16 v9, 0x32

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    if-le v7, v9, :cond_0

    .line 25
    .line 26
    invoke-interface {v6, v10}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    invoke-interface {v6, v10}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    const/4 v9, 0x0

    .line 45
    if-nez v7, :cond_4

    .line 46
    .line 47
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    :cond_2
    move v7, v9

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/16 v7, 0x3f

    .line 56
    .line 57
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    const/4 v11, -0x1

    .line 62
    if-eq v7, v11, :cond_2

    .line 63
    .line 64
    move v7, v8

    .line 65
    :goto_0
    xor-int/2addr v7, v8

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move v7, v9

    .line 68
    :goto_1
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_8

    .line 73
    .line 74
    if-eqz v7, :cond_6

    .line 75
    .line 76
    invoke-static {v5, v10, v4, v7}, Lcom/mycompany/app/down/DownParseM3u8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget-object v8, v0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v8, v2, v3}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-eqz v8, :cond_6

    .line 87
    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-static {v1, v7, v10, v4}, Lcom/mycompany/app/down/DownParseM3u8;->e(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-interface {v6, v1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_5
    new-instance v1, Lcom/mycompany/app/down/DownParseM3u8$4;

    .line 99
    .line 100
    invoke-direct {v1, v6}, Lcom/mycompany/app/down/DownParseM3u8$4;-><init>(Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/mycompany/app/down/DownParseM3u8;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6
    if-eqz v1, :cond_7

    .line 108
    .line 109
    invoke-interface {v6, v1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    new-instance v1, Lcom/mycompany/app/down/DownParseM3u8$5;

    .line 114
    .line 115
    invoke-direct {v1, v6}, Lcom/mycompany/app/down/DownParseM3u8$5;-><init>(Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v5, v3, v10, v1}, Lcom/mycompany/app/down/DownParseM3u8;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_8
    invoke-static {v2}, Lcom/mycompany/app/down/DownParseM3u8;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-eqz v11, :cond_9

    .line 131
    .line 132
    invoke-interface {v6, v10}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_9
    const/16 v11, 0x2f

    .line 137
    .line 138
    invoke-static {v11, v5}, Lcom/mycompany/app/main/MainUtil;->r(ILjava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-eqz v11, :cond_10

    .line 143
    .line 144
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    :goto_2
    if-gt v11, v12, :cond_18

    .line 153
    .line 154
    invoke-static {v5, v8, v4, v7}, Lcom/mycompany/app/down/DownParseM3u8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    iget-object v14, v0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {v14, v13, v3}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    if-eqz v14, :cond_b

    .line 165
    .line 166
    if-eqz v1, :cond_a

    .line 167
    .line 168
    invoke-static {v1, v7, v8, v4}, Lcom/mycompany/app/down/DownParseM3u8;->e(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-interface {v6, v1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_a
    new-instance v1, Lcom/mycompany/app/down/DownParseM3u8$6;

    .line 177
    .line 178
    invoke-direct {v1, v6}, Lcom/mycompany/app/down/DownParseM3u8$6;-><init>(Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v13, v3, v4, v1}, Lcom/mycompany/app/down/DownParseM3u8;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_b
    if-eqz v7, :cond_d

    .line 186
    .line 187
    invoke-static {v5, v8, v10, v9}, Lcom/mycompany/app/down/DownParseM3u8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    iget-object v14, v0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 192
    .line 193
    invoke-static {v14, v13, v3}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    if-eqz v14, :cond_d

    .line 198
    .line 199
    if-eqz v1, :cond_c

    .line 200
    .line 201
    invoke-static {v1, v9, v8, v10}, Lcom/mycompany/app/down/DownParseM3u8;->e(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-interface {v6, v1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_c
    new-instance v1, Lcom/mycompany/app/down/DownParseM3u8$7;

    .line 210
    .line 211
    invoke-direct {v1, v6}, Lcom/mycompany/app/down/DownParseM3u8$7;-><init>(Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v13, v3, v10, v1}, Lcom/mycompany/app/down/DownParseM3u8;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :cond_d
    invoke-static {v12, v11, v2}, Lcom/mycompany/app/down/DownParseM3u8;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v11

    .line 222
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 223
    .line 224
    .line 225
    move-result v13

    .line 226
    if-nez v13, :cond_f

    .line 227
    .line 228
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-eqz v8, :cond_e

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_e
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    move-object/from16 v16, v11

    .line 240
    .line 241
    move v11, v8

    .line 242
    move-object/from16 v8, v16

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_f
    :goto_3
    invoke-interface {v6, v10}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_10
    invoke-static {v2}, Lcom/mycompany/app/down/DownParseM3u8;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v11

    .line 253
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_11

    .line 258
    .line 259
    invoke-interface {v6, v10}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :cond_11
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 268
    .line 269
    .line 270
    move-result v13

    .line 271
    :goto_4
    if-lez v12, :cond_18

    .line 272
    .line 273
    invoke-static {v5, v11, v4, v7}, Lcom/mycompany/app/down/DownParseM3u8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    iget-object v15, v0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 278
    .line 279
    invoke-static {v15, v14, v3}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v15

    .line 283
    if-eqz v15, :cond_13

    .line 284
    .line 285
    if-eqz v1, :cond_12

    .line 286
    .line 287
    invoke-static {v1, v7, v11, v4}, Lcom/mycompany/app/down/DownParseM3u8;->e(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-interface {v6, v1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_12
    new-instance v1, Lcom/mycompany/app/down/DownParseM3u8$8;

    .line 296
    .line 297
    invoke-direct {v1, v6}, Lcom/mycompany/app/down/DownParseM3u8$8;-><init>(Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v14, v3, v4, v1}, Lcom/mycompany/app/down/DownParseM3u8;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :cond_13
    if-eqz v7, :cond_15

    .line 305
    .line 306
    invoke-static {v5, v11, v10, v9}, Lcom/mycompany/app/down/DownParseM3u8;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    iget-object v15, v0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 311
    .line 312
    invoke-static {v15, v14, v3}, Lcom/mycompany/app/main/MainUtil;->g6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v15

    .line 316
    if-eqz v15, :cond_15

    .line 317
    .line 318
    if-eqz v1, :cond_14

    .line 319
    .line 320
    invoke-static {v1, v9, v11, v10}, Lcom/mycompany/app/down/DownParseM3u8;->e(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-interface {v6, v1}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_14
    new-instance v1, Lcom/mycompany/app/down/DownParseM3u8$9;

    .line 329
    .line 330
    invoke-direct {v1, v6}, Lcom/mycompany/app/down/DownParseM3u8$9;-><init>(Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v14, v3, v10, v1}, Lcom/mycompany/app/down/DownParseM3u8;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :cond_15
    invoke-static {v2, v13, v12, v8}, Lcom/mycompany/app/down/DownParseM3u8;->h(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v12

    .line 341
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v14

    .line 345
    if-nez v14, :cond_17

    .line 346
    .line 347
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v11

    .line 351
    if-eqz v11, :cond_16

    .line 352
    .line 353
    goto :goto_5

    .line 354
    :cond_16
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    move-object/from16 v16, v12

    .line 359
    .line 360
    move v12, v11

    .line 361
    move-object/from16 v11, v16

    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_17
    :goto_5
    invoke-interface {v6, v10}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :catch_0
    :cond_18
    invoke-interface {v6, v10}, Lcom/mycompany/app/down/DownParseM3u8$DownParseListener;->a(Ljava/util/List;)V

    .line 369
    .line 370
    .line 371
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->a:Landroid/content/Context;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->g:Ljava/util/List;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->h:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mycompany/app/down/DownParseM3u8;->k:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    return-void
.end method
