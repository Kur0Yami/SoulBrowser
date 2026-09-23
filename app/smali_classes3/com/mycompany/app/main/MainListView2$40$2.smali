.class Lcom/mycompany/app/main/MainListView2$40$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/main/MainListView2$40;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2$40;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$40$2;->g:Lcom/mycompany/app/main/MainListView2$40;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/main/MainListView2$40$2;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/main/MainListView2$40$2;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2$40$2;->g:Lcom/mycompany/app/main/MainListView2$40;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView2$40;->a:Lcom/mycompany/app/main/MainListView2;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1a

    .line 12
    .line 13
    :cond_0
    iget-object v3, v2, Lcom/mycompany/app/main/MainListAdapter2;->d:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 16
    .line 17
    if-nez v4, :cond_2

    .line 18
    .line 19
    :cond_1
    :goto_0
    move-object v3, v0

    .line 20
    goto/16 :goto_1b

    .line 21
    .line 22
    :cond_2
    iget v6, v2, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 23
    .line 24
    iget v7, v0, Lcom/mycompany/app/main/MainListView2$40$2;->c:I

    .line 25
    .line 26
    if-ge v7, v6, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget v6, v2, Lcom/mycompany/app/main/MainListAdapter2;->k:I

    .line 34
    .line 35
    sub-int/2addr v4, v6

    .line 36
    if-ge v7, v4, :cond_1

    .line 37
    .line 38
    iget v6, v0, Lcom/mycompany/app/main/MainListView2$40$2;->f:I

    .line 39
    .line 40
    if-lt v6, v4, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    iget v4, v2, Lcom/mycompany/app/main/MainListAdapter2;->j:I

    .line 44
    .line 45
    const/4 v8, 0x1

    .line 46
    if-ge v6, v4, :cond_5

    .line 47
    .line 48
    move v4, v8

    .line 49
    goto :goto_1

    .line 50
    :cond_5
    const/4 v4, 0x0

    .line 51
    :goto_1
    invoke-virtual {v2, v7}, Lcom/mycompany/app/main/MainListAdapter2;->z(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-nez v7, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    invoke-virtual {v2, v6}, Lcom/mycompany/app/main/MainListAdapter2;->z(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-nez v6, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-boolean v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 66
    .line 67
    if-eqz v9, :cond_8

    .line 68
    .line 69
    iget-boolean v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 70
    .line 71
    if-nez v9, :cond_8

    .line 72
    .line 73
    move-object/from16 v20, v7

    .line 74
    .line 75
    move-object v7, v6

    .line 76
    move-object/from16 v6, v20

    .line 77
    .line 78
    :cond_8
    iget-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    const-string v11, "/"

    .line 85
    .line 86
    if-nez v10, :cond_a

    .line 87
    .line 88
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-eqz v10, :cond_9

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_9
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    goto :goto_3

    .line 100
    :cond_a
    :goto_2
    move-object v9, v11

    .line 101
    :goto_3
    const/4 v10, 0x0

    .line 102
    if-eqz v4, :cond_b

    .line 103
    .line 104
    invoke-static {v10, v9}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    move-object v12, v10

    .line 109
    goto/16 :goto_9

    .line 110
    .line 111
    :cond_b
    iget-boolean v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 112
    .line 113
    if-eqz v4, :cond_c

    .line 114
    .line 115
    iget-object v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v12, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-wide v13, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 123
    .line 124
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto/16 :goto_9

    .line 132
    .line 133
    :cond_c
    iget-object v4, v2, Lcom/mycompany/app/main/MainListAdapter2;->d:Landroid/content/Context;

    .line 134
    .line 135
    iget-object v12, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 136
    .line 137
    if-nez v4, :cond_d

    .line 138
    .line 139
    move-object/from16 v18, v10

    .line 140
    .line 141
    goto/16 :goto_8

    .line 142
    .line 143
    :cond_d
    sget v13, Lnet/kaki87/soul2/testing/R$string;->new_folder:I

    .line 144
    .line 145
    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    iget-object v14, v2, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 150
    .line 151
    if-eqz v14, :cond_14

    .line 152
    .line 153
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    if-eqz v14, :cond_e

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_e
    new-instance v14, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    iget-object v15, v2, Lcom/mycompany/app/main/MainListAdapter2;->g:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v15

    .line 171
    const/16 v16, 0x0

    .line 172
    .line 173
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result v17

    .line 177
    if-eqz v17, :cond_12

    .line 178
    .line 179
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v17

    .line 183
    move-object/from16 v10, v17

    .line 184
    .line 185
    check-cast v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 186
    .line 187
    if-eqz v10, :cond_11

    .line 188
    .line 189
    iget v5, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 190
    .line 191
    if-eqz v5, :cond_f

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_f
    iget-object v5, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_10

    .line 201
    .line 202
    move/from16 v16, v8

    .line 203
    .line 204
    :cond_10
    iget-object v5, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    :cond_11
    :goto_5
    const/4 v10, 0x0

    .line 210
    goto :goto_4

    .line 211
    :cond_12
    if-nez v16, :cond_13

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_13
    move v5, v8

    .line 215
    :goto_6
    add-int/2addr v5, v8

    .line 216
    new-instance v10, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v15, " ("

    .line 225
    .line 226
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v8, ")"

    .line 233
    .line 234
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    if-nez v10, :cond_15

    .line 246
    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    :cond_14
    :goto_7
    move-object/from16 v18, v13

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_15
    const/4 v8, 0x1

    .line 272
    goto :goto_6

    .line 273
    :goto_8
    iget v5, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 274
    .line 275
    int-to-long v14, v5

    .line 276
    const/16 v19, 0x1

    .line 277
    .line 278
    move-object/from16 v16, v4

    .line 279
    .line 280
    move-object/from16 v17, v12

    .line 281
    .line 282
    invoke-static/range {v14 .. v19}, Lcom/mycompany/app/db/book/DbBookWeb;->l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    if-nez v4, :cond_16

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_16
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 291
    .line 292
    new-instance v12, Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .line 296
    .line 297
    iget-wide v13, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 298
    .line 299
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-object v4, v5

    .line 307
    :goto_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-nez v5, :cond_18

    .line 312
    .line 313
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    if-eqz v5, :cond_17

    .line 318
    .line 319
    goto :goto_a

    .line 320
    :cond_17
    invoke-virtual {v4, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    goto :goto_b

    .line 325
    :cond_18
    :goto_a
    move-object v4, v11

    .line 326
    :goto_b
    new-instance v5, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    iget-boolean v8, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 335
    .line 336
    if-nez v8, :cond_19

    .line 337
    .line 338
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    :cond_19
    iget-boolean v6, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 342
    .line 343
    const-string v8, "_dir"

    .line 344
    .line 345
    if-eqz v6, :cond_21

    .line 346
    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    iget-object v7, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {v6, v7, v11}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    new-instance v7, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v10, "_secret=?"

    .line 361
    .line 362
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    sget-boolean v10, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 366
    .line 367
    if-eqz v10, :cond_1a

    .line 368
    .line 369
    const-string v10, "1"

    .line 370
    .line 371
    goto :goto_c

    .line 372
    :cond_1a
    const-string v10, "0"

    .line 373
    .line 374
    :goto_c
    filled-new-array {v10}, [Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v17

    .line 378
    :try_start_0
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 383
    .line 384
    .line 385
    move-result-object v13

    .line 386
    const-string v14, "DbBookWeb_table"

    .line 387
    .line 388
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v16

    .line 392
    const/16 v18, 0x0

    .line 393
    .line 394
    const/4 v15, 0x0

    .line 395
    invoke-static/range {v13 .. v18}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 396
    .line 397
    .line 398
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    if-eqz v10, :cond_20

    .line 400
    .line 401
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    if-eqz v7, :cond_20

    .line 406
    .line 407
    const-string v7, "_id"

    .line 408
    .line 409
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    const-string v13, "_isdir"

    .line 414
    .line 415
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    move-result v13

    .line 419
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    move-result v14

    .line 423
    const-string v15, "_title"

    .line 424
    .line 425
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 429
    move-object/from16 v16, v4

    .line 430
    .line 431
    :goto_d
    :try_start_2
    new-instance v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 432
    .line 433
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    iput-object v0, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 441
    .line 442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_1b

    .line 447
    .line 448
    move/from16 v17, v14

    .line 449
    .line 450
    :goto_e
    move v0, v15

    .line 451
    goto :goto_11

    .line 452
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    move/from16 v17, v14

    .line 458
    .line 459
    iget-object v14, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-nez v0, :cond_1c

    .line 476
    .line 477
    :goto_f
    goto :goto_e

    .line 478
    :cond_1c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_1d

    .line 483
    .line 484
    goto :goto_f

    .line 485
    :cond_1d
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    const/4 v14, 0x1

    .line 490
    if-ne v0, v14, :cond_1e

    .line 491
    .line 492
    move v0, v14

    .line 493
    goto :goto_10

    .line 494
    :cond_1e
    const/4 v0, 0x0

    .line 495
    :goto_10
    iput-boolean v0, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 496
    .line 497
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    iput-object v0, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 502
    .line 503
    move v0, v15

    .line 504
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 505
    .line 506
    .line 507
    move-result-wide v14

    .line 508
    iput-wide v14, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 509
    .line 510
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    :goto_11
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 514
    .line 515
    .line 516
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 517
    if-nez v4, :cond_1f

    .line 518
    .line 519
    goto :goto_12

    .line 520
    :cond_1f
    move v15, v0

    .line 521
    move/from16 v14, v17

    .line 522
    .line 523
    move-object/from16 v0, p0

    .line 524
    .line 525
    goto :goto_d

    .line 526
    :catch_0
    :cond_20
    move-object/from16 v16, v4

    .line 527
    .line 528
    goto :goto_12

    .line 529
    :catch_1
    move-object/from16 v16, v4

    .line 530
    .line 531
    const/4 v10, 0x0

    .line 532
    :catch_2
    :goto_12
    if-eqz v10, :cond_22

    .line 533
    .line 534
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 535
    .line 536
    .line 537
    goto :goto_13

    .line 538
    :cond_21
    move-object/from16 v16, v4

    .line 539
    .line 540
    :cond_22
    :goto_13
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    const/4 v6, 0x0

    .line 549
    :goto_14
    if-ge v6, v4, :cond_29

    .line 550
    .line 551
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v7

    .line 555
    add-int/lit8 v6, v6, 0x1

    .line 556
    .line 557
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 558
    .line 559
    if-nez v7, :cond_23

    .line 560
    .line 561
    goto :goto_14

    .line 562
    :cond_23
    new-instance v10, Landroid/content/ContentValues;

    .line 563
    .line 564
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 565
    .line 566
    .line 567
    iget-object v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 568
    .line 569
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 570
    .line 571
    .line 572
    move-result v13

    .line 573
    if-nez v13, :cond_25

    .line 574
    .line 575
    iget-object v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 576
    .line 577
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v13

    .line 581
    if-eqz v13, :cond_24

    .line 582
    .line 583
    goto :goto_15

    .line 584
    :cond_24
    new-instance v13, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    iget-object v14, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 590
    .line 591
    invoke-static {v13, v14, v11}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v13

    .line 595
    iput-object v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 596
    .line 597
    goto :goto_16

    .line 598
    :cond_25
    :goto_15
    iput-object v11, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 599
    .line 600
    :goto_16
    iget-object v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 601
    .line 602
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 603
    .line 604
    .line 605
    move-result v13

    .line 606
    if-nez v13, :cond_26

    .line 607
    .line 608
    goto :goto_14

    .line 609
    :cond_26
    invoke-static/range {v16 .. v16}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    move-result-object v13

    .line 613
    iget-object v14, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 614
    .line 615
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v14

    .line 619
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v13

    .line 626
    iput-object v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 627
    .line 628
    invoke-static {v13}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v13

    .line 632
    iput-object v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 633
    .line 634
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 635
    .line 636
    .line 637
    move-result v13

    .line 638
    if-eqz v13, :cond_27

    .line 639
    .line 640
    iput-object v11, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 641
    .line 642
    :cond_27
    iget-boolean v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 643
    .line 644
    if-eqz v13, :cond_28

    .line 645
    .line 646
    iget-object v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 647
    .line 648
    iget-object v14, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 649
    .line 650
    invoke-static {v3, v13, v14}, Lcom/mycompany/app/db/book/DbBookWeb;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 651
    .line 652
    .line 653
    move-result v13

    .line 654
    if-eqz v13, :cond_28

    .line 655
    .line 656
    iget-wide v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 657
    .line 658
    invoke-static {v3, v13, v14}, Lcom/mycompany/app/db/book/DbBookWeb;->k(Landroid/content/Context;J)V

    .line 659
    .line 660
    .line 661
    move/from16 v17, v0

    .line 662
    .line 663
    goto :goto_17

    .line 664
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 665
    .line 666
    .line 667
    move-result-wide v13

    .line 668
    iget-object v15, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 669
    .line 670
    invoke-virtual {v10, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    const-string v15, "_time"

    .line 674
    .line 675
    move/from16 v17, v0

    .line 676
    .line 677
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {v10, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 682
    .line 683
    .line 684
    const-string v0, "_rsv4"

    .line 685
    .line 686
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 687
    .line 688
    .line 689
    move-result-object v13

    .line 690
    invoke-virtual {v10, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 691
    .line 692
    .line 693
    iget-wide v13, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 694
    .line 695
    invoke-static {v3, v13, v14, v10}, Lcom/mycompany/app/db/book/DbBookWeb;->n(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 696
    .line 697
    .line 698
    :goto_17
    move/from16 v0, v17

    .line 699
    .line 700
    goto/16 :goto_14

    .line 701
    .line 702
    :cond_29
    iget-object v0, v2, Lcom/mycompany/app/main/MainListAdapter2;->q:Lcom/mycompany/app/main/MainListAdapter2$List2Listener;

    .line 703
    .line 704
    if-nez v0, :cond_2a

    .line 705
    .line 706
    goto :goto_19

    .line 707
    :cond_2a
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->Y6(Ljava/lang/String;)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    if-eqz v3, :cond_2b

    .line 716
    .line 717
    goto :goto_18

    .line 718
    :cond_2b
    invoke-static {v11, v0}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v11

    .line 722
    :goto_18
    iget-object v0, v2, Lcom/mycompany/app/main/MainListAdapter2;->q:Lcom/mycompany/app/main/MainListAdapter2$List2Listener;

    .line 723
    .line 724
    check-cast v0, Lcom/mycompany/app/main/MainListView2$38;

    .line 725
    .line 726
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView2$38;->a:Lcom/mycompany/app/main/MainListView2;

    .line 727
    .line 728
    iget-object v3, v2, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 729
    .line 730
    if-nez v3, :cond_2c

    .line 731
    .line 732
    goto :goto_19

    .line 733
    :cond_2c
    iput-object v11, v2, Lcom/mycompany/app/main/MainListView2;->u0:Ljava/lang/String;

    .line 734
    .line 735
    iput-object v12, v2, Lcom/mycompany/app/main/MainListView2;->v0:Ljava/util/List;

    .line 736
    .line 737
    iget-object v2, v2, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 738
    .line 739
    if-nez v2, :cond_2d

    .line 740
    .line 741
    goto :goto_19

    .line 742
    :cond_2d
    new-instance v3, Lcom/mycompany/app/main/MainListView2$38$2;

    .line 743
    .line 744
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainListView2$38$2;-><init>(Lcom/mycompany/app/main/MainListView2$38;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 748
    .line 749
    .line 750
    :goto_19
    iget-object v0, v1, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 751
    .line 752
    if-nez v0, :cond_2e

    .line 753
    .line 754
    :goto_1a
    return-void

    .line 755
    :cond_2e
    new-instance v2, Lcom/mycompany/app/main/MainListView2$40$2$1;

    .line 756
    .line 757
    move-object/from16 v3, p0

    .line 758
    .line 759
    invoke-direct {v2, v3}, Lcom/mycompany/app/main/MainListView2$40$2$1;-><init>(Lcom/mycompany/app/main/MainListView2$40$2;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 763
    .line 764
    .line 765
    :goto_1b
    const/4 v0, 0x0

    .line 766
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainListView2;->x0:Z

    .line 767
    .line 768
    return-void
.end method
