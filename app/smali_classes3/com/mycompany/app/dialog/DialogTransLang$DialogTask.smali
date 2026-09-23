.class Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogTransLang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang;Ljava/lang/String;)V
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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogTransLang;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->h:Z

    .line 22
    .line 23
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->i:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_c

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/dialog/DialogTransLang;

    .line 14
    .line 15
    if-eqz v1, :cond_24

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_c

    .line 22
    .line 23
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto/16 :goto_c

    .line 28
    .line 29
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTransLang;->z0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    iget v2, v3, Lcom/mycompany/app/main/MainLangAdapter;->e:I

    .line 36
    .line 37
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbRecentLang;->e(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget-object v4, v3, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 44
    .line 45
    :cond_3
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->f:Ljava/util/List;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTransLang;->y0:Ljava/util/ArrayList;

    .line 48
    .line 49
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->g:Ljava/util/List;

    .line 50
    .line 51
    goto/16 :goto_a

    .line 52
    .line 53
    :cond_4
    invoke-static {v2}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v2, v2, Lcom/mycompany/app/data/DataTrans;->a:Ljava/util/ArrayList;

    .line 58
    .line 59
    if-eqz v2, :cond_24

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_5

    .line 66
    .line 67
    goto/16 :goto_c

    .line 68
    .line 69
    :cond_5
    iget v3, v1, Lcom/mycompany/app/dialog/DialogTransLang;->f0:I

    .line 70
    .line 71
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbRecentLang;->e(I)I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_f

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_6

    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_6
    const-string v6, "_id"

    .line 86
    .line 87
    const-string v8, "_lang"

    .line 88
    .line 89
    filled-new-array {v6, v8}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    filled-new-array {v9}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    const-string v14, "_time DESC"

    .line 102
    .line 103
    const/4 v15, -0x1

    .line 104
    :try_start_0
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 105
    .line 106
    invoke-static {v9}, Lcom/mycompany/app/db/book/DbRecentLang;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbRecentLang;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    const-string v10, "DbRecentLang_table"

    .line 115
    .line 116
    const-string v12, "_type=?"

    .line 117
    .line 118
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 119
    .line 120
    .line 121
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    if-eqz v9, :cond_10

    .line 123
    .line 124
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    if-eqz v10, :cond_10

    .line 129
    .line 130
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbRecentLang;->e(I)I

    .line 139
    .line 140
    .line 141
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    if-ne v3, v15, :cond_7

    .line 143
    .line 144
    const v3, 0x7fffffff

    .line 145
    .line 146
    .line 147
    :cond_7
    move-object v10, v4

    .line 148
    const/4 v11, 0x0

    .line 149
    :goto_0
    :try_start_2
    iget-object v12, v1, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 150
    .line 151
    if-eqz v12, :cond_e

    .line 152
    .line 153
    iget-boolean v12, v12, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 154
    .line 155
    if-eqz v12, :cond_8

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_8
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-eqz v13, :cond_9

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_9
    invoke-interface {v2, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result v13

    .line 173
    if-ne v13, v15, :cond_a

    .line 174
    .line 175
    :goto_1
    move/from16 v16, v8

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_a
    new-instance v14, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 179
    .line 180
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 181
    .line 182
    .line 183
    iput v5, v14, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 184
    .line 185
    move/from16 v16, v8

    .line 186
    .line 187
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 188
    .line 189
    .line 190
    move-result-wide v7

    .line 191
    iput-wide v7, v14, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->b:J

    .line 192
    .line 193
    add-int/lit16 v13, v13, 0x3e8

    .line 194
    .line 195
    iput v13, v14, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 196
    .line 197
    iput-object v12, v14, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 198
    .line 199
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 200
    .line 201
    invoke-virtual {v12, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    iput-object v7, v14, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogTransLang;->g0:Ljava/lang/String;

    .line 208
    .line 209
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-nez v7, :cond_b

    .line 214
    .line 215
    iget-object v7, v1, Lcom/mycompany/app/dialog/DialogTransLang;->g0:Ljava/lang/String;

    .line 216
    .line 217
    iget-object v8, v14, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    if-eqz v7, :cond_b

    .line 224
    .line 225
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTransLang;->g0:Ljava/lang/String;

    .line 226
    .line 227
    iget v7, v14, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 228
    .line 229
    iput v7, v1, Lcom/mycompany/app/dialog/DialogTransLang;->h0:I

    .line 230
    .line 231
    iput v11, v1, Lcom/mycompany/app/dialog/DialogTransLang;->i0:I

    .line 232
    .line 233
    :cond_b
    if-nez v10, :cond_c

    .line 234
    .line 235
    new-instance v7, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .line 239
    .line 240
    move-object v10, v7

    .line 241
    :cond_c
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    add-int/lit8 v11, v11, 0x1

    .line 245
    .line 246
    :goto_2
    if-ge v11, v3, :cond_11

    .line 247
    .line 248
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 249
    .line 250
    .line 251
    move-result v7

    .line 252
    if-nez v7, :cond_d

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_d
    move/from16 v8, v16

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_e
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 259
    .line 260
    .line 261
    :cond_f
    :goto_4
    move-object v10, v4

    .line 262
    goto :goto_6

    .line 263
    :catch_0
    :cond_10
    move-object v10, v4

    .line 264
    goto :goto_5

    .line 265
    :catch_1
    move-object v9, v4

    .line 266
    move-object v10, v9

    .line 267
    :catch_2
    :cond_11
    :goto_5
    if-eqz v9, :cond_12

    .line 268
    .line 269
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 270
    .line 271
    .line 272
    :cond_12
    if-eqz v10, :cond_f

    .line 273
    .line 274
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_13

    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_13
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 282
    .line 283
    if-eqz v3, :cond_f

    .line 284
    .line 285
    iget-boolean v3, v3, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 286
    .line 287
    if-eqz v3, :cond_14

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_14
    new-instance v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 291
    .line 292
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 293
    .line 294
    .line 295
    const/4 v6, 0x2

    .line 296
    iput v6, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 297
    .line 298
    iput v15, v3, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 299
    .line 300
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    :goto_6
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->f:Ljava/util/List;

    .line 304
    .line 305
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    if-eqz v3, :cond_15

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    const/4 v7, 0x0

    .line 322
    :goto_7
    if-ge v7, v6, :cond_19

    .line 323
    .line 324
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 325
    .line 326
    if-eqz v8, :cond_1a

    .line 327
    .line 328
    iget-boolean v8, v8, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 329
    .line 330
    if-eqz v8, :cond_16

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_16
    new-instance v8, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 334
    .line 335
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 336
    .line 337
    .line 338
    iput v7, v8, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 339
    .line 340
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    check-cast v9, Ljava/lang/String;

    .line 345
    .line 346
    iput-object v9, v8, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 347
    .line 348
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 349
    .line 350
    invoke-virtual {v9, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v9

    .line 354
    iput-object v9, v8, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 355
    .line 356
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogTransLang;->g0:Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    if-nez v9, :cond_18

    .line 363
    .line 364
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogTransLang;->g0:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v11, v8, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v9

    .line 372
    if-eqz v9, :cond_18

    .line 373
    .line 374
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTransLang;->g0:Ljava/lang/String;

    .line 375
    .line 376
    iget v9, v8, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 377
    .line 378
    iput v9, v1, Lcom/mycompany/app/dialog/DialogTransLang;->h0:I

    .line 379
    .line 380
    if-eqz v10, :cond_17

    .line 381
    .line 382
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 383
    .line 384
    .line 385
    move-result v9

    .line 386
    goto :goto_8

    .line 387
    :cond_17
    const/4 v9, 0x0

    .line 388
    :goto_8
    add-int/2addr v9, v7

    .line 389
    iput v9, v1, Lcom/mycompany/app/dialog/DialogTransLang;->i0:I

    .line 390
    .line 391
    iput-boolean v5, v8, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->g:Z

    .line 392
    .line 393
    :cond_18
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    add-int/lit8 v7, v7, 0x1

    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_19
    move-object v4, v3

    .line 400
    :cond_1a
    :goto_9
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->g:Ljava/util/List;

    .line 401
    .line 402
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogTransLang;->y0:Ljava/util/ArrayList;

    .line 403
    .line 404
    :goto_a
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->g:Ljava/util/List;

    .line 405
    .line 406
    if-eqz v2, :cond_24

    .line 407
    .line 408
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-eqz v2, :cond_1b

    .line 413
    .line 414
    goto/16 :goto_c

    .line 415
    .line 416
    :cond_1b
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->i:Ljava/lang/String;

    .line 417
    .line 418
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    if-eqz v2, :cond_1c

    .line 423
    .line 424
    goto/16 :goto_c

    .line 425
    .line 426
    :cond_1c
    iput-boolean v5, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->h:Z

    .line 427
    .line 428
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->i:Ljava/lang/String;

    .line 429
    .line 430
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 431
    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->i:Ljava/lang/String;

    .line 437
    .line 438
    iget-boolean v1, v1, Lcom/mycompany/app/dialog/DialogTransLang;->j0:Z

    .line 439
    .line 440
    new-instance v2, Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .line 444
    .line 445
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->g:Ljava/util/List;

    .line 446
    .line 447
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    :cond_1d
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    if-eqz v4, :cond_23

    .line 456
    .line 457
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    check-cast v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 462
    .line 463
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 464
    .line 465
    if-eqz v5, :cond_1e

    .line 466
    .line 467
    goto :goto_c

    .line 468
    :cond_1e
    if-nez v4, :cond_1f

    .line 469
    .line 470
    goto :goto_b

    .line 471
    :cond_1f
    iget-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    if-eqz v5, :cond_20

    .line 478
    .line 479
    goto :goto_b

    .line 480
    :cond_20
    iget-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 481
    .line 482
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    if-eqz v5, :cond_21

    .line 487
    .line 488
    goto :goto_b

    .line 489
    :cond_21
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->i:Ljava/lang/String;

    .line 490
    .line 491
    if-eqz v1, :cond_22

    .line 492
    .line 493
    iget-object v6, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 494
    .line 495
    iget-object v7, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 496
    .line 497
    invoke-static {v6, v7, v5}, Lcom/mycompany/app/main/InitialSearch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v6

    .line 501
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    if-nez v7, :cond_22

    .line 506
    .line 507
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 508
    .line 509
    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v5

    .line 513
    iput-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    goto :goto_b

    .line 519
    :cond_22
    iget-object v6, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 522
    .line 523
    .line 524
    move-result v6

    .line 525
    if-eqz v6, :cond_1d

    .line 526
    .line 527
    iput-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 528
    .line 529
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    goto :goto_b

    .line 533
    :cond_23
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->g:Ljava/util/List;

    .line 534
    .line 535
    :cond_24
    :goto_c
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogTransLang;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogTransLang;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->x0:Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->f:Ljava/util/List;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->g:Ljava/util/List;

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogTransLang$DialogTask;->h:Z

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->z0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    iput-object v6, v2, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 34
    .line 35
    iput-boolean v1, v2, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, v2, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 39
    .line 40
    iput v0, v2, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainLangAdapter;

    .line 47
    .line 48
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 49
    .line 50
    iget v4, v0, Lcom/mycompany/app/dialog/DialogTransLang;->f0:I

    .line 51
    .line 52
    iget v7, v0, Lcom/mycompany/app/dialog/DialogTransLang;->h0:I

    .line 53
    .line 54
    new-instance v8, Lcom/mycompany/app/dialog/DialogTransLang$18;

    .line 55
    .line 56
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogTransLang$18;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 57
    .line 58
    .line 59
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/main/MainLangAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;ILcom/mycompany/app/main/MainLangAdapter$MainLangListener;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->z0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->B0:Z

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTransLang;->G(Z)V

    .line 72
    .line 73
    .line 74
    iget v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->i0:I

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    if-ge v1, v2, :cond_4

    .line 78
    .line 79
    :goto_0
    return-void

    .line 80
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 81
    .line 82
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransLang$19;

    .line 83
    .line 84
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransLang$19;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 88
    .line 89
    .line 90
    return-void
.end method
