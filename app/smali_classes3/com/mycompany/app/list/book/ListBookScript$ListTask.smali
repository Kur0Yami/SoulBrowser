.class Lcom/mycompany/app/list/book/ListBookScript$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookScript;
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

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/ArrayList;

.field public n:[Z

.field public o:[I

.field public p:[Z

.field public q:I

.field public r:Z

.field public s:I

.field public t:Ljava/util/ArrayList;

.field public u:I

.field public final v:Z

.field public final w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookScript;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->s:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->u:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookScript;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookScript;->d:Z

    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->v:Z

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookScript;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->w:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookScript;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->f()V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    :cond_0
    :goto_0
    move-object v8, v0

    .line 11
    goto/16 :goto_1d

    .line 12
    .line 13
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/mycompany/app/list/book/ListBookScript;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookScript;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->h:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    xor-int/2addr v4, v1

    .line 35
    iput-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->j:Z

    .line 36
    .line 37
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->w:Ljava/lang/String;

    .line 38
    .line 39
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->v:Z

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    xor-int/2addr v2, v1

    .line 49
    :goto_1
    const/4 v8, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iget-object v2, v2, Lcom/mycompany/app/list/book/ListBookScript;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    invoke-interface {v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    iget-boolean v8, v2, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 62
    .line 63
    if-eqz v8, :cond_4

    .line 64
    .line 65
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->r:Z

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainListAdapter;->i()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    move-object v8, v2

    .line 72
    move v2, v7

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v2, v7

    .line 75
    goto :goto_1

    .line 76
    :goto_2
    new-instance v9, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v9, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    if-eqz v2, :cond_5

    .line 86
    .line 87
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    iget-object v9, v9, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    const/4 v9, 0x0

    .line 95
    goto :goto_3

    .line 96
    :cond_6
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookScript;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookScript;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    iget-object v9, v9, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 101
    .line 102
    :goto_3
    if-eqz v9, :cond_c

    .line 103
    .line 104
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-nez v10, :cond_c

    .line 109
    .line 110
    new-instance v10, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .line 114
    .line 115
    if-eqz v8, :cond_7

    .line 116
    .line 117
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    goto :goto_4

    .line 122
    :cond_7
    move v9, v7

    .line 123
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    move v12, v7

    .line 128
    move v13, v12

    .line 129
    :goto_5
    if-ge v13, v11, :cond_c

    .line 130
    .line 131
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    add-int/lit8 v13, v13, 0x1

    .line 136
    .line 137
    check-cast v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 138
    .line 139
    iget-boolean v15, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 140
    .line 141
    if-eqz v15, :cond_8

    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_8
    if-ge v12, v9, :cond_9

    .line 146
    .line 147
    move/from16 v16, v2

    .line 148
    .line 149
    iget-wide v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 150
    .line 151
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    iput-boolean v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 160
    .line 161
    if-eqz v1, :cond_a

    .line 162
    .line 163
    add-int/lit8 v12, v12, 0x1

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_9
    move/from16 v16, v2

    .line 167
    .line 168
    iput-boolean v7, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 169
    .line 170
    :cond_a
    :goto_6
    iput-boolean v7, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 171
    .line 172
    if-nez v5, :cond_b

    .line 173
    .line 174
    invoke-static {v14}, Lcom/mycompany/app/list/book/ListBookScript;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 175
    .line 176
    .line 177
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move/from16 v2, v16

    .line 183
    .line 184
    const/4 v1, 0x1

    .line 185
    goto :goto_5

    .line 186
    :cond_c
    move/from16 v16, v2

    .line 187
    .line 188
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 189
    .line 190
    if-eqz v1, :cond_d

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_d
    if-nez v5, :cond_1f

    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_1f

    .line 203
    .line 204
    :try_start_0
    const-string v17, "_id"

    .line 205
    .line 206
    const-string v18, "_downurl"

    .line 207
    .line 208
    const-string v19, "_name"

    .line 209
    .line 210
    const-string v20, "_namespace"

    .line 211
    .line 212
    const-string v21, "_time"

    .line 213
    .line 214
    const-string v22, "_enabled"

    .line 215
    .line 216
    const-string v23, "_version"

    .line 217
    .line 218
    const-string v24, "_icon"

    .line 219
    .line 220
    const-string v25, "_descript"

    .line 221
    .line 222
    const-string v26, "_loccode"

    .line 223
    .line 224
    const-string v27, "_locname"

    .line 225
    .line 226
    const-string v28, "_locdesc"

    .line 227
    .line 228
    const-string v29, "_author"

    .line 229
    .line 230
    filled-new-array/range {v17 .. v29}, [Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    const-string v9, "DbBookScript_table"

    .line 243
    .line 244
    const/4 v12, 0x0

    .line 245
    const/4 v13, 0x0

    .line 246
    const/4 v11, 0x0

    .line 247
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 248
    .line 249
    .line 250
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 251
    if-eqz v1, :cond_1c

    .line 252
    .line 253
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_1c

    .line 258
    .line 259
    const-string v2, "_id"

    .line 260
    .line 261
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    const-string v8, "_downurl"

    .line 266
    .line 267
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    const-string v9, "_name"

    .line 272
    .line 273
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    move-result v9

    .line 277
    const-string v10, "_namespace"

    .line 278
    .line 279
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result v10

    .line 283
    const-string v11, "_time"

    .line 284
    .line 285
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v11

    .line 289
    const-string v12, "_enabled"

    .line 290
    .line 291
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v12

    .line 295
    const-string v13, "_version"

    .line 296
    .line 297
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    move-result v13

    .line 301
    const-string v14, "_icon"

    .line 302
    .line 303
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    const-string v15, "_descript"

    .line 308
    .line 309
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result v15

    .line 313
    const-string v6, "_loccode"

    .line 314
    .line 315
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    const-string v7, "_locname"

    .line 320
    .line 321
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 325
    move-object/from16 v20, v3

    .line 326
    .line 327
    :try_start_2
    const-string v3, "_locdesc"

    .line 328
    .line 329
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 333
    move/from16 v21, v5

    .line 334
    .line 335
    :try_start_3
    const-string v5, "_author"

    .line 336
    .line 337
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 342
    .line 343
    .line 344
    move-result-object v22
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 345
    if-eqz v22, :cond_10

    .line 346
    .line 347
    move/from16 v23, v15

    .line 348
    .line 349
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v15

    .line 353
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 354
    .line 355
    .line 356
    move-result v24
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 357
    if-nez v24, :cond_f

    .line 358
    .line 359
    move-object/from16 v24, v4

    .line 360
    .line 361
    :try_start_5
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 362
    .line 363
    invoke-virtual {v15, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v15

    .line 367
    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v22

    .line 375
    if-nez v22, :cond_e

    .line 376
    .line 377
    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    new-instance v4, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    move-object/from16 v22, v15

    .line 390
    .line 391
    const-string v15, "-"

    .line 392
    .line 393
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    move-object/from16 v25, v22

    .line 404
    .line 405
    :goto_7
    move/from16 v22, v3

    .line 406
    .line 407
    goto :goto_b

    .line 408
    :catch_0
    :goto_8
    move-object/from16 v8, p0

    .line 409
    .line 410
    goto/16 :goto_16

    .line 411
    .line 412
    :cond_e
    move-object/from16 v22, v15

    .line 413
    .line 414
    move-object/from16 v25, v22

    .line 415
    .line 416
    const/4 v0, 0x0

    .line 417
    goto :goto_7

    .line 418
    :cond_f
    :goto_9
    move-object/from16 v24, v4

    .line 419
    .line 420
    goto :goto_a

    .line 421
    :catch_1
    move-object/from16 v24, v4

    .line 422
    .line 423
    goto :goto_8

    .line 424
    :cond_10
    move/from16 v23, v15

    .line 425
    .line 426
    goto :goto_9

    .line 427
    :goto_a
    move/from16 v22, v3

    .line 428
    .line 429
    const/4 v0, 0x0

    .line 430
    const/16 v25, 0x0

    .line 431
    .line 432
    :goto_b
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 433
    .line 434
    .line 435
    move-result-wide v3

    .line 436
    const-wide/16 v26, 0x0

    .line 437
    .line 438
    cmp-long v15, v3, v26

    .line 439
    .line 440
    if-nez v15, :cond_11

    .line 441
    .line 442
    :goto_c
    move/from16 v26, v2

    .line 443
    .line 444
    :goto_d
    move/from16 v27, v8

    .line 445
    .line 446
    move/from16 v28, v9

    .line 447
    .line 448
    move/from16 v29, v10

    .line 449
    .line 450
    move/from16 v30, v13

    .line 451
    .line 452
    move/from16 v3, v22

    .line 453
    .line 454
    move/from16 v2, v23

    .line 455
    .line 456
    move-object/from16 v4, v25

    .line 457
    .line 458
    move-object/from16 v8, p0

    .line 459
    .line 460
    goto/16 :goto_14

    .line 461
    .line 462
    :cond_11
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v15

    .line 466
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 467
    .line 468
    .line 469
    move-result v26

    .line 470
    if-eqz v26, :cond_12

    .line 471
    .line 472
    goto :goto_c

    .line 473
    :cond_12
    move/from16 v26, v2

    .line 474
    .line 475
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 480
    .line 481
    .line 482
    move-result v27

    .line 483
    if-eqz v27, :cond_13

    .line 484
    .line 485
    goto :goto_d

    .line 486
    :cond_13
    move/from16 v27, v8

    .line 487
    .line 488
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 493
    .line 494
    .line 495
    move-result v28

    .line 496
    if-eqz v28, :cond_14

    .line 497
    .line 498
    move-object/from16 v8, p0

    .line 499
    .line 500
    move/from16 v28, v9

    .line 501
    .line 502
    move/from16 v29, v10

    .line 503
    .line 504
    move/from16 v30, v13

    .line 505
    .line 506
    move/from16 v3, v22

    .line 507
    .line 508
    move/from16 v2, v23

    .line 509
    .line 510
    move-object/from16 v4, v25

    .line 511
    .line 512
    goto/16 :goto_14

    .line 513
    .line 514
    :cond_14
    move/from16 v28, v9

    .line 515
    .line 516
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v9

    .line 520
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 521
    .line 522
    .line 523
    move-result v29

    .line 524
    if-nez v29, :cond_15

    .line 525
    .line 526
    move/from16 v29, v10

    .line 527
    .line 528
    new-instance v10, Ljava/lang/StringBuilder;

    .line 529
    .line 530
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .line 532
    .line 533
    move/from16 v30, v13

    .line 534
    .line 535
    const-string v13, "v"

    .line 536
    .line 537
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    goto :goto_e

    .line 548
    :cond_15
    move/from16 v29, v10

    .line 549
    .line 550
    move/from16 v30, v13

    .line 551
    .line 552
    const/4 v9, 0x0

    .line 553
    :goto_e
    new-instance v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 554
    .line 555
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 556
    .line 557
    .line 558
    iput-wide v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 559
    .line 560
    iput-object v15, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 561
    .line 562
    iput-object v2, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 563
    .line 564
    iput-object v8, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    .line 565
    .line 566
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 567
    .line 568
    .line 569
    move-result-wide v2

    .line 570
    iput-wide v2, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 571
    .line 572
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 573
    .line 574
    .line 575
    move-result v2

    .line 576
    const/4 v15, 0x1

    .line 577
    if-ne v2, v15, :cond_16

    .line 578
    .line 579
    const/4 v3, 0x1

    .line 580
    :goto_f
    move/from16 v2, v23

    .line 581
    .line 582
    goto :goto_10

    .line 583
    :cond_16
    const/4 v3, 0x0

    .line 584
    goto :goto_f

    .line 585
    :goto_10
    iput-boolean v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 586
    .line 587
    const/4 v3, 0x0

    .line 588
    iput v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 589
    .line 590
    const v3, -0x70708

    .line 591
    .line 592
    .line 593
    iput v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 594
    .line 595
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_extension_black_24:I

    .line 596
    .line 597
    iput v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 598
    .line 599
    iput-object v9, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 600
    .line 601
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    iput-object v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 606
    .line 607
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    iput-object v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 612
    .line 613
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    iput-object v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->j:Ljava/lang/String;

    .line 618
    .line 619
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 624
    .line 625
    .line 626
    move-result v4

    .line 627
    if-nez v4, :cond_19

    .line 628
    .line 629
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    if-nez v4, :cond_18

    .line 634
    .line 635
    move-object/from16 v4, v25

    .line 636
    .line 637
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result v3

    .line 641
    if-eqz v3, :cond_17

    .line 642
    .line 643
    goto :goto_11

    .line 644
    :cond_17
    move-object/from16 v8, p0

    .line 645
    .line 646
    move/from16 v3, v22

    .line 647
    .line 648
    goto :goto_13

    .line 649
    :cond_18
    move-object/from16 v4, v25

    .line 650
    .line 651
    :goto_11
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v3

    .line 655
    iput-object v3, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 656
    .line 657
    move/from16 v3, v22

    .line 658
    .line 659
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v8

    .line 663
    iput-object v8, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 664
    .line 665
    :goto_12
    move-object/from16 v8, p0

    .line 666
    .line 667
    goto :goto_13

    .line 668
    :cond_19
    move/from16 v3, v22

    .line 669
    .line 670
    move-object/from16 v4, v25

    .line 671
    .line 672
    goto :goto_12

    .line 673
    :goto_13
    :try_start_6
    iget-boolean v9, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->j:Z

    .line 674
    .line 675
    if-eqz v9, :cond_1a

    .line 676
    .line 677
    iget-object v9, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->h:Ljava/lang/String;

    .line 678
    .line 679
    iget-object v13, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 680
    .line 681
    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 682
    .line 683
    .line 684
    move-result v9

    .line 685
    if-eqz v9, :cond_1a

    .line 686
    .line 687
    const/4 v9, 0x0

    .line 688
    iput-boolean v9, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->j:Z

    .line 689
    .line 690
    const/4 v15, 0x1

    .line 691
    iput-boolean v15, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 692
    .line 693
    :cond_1a
    invoke-static {v10}, Lcom/mycompany/app/list/book/ListBookScript;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 694
    .line 695
    .line 696
    iget-object v9, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 697
    .line 698
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    :goto_14
    iget-boolean v9, v8, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 702
    .line 703
    if-nez v9, :cond_1d

    .line 704
    .line 705
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 706
    .line 707
    .line 708
    move-result v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 709
    if-nez v9, :cond_1b

    .line 710
    .line 711
    goto :goto_16

    .line 712
    :cond_1b
    move/from16 v23, v2

    .line 713
    .line 714
    move/from16 v22, v3

    .line 715
    .line 716
    move-object/from16 v25, v4

    .line 717
    .line 718
    move/from16 v2, v26

    .line 719
    .line 720
    move/from16 v8, v27

    .line 721
    .line 722
    move/from16 v9, v28

    .line 723
    .line 724
    move/from16 v10, v29

    .line 725
    .line 726
    move/from16 v13, v30

    .line 727
    .line 728
    goto/16 :goto_b

    .line 729
    .line 730
    :catch_2
    move-object v8, v0

    .line 731
    move-object/from16 v24, v4

    .line 732
    .line 733
    goto :goto_16

    .line 734
    :catch_3
    move-object v8, v0

    .line 735
    goto :goto_15

    .line 736
    :catch_4
    :cond_1c
    move-object v8, v0

    .line 737
    move-object/from16 v20, v3

    .line 738
    .line 739
    :goto_15
    move-object/from16 v24, v4

    .line 740
    .line 741
    move/from16 v21, v5

    .line 742
    .line 743
    goto :goto_16

    .line 744
    :catch_5
    move-object v8, v0

    .line 745
    move-object/from16 v20, v3

    .line 746
    .line 747
    move-object/from16 v24, v4

    .line 748
    .line 749
    move/from16 v21, v5

    .line 750
    .line 751
    const/4 v1, 0x0

    .line 752
    :catch_6
    :cond_1d
    :goto_16
    if-eqz v1, :cond_1e

    .line 753
    .line 754
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 755
    .line 756
    .line 757
    :cond_1e
    iget-boolean v0, v8, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 758
    .line 759
    if-eqz v0, :cond_20

    .line 760
    .line 761
    goto/16 :goto_1d

    .line 762
    .line 763
    :cond_1f
    move-object v8, v0

    .line 764
    move-object/from16 v20, v3

    .line 765
    .line 766
    move-object/from16 v24, v4

    .line 767
    .line 768
    move/from16 v21, v5

    .line 769
    .line 770
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    .line 771
    .line 772
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .line 774
    .line 775
    iput-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->k:Ljava/util/ArrayList;

    .line 776
    .line 777
    new-instance v0, Ljava/util/ArrayList;

    .line 778
    .line 779
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .line 781
    .line 782
    iput-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->m:Ljava/util/ArrayList;

    .line 783
    .line 784
    if-eqz v16, :cond_25

    .line 785
    .line 786
    iget-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 787
    .line 788
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    if-nez v0, :cond_25

    .line 793
    .line 794
    new-instance v0, Ljava/util/ArrayList;

    .line 795
    .line 796
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .line 798
    .line 799
    iget-object v1, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 800
    .line 801
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 802
    .line 803
    .line 804
    move-result v2

    .line 805
    const/4 v3, 0x0

    .line 806
    :goto_17
    if-ge v3, v2, :cond_24

    .line 807
    .line 808
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    add-int/lit8 v3, v3, 0x1

    .line 813
    .line 814
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 815
    .line 816
    iget-boolean v5, v8, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 817
    .line 818
    if-eqz v5, :cond_21

    .line 819
    .line 820
    goto/16 :goto_1d

    .line 821
    .line 822
    :cond_21
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 823
    .line 824
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 825
    .line 826
    .line 827
    move-result v5

    .line 828
    if-eqz v5, :cond_22

    .line 829
    .line 830
    goto :goto_17

    .line 831
    :cond_22
    iget-object v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 832
    .line 833
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 834
    .line 835
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v5

    .line 839
    move-object/from16 v6, v24

    .line 840
    .line 841
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 842
    .line 843
    .line 844
    move-result v5

    .line 845
    if-eqz v5, :cond_23

    .line 846
    .line 847
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    .line 849
    .line 850
    :cond_23
    move-object/from16 v24, v6

    .line 851
    .line 852
    goto :goto_17

    .line 853
    :cond_24
    iput-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 854
    .line 855
    :cond_25
    iget-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 858
    .line 859
    .line 860
    move-result v0

    .line 861
    if-nez v0, :cond_2f

    .line 862
    .line 863
    if-nez v21, :cond_26

    .line 864
    .line 865
    iget-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 866
    .line 867
    sget v1, Lcom/mycompany/app/pref/PrefList;->D0:I

    .line 868
    .line 869
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->E0:Z

    .line 870
    .line 871
    const/4 v3, 0x0

    .line 872
    invoke-static {v3, v1, v2}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 873
    .line 874
    .line 875
    move-result-object v1

    .line 876
    :try_start_7
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 877
    .line 878
    .line 879
    :catch_7
    :cond_26
    iget-boolean v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->r:Z

    .line 880
    .line 881
    if-eqz v0, :cond_27

    .line 882
    .line 883
    iget-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 884
    .line 885
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 886
    .line 887
    .line 888
    move-result v0

    .line 889
    new-array v1, v0, [Z

    .line 890
    .line 891
    iput-object v1, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->p:[Z

    .line 892
    .line 893
    move v3, v0

    .line 894
    goto :goto_18

    .line 895
    :cond_27
    const/4 v3, 0x0

    .line 896
    :goto_18
    iget-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 897
    .line 898
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    const/4 v2, 0x0

    .line 903
    const/4 v4, 0x0

    .line 904
    const/4 v5, 0x0

    .line 905
    :goto_19
    if-ge v5, v1, :cond_2f

    .line 906
    .line 907
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v6

    .line 911
    add-int/lit8 v5, v5, 0x1

    .line 912
    .line 913
    check-cast v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 914
    .line 915
    iget-boolean v7, v8, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 916
    .line 917
    if-eqz v7, :cond_28

    .line 918
    .line 919
    goto/16 :goto_1d

    .line 920
    .line 921
    :cond_28
    if-nez v6, :cond_29

    .line 922
    .line 923
    goto :goto_19

    .line 924
    :cond_29
    iget-object v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->m:Ljava/util/ArrayList;

    .line 925
    .line 926
    iget-wide v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 927
    .line 928
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 929
    .line 930
    .line 931
    move-result-object v9

    .line 932
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    const/4 v9, 0x0

    .line 936
    iput v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 937
    .line 938
    iput v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 939
    .line 940
    iput v4, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 941
    .line 942
    iget-wide v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 943
    .line 944
    iget-wide v11, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->g:J

    .line 945
    .line 946
    cmp-long v7, v9, v11

    .line 947
    .line 948
    if-nez v7, :cond_2a

    .line 949
    .line 950
    iput-object v6, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 951
    .line 952
    :cond_2a
    iget-boolean v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 953
    .line 954
    if-eqz v7, :cond_2b

    .line 955
    .line 956
    iget-object v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->p:[Z

    .line 957
    .line 958
    if-eqz v7, :cond_2b

    .line 959
    .line 960
    if-ge v4, v3, :cond_2b

    .line 961
    .line 962
    const/4 v15, 0x1

    .line 963
    aput-boolean v15, v7, v4

    .line 964
    .line 965
    iget v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->q:I

    .line 966
    .line 967
    add-int/2addr v7, v15

    .line 968
    iput v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->q:I

    .line 969
    .line 970
    goto :goto_1a

    .line 971
    :cond_2b
    const/4 v15, 0x1

    .line 972
    :goto_1a
    iget-boolean v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 973
    .line 974
    if-eqz v7, :cond_2e

    .line 975
    .line 976
    iget v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->s:I

    .line 977
    .line 978
    if-eqz v7, :cond_2d

    .line 979
    .line 980
    const/4 v9, 0x0

    .line 981
    iput v9, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->s:I

    .line 982
    .line 983
    iget-object v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->t:Ljava/util/ArrayList;

    .line 984
    .line 985
    if-nez v7, :cond_2c

    .line 986
    .line 987
    new-instance v7, Ljava/util/ArrayList;

    .line 988
    .line 989
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .line 991
    .line 992
    iput-object v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->t:Ljava/util/ArrayList;

    .line 993
    .line 994
    :cond_2c
    iget-object v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->t:Ljava/util/ArrayList;

    .line 995
    .line 996
    iget v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 997
    .line 998
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 999
    .line 1000
    .line 1001
    move-result-object v9

    .line 1002
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v7

    .line 1006
    if-nez v7, :cond_2d

    .line 1007
    .line 1008
    iget-object v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->t:Ljava/util/ArrayList;

    .line 1009
    .line 1010
    iget v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 1011
    .line 1012
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v9

    .line 1016
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    .line 1018
    .line 1019
    :cond_2d
    iget v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->u:I

    .line 1020
    .line 1021
    const/4 v9, -0x1

    .line 1022
    if-ne v7, v9, :cond_2e

    .line 1023
    .line 1024
    iget v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1025
    .line 1026
    iput v7, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->u:I

    .line 1027
    .line 1028
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    .line 1029
    .line 1030
    add-int/lit8 v4, v4, 0x1

    .line 1031
    .line 1032
    const/4 v7, 0x0

    .line 1033
    iput-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 1034
    .line 1035
    iput-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 1036
    .line 1037
    iput-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 1038
    .line 1039
    iput-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 1040
    .line 1041
    goto/16 :goto_19

    .line 1042
    .line 1043
    :cond_2f
    const/4 v15, 0x1

    .line 1044
    new-instance v0, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 1045
    .line 1046
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1047
    .line 1048
    .line 1049
    const/4 v9, 0x0

    .line 1050
    iput v9, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 1051
    .line 1052
    iget-object v1, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 1053
    .line 1054
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1055
    .line 1056
    .line 1057
    move-result v1

    .line 1058
    iput v1, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 1059
    .line 1060
    iget v2, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->q:I

    .line 1061
    .line 1062
    iput v2, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 1063
    .line 1064
    if-ne v2, v1, :cond_30

    .line 1065
    .line 1066
    move v1, v15

    .line 1067
    goto :goto_1b

    .line 1068
    :cond_30
    move v1, v9

    .line 1069
    :goto_1b
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 1070
    .line 1071
    iget-object v1, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->k:Ljava/util/ArrayList;

    .line 1072
    .line 1073
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    .line 1075
    .line 1076
    iget-boolean v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->r:Z

    .line 1077
    .line 1078
    if-eqz v0, :cond_32

    .line 1079
    .line 1080
    iget-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->k:Ljava/util/ArrayList;

    .line 1081
    .line 1082
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1083
    .line 1084
    .line 1085
    move-result v0

    .line 1086
    if-nez v0, :cond_32

    .line 1087
    .line 1088
    iget-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->k:Ljava/util/ArrayList;

    .line 1089
    .line 1090
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1091
    .line 1092
    .line 1093
    move-result v0

    .line 1094
    new-array v1, v0, [Z

    .line 1095
    .line 1096
    iput-object v1, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->n:[Z

    .line 1097
    .line 1098
    new-array v0, v0, [I

    .line 1099
    .line 1100
    iput-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->o:[I

    .line 1101
    .line 1102
    iget-object v0, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->k:Ljava/util/ArrayList;

    .line 1103
    .line 1104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1105
    .line 1106
    .line 1107
    move-result v1

    .line 1108
    move v7, v9

    .line 1109
    :goto_1c
    if-ge v7, v1, :cond_32

    .line 1110
    .line 1111
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v2

    .line 1115
    add-int/lit8 v7, v7, 0x1

    .line 1116
    .line 1117
    check-cast v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 1118
    .line 1119
    iget-boolean v3, v8, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1120
    .line 1121
    if-eqz v3, :cond_31

    .line 1122
    .line 1123
    goto :goto_1d

    .line 1124
    :cond_31
    iget v3, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 1125
    .line 1126
    iget-object v4, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->n:[Z

    .line 1127
    .line 1128
    iget-boolean v5, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 1129
    .line 1130
    aput-boolean v5, v4, v3

    .line 1131
    .line 1132
    iget-object v4, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->o:[I

    .line 1133
    .line 1134
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 1135
    .line 1136
    aput v2, v4, v3

    .line 1137
    .line 1138
    goto :goto_1c

    .line 1139
    :cond_32
    invoke-static/range {v20 .. v20}, Lcom/mycompany/app/data/book/DataBookScript;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookScript;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    iget-object v1, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 1144
    .line 1145
    iget-object v2, v8, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->m:Ljava/util/ArrayList;

    .line 1146
    .line 1147
    iput-object v1, v0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 1148
    .line 1149
    iput-object v2, v0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 1150
    .line 1151
    :goto_1d
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookScript;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookScript;->c:Lcom/mycompany/app/list/book/ListBookScript$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookScript;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->n:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->o:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->p:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->t:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookScript;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookScript;->c:Lcom/mycompany/app/list/book/ListBookScript$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookScript;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->n:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->o:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->p:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->q:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->u:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->r:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->w:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 78
    .line 79
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->h:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->l:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->m:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->n:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->o:[I

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->p:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookScript$ListTask;->t:Ljava/util/ArrayList;

    .line 99
    .line 100
    return-void
.end method
