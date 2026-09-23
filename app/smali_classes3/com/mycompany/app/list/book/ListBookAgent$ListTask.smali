.class Lcom/mycompany/app/list/book/ListBookAgent$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookAgent;
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
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookAgent;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->t:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->v:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookAgent;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookAgent;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_e

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/mycompany/app/list/book/ListBookAgent;

    .line 17
    .line 18
    if-eqz v2, :cond_20

    .line 19
    .line 20
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookAgent;->a:Landroid/content/Context;

    .line 21
    .line 22
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    goto/16 :goto_e

    .line 27
    .line 28
    :cond_1
    const-wide/16 v4, 0x0

    .line 29
    .line 30
    iget-wide v6, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->g:J

    .line 31
    .line 32
    cmp-long v4, v6, v4

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->j:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->h:Ljava/lang/String;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->k:Z

    .line 48
    .line 49
    :cond_3
    :goto_0
    iget-object v2, v2, Lcom/mycompany/app/list/book/ListBookAgent;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->s:Z

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
    iput-object v5, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->m:Ljava/util/ArrayList;

    .line 77
    .line 78
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 79
    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    goto/16 :goto_e

    .line 83
    .line 84
    :cond_5
    const/4 v5, 0x0

    .line 85
    :try_start_0
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookAgent;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAgent;

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
    const-string v10, "DbBookAgent_table"

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    :cond_6
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_7

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_7
    new-instance v13, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 141
    .line 142
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 146
    .line 147
    .line 148
    move-result-wide v14

    .line 149
    iput-wide v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 150
    .line 151
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 152
    .line 153
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 158
    .line 159
    iput v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 160
    .line 161
    const v12, -0x70708

    .line 162
    .line 163
    .line 164
    iput v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 165
    .line 166
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 167
    .line 168
    iput v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 169
    .line 170
    iget-boolean v12, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->j:Z

    .line 171
    .line 172
    if-eqz v12, :cond_8

    .line 173
    .line 174
    iget-wide v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 175
    .line 176
    cmp-long v12, v14, v6

    .line 177
    .line 178
    if-nez v12, :cond_8

    .line 179
    .line 180
    iput-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->j:Z

    .line 181
    .line 182
    iput-boolean v1, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_8
    iget-boolean v12, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->k:Z

    .line 186
    .line 187
    if-eqz v12, :cond_9

    .line 188
    .line 189
    iget-object v12, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->h:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    if-eqz v12, :cond_9

    .line 198
    .line 199
    iput-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->k:Z

    .line 200
    .line 201
    iput-boolean v1, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 202
    .line 203
    :cond_9
    :goto_2
    iget-object v12, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->m:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :goto_3
    iget-boolean v12, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 209
    .line 210
    if-nez v12, :cond_a

    .line 211
    .line 212
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 213
    .line 214
    .line 215
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    if-nez v12, :cond_6

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :catch_0
    const/4 v8, 0x0

    .line 220
    :catch_1
    :cond_a
    :goto_4
    if-eqz v8, :cond_b

    .line 221
    .line 222
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 223
    .line 224
    .line 225
    :cond_b
    iget-boolean v6, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 226
    .line 227
    if-eqz v6, :cond_c

    .line 228
    .line 229
    goto/16 :goto_e

    .line 230
    .line 231
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    iput-object v6, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->l:Ljava/util/ArrayList;

    .line 237
    .line 238
    new-instance v6, Ljava/util/ArrayList;

    .line 239
    .line 240
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .line 242
    .line 243
    iput-object v6, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->n:Ljava/util/ArrayList;

    .line 244
    .line 245
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->m:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-nez v6, :cond_1b

    .line 252
    .line 253
    iget-boolean v6, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->s:Z

    .line 254
    .line 255
    if-eqz v6, :cond_d

    .line 256
    .line 257
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->m:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    new-array v7, v6, [Z

    .line 264
    .line 265
    iput-object v7, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->q:[Z

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_d
    move v6, v5

    .line 269
    :goto_5
    if-eqz v2, :cond_e

    .line 270
    .line 271
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    goto :goto_6

    .line 276
    :cond_e
    move v7, v5

    .line 277
    :goto_6
    iget-object v8, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->m:Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    move v10, v5

    .line 284
    move v11, v10

    .line 285
    move v13, v11

    .line 286
    move v14, v13

    .line 287
    move v15, v14

    .line 288
    const/4 v12, 0x0

    .line 289
    :goto_7
    if-ge v15, v9, :cond_1a

    .line 290
    .line 291
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v16

    .line 295
    add-int/lit8 v15, v15, 0x1

    .line 296
    .line 297
    move/from16 v17, v1

    .line 298
    .line 299
    move-object/from16 v1, v16

    .line 300
    .line 301
    check-cast v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 302
    .line 303
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 304
    .line 305
    if-eqz v4, :cond_f

    .line 306
    .line 307
    goto/16 :goto_e

    .line 308
    .line 309
    :cond_f
    if-nez v1, :cond_10

    .line 310
    .line 311
    move/from16 v1, v17

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_10
    if-ge v10, v7, :cond_12

    .line 315
    .line 316
    move/from16 v18, v6

    .line 317
    .line 318
    iget-wide v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 319
    .line 320
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    iput-boolean v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 329
    .line 330
    if-eqz v5, :cond_11

    .line 331
    .line 332
    add-int/lit8 v10, v10, 0x1

    .line 333
    .line 334
    :cond_11
    const/4 v4, 0x0

    .line 335
    goto :goto_8

    .line 336
    :cond_12
    move v4, v5

    .line 337
    move/from16 v18, v6

    .line 338
    .line 339
    iput-boolean v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 340
    .line 341
    :goto_8
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->n:Ljava/util/ArrayList;

    .line 342
    .line 343
    move-object/from16 v19, v2

    .line 344
    .line 345
    move-object v6, v3

    .line 346
    iget-wide v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 347
    .line 348
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    iput v4, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 356
    .line 357
    iput v13, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 358
    .line 359
    iput v14, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 360
    .line 361
    iget-wide v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 362
    .line 363
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 364
    .line 365
    add-int/lit8 v5, v5, -0x64

    .line 366
    .line 367
    int-to-long v4, v5

    .line 368
    cmp-long v2, v2, v4

    .line 369
    .line 370
    if-nez v2, :cond_13

    .line 371
    .line 372
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 373
    .line 374
    :cond_13
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 375
    .line 376
    if-eqz v2, :cond_14

    .line 377
    .line 378
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->q:[Z

    .line 379
    .line 380
    if-eqz v2, :cond_14

    .line 381
    .line 382
    move/from16 v5, v18

    .line 383
    .line 384
    if-ge v14, v5, :cond_15

    .line 385
    .line 386
    aput-boolean v17, v2, v14

    .line 387
    .line 388
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->r:I

    .line 389
    .line 390
    add-int/lit8 v2, v2, 0x1

    .line 391
    .line 392
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->r:I

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_14
    move/from16 v5, v18

    .line 396
    .line 397
    :cond_15
    :goto_9
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 398
    .line 399
    if-eqz v2, :cond_18

    .line 400
    .line 401
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->t:I

    .line 402
    .line 403
    if-eqz v2, :cond_17

    .line 404
    .line 405
    const/4 v4, 0x0

    .line 406
    iput v4, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->t:I

    .line 407
    .line 408
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->u:Ljava/util/ArrayList;

    .line 409
    .line 410
    if-nez v2, :cond_16

    .line 411
    .line 412
    new-instance v2, Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .line 416
    .line 417
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->u:Ljava/util/ArrayList;

    .line 418
    .line 419
    :cond_16
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->u:Ljava/util/ArrayList;

    .line 420
    .line 421
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 422
    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    if-nez v2, :cond_17

    .line 432
    .line 433
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->u:Ljava/util/ArrayList;

    .line 434
    .line 435
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 436
    .line 437
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    :cond_17
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->v:I

    .line 445
    .line 446
    const/4 v3, -0x1

    .line 447
    if-ne v2, v3, :cond_18

    .line 448
    .line 449
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 450
    .line 451
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->v:I

    .line 452
    .line 453
    :cond_18
    add-int/lit8 v13, v13, 0x1

    .line 454
    .line 455
    add-int/lit8 v14, v14, 0x1

    .line 456
    .line 457
    const/4 v2, 0x0

    .line 458
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 459
    .line 460
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 461
    .line 462
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 463
    .line 464
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 465
    .line 466
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 467
    .line 468
    move/from16 v18, v5

    .line 469
    .line 470
    int-to-long v4, v3

    .line 471
    move/from16 v20, v3

    .line 472
    .line 473
    iget-wide v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 474
    .line 475
    const-wide/16 v21, 0x64

    .line 476
    .line 477
    add-long v2, v2, v21

    .line 478
    .line 479
    cmp-long v2, v4, v2

    .line 480
    .line 481
    if-nez v2, :cond_19

    .line 482
    .line 483
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 484
    .line 485
    move-object v12, v1

    .line 486
    move/from16 v11, v20

    .line 487
    .line 488
    :cond_19
    move-object v3, v6

    .line 489
    move/from16 v1, v17

    .line 490
    .line 491
    move/from16 v6, v18

    .line 492
    .line 493
    move-object/from16 v2, v19

    .line 494
    .line 495
    const/4 v5, 0x0

    .line 496
    goto/16 :goto_7

    .line 497
    .line 498
    :cond_1a
    move-object v4, v12

    .line 499
    :goto_a
    move/from16 v17, v1

    .line 500
    .line 501
    move-object v6, v3

    .line 502
    goto :goto_b

    .line 503
    :cond_1b
    const/4 v4, 0x0

    .line 504
    const/4 v11, 0x0

    .line 505
    goto :goto_a

    .line 506
    :goto_b
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 507
    .line 508
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 509
    .line 510
    .line 511
    const/4 v2, 0x0

    .line 512
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 513
    .line 514
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->m:Ljava/util/ArrayList;

    .line 515
    .line 516
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 521
    .line 522
    iget v5, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->r:I

    .line 523
    .line 524
    iput v5, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 525
    .line 526
    if-ne v5, v3, :cond_1c

    .line 527
    .line 528
    move/from16 v3, v17

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :cond_1c
    move v3, v2

    .line 532
    :goto_c
    iput-boolean v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 533
    .line 534
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->l:Ljava/util/ArrayList;

    .line 535
    .line 536
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->s:Z

    .line 540
    .line 541
    if-eqz v1, :cond_1e

    .line 542
    .line 543
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->l:Ljava/util/ArrayList;

    .line 544
    .line 545
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    if-nez v1, :cond_1e

    .line 550
    .line 551
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->l:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 554
    .line 555
    .line 556
    move-result v1

    .line 557
    new-array v3, v1, [Z

    .line 558
    .line 559
    iput-object v3, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->o:[Z

    .line 560
    .line 561
    new-array v1, v1, [I

    .line 562
    .line 563
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->p:[I

    .line 564
    .line 565
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->l:Ljava/util/ArrayList;

    .line 566
    .line 567
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 568
    .line 569
    .line 570
    move-result v3

    .line 571
    move v5, v2

    .line 572
    :goto_d
    if-ge v5, v3, :cond_1e

    .line 573
    .line 574
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    add-int/lit8 v5, v5, 0x1

    .line 579
    .line 580
    check-cast v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 581
    .line 582
    iget-boolean v7, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 583
    .line 584
    if-eqz v7, :cond_1d

    .line 585
    .line 586
    goto :goto_e

    .line 587
    :cond_1d
    iget v7, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 588
    .line 589
    iget-object v8, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->o:[Z

    .line 590
    .line 591
    iget-boolean v9, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 592
    .line 593
    aput-boolean v9, v8, v7

    .line 594
    .line 595
    iget-object v8, v0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->p:[I

    .line 596
    .line 597
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 598
    .line 599
    aput v2, v8, v7

    .line 600
    .line 601
    goto :goto_d

    .line 602
    :cond_1e
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 603
    .line 604
    const/4 v2, 0x4

    .line 605
    if-lt v1, v2, :cond_20

    .line 606
    .line 607
    if-ne v1, v11, :cond_1f

    .line 608
    .line 609
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->q:Ljava/lang/String;

    .line 610
    .line 611
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    if-nez v1, :cond_20

    .line 616
    .line 617
    :cond_1f
    sput v11, Lcom/mycompany/app/pref/PrefZtwo;->p:I

    .line 618
    .line 619
    sput-object v4, Lcom/mycompany/app/pref/PrefZtwo;->q:Ljava/lang/String;

    .line 620
    .line 621
    invoke-static {v6}, Lcom/mycompany/app/pref/PrefZtwo;->t(Landroid/content/Context;)V

    .line 622
    .line 623
    .line 624
    :cond_20
    :goto_e
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookAgent;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAgent;->c:Lcom/mycompany/app/list/book/ListBookAgent$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookAgent;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->l:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->m:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->n:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->o:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->p:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->q:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->u:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookAgent;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAgent;->c:Lcom/mycompany/app/list/book/ListBookAgent$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookAgent;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->l:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->m:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->o:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->p:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->q:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->r:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->u:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->v:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->s:Z

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->h:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->l:Ljava/util/ArrayList;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->m:Ljava/util/ArrayList;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->n:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->o:[Z

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->p:[I

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->q:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAgent$ListTask;->u:Ljava/util/ArrayList;

    .line 95
    .line 96
    return-void
.end method
