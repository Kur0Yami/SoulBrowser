.class Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogWebBookMove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public j:I

.field public k:I

.field public l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookMove;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->f:Ljava/util/List;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->h:Ljava/lang/String;

    .line 25
    .line 26
    iput p5, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->i:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "_time"

    .line 4
    .line 5
    const-string v2, "_title"

    .line 6
    .line 7
    const-string v3, "_dir"

    .line 8
    .line 9
    const-string v4, "/"

    .line 10
    .line 11
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    goto/16 :goto_17

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 22
    .line 23
    if-eqz v5, :cond_2d

    .line 24
    .line 25
    iget-boolean v6, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 26
    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    goto/16 :goto_17

    .line 30
    .line 31
    :cond_1
    iget-object v6, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 32
    .line 33
    if-eqz v6, :cond_2d

    .line 34
    .line 35
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->f:Ljava/util/List;

    .line 36
    .line 37
    if-eqz v6, :cond_2d

    .line 38
    .line 39
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    goto/16 :goto_17

    .line 46
    .line 47
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 67
    .line 68
    iget-wide v8, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 69
    .line 70
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_4

    .line 83
    .line 84
    goto/16 :goto_17

    .line 85
    .line 86
    :cond_4
    iget-object v6, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->r0:Ljava/lang/String;

    .line 87
    .line 88
    const-string v8, "yyyy.MM.dd"

    .line 89
    .line 90
    if-nez v6, :cond_5

    .line 91
    .line 92
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->C0(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    iput-object v6, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->r0:Ljava/lang/String;

    .line 97
    .line 98
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v10, "_secret=?"

    .line 106
    .line 107
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-boolean v10, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 111
    .line 112
    if-eqz v10, :cond_6

    .line 113
    .line 114
    const-string v10, "1"

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    const-string v10, "0"

    .line 118
    .line 119
    :goto_1
    filled-new-array {v10}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    const/4 v10, 0x0

    .line 124
    const/16 v17, 0x0

    .line 125
    .line 126
    const/4 v11, 0x1

    .line 127
    :try_start_0
    iget-object v12, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {v12}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    move v13, v11

    .line 138
    move-object v11, v12

    .line 139
    const-string v12, "DbBookWeb_table"

    .line 140
    .line 141
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    const/16 v16, 0x0

    .line 146
    .line 147
    move v9, v13

    .line 148
    const/4 v13, 0x0

    .line 149
    invoke-static/range {v11 .. v16}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    if-eqz v10, :cond_d

    .line 154
    .line 155
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    if-eqz v11, :cond_d

    .line 160
    .line 161
    const-string v11, "_id"

    .line 162
    .line 163
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    const-string v12, "_isdir"

    .line 168
    .line 169
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    const-string v14, "_path"

    .line 178
    .line 179
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v15

    .line 187
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    move-object/from16 v18, v2

    .line 192
    .line 193
    :goto_2
    :try_start_1
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 194
    .line 195
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    .line 197
    .line 198
    move-object/from16 v19, v1

    .line 199
    .line 200
    :try_start_2
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 205
    .line 206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_7

    .line 211
    .line 212
    move/from16 v20, v12

    .line 213
    .line 214
    :goto_3
    move/from16 v21, v13

    .line 215
    .line 216
    goto/16 :goto_7

    .line 217
    .line 218
    :cond_7
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    move/from16 v20, v12

    .line 223
    .line 224
    const/4 v12, 0x1

    .line 225
    if-ne v1, v12, :cond_8

    .line 226
    .line 227
    const/4 v1, 0x1

    .line 228
    goto :goto_4

    .line 229
    :cond_8
    move/from16 v1, v17

    .line 230
    .line 231
    :goto_4
    iput-boolean v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 232
    .line 233
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 238
    .line 239
    iget-boolean v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 240
    .line 241
    if-eqz v1, :cond_b

    .line 242
    .line 243
    iget-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_a

    .line 250
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 269
    .line 270
    :cond_9
    :goto_5
    move v1, v13

    .line 271
    goto :goto_6

    .line 272
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    iget-object v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_b
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_9

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :goto_6
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 311
    .line 312
    .line 313
    move-result-wide v12

    .line 314
    iput-wide v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 315
    .line 316
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v12

    .line 320
    iput-wide v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 321
    .line 322
    move/from16 v21, v1

    .line 323
    .line 324
    iget-object v1, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->r0:Ljava/lang/String;

    .line 325
    .line 326
    invoke-static {v12, v13, v1, v8}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    :goto_7
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 336
    .line 337
    if-nez v1, :cond_e

    .line 338
    .line 339
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 340
    .line 341
    .line 342
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    if-nez v1, :cond_c

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_c
    move-object/from16 v1, v19

    .line 347
    .line 348
    move/from16 v12, v20

    .line 349
    .line 350
    move/from16 v13, v21

    .line 351
    .line 352
    goto/16 :goto_2

    .line 353
    .line 354
    :catch_0
    move-object/from16 v19, v1

    .line 355
    .line 356
    goto :goto_8

    .line 357
    :catch_1
    :cond_d
    move-object/from16 v19, v1

    .line 358
    .line 359
    move-object/from16 v18, v2

    .line 360
    .line 361
    :catch_2
    :cond_e
    :goto_8
    if-eqz v10, :cond_f

    .line 362
    .line 363
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 364
    .line 365
    .line 366
    :cond_f
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 367
    .line 368
    if-eqz v1, :cond_10

    .line 369
    .line 370
    goto/16 :goto_17

    .line 371
    .line 372
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_11

    .line 377
    .line 378
    goto/16 :goto_17

    .line 379
    .line 380
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    move/from16 v8, v17

    .line 390
    .line 391
    :cond_12
    :goto_9
    if-ge v8, v2, :cond_17

    .line 392
    .line 393
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    add-int/lit8 v8, v8, 0x1

    .line 398
    .line 399
    check-cast v9, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 400
    .line 401
    iget-boolean v10, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 402
    .line 403
    if-eqz v10, :cond_13

    .line 404
    .line 405
    goto/16 :goto_17

    .line 406
    .line 407
    :cond_13
    if-nez v9, :cond_14

    .line 408
    .line 409
    goto :goto_9

    .line 410
    :cond_14
    iget-wide v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 411
    .line 412
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v10

    .line 420
    if-nez v10, :cond_15

    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_15
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    iget-boolean v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 427
    .line 428
    if-eqz v10, :cond_12

    .line 429
    .line 430
    new-instance v10, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .line 434
    .line 435
    iget-object v9, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 436
    .line 437
    invoke-static {v10, v9, v4}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v9

    .line 441
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 442
    .line 443
    .line 444
    move-result v10

    .line 445
    move/from16 v11, v17

    .line 446
    .line 447
    :cond_16
    :goto_a
    if-ge v11, v10, :cond_12

    .line 448
    .line 449
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v12

    .line 453
    add-int/lit8 v11, v11, 0x1

    .line 454
    .line 455
    check-cast v12, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 456
    .line 457
    new-instance v13, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    iget-object v14, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v13

    .line 474
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    move-result v13

    .line 478
    if-eqz v13, :cond_16

    .line 479
    .line 480
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    if-nez v13, :cond_16

    .line 485
    .line 486
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    if-eqz v2, :cond_18

    .line 495
    .line 496
    goto/16 :goto_17

    .line 497
    .line 498
    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    iput v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->j:I

    .line 503
    .line 504
    new-instance v2, Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .line 508
    .line 509
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->l:Ljava/util/ArrayList;

    .line 510
    .line 511
    const/4 v2, 0x2

    .line 512
    iget v6, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->i:I

    .line 513
    .line 514
    if-ne v6, v2, :cond_1b

    .line 515
    .line 516
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 517
    .line 518
    .line 519
    move-result v2

    .line 520
    move/from16 v3, v17

    .line 521
    .line 522
    :goto_b
    if-ge v3, v2, :cond_2d

    .line 523
    .line 524
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v4

    .line 528
    add-int/lit8 v3, v3, 0x1

    .line 529
    .line 530
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 531
    .line 532
    iget-boolean v6, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 533
    .line 534
    if-eqz v6, :cond_19

    .line 535
    .line 536
    goto/16 :goto_17

    .line 537
    .line 538
    :cond_19
    if-nez v4, :cond_1a

    .line 539
    .line 540
    goto :goto_b

    .line 541
    :cond_1a
    iget-object v6, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 542
    .line 543
    iget-wide v7, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 544
    .line 545
    invoke-static {v6, v7, v8}, Lcom/mycompany/app/db/book/DbBookWeb;->k(Landroid/content/Context;J)V

    .line 546
    .line 547
    .line 548
    iget v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 549
    .line 550
    const/16 v16, 0x1

    .line 551
    .line 552
    add-int/lit8 v4, v4, 0x1

    .line 553
    .line 554
    iput v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 555
    .line 556
    invoke-virtual {v0}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 557
    .line 558
    .line 559
    goto :goto_b

    .line 560
    :cond_1b
    const/4 v2, 0x3

    .line 561
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->h:Ljava/lang/String;

    .line 562
    .line 563
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->g:Ljava/lang/String;

    .line 564
    .line 565
    if-ne v6, v2, :cond_23

    .line 566
    .line 567
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    move/from16 v9, v17

    .line 576
    .line 577
    :goto_c
    if-ge v9, v6, :cond_2d

    .line 578
    .line 579
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v10

    .line 583
    add-int/lit8 v9, v9, 0x1

    .line 584
    .line 585
    check-cast v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 586
    .line 587
    iget-boolean v11, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 588
    .line 589
    if-eqz v11, :cond_1c

    .line 590
    .line 591
    goto/16 :goto_17

    .line 592
    .line 593
    :cond_1c
    if-nez v10, :cond_1d

    .line 594
    .line 595
    goto :goto_c

    .line 596
    :cond_1d
    new-instance v11, Landroid/content/ContentValues;

    .line 597
    .line 598
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 599
    .line 600
    .line 601
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 602
    .line 603
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 604
    .line 605
    .line 606
    move-result v12

    .line 607
    if-nez v12, :cond_1f

    .line 608
    .line 609
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 610
    .line 611
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v12

    .line 615
    if-eqz v12, :cond_1e

    .line 616
    .line 617
    goto :goto_d

    .line 618
    :cond_1e
    new-instance v12, Ljava/lang/StringBuilder;

    .line 619
    .line 620
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .line 622
    .line 623
    iget-object v13, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 624
    .line 625
    invoke-static {v12, v13, v4}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v12

    .line 629
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 630
    .line 631
    goto :goto_e

    .line 632
    :cond_1f
    :goto_d
    iput-object v4, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 633
    .line 634
    :goto_e
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 635
    .line 636
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 637
    .line 638
    .line 639
    move-result v12

    .line 640
    if-nez v12, :cond_20

    .line 641
    .line 642
    iget v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 643
    .line 644
    const/16 v16, 0x1

    .line 645
    .line 646
    add-int/lit8 v10, v10, 0x1

    .line 647
    .line 648
    iput v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 649
    .line 650
    invoke-virtual {v0}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 651
    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_20
    invoke-static {v7}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    move-result-object v12

    .line 658
    iget-object v13, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 659
    .line 660
    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v13

    .line 664
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v12

    .line 671
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 672
    .line 673
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v12

    .line 677
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 678
    .line 679
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 680
    .line 681
    .line 682
    move-result v12

    .line 683
    if-eqz v12, :cond_21

    .line 684
    .line 685
    iput-object v4, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 686
    .line 687
    :cond_21
    iget-boolean v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 688
    .line 689
    if-eqz v12, :cond_22

    .line 690
    .line 691
    iget-object v12, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 692
    .line 693
    iget-object v13, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 694
    .line 695
    iget-object v14, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 696
    .line 697
    invoke-static {v12, v13, v14}, Lcom/mycompany/app/db/book/DbBookWeb;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 698
    .line 699
    .line 700
    move-result v12

    .line 701
    if-eqz v12, :cond_22

    .line 702
    .line 703
    iget-object v11, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 704
    .line 705
    iget-wide v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 706
    .line 707
    invoke-static {v11, v12, v13}, Lcom/mycompany/app/db/book/DbBookWeb;->k(Landroid/content/Context;J)V

    .line 708
    .line 709
    .line 710
    move-object/from16 v15, v19

    .line 711
    .line 712
    goto :goto_f

    .line 713
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 714
    .line 715
    .line 716
    move-result-wide v12

    .line 717
    iget-object v14, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 718
    .line 719
    invoke-virtual {v11, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 723
    .line 724
    .line 725
    move-result-object v14

    .line 726
    move-object/from16 v15, v19

    .line 727
    .line 728
    invoke-virtual {v11, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 729
    .line 730
    .line 731
    const-string v14, "_rsv4"

    .line 732
    .line 733
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 734
    .line 735
    .line 736
    move-result-object v12

    .line 737
    invoke-virtual {v11, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 738
    .line 739
    .line 740
    iget-object v12, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 741
    .line 742
    iget-wide v13, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 743
    .line 744
    invoke-static {v12, v13, v14, v11}, Lcom/mycompany/app/db/book/DbBookWeb;->n(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 745
    .line 746
    .line 747
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->l:Ljava/util/ArrayList;

    .line 748
    .line 749
    iget-wide v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 750
    .line 751
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 752
    .line 753
    .line 754
    move-result-object v10

    .line 755
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    :goto_f
    iget v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 759
    .line 760
    const/16 v16, 0x1

    .line 761
    .line 762
    add-int/lit8 v10, v10, 0x1

    .line 763
    .line 764
    iput v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 765
    .line 766
    invoke-virtual {v0}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 767
    .line 768
    .line 769
    move-object/from16 v19, v15

    .line 770
    .line 771
    goto/16 :goto_c

    .line 772
    .line 773
    :cond_23
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 774
    .line 775
    .line 776
    move-result v2

    .line 777
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 778
    .line 779
    .line 780
    move-result v6

    .line 781
    move/from16 v9, v17

    .line 782
    .line 783
    :goto_10
    if-ge v9, v6, :cond_2d

    .line 784
    .line 785
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v10

    .line 789
    add-int/lit8 v9, v9, 0x1

    .line 790
    .line 791
    check-cast v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 792
    .line 793
    iget-boolean v11, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 794
    .line 795
    if-eqz v11, :cond_24

    .line 796
    .line 797
    goto/16 :goto_17

    .line 798
    .line 799
    :cond_24
    if-nez v10, :cond_25

    .line 800
    .line 801
    goto :goto_10

    .line 802
    :cond_25
    new-instance v11, Landroid/content/ContentValues;

    .line 803
    .line 804
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 805
    .line 806
    .line 807
    iget-boolean v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 808
    .line 809
    if-eqz v12, :cond_29

    .line 810
    .line 811
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 812
    .line 813
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 814
    .line 815
    .line 816
    move-result v12

    .line 817
    if-nez v12, :cond_27

    .line 818
    .line 819
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 820
    .line 821
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    move-result v12

    .line 825
    if-eqz v12, :cond_26

    .line 826
    .line 827
    goto :goto_11

    .line 828
    :cond_26
    new-instance v12, Ljava/lang/StringBuilder;

    .line 829
    .line 830
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .line 832
    .line 833
    iget-object v13, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 834
    .line 835
    invoke-static {v12, v13, v4}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v12

    .line 839
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 840
    .line 841
    goto :goto_12

    .line 842
    :cond_27
    :goto_11
    iput-object v4, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 843
    .line 844
    :goto_12
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 845
    .line 846
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 847
    .line 848
    .line 849
    move-result v12

    .line 850
    if-nez v12, :cond_28

    .line 851
    .line 852
    iget v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 853
    .line 854
    const/16 v16, 0x1

    .line 855
    .line 856
    add-int/lit8 v10, v10, 0x1

    .line 857
    .line 858
    iput v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 859
    .line 860
    invoke-virtual {v0}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 861
    .line 862
    .line 863
    goto :goto_10

    .line 864
    :cond_28
    invoke-static {v7}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    move-result-object v12

    .line 868
    iget-object v13, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 869
    .line 870
    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object v13

    .line 874
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v12

    .line 881
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 882
    .line 883
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v12

    .line 887
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 888
    .line 889
    iget-object v13, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 890
    .line 891
    invoke-static {v13, v12}, Lcom/mycompany/app/main/MainUtil;->j1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v12

    .line 895
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 896
    .line 897
    iget-object v12, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 898
    .line 899
    iget-object v13, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 900
    .line 901
    invoke-static {v12, v13}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v12

    .line 905
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 906
    .line 907
    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 911
    .line 912
    move-object/from16 v13, v18

    .line 913
    .line 914
    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    goto :goto_16

    .line 918
    :cond_29
    move-object/from16 v13, v18

    .line 919
    .line 920
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 921
    .line 922
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 923
    .line 924
    .line 925
    move-result v12

    .line 926
    if-nez v12, :cond_2b

    .line 927
    .line 928
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 929
    .line 930
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 931
    .line 932
    .line 933
    move-result v12

    .line 934
    if-eqz v12, :cond_2a

    .line 935
    .line 936
    goto :goto_13

    .line 937
    :cond_2a
    new-instance v12, Ljava/lang/StringBuilder;

    .line 938
    .line 939
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    .line 941
    .line 942
    iget-object v14, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 943
    .line 944
    invoke-static {v12, v14, v4}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v12

    .line 948
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 949
    .line 950
    goto :goto_14

    .line 951
    :cond_2b
    :goto_13
    iput-object v4, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 952
    .line 953
    :goto_14
    iget-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 954
    .line 955
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 956
    .line 957
    .line 958
    move-result v12

    .line 959
    if-nez v12, :cond_2c

    .line 960
    .line 961
    iget v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 962
    .line 963
    const/16 v16, 0x1

    .line 964
    .line 965
    add-int/lit8 v10, v10, 0x1

    .line 966
    .line 967
    iput v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 968
    .line 969
    invoke-virtual {v0}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 970
    .line 971
    .line 972
    :goto_15
    move-object/from16 v18, v13

    .line 973
    .line 974
    goto/16 :goto_10

    .line 975
    .line 976
    :cond_2c
    invoke-static {v7}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    move-result-object v12

    .line 980
    iget-object v14, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 981
    .line 982
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v14

    .line 986
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v12

    .line 993
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 994
    .line 995
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v12

    .line 999
    iput-object v12, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 1000
    .line 1001
    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .line 1003
    .line 1004
    :goto_16
    iget-object v12, v5, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 1005
    .line 1006
    iget-wide v14, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1007
    .line 1008
    invoke-static {v12, v14, v15, v11}, Lcom/mycompany/app/db/book/DbBookWeb;->n(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 1009
    .line 1010
    .line 1011
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->l:Ljava/util/ArrayList;

    .line 1012
    .line 1013
    iget-wide v14, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1014
    .line 1015
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v10

    .line 1019
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    .line 1021
    .line 1022
    iget v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 1023
    .line 1024
    const/16 v16, 0x1

    .line 1025
    .line 1026
    add-int/lit8 v10, v10, 0x1

    .line 1027
    .line 1028
    iput v10, v0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 1029
    .line 1030
    invoke-virtual {v0}, Lcom/mycompany/app/async/MyAsyncTask;->h()V

    .line 1031
    .line 1032
    .line 1033
    goto :goto_15

    .line 1034
    :cond_2d
    :goto_17
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookMove;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->c0:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->l:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-interface {v1, v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;->b(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookMove;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->o0:Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->b0:Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->c0:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->l:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-interface {v1, v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookMove$BookMoveListener;->b(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 21
    .line 22
    iget v3, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->j:I

    .line 23
    .line 24
    if-le v2, v3, :cond_3

    .line 25
    .line 26
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 27
    .line 28
    :cond_3
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 29
    .line 30
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 38
    .line 39
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->j:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 45
    .line 46
    iget v1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$DialogTask;->k:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
