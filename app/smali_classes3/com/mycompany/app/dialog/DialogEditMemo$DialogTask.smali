.class Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogEditMemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditMemo;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;->g:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    :cond_0
    :goto_0
    move-object v2, v0

    .line 8
    goto/16 :goto_18

    .line 9
    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogEditMemo;->a0:Landroid/content/Context;

    .line 24
    .line 25
    iget v3, v1, Lcom/mycompany/app/dialog/DialogEditMemo;->c0:I

    .line 26
    .line 27
    const/16 v4, 0x18

    .line 28
    .line 29
    const-string v5, "_time"

    .line 30
    .line 31
    const-string v6, "_id"

    .line 32
    .line 33
    const-string v8, "_text"

    .line 34
    .line 35
    iget-object v12, v0, Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;->g:Ljava/lang/String;

    .line 36
    .line 37
    if-ne v3, v4, :cond_17

    .line 38
    .line 39
    iget-wide v3, v1, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 40
    .line 41
    iget-boolean v13, v1, Lcom/mycompany/app/dialog/DialogEditMemo;->h0:Z

    .line 42
    .line 43
    iget-object v14, v1, Lcom/mycompany/app/dialog/DialogEditMemo;->i0:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v15, v1, Lcom/mycompany/app/dialog/DialogEditMemo;->j0:Ljava/lang/String;

    .line 46
    .line 47
    sget-object v16, Lcom/mycompany/app/db/book/DbBookDc;->c:Lcom/mycompany/app/db/book/DbBookDc;

    .line 48
    .line 49
    const-wide/16 v16, 0x0

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    if-eqz v11, :cond_4

    .line 58
    .line 59
    :cond_3
    move-object/from16 v21, v1

    .line 60
    .line 61
    move-object/from16 v20, v2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookDc;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDc;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    const-string v10, "DbBookDc_table"

    .line 73
    .line 74
    invoke-static {v11, v10, v3, v4}, Lcom/mycompany/app/db/DbUtil;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    const-string v9, "_name"

    .line 79
    .line 80
    move/from16 v19, v13

    .line 81
    .line 82
    const-string v13, "_path"

    .line 83
    .line 84
    const-string v0, "_isip"

    .line 85
    .line 86
    if-eqz v7, :cond_7

    .line 87
    .line 88
    move-object/from16 v20, v2

    .line 89
    .line 90
    new-instance v2, Landroid/content/ContentValues;

    .line 91
    .line 92
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .line 94
    .line 95
    move-object/from16 v21, v1

    .line 96
    .line 97
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2, v9, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {v2, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 v1, 0x1

    .line 120
    if-ne v7, v1, :cond_6

    .line 121
    .line 122
    invoke-static {v11, v10, v2, v3, v4}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v3

    .line 130
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v11, v10, v2}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    goto :goto_1

    .line 142
    :cond_7
    move-object/from16 v21, v1

    .line 143
    .line 144
    move-object/from16 v20, v2

    .line 145
    .line 146
    :goto_1
    if-eqz v11, :cond_8

    .line 147
    .line 148
    cmp-long v1, v3, v16

    .line 149
    .line 150
    if-nez v1, :cond_9

    .line 151
    .line 152
    :cond_8
    :goto_2
    const/4 v0, 0x0

    .line 153
    goto/16 :goto_a

    .line 154
    .line 155
    :cond_9
    const/4 v1, 0x0

    .line 156
    :try_start_0
    invoke-static {v11, v10, v1, v3, v4}, Lcom/mycompany/app/db/DbUtil;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    .line 157
    .line 158
    .line 159
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 160
    if-eqz v2, :cond_d

    .line 161
    .line 162
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_d

    .line 167
    .line 168
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-nez v7, :cond_d

    .line 201
    .line 202
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 203
    .line 204
    .line 205
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 206
    const/4 v7, 0x1

    .line 207
    if-ne v0, v7, :cond_a

    .line 208
    .line 209
    const/4 v9, 0x1

    .line 210
    goto :goto_3

    .line 211
    :cond_a
    const/4 v9, 0x0

    .line 212
    :goto_3
    if-nez v9, :cond_b

    .line 213
    .line 214
    :try_start_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    goto :goto_5

    .line 219
    :catch_0
    move-object v7, v2

    .line 220
    const/4 v0, 0x0

    .line 221
    :goto_4
    const/16 v18, 0x0

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_b
    const/4 v4, 0x0

    .line 225
    :goto_5
    :try_start_3
    new-instance v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 226
    .line 227
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 228
    .line 229
    .line 230
    :try_start_4
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 231
    .line 232
    .line 233
    move-result-wide v10

    .line 234
    iput-wide v10, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 235
    .line 236
    iput v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 237
    .line 238
    iput-object v3, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v4, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->j:Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {v3, v4, v9}, Lcom/mycompany/app/db/book/DbBookDc;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    iput-object v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 247
    .line 248
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 253
    .line 254
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 255
    .line 256
    .line 257
    move-result-wide v0

    .line 258
    iput-wide v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 259
    .line 260
    const/4 v0, 0x0

    .line 261
    :try_start_5
    iput v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 262
    .line 263
    const v1, -0x70708

    .line 264
    .line 265
    .line 266
    iput v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 267
    .line 268
    if-eqz v9, :cond_c

    .line 269
    .line 270
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_black_24:I

    .line 271
    .line 272
    iput v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :catch_1
    :goto_6
    move-object/from16 v18, v7

    .line 276
    .line 277
    move-object v7, v2

    .line 278
    goto :goto_8

    .line 279
    :cond_c
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_black_24:I

    .line 280
    .line 281
    iput v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 282
    .line 283
    :goto_7
    invoke-static {v7}, Lcom/mycompany/app/list/book/ListBookDc;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 284
    .line 285
    .line 286
    goto :goto_9

    .line 287
    :catch_2
    const/4 v0, 0x0

    .line 288
    goto :goto_6

    .line 289
    :catch_3
    const/4 v0, 0x0

    .line 290
    move-object v7, v2

    .line 291
    goto :goto_4

    .line 292
    :cond_d
    const/4 v0, 0x0

    .line 293
    const/4 v7, 0x0

    .line 294
    goto :goto_9

    .line 295
    :catch_4
    const/4 v0, 0x0

    .line 296
    const/4 v7, 0x0

    .line 297
    goto :goto_4

    .line 298
    :goto_8
    move-object v2, v7

    .line 299
    move-object/from16 v7, v18

    .line 300
    .line 301
    :goto_9
    if-eqz v2, :cond_e

    .line 302
    .line 303
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 304
    .line 305
    .line 306
    goto :goto_b

    .line 307
    :goto_a
    const/4 v7, 0x0

    .line 308
    :cond_e
    :goto_b
    if-eqz v7, :cond_15

    .line 309
    .line 310
    iget-wide v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 311
    .line 312
    move-object/from16 v4, v21

    .line 313
    .line 314
    iput-wide v1, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 315
    .line 316
    iget-boolean v1, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->g0:Z

    .line 317
    .line 318
    if-eqz v1, :cond_f

    .line 319
    .line 320
    invoke-static/range {v20 .. v20}, Lcom/mycompany/app/data/book/DataBookDc;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDc;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v1, v7}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 325
    .line 326
    .line 327
    :cond_f
    invoke-static/range {v20 .. v20}, Lcom/mycompany/app/data/book/DataBookDc;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDc;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    iget-object v2, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->i0:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-nez v3, :cond_16

    .line 341
    .line 342
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    if-eqz v3, :cond_10

    .line 347
    .line 348
    goto :goto_e

    .line 349
    :cond_10
    :try_start_6
    iget-object v3, v1, Lcom/mycompany/app/data/book/DataBookDc;->c:Ljava/util/ArrayList;

    .line 350
    .line 351
    if-nez v3, :cond_11

    .line 352
    .line 353
    new-instance v0, Ljava/util/ArrayList;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .line 357
    .line 358
    iput-object v0, v1, Lcom/mycompany/app/data/book/DataBookDc;->c:Ljava/util/ArrayList;

    .line 359
    .line 360
    goto :goto_d

    .line 361
    :cond_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    move v10, v0

    .line 366
    :cond_12
    :goto_c
    if-ge v10, v4, :cond_14

    .line 367
    .line 368
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    add-int/lit8 v10, v10, 0x1

    .line 373
    .line 374
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 375
    .line 376
    if-nez v0, :cond_13

    .line 377
    .line 378
    goto :goto_c

    .line 379
    :cond_13
    iget-object v5, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-eqz v5, :cond_12

    .line 386
    .line 387
    iput-object v12, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 388
    .line 389
    goto :goto_e

    .line 390
    :cond_14
    :goto_d
    new-instance v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 391
    .line 392
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 393
    .line 394
    .line 395
    iput-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 396
    .line 397
    iput-object v12, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookDc;->c:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 402
    .line 403
    .line 404
    goto :goto_e

    .line 405
    :cond_15
    move-wide/from16 v0, v16

    .line 406
    .line 407
    move-object/from16 v4, v21

    .line 408
    .line 409
    iput-wide v0, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 410
    .line 411
    :catch_5
    :cond_16
    :goto_e
    move-object/from16 v2, p0

    .line 412
    .line 413
    goto/16 :goto_18

    .line 414
    .line 415
    :cond_17
    move-object v4, v1

    .line 416
    move-object/from16 v20, v2

    .line 417
    .line 418
    const/16 v0, 0x1a

    .line 419
    .line 420
    if-ne v3, v0, :cond_1a

    .line 421
    .line 422
    invoke-static {v12}, Lcom/mycompany/app/db/book/DbBookUser;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    iget-wide v2, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 431
    .line 432
    move-object/from16 v7, v20

    .line 433
    .line 434
    invoke-static {v7, v2, v3, v1, v12}, Lcom/mycompany/app/db/book/DbBookUser;->f(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    if-eqz v1, :cond_19

    .line 439
    .line 440
    iget-wide v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 441
    .line 442
    iput-wide v2, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 443
    .line 444
    invoke-static {v7}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    iget-wide v3, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 449
    .line 450
    invoke-virtual {v2, v3, v4}, Lcom/mycompany/app/data/book/DataBookList;->e(J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    if-nez v2, :cond_18

    .line 455
    .line 456
    goto :goto_f

    .line 457
    :cond_18
    iput-object v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 458
    .line 459
    iput-object v12, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 460
    .line 461
    iput-object v0, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 462
    .line 463
    :goto_f
    invoke-static {v7}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v0, v1}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 468
    .line 469
    .line 470
    const-string v0, "sb_user_filter_path"

    .line 471
    .line 472
    invoke-static {v7, v0, v0}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-static {v7}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-virtual {v1, v0}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :cond_19
    const-wide/16 v0, 0x0

    .line 485
    .line 486
    iput-wide v0, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 487
    .line 488
    return-void

    .line 489
    :cond_1a
    move-object/from16 v7, v20

    .line 490
    .line 491
    const/16 v0, 0x24

    .line 492
    .line 493
    if-ne v3, v0, :cond_22

    .line 494
    .line 495
    iget-wide v0, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 496
    .line 497
    sget-object v2, Lcom/mycompany/app/db/book/DbBookAgent;->c:Lcom/mycompany/app/db/book/DbBookAgent;

    .line 498
    .line 499
    move-object/from16 v2, p0

    .line 500
    .line 501
    if-eqz v7, :cond_1e

    .line 502
    .line 503
    iget-object v3, v2, Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;->f:Ljava/lang/String;

    .line 504
    .line 505
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 506
    .line 507
    .line 508
    move-result v5

    .line 509
    if-nez v5, :cond_1e

    .line 510
    .line 511
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 512
    .line 513
    .line 514
    move-result v5

    .line 515
    if-eqz v5, :cond_1b

    .line 516
    .line 517
    goto :goto_11

    .line 518
    :cond_1b
    invoke-static {v7}, Lcom/mycompany/app/db/book/DbBookAgent;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAgent;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    const-string v7, "DbBookAgent_table"

    .line 527
    .line 528
    invoke-static {v5, v7, v0, v1}, Lcom/mycompany/app/db/DbUtil;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)I

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-eqz v9, :cond_1d

    .line 533
    .line 534
    const-string v10, "_title"

    .line 535
    .line 536
    invoke-static {v10, v3, v8, v12}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    const/4 v8, 0x1

    .line 541
    if-ne v9, v8, :cond_1c

    .line 542
    .line 543
    invoke-static {v5, v7, v3, v0, v1}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 544
    .line 545
    .line 546
    goto :goto_10

    .line 547
    :cond_1c
    invoke-static {v5, v7, v3}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 548
    .line 549
    .line 550
    move-result-wide v0

    .line 551
    :cond_1d
    :goto_10
    const-wide/16 v16, 0x0

    .line 552
    .line 553
    cmp-long v3, v0, v16

    .line 554
    .line 555
    if-nez v3, :cond_1f

    .line 556
    .line 557
    :cond_1e
    :goto_11
    const-wide/16 v10, 0x0

    .line 558
    .line 559
    goto :goto_13

    .line 560
    :cond_1f
    const/4 v3, 0x0

    .line 561
    :try_start_7
    invoke-static {v5, v7, v3, v0, v1}, Lcom/mycompany/app/db/DbUtil;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    .line 562
    .line 563
    .line 564
    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 565
    if-eqz v7, :cond_20

    .line 566
    .line 567
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    if-eqz v0, :cond_20

    .line 572
    .line 573
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 578
    .line 579
    .line 580
    move-result-wide v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 581
    goto :goto_12

    .line 582
    :catch_6
    const/4 v7, 0x0

    .line 583
    :catch_7
    :cond_20
    const-wide/16 v10, 0x0

    .line 584
    .line 585
    :goto_12
    if-eqz v7, :cond_21

    .line 586
    .line 587
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 588
    .line 589
    .line 590
    :cond_21
    :goto_13
    iput-wide v10, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 591
    .line 592
    goto/16 :goto_18

    .line 593
    .line 594
    :cond_22
    move-object/from16 v2, p0

    .line 595
    .line 596
    iget-wide v0, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 597
    .line 598
    sget-object v3, Lcom/mycompany/app/db/book/DbBookMemo;->c:Lcom/mycompany/app/db/book/DbBookMemo;

    .line 599
    .line 600
    if-eqz v7, :cond_23

    .line 601
    .line 602
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-eqz v3, :cond_24

    .line 607
    .line 608
    :cond_23
    const-wide/16 v16, 0x0

    .line 609
    .line 610
    goto :goto_15

    .line 611
    :cond_24
    invoke-static {v7}, Lcom/mycompany/app/db/book/DbBookMemo;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookMemo;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    const-string v7, "DbBookMemo_table"

    .line 620
    .line 621
    invoke-static {v3, v7, v0, v1}, Lcom/mycompany/app/db/DbUtil;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)I

    .line 622
    .line 623
    .line 624
    move-result v9

    .line 625
    if-eqz v9, :cond_26

    .line 626
    .line 627
    invoke-static {v8, v12}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 628
    .line 629
    .line 630
    move-result-object v8

    .line 631
    const/4 v10, 0x1

    .line 632
    if-ne v9, v10, :cond_25

    .line 633
    .line 634
    invoke-static {v3, v7, v8, v0, v1}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 635
    .line 636
    .line 637
    goto :goto_14

    .line 638
    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 639
    .line 640
    .line 641
    move-result-wide v0

    .line 642
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 643
    .line 644
    .line 645
    move-result-object v9

    .line 646
    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 647
    .line 648
    .line 649
    const-string v5, "_order"

    .line 650
    .line 651
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 656
    .line 657
    .line 658
    invoke-static {v3, v7, v8}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 659
    .line 660
    .line 661
    move-result-wide v0

    .line 662
    :cond_26
    :goto_14
    const-wide/16 v16, 0x0

    .line 663
    .line 664
    cmp-long v5, v0, v16

    .line 665
    .line 666
    if-nez v5, :cond_27

    .line 667
    .line 668
    :goto_15
    move-wide/from16 v10, v16

    .line 669
    .line 670
    goto :goto_17

    .line 671
    :cond_27
    const/4 v5, 0x0

    .line 672
    :try_start_9
    invoke-static {v3, v7, v5, v0, v1}, Lcom/mycompany/app/db/DbUtil;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    .line 673
    .line 674
    .line 675
    move-result-object v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 676
    if-eqz v7, :cond_28

    .line 677
    .line 678
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 679
    .line 680
    .line 681
    move-result v0

    .line 682
    if-eqz v0, :cond_28

    .line 683
    .line 684
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 689
    .line 690
    .line 691
    move-result-wide v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 692
    goto :goto_16

    .line 693
    :catch_8
    move-object v7, v5

    .line 694
    :catch_9
    :cond_28
    move-wide/from16 v10, v16

    .line 695
    .line 696
    :goto_16
    if-eqz v7, :cond_29

    .line 697
    .line 698
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 699
    .line 700
    .line 701
    :cond_29
    :goto_17
    iput-wide v10, v4, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 702
    .line 703
    :goto_18
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogEditMemo;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->r0:Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;

    .line 17
    .line 18
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->b0:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 19
    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->c0:I

    .line 23
    .line 24
    const/16 v4, 0x18

    .line 25
    .line 26
    if-ne v3, v4, :cond_2

    .line 27
    .line 28
    iget-wide v3, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->i0:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogEditMemo$DialogTask;->g:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v2, v3, v4, v1, v5}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-wide v3, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 39
    .line 40
    invoke-interface {v2, v3, v4, v1, v1}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditMemo;->dismiss()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
