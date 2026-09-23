.class Lcom/mycompany/app/list/book/ListBookHistory$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public final g:J

.field public h:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/ArrayList;

.field public l:[Z

.field public m:[I

.field public n:[Z

.field public o:I

.field public p:Z

.field public final q:Z

.field public final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookHistory;J)V
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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/list/book/ListBookHistory;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->g:J

    .line 21
    .line 22
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookHistory;->d:Z

    .line 23
    .line 24
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->q:Z

    .line 25
    .line 26
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookHistory;->e:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->r:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookHistory;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-interface {p1}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->f()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1c

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    move-object v3, v2

    .line 17
    check-cast v3, Lcom/mycompany/app/list/book/ListBookHistory;

    .line 18
    .line 19
    if-eqz v3, :cond_3b

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/book/ListBookHistory;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto/16 :goto_1c

    .line 28
    .line 29
    :cond_1
    sget v4, Lcom/mycompany/app/pref/PrefList;->L:I

    .line 30
    .line 31
    const/4 v5, 0x5

    .line 32
    if-ne v4, v5, :cond_2

    .line 33
    .line 34
    iget-object v4, v3, Lcom/mycompany/app/list/book/ListBookHistory;->f:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v4, :cond_2

    .line 37
    .line 38
    const-string v4, "yyyy.MM.dd HH:mm:ss"

    .line 39
    .line 40
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->C0(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iput-object v4, v3, Lcom/mycompany/app/list/book/ListBookHistory;->f:Ljava/lang/String;

    .line 45
    .line 46
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->r:Ljava/lang/String;

    .line 47
    .line 48
    iget-boolean v6, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->q:Z

    .line 49
    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    xor-int/2addr v7, v1

    .line 57
    :goto_0
    const/4 v8, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object v7, v3, Lcom/mycompany/app/list/book/ListBookHistory;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 60
    .line 61
    if-eqz v7, :cond_4

    .line 62
    .line 63
    invoke-interface {v7}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-eqz v7, :cond_4

    .line 68
    .line 69
    iget-boolean v8, v7, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 70
    .line 71
    if-eqz v8, :cond_4

    .line 72
    .line 73
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->p:Z

    .line 74
    .line 75
    invoke-virtual {v7}, Lcom/mycompany/app/main/MainListAdapter;->i()Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object v8, v7

    .line 80
    const/4 v7, 0x0

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    const/4 v7, 0x0

    .line 83
    goto :goto_0

    .line 84
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v11, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 90
    .line 91
    sget v11, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 92
    .line 93
    const-wide/16 v12, 0x0

    .line 94
    .line 95
    if-eqz v11, :cond_5

    .line 96
    .line 97
    sget-boolean v14, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 98
    .line 99
    if-eqz v14, :cond_6

    .line 100
    .line 101
    sget-wide v14, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 102
    .line 103
    cmp-long v14, v14, v12

    .line 104
    .line 105
    if-eqz v14, :cond_5

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    move/from16 v16, v1

    .line 109
    .line 110
    move-object/from16 v17, v2

    .line 111
    .line 112
    move-wide/from16 v18, v12

    .line 113
    .line 114
    goto/16 :goto_9

    .line 115
    .line 116
    :cond_6
    :goto_2
    const/4 v14, -0x1

    .line 117
    if-eq v11, v14, :cond_7

    .line 118
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v14

    .line 123
    sget v11, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 124
    .line 125
    move/from16 v16, v1

    .line 126
    .line 127
    move-object/from16 v17, v2

    .line 128
    .line 129
    int-to-long v1, v11

    .line 130
    const-wide/32 v18, 0x5265c00

    .line 131
    .line 132
    .line 133
    mul-long v1, v1, v18

    .line 134
    .line 135
    sub-long/2addr v14, v1

    .line 136
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 137
    .line 138
    if-eqz v1, :cond_8

    .line 139
    .line 140
    sget-wide v1, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 141
    .line 142
    cmp-long v11, v1, v14

    .line 143
    .line 144
    if-lez v11, :cond_8

    .line 145
    .line 146
    move-wide v14, v1

    .line 147
    goto :goto_3

    .line 148
    :cond_7
    move/from16 v16, v1

    .line 149
    .line 150
    move-object/from16 v17, v2

    .line 151
    .line 152
    move-wide v14, v12

    .line 153
    :cond_8
    :goto_3
    if-eqz v6, :cond_a

    .line 154
    .line 155
    if-eqz v7, :cond_9

    .line 156
    .line 157
    invoke-static/range {v17 .. v17}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_9
    const/4 v1, 0x0

    .line 165
    goto :goto_4

    .line 166
    :cond_a
    invoke-static/range {v17 .. v17}, Lcom/mycompany/app/data/book/DataBookHistory;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookHistory;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 171
    .line 172
    :goto_4
    if-eqz v1, :cond_11

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_11

    .line 179
    .line 180
    new-instance v2, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    .line 184
    .line 185
    if-eqz v8, :cond_b

    .line 186
    .line 187
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    goto :goto_5

    .line 192
    :cond_b
    const/4 v1, 0x0

    .line 193
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    move-wide/from16 v18, v12

    .line 198
    .line 199
    const/4 v12, 0x0

    .line 200
    const/4 v13, 0x0

    .line 201
    :goto_6
    if-ge v13, v11, :cond_12

    .line 202
    .line 203
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v20

    .line 207
    add-int/lit8 v13, v13, 0x1

    .line 208
    .line 209
    move-object/from16 v9, v20

    .line 210
    .line 211
    check-cast v9, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 212
    .line 213
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 214
    .line 215
    if-eqz v5, :cond_c

    .line 216
    .line 217
    goto/16 :goto_1c

    .line 218
    .line 219
    :cond_c
    move v5, v11

    .line 220
    iget-wide v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 221
    .line 222
    cmp-long v10, v10, v14

    .line 223
    .line 224
    if-gez v10, :cond_d

    .line 225
    .line 226
    :goto_7
    move v11, v5

    .line 227
    const/4 v5, 0x5

    .line 228
    goto :goto_6

    .line 229
    :cond_d
    if-ge v12, v1, :cond_e

    .line 230
    .line 231
    iget-wide v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 232
    .line 233
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    iput-boolean v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 242
    .line 243
    if-eqz v10, :cond_f

    .line 244
    .line 245
    add-int/lit8 v12, v12, 0x1

    .line 246
    .line 247
    goto :goto_8

    .line 248
    :cond_e
    const/4 v10, 0x0

    .line 249
    iput-boolean v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 250
    .line 251
    :cond_f
    :goto_8
    if-nez v6, :cond_10

    .line 252
    .line 253
    iget-object v10, v3, Lcom/mycompany/app/list/book/ListBookHistory;->f:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v9, v10}, Lcom/mycompany/app/list/book/ListBookHistory;->q(Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_10
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_11
    move-wide/from16 v18, v12

    .line 265
    .line 266
    goto :goto_a

    .line 267
    :goto_9
    move-wide/from16 v14, v18

    .line 268
    .line 269
    :cond_12
    :goto_a
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 270
    .line 271
    if-eqz v1, :cond_13

    .line 272
    .line 273
    goto/16 :goto_1c

    .line 274
    .line 275
    :cond_13
    if-nez v6, :cond_22

    .line 276
    .line 277
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_22

    .line 284
    .line 285
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 286
    .line 287
    if-eqz v1, :cond_22

    .line 288
    .line 289
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 290
    .line 291
    if-eqz v1, :cond_14

    .line 292
    .line 293
    sget-wide v8, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 294
    .line 295
    cmp-long v2, v8, v18

    .line 296
    .line 297
    if-eqz v2, :cond_22

    .line 298
    .line 299
    :cond_14
    const-string v11, "_secret=? AND _time>?"

    .line 300
    .line 301
    if-eqz v1, :cond_15

    .line 302
    .line 303
    const-string v1, "1"

    .line 304
    .line 305
    goto :goto_b

    .line 306
    :cond_15
    const-string v1, "0"

    .line 307
    .line 308
    :goto_b
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    :try_start_0
    invoke-static/range {v17 .. v17}, Lcom/mycompany/app/db/book/DbBookHistory;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookHistory;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    const-string v9, "DbBookHistory_table"

    .line 325
    .line 326
    const/4 v10, 0x0

    .line 327
    const/4 v13, 0x0

    .line 328
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 329
    .line 330
    .line 331
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    if-eqz v1, :cond_20

    .line 333
    .line 334
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_20

    .line 339
    .line 340
    const-string v2, "_id"

    .line 341
    .line 342
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    const-string v5, "_path"

    .line 347
    .line 348
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    const-string v8, "_title"

    .line 353
    .line 354
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    move-result v8

    .line 358
    const-string v9, "_time"

    .line 359
    .line 360
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    :cond_16
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result v11

    .line 372
    if-eqz v11, :cond_17

    .line 373
    .line 374
    const/4 v13, 0x5

    .line 375
    goto/16 :goto_10

    .line 376
    .line 377
    :cond_17
    const/4 v11, 0x0

    .line 378
    invoke-static {v10, v11}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v12

    .line 382
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result v11

    .line 386
    if-eqz v11, :cond_1d

    .line 387
    .line 388
    if-nez v10, :cond_18

    .line 389
    .line 390
    :goto_c
    const/4 v11, 0x0

    .line 391
    const/4 v12, 0x0

    .line 392
    const/4 v13, 0x5

    .line 393
    goto :goto_d

    .line 394
    :cond_18
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 395
    .line 396
    .line 397
    move-result v11

    .line 398
    const/4 v12, 0x6

    .line 399
    if-ge v11, v12, :cond_19

    .line 400
    .line 401
    goto :goto_c

    .line 402
    :cond_19
    const/16 v11, 0x2f

    .line 403
    .line 404
    const/4 v13, 0x5

    .line 405
    invoke-virtual {v10, v11, v13}, Ljava/lang/String;->indexOf(II)I

    .line 406
    .line 407
    .line 408
    move-result v11

    .line 409
    if-ge v11, v13, :cond_1a

    .line 410
    .line 411
    const/4 v11, 0x0

    .line 412
    const/4 v12, 0x0

    .line 413
    goto :goto_d

    .line 414
    :cond_1a
    const/4 v12, 0x0

    .line 415
    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v11

    .line 419
    :goto_d
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 420
    .line 421
    .line 422
    move-result v14

    .line 423
    if-eqz v14, :cond_1b

    .line 424
    .line 425
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 426
    .line 427
    .line 428
    move-result v11

    .line 429
    const/16 v14, 0x14

    .line 430
    .line 431
    if-le v11, v14, :cond_1c

    .line 432
    .line 433
    invoke-virtual {v10, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v11

    .line 437
    :cond_1b
    move-object v12, v11

    .line 438
    goto :goto_e

    .line 439
    :cond_1c
    move-object v12, v10

    .line 440
    goto :goto_e

    .line 441
    :cond_1d
    const/4 v13, 0x5

    .line 442
    :goto_e
    new-instance v11, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 443
    .line 444
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 448
    .line 449
    .line 450
    move-result-wide v14

    .line 451
    iput-wide v14, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 452
    .line 453
    iput-object v10, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 454
    .line 455
    invoke-static {v10}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v14

    .line 459
    iput-object v14, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 460
    .line 461
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 462
    .line 463
    .line 464
    move-result-wide v14

    .line 465
    iput-wide v14, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 466
    .line 467
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v14

    .line 471
    iput-object v14, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 472
    .line 473
    const/16 v14, 0xb

    .line 474
    .line 475
    iput v14, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 476
    .line 477
    const v14, -0x70708

    .line 478
    .line 479
    .line 480
    iput v14, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 481
    .line 482
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 483
    .line 484
    const-string v12, "file:///"

    .line 485
    .line 486
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 487
    .line 488
    .line 489
    move-result v12

    .line 490
    if-eqz v12, :cond_1f

    .line 491
    .line 492
    const-string v12, "file:///android_asset/shortcut.html"

    .line 493
    .line 494
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v10

    .line 498
    if-eqz v10, :cond_1e

    .line 499
    .line 500
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_24:I

    .line 501
    .line 502
    iput v10, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 503
    .line 504
    goto :goto_f

    .line 505
    :cond_1e
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_offline_pin_black_24:I

    .line 506
    .line 507
    iput v10, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 508
    .line 509
    goto :goto_f

    .line 510
    :cond_1f
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 511
    .line 512
    iput v10, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 513
    .line 514
    :goto_f
    iget-object v10, v3, Lcom/mycompany/app/list/book/ListBookHistory;->f:Ljava/lang/String;

    .line 515
    .line 516
    invoke-static {v11, v10}, Lcom/mycompany/app/list/book/ListBookHistory;->q(Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 520
    .line 521
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    :goto_10
    iget-boolean v10, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 525
    .line 526
    if-nez v10, :cond_20

    .line 527
    .line 528
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 529
    .line 530
    .line 531
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 532
    if-nez v10, :cond_16

    .line 533
    .line 534
    goto :goto_11

    .line 535
    :catch_0
    const/4 v1, 0x0

    .line 536
    :catch_1
    :cond_20
    :goto_11
    if-eqz v1, :cond_21

    .line 537
    .line 538
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 539
    .line 540
    .line 541
    :cond_21
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 542
    .line 543
    if-eqz v1, :cond_22

    .line 544
    .line 545
    goto/16 :goto_1c

    .line 546
    .line 547
    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .line 551
    .line 552
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 553
    .line 554
    new-instance v1, Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .line 558
    .line 559
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->k:Ljava/util/ArrayList;

    .line 560
    .line 561
    if-nez v6, :cond_23

    .line 562
    .line 563
    sget v1, Lcom/mycompany/app/pref/PrefList;->L:I

    .line 564
    .line 565
    if-eqz v1, :cond_23

    .line 566
    .line 567
    move/from16 v10, v16

    .line 568
    .line 569
    goto :goto_12

    .line 570
    :cond_23
    const/4 v10, 0x0

    .line 571
    :goto_12
    if-eqz v10, :cond_24

    .line 572
    .line 573
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 574
    .line 575
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 576
    .line 577
    .line 578
    const/4 v11, 0x0

    .line 579
    iput v11, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 580
    .line 581
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 582
    .line 583
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    :cond_24
    if-eqz v7, :cond_2b

    .line 587
    .line 588
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    if-nez v1, :cond_2b

    .line 595
    .line 596
    new-instance v1, Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .line 600
    .line 601
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 604
    .line 605
    .line 606
    move-result v5

    .line 607
    const/4 v7, 0x0

    .line 608
    :cond_25
    :goto_13
    if-ge v7, v5, :cond_2a

    .line 609
    .line 610
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v8

    .line 614
    add-int/lit8 v7, v7, 0x1

    .line 615
    .line 616
    check-cast v8, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 617
    .line 618
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 619
    .line 620
    if-eqz v9, :cond_26

    .line 621
    .line 622
    goto/16 :goto_1c

    .line 623
    .line 624
    :cond_26
    iget-object v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 625
    .line 626
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 627
    .line 628
    .line 629
    move-result v9

    .line 630
    if-eqz v9, :cond_27

    .line 631
    .line 632
    goto :goto_13

    .line 633
    :cond_27
    iget-object v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 634
    .line 635
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 636
    .line 637
    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v9

    .line 641
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 642
    .line 643
    .line 644
    move-result v9

    .line 645
    if-eqz v9, :cond_28

    .line 646
    .line 647
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    goto :goto_13

    .line 651
    :cond_28
    iget-object v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 652
    .line 653
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 654
    .line 655
    .line 656
    move-result v9

    .line 657
    if-eqz v9, :cond_29

    .line 658
    .line 659
    goto :goto_13

    .line 660
    :cond_29
    iget-object v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 661
    .line 662
    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v9

    .line 666
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 667
    .line 668
    .line 669
    move-result v9

    .line 670
    if-eqz v9, :cond_25

    .line 671
    .line 672
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    goto :goto_13

    .line 676
    :cond_2a
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 677
    .line 678
    :cond_2b
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 679
    .line 680
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    if-nez v1, :cond_36

    .line 685
    .line 686
    if-nez v6, :cond_2c

    .line 687
    .line 688
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 689
    .line 690
    sget v2, Lcom/mycompany/app/pref/PrefList;->L:I

    .line 691
    .line 692
    sget v4, Lcom/mycompany/app/pref/PrefList;->M:I

    .line 693
    .line 694
    sget-boolean v5, Lcom/mycompany/app/pref/PrefList;->N:Z

    .line 695
    .line 696
    invoke-static {v2, v4, v5}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    :try_start_2
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 701
    .line 702
    .line 703
    :catch_2
    :cond_2c
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->p:Z

    .line 704
    .line 705
    if-eqz v1, :cond_2d

    .line 706
    .line 707
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 708
    .line 709
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    new-array v2, v1, [Z

    .line 714
    .line 715
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->n:[Z

    .line 716
    .line 717
    goto :goto_14

    .line 718
    :cond_2d
    const/4 v1, 0x0

    .line 719
    :goto_14
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 720
    .line 721
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 722
    .line 723
    .line 724
    move-result v9

    .line 725
    const/4 v4, 0x0

    .line 726
    const/4 v5, 0x0

    .line 727
    const/4 v6, 0x0

    .line 728
    const/4 v7, 0x0

    .line 729
    const/4 v8, 0x0

    .line 730
    const/4 v11, 0x0

    .line 731
    :goto_15
    if-ge v5, v9, :cond_35

    .line 732
    .line 733
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v12

    .line 737
    add-int/lit8 v13, v5, 0x1

    .line 738
    .line 739
    check-cast v12, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 740
    .line 741
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 742
    .line 743
    if-eqz v5, :cond_2e

    .line 744
    .line 745
    goto/16 :goto_1c

    .line 746
    .line 747
    :cond_2e
    if-nez v12, :cond_2f

    .line 748
    .line 749
    move v5, v13

    .line 750
    goto :goto_15

    .line 751
    :cond_2f
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->k:Ljava/util/ArrayList;

    .line 752
    .line 753
    iget-wide v14, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 754
    .line 755
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 756
    .line 757
    .line 758
    move-result-object v14

    .line 759
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    .line 761
    .line 762
    if-eqz v10, :cond_32

    .line 763
    .line 764
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 765
    .line 766
    .line 767
    move-result v5

    .line 768
    if-nez v5, :cond_30

    .line 769
    .line 770
    iget-object v5, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 771
    .line 772
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    move-result v5

    .line 776
    if-nez v5, :cond_30

    .line 777
    .line 778
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 779
    .line 780
    move-object v5, v11

    .line 781
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookHistory;->p(Lcom/mycompany/app/list/book/ListBookHistory;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 782
    .line 783
    .line 784
    const/4 v4, 0x0

    .line 785
    const/4 v6, 0x0

    .line 786
    const/4 v7, 0x0

    .line 787
    :cond_30
    iget-object v5, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 788
    .line 789
    add-int/lit8 v6, v6, 0x1

    .line 790
    .line 791
    iget-object v11, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 792
    .line 793
    if-eqz v11, :cond_31

    .line 794
    .line 795
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 796
    .line 797
    .line 798
    move-result v11

    .line 799
    goto :goto_16

    .line 800
    :cond_31
    const/4 v11, 0x0

    .line 801
    :goto_16
    iput v11, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 802
    .line 803
    :goto_17
    move-object v11, v5

    .line 804
    goto :goto_18

    .line 805
    :cond_32
    move-object v5, v11

    .line 806
    const/4 v11, 0x0

    .line 807
    iput v11, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 808
    .line 809
    goto :goto_17

    .line 810
    :goto_18
    iput v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 811
    .line 812
    iput v8, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 813
    .line 814
    iget-wide v14, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 815
    .line 816
    move-object/from16 v18, v2

    .line 817
    .line 818
    move-object/from16 v19, v3

    .line 819
    .line 820
    iget-wide v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->g:J

    .line 821
    .line 822
    cmp-long v2, v14, v2

    .line 823
    .line 824
    if-nez v2, :cond_33

    .line 825
    .line 826
    iput-object v12, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->h:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 827
    .line 828
    :cond_33
    iget-boolean v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 829
    .line 830
    if-eqz v2, :cond_34

    .line 831
    .line 832
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->n:[Z

    .line 833
    .line 834
    if-eqz v2, :cond_34

    .line 835
    .line 836
    if-ge v8, v1, :cond_34

    .line 837
    .line 838
    aput-boolean v16, v2, v8

    .line 839
    .line 840
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->o:I

    .line 841
    .line 842
    add-int/lit8 v2, v2, 0x1

    .line 843
    .line 844
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->o:I

    .line 845
    .line 846
    add-int/lit8 v7, v7, 0x1

    .line 847
    .line 848
    :cond_34
    add-int/lit8 v4, v4, 0x1

    .line 849
    .line 850
    add-int/lit8 v8, v8, 0x1

    .line 851
    .line 852
    const/4 v2, 0x0

    .line 853
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 854
    .line 855
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 856
    .line 857
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 858
    .line 859
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 860
    .line 861
    move v5, v13

    .line 862
    move-object/from16 v2, v18

    .line 863
    .line 864
    move-object/from16 v3, v19

    .line 865
    .line 866
    goto/16 :goto_15

    .line 867
    .line 868
    :cond_35
    move-object/from16 v19, v3

    .line 869
    .line 870
    move-object v5, v11

    .line 871
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    if-nez v1, :cond_36

    .line 876
    .line 877
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 878
    .line 879
    move-object/from16 v3, v19

    .line 880
    .line 881
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookHistory;->p(Lcom/mycompany/app/list/book/ListBookHistory;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 882
    .line 883
    .line 884
    :cond_36
    if-nez v10, :cond_38

    .line 885
    .line 886
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 887
    .line 888
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 889
    .line 890
    .line 891
    const/4 v11, 0x0

    .line 892
    iput v11, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 893
    .line 894
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 895
    .line 896
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 897
    .line 898
    .line 899
    move-result v2

    .line 900
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 901
    .line 902
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->o:I

    .line 903
    .line 904
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 905
    .line 906
    if-ne v3, v2, :cond_37

    .line 907
    .line 908
    move/from16 v2, v16

    .line 909
    .line 910
    goto :goto_19

    .line 911
    :cond_37
    move v2, v11

    .line 912
    :goto_19
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 913
    .line 914
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 915
    .line 916
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    goto :goto_1a

    .line 920
    :cond_38
    const/4 v11, 0x0

    .line 921
    :goto_1a
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->p:Z

    .line 922
    .line 923
    if-eqz v1, :cond_3a

    .line 924
    .line 925
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 926
    .line 927
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    if-nez v1, :cond_3a

    .line 932
    .line 933
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 934
    .line 935
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 936
    .line 937
    .line 938
    move-result v1

    .line 939
    new-array v2, v1, [Z

    .line 940
    .line 941
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->l:[Z

    .line 942
    .line 943
    new-array v1, v1, [I

    .line 944
    .line 945
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->m:[I

    .line 946
    .line 947
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 948
    .line 949
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 950
    .line 951
    .line 952
    move-result v2

    .line 953
    move v10, v11

    .line 954
    :goto_1b
    if-ge v10, v2, :cond_3a

    .line 955
    .line 956
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v3

    .line 960
    add-int/lit8 v10, v10, 0x1

    .line 961
    .line 962
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 963
    .line 964
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 965
    .line 966
    if-eqz v4, :cond_39

    .line 967
    .line 968
    goto :goto_1c

    .line 969
    :cond_39
    iget v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 970
    .line 971
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->l:[Z

    .line 972
    .line 973
    iget-boolean v6, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 974
    .line 975
    aput-boolean v6, v5, v4

    .line 976
    .line 977
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->m:[I

    .line 978
    .line 979
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 980
    .line 981
    aput v3, v5, v4

    .line 982
    .line 983
    goto :goto_1b

    .line 984
    :cond_3a
    invoke-static/range {v17 .. v17}, Lcom/mycompany/app/data/book/DataBookHistory;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookHistory;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 989
    .line 990
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->k:Ljava/util/ArrayList;

    .line 991
    .line 992
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 993
    .line 994
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 995
    .line 996
    :cond_3b
    :goto_1c
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookHistory;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory;->c:Lcom/mycompany/app/list/book/ListBookHistory$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookHistory;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->a()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->h:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->k:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->l:[Z

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->m:[I

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->n:[Z

    .line 42
    .line 43
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookHistory;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookHistory;->c:Lcom/mycompany/app/list/book/ListBookHistory$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookHistory;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 24
    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    new-instance v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    sget v3, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 33
    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    sget-wide v3, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 41
    .line 42
    const-wide/16 v5, 0x0

    .line 43
    .line 44
    cmp-long v3, v3, v5

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 53
    .line 54
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->l:[Z

    .line 57
    .line 58
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 59
    .line 60
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->m:[I

    .line 61
    .line 62
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 63
    .line 64
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->n:[Z

    .line 65
    .line 66
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 67
    .line 68
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->o:I

    .line 69
    .line 70
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 71
    .line 72
    const/4 v3, -0x1

    .line 73
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->k:I

    .line 74
    .line 75
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 76
    .line 77
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->h:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 78
    .line 79
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 80
    .line 81
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->p:Z

    .line 82
    .line 83
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 84
    .line 85
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->r:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 88
    .line 89
    :cond_4
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 90
    .line 91
    .line 92
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->h:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->i:Ljava/util/ArrayList;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->j:Ljava/util/ArrayList;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->k:Ljava/util/ArrayList;

    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->l:[Z

    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->m:[I

    .line 103
    .line 104
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookHistory$ListTask;->n:[Z

    .line 105
    .line 106
    return-void
.end method
