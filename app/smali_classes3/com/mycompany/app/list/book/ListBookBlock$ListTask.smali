.class Lcom/mycompany/app/list/book/ListBookBlock$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookBlock;
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
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookBlock;J)V
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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/list/book/ListBookBlock;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->g:J

    .line 21
    .line 22
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookBlock;->d:Z

    .line 23
    .line 24
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->q:Z

    .line 25
    .line 26
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookBlock;->e:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->r:Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookBlock;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_12

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
    check-cast v3, Lcom/mycompany/app/list/book/ListBookBlock;

    .line 18
    .line 19
    if-eqz v3, :cond_2b

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/book/ListBookBlock;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto/16 :goto_12

    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->r:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->q:Z

    .line 32
    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    xor-int/2addr v6, v1

    .line 40
    :goto_0
    const/4 v7, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v6, v3, Lcom/mycompany/app/list/book/ListBookBlock;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 43
    .line 44
    if-eqz v6, :cond_3

    .line 45
    .line 46
    invoke-interface {v6}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    iget-boolean v7, v6, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 53
    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->p:Z

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/mycompany/app/main/MainListAdapter;->i()Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    move-object v7, v6

    .line 63
    const/4 v6, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v6, 0x0

    .line 66
    goto :goto_0

    .line 67
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v8, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 73
    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    if-eqz v6, :cond_4

    .line 77
    .line 78
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    iget-object v8, v8, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const/4 v8, 0x0

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookBlock;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookBlock;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    iget-object v8, v8, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 92
    .line 93
    :goto_2
    if-eqz v8, :cond_b

    .line 94
    .line 95
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-nez v11, :cond_b

    .line 100
    .line 101
    new-instance v11, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    .line 105
    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    goto :goto_3

    .line 113
    :cond_6
    const/4 v8, 0x0

    .line 114
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    const/4 v13, 0x0

    .line 119
    const/4 v14, 0x0

    .line 120
    :goto_4
    if-ge v14, v12, :cond_b

    .line 121
    .line 122
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v15

    .line 126
    add-int/lit8 v14, v14, 0x1

    .line 127
    .line 128
    check-cast v15, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 129
    .line 130
    move/from16 v16, v1

    .line 131
    .line 132
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 133
    .line 134
    if-eqz v1, :cond_7

    .line 135
    .line 136
    goto/16 :goto_12

    .line 137
    .line 138
    :cond_7
    if-ge v13, v8, :cond_8

    .line 139
    .line 140
    iget-wide v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 141
    .line 142
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    iput-boolean v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 151
    .line 152
    if-eqz v9, :cond_9

    .line 153
    .line 154
    add-int/lit8 v13, v13, 0x1

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    const/4 v9, 0x0

    .line 158
    iput-boolean v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 159
    .line 160
    :cond_9
    :goto_5
    if-nez v5, :cond_a

    .line 161
    .line 162
    invoke-static {v15}, Lcom/mycompany/app/list/book/ListBookBlock;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 163
    .line 164
    .line 165
    :cond_a
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move/from16 v1, v16

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_b
    move/from16 v16, v1

    .line 174
    .line 175
    iget-boolean v7, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 176
    .line 177
    if-eqz v7, :cond_c

    .line 178
    .line 179
    goto/16 :goto_12

    .line 180
    .line 181
    :cond_c
    if-nez v5, :cond_11

    .line 182
    .line 183
    iget-object v7, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-eqz v7, :cond_11

    .line 190
    .line 191
    :try_start_0
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookBlock;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookBlock;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    const-string v9, "DbBookBlock_table"

    .line 200
    .line 201
    const/4 v12, 0x0

    .line 202
    const/4 v13, 0x0

    .line 203
    const/4 v10, 0x0

    .line 204
    const/4 v11, 0x0

    .line 205
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 206
    .line 207
    .line 208
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    if-eqz v7, :cond_f

    .line 210
    .line 211
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-eqz v8, :cond_f

    .line 216
    .line 217
    const-string v8, "_id"

    .line 218
    .line 219
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v8

    .line 223
    const-string v9, "_path"

    .line 224
    .line 225
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    const-string v10, "_image"

    .line 230
    .line 231
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    const-string v11, "_time"

    .line 236
    .line 237
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    :cond_d
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v12

    .line 245
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    if-eqz v13, :cond_e

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_e
    new-instance v13, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 253
    .line 254
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 258
    .line 259
    .line 260
    move-result-wide v14

    .line 261
    iput-wide v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 262
    .line 263
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 264
    .line 265
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v14

    .line 269
    iput-object v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 270
    .line 271
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 272
    .line 273
    .line 274
    move-result-wide v14

    .line 275
    iput-wide v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 276
    .line 277
    const/4 v14, 0x0

    .line 278
    iput v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 279
    .line 280
    const v15, -0x70708

    .line 281
    .line 282
    .line 283
    iput v15, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 284
    .line 285
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 286
    .line 287
    iput v15, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 288
    .line 289
    invoke-static {v12, v14}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v13}, Lcom/mycompany/app/list/book/ListBookBlock;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 296
    .line 297
    .line 298
    iget-object v12, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    :goto_6
    iget-boolean v12, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 304
    .line 305
    if-nez v12, :cond_f

    .line 306
    .line 307
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 308
    .line 309
    .line 310
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    if-nez v12, :cond_d

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :catch_0
    const/4 v7, 0x0

    .line 315
    :catch_1
    :cond_f
    :goto_7
    if-eqz v7, :cond_10

    .line 316
    .line 317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 318
    .line 319
    .line 320
    :cond_10
    iget-boolean v7, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 321
    .line 322
    if-eqz v7, :cond_11

    .line 323
    .line 324
    goto/16 :goto_12

    .line 325
    .line 326
    :cond_11
    new-instance v7, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .line 330
    .line 331
    iput-object v7, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 332
    .line 333
    new-instance v7, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .line 337
    .line 338
    iput-object v7, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->k:Ljava/util/ArrayList;

    .line 339
    .line 340
    if-nez v5, :cond_12

    .line 341
    .line 342
    sget v7, Lcom/mycompany/app/pref/PrefList;->k0:I

    .line 343
    .line 344
    if-eqz v7, :cond_12

    .line 345
    .line 346
    move/from16 v9, v16

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_12
    const/4 v9, 0x0

    .line 350
    :goto_8
    if-eqz v9, :cond_13

    .line 351
    .line 352
    new-instance v7, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 353
    .line 354
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 355
    .line 356
    .line 357
    const/4 v14, 0x0

    .line 358
    iput v14, v7, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 359
    .line 360
    iget-object v8, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    :cond_13
    if-eqz v6, :cond_1a

    .line 366
    .line 367
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v6

    .line 373
    if-nez v6, :cond_1a

    .line 374
    .line 375
    new-instance v6, Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .line 379
    .line 380
    iget-object v7, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 383
    .line 384
    .line 385
    move-result v8

    .line 386
    const/4 v10, 0x0

    .line 387
    :cond_14
    :goto_9
    if-ge v10, v8, :cond_19

    .line 388
    .line 389
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v11

    .line 393
    add-int/lit8 v10, v10, 0x1

    .line 394
    .line 395
    check-cast v11, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 396
    .line 397
    iget-boolean v12, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 398
    .line 399
    if-eqz v12, :cond_15

    .line 400
    .line 401
    goto/16 :goto_12

    .line 402
    .line 403
    :cond_15
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 406
    .line 407
    .line 408
    move-result v12

    .line 409
    if-eqz v12, :cond_16

    .line 410
    .line 411
    goto :goto_9

    .line 412
    :cond_16
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 413
    .line 414
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 415
    .line 416
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v12

    .line 420
    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v12

    .line 424
    if-eqz v12, :cond_17

    .line 425
    .line 426
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    goto :goto_9

    .line 430
    :cond_17
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 431
    .line 432
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 433
    .line 434
    .line 435
    move-result v12

    .line 436
    if-eqz v12, :cond_18

    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_18
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 440
    .line 441
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v12

    .line 445
    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 446
    .line 447
    .line 448
    move-result v12

    .line 449
    if-eqz v12, :cond_14

    .line 450
    .line 451
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_19
    iput-object v6, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 456
    .line 457
    :cond_1a
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 458
    .line 459
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    if-nez v4, :cond_25

    .line 464
    .line 465
    if-nez v5, :cond_1b

    .line 466
    .line 467
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 468
    .line 469
    sget v5, Lcom/mycompany/app/pref/PrefList;->k0:I

    .line 470
    .line 471
    sget v6, Lcom/mycompany/app/pref/PrefList;->l0:I

    .line 472
    .line 473
    sget-boolean v7, Lcom/mycompany/app/pref/PrefList;->m0:Z

    .line 474
    .line 475
    invoke-static {v5, v6, v7}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    :try_start_2
    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 480
    .line 481
    .line 482
    :catch_2
    :cond_1b
    iget-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->p:Z

    .line 483
    .line 484
    if-eqz v4, :cond_1c

    .line 485
    .line 486
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    new-array v5, v4, [Z

    .line 493
    .line 494
    iput-object v5, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->n:[Z

    .line 495
    .line 496
    move v10, v4

    .line 497
    goto :goto_a

    .line 498
    :cond_1c
    const/4 v10, 0x0

    .line 499
    :goto_a
    iget-object v11, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 502
    .line 503
    .line 504
    move-result v12

    .line 505
    const/4 v4, 0x0

    .line 506
    const/4 v5, 0x0

    .line 507
    const/4 v6, 0x0

    .line 508
    const/4 v7, 0x0

    .line 509
    const/4 v8, 0x0

    .line 510
    const/4 v13, 0x0

    .line 511
    :goto_b
    if-ge v5, v12, :cond_24

    .line 512
    .line 513
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v14

    .line 517
    add-int/lit8 v15, v5, 0x1

    .line 518
    .line 519
    check-cast v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 520
    .line 521
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 522
    .line 523
    if-eqz v5, :cond_1d

    .line 524
    .line 525
    goto/16 :goto_12

    .line 526
    .line 527
    :cond_1d
    if-nez v14, :cond_1e

    .line 528
    .line 529
    move v5, v15

    .line 530
    goto :goto_b

    .line 531
    :cond_1e
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->k:Ljava/util/ArrayList;

    .line 532
    .line 533
    move-object/from16 v17, v2

    .line 534
    .line 535
    iget-wide v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 536
    .line 537
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    if-eqz v9, :cond_21

    .line 545
    .line 546
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 547
    .line 548
    .line 549
    move-result v1

    .line 550
    if-nez v1, :cond_1f

    .line 551
    .line 552
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 553
    .line 554
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-nez v1, :cond_1f

    .line 559
    .line 560
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 561
    .line 562
    move-object v5, v13

    .line 563
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookBlock;->p(Lcom/mycompany/app/list/book/ListBookBlock;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 564
    .line 565
    .line 566
    const/4 v4, 0x0

    .line 567
    const/4 v6, 0x0

    .line 568
    const/4 v7, 0x0

    .line 569
    :cond_1f
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 570
    .line 571
    add-int/lit8 v6, v6, 0x1

    .line 572
    .line 573
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 574
    .line 575
    if-eqz v2, :cond_20

    .line 576
    .line 577
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    goto :goto_c

    .line 582
    :cond_20
    const/4 v2, 0x0

    .line 583
    :goto_c
    iput v2, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 584
    .line 585
    move-object v13, v1

    .line 586
    goto :goto_d

    .line 587
    :cond_21
    move-object v5, v13

    .line 588
    const/4 v1, 0x0

    .line 589
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 590
    .line 591
    :goto_d
    iput v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 592
    .line 593
    iput v8, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 594
    .line 595
    iget-wide v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 596
    .line 597
    move-wide/from16 v18, v1

    .line 598
    .line 599
    iget-wide v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->g:J

    .line 600
    .line 601
    cmp-long v1, v18, v1

    .line 602
    .line 603
    if-nez v1, :cond_22

    .line 604
    .line 605
    iput-object v14, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->h:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 606
    .line 607
    :cond_22
    iget-boolean v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 608
    .line 609
    if-eqz v1, :cond_23

    .line 610
    .line 611
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->n:[Z

    .line 612
    .line 613
    if-eqz v1, :cond_23

    .line 614
    .line 615
    if-ge v8, v10, :cond_23

    .line 616
    .line 617
    aput-boolean v16, v1, v8

    .line 618
    .line 619
    iget v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->o:I

    .line 620
    .line 621
    add-int/lit8 v1, v1, 0x1

    .line 622
    .line 623
    iput v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->o:I

    .line 624
    .line 625
    add-int/lit8 v7, v7, 0x1

    .line 626
    .line 627
    :cond_23
    add-int/lit8 v4, v4, 0x1

    .line 628
    .line 629
    add-int/lit8 v8, v8, 0x1

    .line 630
    .line 631
    const/4 v1, 0x0

    .line 632
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 633
    .line 634
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 635
    .line 636
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 637
    .line 638
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 639
    .line 640
    move v5, v15

    .line 641
    move-object/from16 v2, v17

    .line 642
    .line 643
    goto/16 :goto_b

    .line 644
    .line 645
    :cond_24
    move-object/from16 v17, v2

    .line 646
    .line 647
    move-object v5, v13

    .line 648
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    if-nez v1, :cond_26

    .line 653
    .line 654
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 655
    .line 656
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookBlock;->p(Lcom/mycompany/app/list/book/ListBookBlock;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 657
    .line 658
    .line 659
    goto :goto_e

    .line 660
    :cond_25
    move-object/from16 v17, v2

    .line 661
    .line 662
    :cond_26
    :goto_e
    if-nez v9, :cond_28

    .line 663
    .line 664
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 665
    .line 666
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 667
    .line 668
    .line 669
    const/4 v14, 0x0

    .line 670
    iput v14, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 671
    .line 672
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 673
    .line 674
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 675
    .line 676
    .line 677
    move-result v2

    .line 678
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 679
    .line 680
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->o:I

    .line 681
    .line 682
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 683
    .line 684
    if-ne v3, v2, :cond_27

    .line 685
    .line 686
    move/from16 v2, v16

    .line 687
    .line 688
    goto :goto_f

    .line 689
    :cond_27
    move v2, v14

    .line 690
    :goto_f
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 691
    .line 692
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 693
    .line 694
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    goto :goto_10

    .line 698
    :cond_28
    const/4 v14, 0x0

    .line 699
    :goto_10
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->p:Z

    .line 700
    .line 701
    if-eqz v1, :cond_2a

    .line 702
    .line 703
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 704
    .line 705
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 706
    .line 707
    .line 708
    move-result v1

    .line 709
    if-nez v1, :cond_2a

    .line 710
    .line 711
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 712
    .line 713
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 714
    .line 715
    .line 716
    move-result v1

    .line 717
    new-array v2, v1, [Z

    .line 718
    .line 719
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->l:[Z

    .line 720
    .line 721
    new-array v1, v1, [I

    .line 722
    .line 723
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->m:[I

    .line 724
    .line 725
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 726
    .line 727
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    move v10, v14

    .line 732
    :goto_11
    if-ge v10, v2, :cond_2a

    .line 733
    .line 734
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    add-int/lit8 v10, v10, 0x1

    .line 739
    .line 740
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 741
    .line 742
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 743
    .line 744
    if-eqz v4, :cond_29

    .line 745
    .line 746
    goto :goto_12

    .line 747
    :cond_29
    iget v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 748
    .line 749
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->l:[Z

    .line 750
    .line 751
    iget-boolean v6, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 752
    .line 753
    aput-boolean v6, v5, v4

    .line 754
    .line 755
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->m:[I

    .line 756
    .line 757
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 758
    .line 759
    aput v3, v5, v4

    .line 760
    .line 761
    goto :goto_11

    .line 762
    :cond_2a
    invoke-static/range {v17 .. v17}, Lcom/mycompany/app/data/book/DataBookBlock;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookBlock;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 767
    .line 768
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->k:Ljava/util/ArrayList;

    .line 769
    .line 770
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 771
    .line 772
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 773
    .line 774
    :cond_2b
    :goto_12
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookBlock;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookBlock;->c:Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookBlock;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->h:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->k:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->l:[Z

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->m:[I

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->n:[Z

    .line 42
    .line 43
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookBlock;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookBlock;->c:Lcom/mycompany/app/list/book/ListBookBlock$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookBlock;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->l:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->m:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->n:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->o:I

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
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 60
    .line 61
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->h:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 62
    .line 63
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 64
    .line 65
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->p:Z

    .line 66
    .line 67
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 68
    .line 69
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->r:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->h:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->i:Ljava/util/ArrayList;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->j:Ljava/util/ArrayList;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->k:Ljava/util/ArrayList;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->l:[Z

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->m:[I

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookBlock$ListTask;->n:[Z

    .line 89
    .line 90
    return-void
.end method
