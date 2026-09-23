.class Lcom/mycompany/app/web/WebViewActivity$SearchTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 4

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
    iput-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 12
    .line 13
    and-int/lit8 v0, p1, 0x4

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x4

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->f:Z

    .line 24
    .line 25
    and-int/lit8 v0, p1, 0x8

    .line 26
    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    if-ne v0, v3, :cond_1

    .line 30
    .line 31
    move v0, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v0, v1

    .line 34
    :goto_1
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->g:Z

    .line 35
    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    and-int/2addr p1, v0

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    move v1, v2

    .line 42
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->h:Z

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_12

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/web/WebViewActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_28

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_12

    .line 22
    .line 23
    :cond_1
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->f:Z

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const-string v4, "0"

    .line 27
    .line 28
    const-string v5, "1"

    .line 29
    .line 30
    const-string v6, "_title"

    .line 31
    .line 32
    const-string v7, "_path"

    .line 33
    .line 34
    const-string v8, "_id"

    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    sget-boolean v10, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 40
    .line 41
    if-eqz v10, :cond_f

    .line 42
    .line 43
    :cond_2
    sget v10, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 44
    .line 45
    if-eqz v10, :cond_e

    .line 46
    .line 47
    sget-boolean v11, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 48
    .line 49
    const-wide/16 v12, 0x0

    .line 50
    .line 51
    if-eqz v11, :cond_3

    .line 52
    .line 53
    sget-wide v14, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 54
    .line 55
    cmp-long v11, v14, v12

    .line 56
    .line 57
    if-eqz v11, :cond_e

    .line 58
    .line 59
    :cond_3
    const/4 v11, -0x1

    .line 60
    if-eq v10, v11, :cond_4

    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v10

    .line 66
    sget v12, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 67
    .line 68
    int-to-long v12, v12

    .line 69
    const-wide/32 v14, 0x5265c00

    .line 70
    .line 71
    .line 72
    mul-long/2addr v12, v14

    .line 73
    sub-long v12, v10, v12

    .line 74
    .line 75
    sget-boolean v10, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 76
    .line 77
    if-eqz v10, :cond_4

    .line 78
    .line 79
    sget-wide v10, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 80
    .line 81
    cmp-long v14, v10, v12

    .line 82
    .line 83
    if-lez v14, :cond_4

    .line 84
    .line 85
    move-wide v12, v10

    .line 86
    :cond_4
    filled-new-array {v8, v7, v6}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v16

    .line 90
    sget-boolean v10, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 91
    .line 92
    if-eqz v10, :cond_5

    .line 93
    .line 94
    move-object v10, v5

    .line 95
    goto :goto_0

    .line 96
    :cond_5
    move-object v10, v4

    .line 97
    :goto_0
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    filled-new-array {v10, v11}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v18

    .line 105
    const-string v19, "_time DESC"

    .line 106
    .line 107
    :try_start_0
    iget-object v10, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 108
    .line 109
    invoke-static {v10}, Lcom/mycompany/app/db/book/DbBookHistory;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookHistory;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    const-string v15, "DbBookHistory_table"

    .line 118
    .line 119
    const-string v17, "_secret=? AND _time>?"

    .line 120
    .line 121
    invoke-static/range {v14 .. v19}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 122
    .line 123
    .line 124
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    if-eqz v10, :cond_d

    .line 126
    .line 127
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-eqz v11, :cond_d

    .line 132
    .line 133
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    if-eqz v2, :cond_6

    .line 146
    .line 147
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->i:Ljava/util/ArrayList;

    .line 148
    .line 149
    if-nez v2, :cond_6

    .line 150
    .line 151
    new-instance v2, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->i:Ljava/util/ArrayList;

    .line 157
    .line 158
    :cond_6
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 159
    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 163
    .line 164
    if-nez v2, :cond_7

    .line 165
    .line 166
    new-instance v2, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 172
    .line 173
    :cond_7
    const/4 v2, 0x0

    .line 174
    :goto_1
    iget-boolean v14, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 175
    .line 176
    if-eqz v14, :cond_8

    .line 177
    .line 178
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->i:Ljava/util/ArrayList;

    .line 179
    .line 180
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 181
    .line 182
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 183
    .line 184
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_8
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    invoke-static {v14}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    if-nez v15, :cond_9

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_9
    iget-object v15, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->i:Ljava/util/ArrayList;

    .line 202
    .line 203
    if-eqz v15, :cond_a

    .line 204
    .line 205
    new-instance v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 206
    .line 207
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 208
    .line 209
    .line 210
    const/16 v3, 0x12

    .line 211
    .line 212
    iput v3, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    .line 213
    .line 214
    move/from16 v17, v2

    .line 215
    .line 216
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 217
    .line 218
    .line 219
    move-result-wide v2

    .line 220
    iput-wide v2, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 221
    .line 222
    iput-object v14, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v14}, Lcom/mycompany/app/main/MainUtil;->o3(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    iput v2, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    .line 229
    .line 230
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    iput-object v2, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 235
    .line 236
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->i:Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_a
    move/from16 v17, v2

    .line 243
    .line 244
    :goto_2
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 245
    .line 246
    if-eqz v2, :cond_b

    .line 247
    .line 248
    invoke-static {v14, v9}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-nez v3, :cond_b

    .line 257
    .line 258
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-nez v3, :cond_b

    .line 265
    .line 266
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    :cond_b
    add-int/lit8 v2, v17, 0x1

    .line 272
    .line 273
    :goto_3
    const/16 v3, 0x64

    .line 274
    .line 275
    if-ge v2, v3, :cond_d

    .line 276
    .line 277
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 278
    .line 279
    .line 280
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    if-nez v3, :cond_c

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :cond_c
    const/4 v3, 0x0

    .line 285
    goto :goto_1

    .line 286
    :catch_0
    const/4 v10, 0x0

    .line 287
    :catch_1
    :cond_d
    :goto_4
    if-eqz v10, :cond_e

    .line 288
    .line 289
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 290
    .line 291
    .line 292
    :cond_e
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 293
    .line 294
    if-eqz v2, :cond_f

    .line 295
    .line 296
    goto/16 :goto_12

    .line 297
    .line 298
    :cond_f
    const-string v2, "_secret=?"

    .line 299
    .line 300
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->g:Z

    .line 301
    .line 302
    if-nez v3, :cond_11

    .line 303
    .line 304
    sget-boolean v10, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 305
    .line 306
    if-eqz v10, :cond_10

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_10
    move-object v9, v4

    .line 310
    move-object/from16 v18, v5

    .line 311
    .line 312
    goto/16 :goto_c

    .line 313
    .line 314
    :cond_11
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string v11, "_isdir"

    .line 320
    .line 321
    filled-new-array {v8, v11, v7, v6}, [Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v19

    .line 325
    sget-boolean v12, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 326
    .line 327
    if-eqz v12, :cond_12

    .line 328
    .line 329
    move-object v12, v5

    .line 330
    goto :goto_6

    .line 331
    :cond_12
    move-object v12, v4

    .line 332
    :goto_6
    filled-new-array {v12}, [Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v21

    .line 336
    :try_start_2
    iget-object v12, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 337
    .line 338
    invoke-static {v12}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 339
    .line 340
    .line 341
    move-result-object v12

    .line 342
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 343
    .line 344
    .line 345
    move-result-object v17

    .line 346
    const-string v18, "DbBookWeb_table"

    .line 347
    .line 348
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v20

    .line 352
    const/16 v22, 0x0

    .line 353
    .line 354
    invoke-static/range {v17 .. v22}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 355
    .line 356
    .line 357
    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 358
    if-eqz v10, :cond_1b

    .line 359
    .line 360
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 361
    .line 362
    .line 363
    move-result v12

    .line 364
    if-eqz v12, :cond_1b

    .line 365
    .line 366
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v12

    .line 370
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v11

    .line 374
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    move-result v13

    .line 378
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v14

    .line 382
    if-eqz v3, :cond_13

    .line 383
    .line 384
    new-instance v3, Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .line 388
    .line 389
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 390
    .line 391
    :cond_13
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 392
    .line 393
    if-eqz v3, :cond_14

    .line 394
    .line 395
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 396
    .line 397
    if-nez v3, :cond_14

    .line 398
    .line 399
    new-instance v3, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .line 403
    .line 404
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 405
    .line 406
    :cond_14
    :goto_7
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 407
    .line 408
    if-eqz v3, :cond_15

    .line 409
    .line 410
    const/4 v3, 0x0

    .line 411
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->i:Ljava/util/ArrayList;

    .line 412
    .line 413
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 414
    .line 415
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 416
    .line 417
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_12

    .line 423
    .line 424
    :cond_15
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    if-ne v3, v9, :cond_16

    .line 429
    .line 430
    :goto_8
    move-object v9, v4

    .line 431
    move-object/from16 v18, v5

    .line 432
    .line 433
    goto :goto_a

    .line 434
    :cond_16
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    move-result v15

    .line 442
    if-nez v15, :cond_17

    .line 443
    .line 444
    goto :goto_8

    .line 445
    :cond_17
    iget-object v15, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 446
    .line 447
    if-eqz v15, :cond_18

    .line 448
    .line 449
    new-instance v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 450
    .line 451
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 452
    .line 453
    .line 454
    const/16 v9, 0x11

    .line 455
    .line 456
    iput v9, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 457
    .line 458
    move-object v9, v4

    .line 459
    move-object/from16 v18, v5

    .line 460
    .line 461
    :try_start_4
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 462
    .line 463
    .line 464
    move-result-wide v4

    .line 465
    iput-wide v4, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 466
    .line 467
    iput-object v3, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 468
    .line 469
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->o3(Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    move-result v4

    .line 473
    iput v4, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    .line 474
    .line 475
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    iput-object v4, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 480
    .line 481
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    goto :goto_9

    .line 487
    :cond_18
    move-object v9, v4

    .line 488
    move-object/from16 v18, v5

    .line 489
    .line 490
    :goto_9
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 491
    .line 492
    if-eqz v4, :cond_19

    .line 493
    .line 494
    const/4 v4, 0x1

    .line 495
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-nez v4, :cond_19

    .line 504
    .line 505
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    if-nez v4, :cond_19

    .line 512
    .line 513
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 514
    .line 515
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    :cond_19
    :goto_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 519
    .line 520
    .line 521
    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 522
    if-nez v3, :cond_1a

    .line 523
    .line 524
    goto :goto_b

    .line 525
    :cond_1a
    move-object v4, v9

    .line 526
    move-object/from16 v5, v18

    .line 527
    .line 528
    const/4 v9, 0x1

    .line 529
    goto :goto_7

    .line 530
    :catch_2
    :cond_1b
    move-object v9, v4

    .line 531
    move-object/from16 v18, v5

    .line 532
    .line 533
    goto :goto_b

    .line 534
    :catch_3
    move-object v9, v4

    .line 535
    move-object/from16 v18, v5

    .line 536
    .line 537
    const/4 v10, 0x0

    .line 538
    :catch_4
    :goto_b
    if-eqz v10, :cond_1c

    .line 539
    .line 540
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 541
    .line 542
    .line 543
    :cond_1c
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 544
    .line 545
    if-eqz v3, :cond_1d

    .line 546
    .line 547
    goto/16 :goto_12

    .line 548
    .line 549
    :cond_1d
    :goto_c
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->h:Z

    .line 550
    .line 551
    if-nez v3, :cond_1e

    .line 552
    .line 553
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 554
    .line 555
    if-eqz v4, :cond_28

    .line 556
    .line 557
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    const-string v2, "_rsv4"

    .line 563
    .line 564
    filled-new-array {v8, v7, v6, v2}, [Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v12

    .line 568
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 569
    .line 570
    if-eqz v5, :cond_1f

    .line 571
    .line 572
    goto :goto_d

    .line 573
    :cond_1f
    move-object/from16 v18, v9

    .line 574
    .line 575
    :goto_d
    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v14

    .line 579
    :try_start_5
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 580
    .line 581
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 586
    .line 587
    .line 588
    move-result-object v10

    .line 589
    const-string v11, "DbBookQuick_table"

    .line 590
    .line 591
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v13

    .line 595
    const/4 v15, 0x0

    .line 596
    invoke-static/range {v10 .. v15}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 597
    .line 598
    .line 599
    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 600
    if-eqz v1, :cond_27

    .line 601
    .line 602
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 603
    .line 604
    .line 605
    move-result v4

    .line 606
    if-eqz v4, :cond_27

    .line 607
    .line 608
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 609
    .line 610
    .line 611
    move-result v4

    .line 612
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    move-result v5

    .line 616
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 617
    .line 618
    .line 619
    move-result v6

    .line 620
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    if-eqz v3, :cond_20

    .line 625
    .line 626
    new-instance v3, Ljava/util/ArrayList;

    .line 627
    .line 628
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .line 630
    .line 631
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 632
    .line 633
    goto :goto_e

    .line 634
    :catch_5
    move-object v3, v1

    .line 635
    goto/16 :goto_10

    .line 636
    .line 637
    :cond_20
    :goto_e
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 638
    .line 639
    if-eqz v3, :cond_21

    .line 640
    .line 641
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 642
    .line 643
    if-nez v3, :cond_21

    .line 644
    .line 645
    new-instance v3, Ljava/util/ArrayList;

    .line 646
    .line 647
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .line 649
    .line 650
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 651
    .line 652
    :cond_21
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 653
    .line 654
    if-eqz v3, :cond_22

    .line 655
    .line 656
    const/4 v3, 0x0

    .line 657
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->i:Ljava/util/ArrayList;

    .line 658
    .line 659
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 660
    .line 661
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 662
    .line 663
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 664
    .line 665
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 666
    .line 667
    .line 668
    goto :goto_12

    .line 669
    :cond_22
    const/4 v3, 0x0

    .line 670
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v7

    .line 674
    invoke-static {v7}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result v8

    .line 678
    if-nez v8, :cond_24

    .line 679
    .line 680
    :cond_23
    const/4 v8, 0x1

    .line 681
    goto :goto_f

    .line 682
    :cond_24
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 683
    .line 684
    if-eqz v8, :cond_25

    .line 685
    .line 686
    new-instance v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 687
    .line 688
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 689
    .line 690
    .line 691
    const/16 v9, 0x21

    .line 692
    .line 693
    iput v9, v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    .line 694
    .line 695
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 696
    .line 697
    .line 698
    move-result-wide v9

    .line 699
    iput-wide v9, v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 700
    .line 701
    iput-object v7, v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 702
    .line 703
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->o3(Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    move-result v9

    .line 707
    iput v9, v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    .line 708
    .line 709
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v9

    .line 713
    iput-object v9, v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 714
    .line 715
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 716
    .line 717
    .line 718
    move-result v9

    .line 719
    iput v9, v8, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->g:I

    .line 720
    .line 721
    iget-object v9, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 722
    .line 723
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    :cond_25
    iget-object v8, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 727
    .line 728
    if-eqz v8, :cond_23

    .line 729
    .line 730
    const/4 v8, 0x1

    .line 731
    invoke-static {v7, v8}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v7

    .line 735
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 736
    .line 737
    .line 738
    move-result v9

    .line 739
    if-nez v9, :cond_26

    .line 740
    .line 741
    iget-object v9, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 742
    .line 743
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v9

    .line 747
    if-nez v9, :cond_26

    .line 748
    .line 749
    iget-object v9, v0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 750
    .line 751
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    :cond_26
    :goto_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 755
    .line 756
    .line 757
    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 758
    if-nez v7, :cond_21

    .line 759
    .line 760
    goto :goto_11

    .line 761
    :catch_6
    const/4 v3, 0x0

    .line 762
    :goto_10
    move-object v1, v3

    .line 763
    :cond_27
    :goto_11
    if-eqz v1, :cond_28

    .line 764
    .line 765
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 766
    .line 767
    .line 768
    :cond_28
    :goto_12
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/web/WebViewActivity;

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
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->E2:Lcom/mycompany/app/web/WebViewActivity$SearchTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->e:Ljava/lang/ref/WeakReference;

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
    move-object v2, v0

    .line 11
    check-cast v2, Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->E2:Lcom/mycompany/app/web/WebViewActivity$SearchTask;

    .line 18
    .line 19
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v3, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->i:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->x2:Lcom/mycompany/app/view/MyEditAuto;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 38
    .line 39
    if-eqz v6, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyEditAuto;->setAutoList(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    :cond_4
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter;

    .line 45
    .line 46
    iget-boolean v6, v2, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->O5()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    xor-int/lit8 v7, v0, 0x1

    .line 53
    .line 54
    new-instance v8, Lcom/mycompany/app/web/WebViewActivity$250;

    .line 55
    .line 56
    invoke-direct {v8, v2}, Lcom/mycompany/app/web/WebViewActivity$250;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/web/WebSearchAdapter;-><init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->D2:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 63
    .line 64
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->x2:Lcom/mycompany/app/view/MyEditAuto;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/mycompany/app/web/WebSearchAdapter;->y:Landroid/widget/Filter;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyEditAuto;->setDropDownFilter(Landroid/widget/Filter;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->A3:Lcom/mycompany/app/quick/QuickSearch;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->D2:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/mycompany/app/quick/QuickSearch;->setAutoAdapter(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_0
    return-void
.end method
