.class Lcom/mycompany/app/list/book/ListBookSearch$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public final g:J

.field public h:Ljava/lang/String;

.field public i:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public j:Z

.field public k:Z

.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public o:[Z

.field public p:[I

.field public q:[Z

.field public r:I

.field public s:Z

.field public t:I

.field public u:Ljava/util/ArrayList;

.field public v:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookSearch;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->t:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->v:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookSearch;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookSearch;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->f()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_11

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/mycompany/app/list/book/ListBookSearch;

    .line 17
    .line 18
    if-eqz v2, :cond_21

    .line 19
    .line 20
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookSearch;->a:Landroid/content/Context;

    .line 21
    .line 22
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    goto/16 :goto_11

    .line 27
    .line 28
    :cond_1
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    iget-wide v6, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->g:J

    .line 31
    .line 32
    cmp-long v4, v6, v4

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->j:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->h:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->k:Z

    .line 48
    .line 49
    :cond_3
    :goto_0
    iget-object v2, v2, Lcom/mycompany/app/list/book/ListBookSearch;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-interface {v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    iget-boolean v5, v2, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 60
    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->s:Z

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListAdapter;->i()Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v2, 0x0

    .line 71
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v5, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->m:Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 79
    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    goto/16 :goto_11

    .line 83
    .line 84
    :cond_5
    const/4 v5, 0x0

    .line 85
    :try_start_0
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    const-string v10, "DbBookSearch_table"

    .line 94
    .line 95
    const/4 v13, 0x0

    .line 96
    const/4 v14, 0x0

    .line 97
    const/4 v11, 0x0

    .line 98
    const/4 v12, 0x0

    .line 99
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 100
    .line 101
    .line 102
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    if-eqz v8, :cond_a

    .line 104
    .line 105
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_a

    .line 110
    .line 111
    const-string v9, "_id"

    .line 112
    .line 113
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    const-string v10, "_title"

    .line 118
    .line 119
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    const-string v11, "_text"

    .line 124
    .line 125
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    const-string v12, "_color"

    .line 130
    .line 131
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v12

    .line 135
    :goto_2
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v13

    .line 139
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    if-eqz v14, :cond_6

    .line 144
    .line 145
    move-object/from16 v16, v2

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_6
    new-instance v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 149
    .line 150
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    .line 152
    .line 153
    move-object/from16 v16, v2

    .line 154
    .line 155
    :try_start_2
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    iput-wide v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 160
    .line 161
    iput-object v13, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 162
    .line 163
    iput-object v13, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 164
    .line 165
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 170
    .line 171
    const/16 v1, 0xb

    .line 172
    .line 173
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 174
    .line 175
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 180
    .line 181
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_white_24:I

    .line 182
    .line 183
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 184
    .line 185
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->j:Z

    .line 186
    .line 187
    if-eqz v1, :cond_7

    .line 188
    .line 189
    iget-wide v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 190
    .line 191
    cmp-long v1, v1, v6

    .line 192
    .line 193
    if-nez v1, :cond_7

    .line 194
    .line 195
    iput-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->j:Z

    .line 196
    .line 197
    const/4 v15, 0x1

    .line 198
    iput-boolean v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_7
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->k:Z

    .line 202
    .line 203
    if-eqz v1, :cond_8

    .line 204
    .line 205
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->h:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v2, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_8

    .line 214
    .line 215
    iput-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->k:Z

    .line 216
    .line 217
    const/4 v15, 0x1

    .line 218
    iput-boolean v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 219
    .line 220
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->m:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :goto_4
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 226
    .line 227
    if-nez v1, :cond_b

    .line 228
    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 230
    .line 231
    .line 232
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 233
    if-nez v1, :cond_9

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_9
    move-object/from16 v2, v16

    .line 237
    .line 238
    const/4 v1, 0x1

    .line 239
    goto :goto_2

    .line 240
    :catch_0
    :cond_a
    move-object/from16 v16, v2

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :catch_1
    move-object/from16 v16, v2

    .line 244
    .line 245
    const/4 v8, 0x0

    .line 246
    :catch_2
    :cond_b
    :goto_5
    if-eqz v8, :cond_c

    .line 247
    .line 248
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 249
    .line 250
    .line 251
    :cond_c
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 252
    .line 253
    if-eqz v1, :cond_d

    .line 254
    .line 255
    goto/16 :goto_11

    .line 256
    .line 257
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .line 261
    .line 262
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->l:Ljava/util/ArrayList;

    .line 263
    .line 264
    new-instance v1, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .line 268
    .line 269
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->n:Ljava/util/ArrayList;

    .line 270
    .line 271
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->m:Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    const/4 v2, 0x4

    .line 278
    if-nez v1, :cond_1b

    .line 279
    .line 280
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->s:Z

    .line 281
    .line 282
    if-eqz v1, :cond_e

    .line 283
    .line 284
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->m:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    new-array v6, v1, [Z

    .line 291
    .line 292
    iput-object v6, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->q:[Z

    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_e
    move v1, v5

    .line 296
    :goto_6
    if-eqz v16, :cond_f

    .line 297
    .line 298
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    .line 299
    .line 300
    .line 301
    move-result v6

    .line 302
    goto :goto_7

    .line 303
    :cond_f
    move v6, v5

    .line 304
    :goto_7
    new-instance v7, Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .line 308
    .line 309
    iget-object v8, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->m:Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    move v10, v5

    .line 316
    move v12, v10

    .line 317
    move v13, v12

    .line 318
    move v14, v13

    .line 319
    move v15, v14

    .line 320
    const/4 v11, 0x0

    .line 321
    :goto_8
    if-ge v15, v9, :cond_1a

    .line 322
    .line 323
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v18

    .line 327
    add-int/lit8 v15, v15, 0x1

    .line 328
    .line 329
    move-object/from16 v4, v18

    .line 330
    .line 331
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 332
    .line 333
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 334
    .line 335
    if-eqz v5, :cond_10

    .line 336
    .line 337
    goto/16 :goto_11

    .line 338
    .line 339
    :cond_10
    if-nez v4, :cond_11

    .line 340
    .line 341
    :goto_9
    const/4 v5, 0x0

    .line 342
    goto :goto_8

    .line 343
    :cond_11
    if-ge v10, v6, :cond_13

    .line 344
    .line 345
    move/from16 v19, v2

    .line 346
    .line 347
    move-object v5, v3

    .line 348
    iget-wide v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 349
    .line 350
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    move-object/from16 v3, v16

    .line 355
    .line 356
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    iput-boolean v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 361
    .line 362
    if-eqz v2, :cond_12

    .line 363
    .line 364
    add-int/lit8 v10, v10, 0x1

    .line 365
    .line 366
    goto :goto_a

    .line 367
    :cond_12
    const/4 v2, 0x0

    .line 368
    goto :goto_a

    .line 369
    :cond_13
    move/from16 v19, v2

    .line 370
    .line 371
    move-object v5, v3

    .line 372
    move-object/from16 v3, v16

    .line 373
    .line 374
    const/4 v2, 0x0

    .line 375
    iput-boolean v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 376
    .line 377
    :goto_a
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->n:Ljava/util/ArrayList;

    .line 378
    .line 379
    move-object/from16 v20, v5

    .line 380
    .line 381
    move/from16 v16, v6

    .line 382
    .line 383
    iget-wide v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 384
    .line 385
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    const/4 v2, 0x0

    .line 393
    iput v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 394
    .line 395
    iput v13, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 396
    .line 397
    iput v14, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 398
    .line 399
    iget-wide v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 400
    .line 401
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 402
    .line 403
    add-int/lit8 v2, v2, -0x64

    .line 404
    .line 405
    move-object/from16 v21, v3

    .line 406
    .line 407
    int-to-long v2, v2

    .line 408
    cmp-long v2, v5, v2

    .line 409
    .line 410
    if-nez v2, :cond_14

    .line 411
    .line 412
    iput-object v4, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 413
    .line 414
    :cond_14
    iget-boolean v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 415
    .line 416
    if-eqz v2, :cond_15

    .line 417
    .line 418
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->q:[Z

    .line 419
    .line 420
    if-eqz v2, :cond_15

    .line 421
    .line 422
    if-ge v14, v1, :cond_15

    .line 423
    .line 424
    const/16 v17, 0x1

    .line 425
    .line 426
    aput-boolean v17, v2, v14

    .line 427
    .line 428
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->r:I

    .line 429
    .line 430
    add-int/lit8 v2, v2, 0x1

    .line 431
    .line 432
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->r:I

    .line 433
    .line 434
    goto :goto_b

    .line 435
    :cond_15
    const/16 v17, 0x1

    .line 436
    .line 437
    :goto_b
    iget-boolean v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 438
    .line 439
    if-eqz v2, :cond_18

    .line 440
    .line 441
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->t:I

    .line 442
    .line 443
    if-eqz v2, :cond_17

    .line 444
    .line 445
    const/4 v2, 0x0

    .line 446
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->t:I

    .line 447
    .line 448
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->u:Ljava/util/ArrayList;

    .line 449
    .line 450
    if-nez v2, :cond_16

    .line 451
    .line 452
    new-instance v2, Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .line 456
    .line 457
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->u:Ljava/util/ArrayList;

    .line 458
    .line 459
    :cond_16
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->u:Ljava/util/ArrayList;

    .line 460
    .line 461
    iget v3, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 462
    .line 463
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    if-nez v2, :cond_17

    .line 472
    .line 473
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->u:Ljava/util/ArrayList;

    .line 474
    .line 475
    iget v3, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 476
    .line 477
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 478
    .line 479
    .line 480
    move-result-object v3

    .line 481
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    :cond_17
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->v:I

    .line 485
    .line 486
    const/4 v3, -0x1

    .line 487
    if-ne v2, v3, :cond_18

    .line 488
    .line 489
    iget v2, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 490
    .line 491
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->v:I

    .line 492
    .line 493
    :cond_18
    add-int/lit8 v13, v13, 0x1

    .line 494
    .line 495
    add-int/lit8 v14, v14, 0x1

    .line 496
    .line 497
    const/4 v3, 0x0

    .line 498
    iput-object v3, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 499
    .line 500
    iput-object v3, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 501
    .line 502
    iput-object v3, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 503
    .line 504
    iput-object v3, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 505
    .line 506
    new-instance v2, Lcom/mycompany/app/web/WebSearch$WebSchItem;

    .line 507
    .line 508
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 509
    .line 510
    .line 511
    iget-wide v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 512
    .line 513
    iput-wide v5, v2, Lcom/mycompany/app/web/WebSearch$WebSchItem;->a:J

    .line 514
    .line 515
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 516
    .line 517
    iput-object v5, v2, Lcom/mycompany/app/web/WebSearch$WebSchItem;->b:Ljava/lang/String;

    .line 518
    .line 519
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 520
    .line 521
    iput-object v5, v2, Lcom/mycompany/app/web/WebSearch$WebSchItem;->c:Ljava/lang/String;

    .line 522
    .line 523
    iget v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 524
    .line 525
    iput v4, v2, Lcom/mycompany/app/web/WebSearch$WebSchItem;->d:I

    .line 526
    .line 527
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    sget v4, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 531
    .line 532
    int-to-long v5, v4

    .line 533
    move/from16 v22, v4

    .line 534
    .line 535
    iget-wide v3, v2, Lcom/mycompany/app/web/WebSearch$WebSchItem;->a:J

    .line 536
    .line 537
    const-wide/16 v23, 0x64

    .line 538
    .line 539
    add-long v3, v3, v23

    .line 540
    .line 541
    cmp-long v3, v5, v3

    .line 542
    .line 543
    if-nez v3, :cond_19

    .line 544
    .line 545
    iget-object v3, v2, Lcom/mycompany/app/web/WebSearch$WebSchItem;->c:Ljava/lang/String;

    .line 546
    .line 547
    iget v2, v2, Lcom/mycompany/app/web/WebSearch$WebSchItem;->d:I

    .line 548
    .line 549
    move v12, v2

    .line 550
    move-object v11, v3

    .line 551
    move/from16 v2, v22

    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_19
    move/from16 v2, v19

    .line 555
    .line 556
    :goto_c
    move/from16 v6, v16

    .line 557
    .line 558
    move-object/from16 v3, v20

    .line 559
    .line 560
    move-object/from16 v16, v21

    .line 561
    .line 562
    goto/16 :goto_9

    .line 563
    .line 564
    :cond_1a
    move/from16 v19, v2

    .line 565
    .line 566
    move-object v4, v11

    .line 567
    :goto_d
    move-object/from16 v20, v3

    .line 568
    .line 569
    const/16 v17, 0x1

    .line 570
    .line 571
    goto :goto_e

    .line 572
    :cond_1b
    const/4 v4, 0x0

    .line 573
    const/4 v7, 0x0

    .line 574
    const/4 v12, 0x0

    .line 575
    goto :goto_d

    .line 576
    :goto_e
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 577
    .line 578
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 579
    .line 580
    .line 581
    const/4 v3, 0x0

    .line 582
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 583
    .line 584
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->m:Ljava/util/ArrayList;

    .line 585
    .line 586
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    iput v5, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 591
    .line 592
    iget v6, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->r:I

    .line 593
    .line 594
    iput v6, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 595
    .line 596
    if-ne v6, v5, :cond_1c

    .line 597
    .line 598
    move/from16 v5, v17

    .line 599
    .line 600
    goto :goto_f

    .line 601
    :cond_1c
    move v5, v3

    .line 602
    :goto_f
    iput-boolean v5, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 603
    .line 604
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->l:Ljava/util/ArrayList;

    .line 605
    .line 606
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->s:Z

    .line 610
    .line 611
    if-eqz v1, :cond_1e

    .line 612
    .line 613
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->l:Ljava/util/ArrayList;

    .line 614
    .line 615
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-nez v1, :cond_1e

    .line 620
    .line 621
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->l:Ljava/util/ArrayList;

    .line 622
    .line 623
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    new-array v5, v1, [Z

    .line 628
    .line 629
    iput-object v5, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->o:[Z

    .line 630
    .line 631
    new-array v1, v1, [I

    .line 632
    .line 633
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->p:[I

    .line 634
    .line 635
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->l:Ljava/util/ArrayList;

    .line 636
    .line 637
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 638
    .line 639
    .line 640
    move-result v5

    .line 641
    :goto_10
    if-ge v3, v5, :cond_1e

    .line 642
    .line 643
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v6

    .line 647
    add-int/lit8 v3, v3, 0x1

    .line 648
    .line 649
    check-cast v6, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 650
    .line 651
    iget-boolean v8, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 652
    .line 653
    if-eqz v8, :cond_1d

    .line 654
    .line 655
    goto :goto_11

    .line 656
    :cond_1d
    iget v8, v6, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 657
    .line 658
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->o:[Z

    .line 659
    .line 660
    iget-boolean v10, v6, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 661
    .line 662
    aput-boolean v10, v9, v8

    .line 663
    .line 664
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->p:[I

    .line 665
    .line 666
    iget v6, v6, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 667
    .line 668
    aput v6, v9, v8

    .line 669
    .line 670
    goto :goto_10

    .line 671
    :cond_1e
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 672
    .line 673
    const/16 v3, 0xa

    .line 674
    .line 675
    if-lt v1, v3, :cond_20

    .line 676
    .line 677
    if-ne v1, v2, :cond_1f

    .line 678
    .line 679
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 680
    .line 681
    if-ne v1, v12, :cond_1f

    .line 682
    .line 683
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 684
    .line 685
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    if-nez v1, :cond_20

    .line 690
    .line 691
    :cond_1f
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 692
    .line 693
    sput-object v4, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 694
    .line 695
    sput v12, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 696
    .line 697
    invoke-static/range {v20 .. v20}, Lcom/mycompany/app/pref/PrefZtwo;->v(Landroid/content/Context;)V

    .line 698
    .line 699
    .line 700
    :cond_20
    invoke-static {}, Lcom/mycompany/app/web/WebSearch;->a()Lcom/mycompany/app/web/WebSearch;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    iput-object v7, v1, Lcom/mycompany/app/web/WebSearch;->a:Ljava/util/ArrayList;

    .line 705
    .line 706
    :cond_21
    :goto_11
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookSearch;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch;->c:Lcom/mycompany/app/list/book/ListBookSearch$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookSearch;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->l:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->m:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->n:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->o:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->p:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->q:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->u:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookSearch;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookSearch;->c:Lcom/mycompany/app/list/book/ListBookSearch$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookSearch;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->l:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->m:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->o:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->p:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->q:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->r:I

    .line 53
    .line 54
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 55
    .line 56
    const/4 v3, -0x1

    .line 57
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->k:I

    .line 58
    .line 59
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->u:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->v:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->s:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->h:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->l:Ljava/util/ArrayList;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->m:Ljava/util/ArrayList;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->n:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->o:[Z

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->p:[I

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->q:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookSearch$ListTask;->u:Ljava/util/ArrayList;

    .line 95
    .line 96
    return-void
.end method
