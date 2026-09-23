.class Lcom/mycompany/app/list/book/ListBookTab$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public g:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookTab;)V
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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/list/book/ListBookTab;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/list/book/ListBookTab;->d:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->k:Z

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p1, Lcom/mycompany/app/list/book/ListBookTab;->d:Z

    .line 26
    .line 27
    iget-boolean v0, p1, Lcom/mycompany/app/list/book/ListBookTab;->e:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->l:Z

    .line 30
    .line 31
    iget-object v0, p1, Lcom/mycompany/app/list/book/ListBookTab;->f:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->m:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookTab;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->f()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_c

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/mycompany/app/list/book/ListBookTab;

    .line 17
    .line 18
    if-eqz v2, :cond_1a

    .line 19
    .line 20
    iget-object v2, v2, Lcom/mycompany/app/list/book/ListBookTab;->a:Landroid/content/Context;

    .line 21
    .line 22
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    goto/16 :goto_c

    .line 27
    .line 28
    :cond_1
    iget-boolean v3, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->k:Z

    .line 29
    .line 30
    iget-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->l:Z

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v3, :cond_c

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    const-string v3, "1"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const-string v3, "0"

    .line 42
    .line 43
    :goto_0
    filled-new-array {v3}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    :try_start_0
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const-string v8, "DbBookTab3_table"

    .line 56
    .line 57
    const-string v10, "_secret=?"

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    const/4 v9, 0x0

    .line 61
    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 62
    .line 63
    .line 64
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    if-eqz v3, :cond_6

    .line 66
    .line 67
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_6

    .line 72
    .line 73
    const-string v7, "_id"

    .line 74
    .line 75
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const-string v8, "_uid"

    .line 80
    .line 81
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    const-string v9, "_pid"

    .line 86
    .line 87
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    const-string v10, "_path"

    .line 92
    .line 93
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    const-string v11, "_title"

    .line 98
    .line 99
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    new-instance v12, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    .line 107
    .line 108
    :goto_1
    :try_start_2
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    if-eqz v14, :cond_3

    .line 117
    .line 118
    move v15, v1

    .line 119
    move-object/from16 v16, v2

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    new-instance v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 123
    .line 124
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .line 126
    .line 127
    move v15, v1

    .line 128
    move-object/from16 v16, v2

    .line 129
    .line 130
    :try_start_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v1

    .line 134
    iput-wide v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 135
    .line 136
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    iput-wide v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->E:J

    .line 141
    .line 142
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 143
    .line 144
    .line 145
    move-result-wide v1

    .line 146
    iput-wide v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->D:J

    .line 147
    .line 148
    iput-object v13, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 149
    .line 150
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 155
    .line 156
    const/16 v1, 0xb

    .line 157
    .line 158
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 159
    .line 160
    const v1, -0x70708

    .line 161
    .line 162
    .line 163
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 164
    .line 165
    invoke-static {v13, v5}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 170
    .line 171
    const-string v1, "file:///android_asset/shortcut.html"

    .line 172
    .line 173
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_4

    .line 178
    .line 179
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_home_black_24:I

    .line 180
    .line 181
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 185
    .line 186
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 187
    .line 188
    :goto_2
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    :goto_3
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 192
    .line 193
    if-nez v1, :cond_7

    .line 194
    .line 195
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 196
    .line 197
    .line 198
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 199
    if-nez v1, :cond_5

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_5
    move v1, v15

    .line 203
    move-object/from16 v2, v16

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :catch_0
    move v15, v1

    .line 207
    move-object/from16 v16, v2

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :catch_1
    :cond_6
    move v15, v1

    .line 211
    move-object/from16 v16, v2

    .line 212
    .line 213
    move-object v12, v6

    .line 214
    goto :goto_4

    .line 215
    :catch_2
    move v15, v1

    .line 216
    move-object/from16 v16, v2

    .line 217
    .line 218
    move-object v3, v6

    .line 219
    move-object v12, v3

    .line 220
    :catch_3
    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 221
    .line 222
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 223
    .line 224
    .line 225
    :cond_8
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 226
    .line 227
    if-eqz v1, :cond_9

    .line 228
    .line 229
    goto/16 :goto_c

    .line 230
    .line 231
    :cond_9
    if-eqz v12, :cond_b

    .line 232
    .line 233
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-nez v1, :cond_b

    .line 238
    .line 239
    const-wide/16 v1, -0x1

    .line 240
    .line 241
    invoke-static {v12, v1, v2}, Lcom/mycompany/app/list/book/ListBookTab;->p(Ljava/util/ArrayList;J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_b

    .line 246
    .line 247
    new-instance v2, Ljava/util/ArrayList;

    .line 248
    .line 249
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .line 251
    .line 252
    new-instance v3, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-interface {v12, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    iget-wide v7, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 264
    .line 265
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    iput v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 273
    .line 274
    move v7, v15

    .line 275
    :goto_5
    iget-wide v8, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->E:J

    .line 276
    .line 277
    invoke-static {v12, v8, v9}, Lcom/mycompany/app/list/book/ListBookTab;->p(Ljava/util/ArrayList;J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    if-nez v1, :cond_a

    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_a
    invoke-interface {v12, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    iget-wide v8, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 291
    .line 292
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    iput v7, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 300
    .line 301
    add-int/2addr v7, v15

    .line 302
    goto :goto_5

    .line 303
    :cond_b
    move-object v2, v6

    .line 304
    move-object v3, v2

    .line 305
    :goto_6
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 310
    .line 311
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookSearch;->b:Ljava/util/List;

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_c
    move-object/from16 v16, v2

    .line 315
    .line 316
    :goto_7
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->m:Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-nez v2, :cond_d

    .line 323
    .line 324
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_d
    move-object v3, v6

    .line 332
    :goto_8
    new-instance v7, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .line 336
    .line 337
    iput-object v7, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->h:Ljava/util/ArrayList;

    .line 338
    .line 339
    new-instance v7, Ljava/util/ArrayList;

    .line 340
    .line 341
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .line 343
    .line 344
    iput-object v7, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->i:Ljava/util/ArrayList;

    .line 345
    .line 346
    new-instance v7, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    iput-object v7, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->j:Ljava/util/ArrayList;

    .line 352
    .line 353
    if-nez v2, :cond_14

    .line 354
    .line 355
    if-eqz v3, :cond_14

    .line 356
    .line 357
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-nez v2, :cond_14

    .line 362
    .line 363
    new-instance v2, Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    :cond_e
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    if-eqz v7, :cond_13

    .line 377
    .line 378
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 383
    .line 384
    iget-boolean v8, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 385
    .line 386
    if-eqz v8, :cond_f

    .line 387
    .line 388
    goto/16 :goto_c

    .line 389
    .line 390
    :cond_f
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 391
    .line 392
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 393
    .line 394
    .line 395
    move-result v8

    .line 396
    if-eqz v8, :cond_10

    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_10
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 400
    .line 401
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 402
    .line 403
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    if-eqz v8, :cond_11

    .line 412
    .line 413
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_11
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 418
    .line 419
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    if-eqz v8, :cond_12

    .line 424
    .line 425
    goto :goto_9

    .line 426
    :cond_12
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v8

    .line 432
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    if-eqz v8, :cond_e

    .line 437
    .line 438
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    goto :goto_9

    .line 442
    :cond_13
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->i:Ljava/util/ArrayList;

    .line 443
    .line 444
    :cond_14
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->i:Ljava/util/ArrayList;

    .line 445
    .line 446
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-nez v1, :cond_19

    .line 451
    .line 452
    if-eqz v4, :cond_15

    .line 453
    .line 454
    sget v1, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 455
    .line 456
    goto :goto_a

    .line 457
    :cond_15
    sget v1, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 458
    .line 459
    :goto_a
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->i:Ljava/util/ArrayList;

    .line 460
    .line 461
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 462
    .line 463
    .line 464
    move-result v3

    .line 465
    move v4, v5

    .line 466
    move v7, v4

    .line 467
    move v8, v7

    .line 468
    :goto_b
    if-ge v8, v3, :cond_19

    .line 469
    .line 470
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v9

    .line 474
    add-int/lit8 v8, v8, 0x1

    .line 475
    .line 476
    check-cast v9, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 477
    .line 478
    iget-boolean v10, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 479
    .line 480
    if-eqz v10, :cond_16

    .line 481
    .line 482
    goto :goto_c

    .line 483
    :cond_16
    if-nez v9, :cond_17

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_17
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->j:Ljava/util/ArrayList;

    .line 487
    .line 488
    iget-wide v11, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 489
    .line 490
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 491
    .line 492
    .line 493
    move-result-object v11

    .line 494
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    iput v5, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 498
    .line 499
    iput v4, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 500
    .line 501
    iput v7, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 502
    .line 503
    iget v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 504
    .line 505
    if-ne v10, v1, :cond_18

    .line 506
    .line 507
    iput-object v9, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->g:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 508
    .line 509
    :cond_18
    add-int/lit8 v4, v4, 0x1

    .line 510
    .line 511
    add-int/lit8 v7, v7, 0x1

    .line 512
    .line 513
    iput-object v6, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 514
    .line 515
    iput-object v6, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 516
    .line 517
    iput-object v6, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 518
    .line 519
    iput-object v6, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 520
    .line 521
    goto :goto_b

    .line 522
    :cond_19
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 523
    .line 524
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 525
    .line 526
    .line 527
    iput v5, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 528
    .line 529
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->i:Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 532
    .line 533
    .line 534
    move-result v2

    .line 535
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 536
    .line 537
    iput v5, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 538
    .line 539
    iput-boolean v5, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 540
    .line 541
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->h:Ljava/util/ArrayList;

    .line 542
    .line 543
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    :cond_1a
    :goto_c
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookTab;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookTab;->c:Lcom/mycompany/app/list/book/ListBookTab$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookTab;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->g:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->h:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->i:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->j:Ljava/util/ArrayList;

    .line 36
    .line 37
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookTab;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookTab;->c:Lcom/mycompany/app/list/book/ListBookTab$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookTab;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    new-instance v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->h:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->i:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iput-object v1, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 41
    .line 42
    iput-object v1, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 43
    .line 44
    iput-object v1, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 48
    .line 49
    const/4 v4, -0x1

    .line 50
    iput v4, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->k:I

    .line 51
    .line 52
    iput-object v1, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 53
    .line 54
    iput v4, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 55
    .line 56
    iget-object v4, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->g:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 57
    .line 58
    iput-object v4, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 59
    .line 60
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 61
    .line 62
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->m:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->g:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->h:Ljava/util/ArrayList;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->i:Ljava/util/ArrayList;

    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookTab$ListTask;->j:Ljava/util/ArrayList;

    .line 76
    .line 77
    return-void
.end method
