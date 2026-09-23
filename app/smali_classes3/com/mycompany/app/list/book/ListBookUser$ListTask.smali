.class Lcom/mycompany/app/list/book/ListBookUser$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookUser;
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
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookUser;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->s:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->u:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookUser;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookUser;->d:Z

    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->v:Z

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookUser;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->w:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookUser;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_14

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
    check-cast v3, Lcom/mycompany/app/list/book/ListBookUser;

    .line 18
    .line 19
    if-eqz v3, :cond_2e

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/book/ListBookUser;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto/16 :goto_14

    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    xor-int/2addr v4, v1

    .line 36
    iput-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->j:Z

    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->w:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->v:Z

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    xor-int/2addr v6, v1

    .line 50
    :goto_0
    const/4 v7, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v6, v3, Lcom/mycompany/app/list/book/ListBookUser;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 53
    .line 54
    if-eqz v6, :cond_3

    .line 55
    .line 56
    invoke-interface {v6}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    iget-boolean v7, v6, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 63
    .line 64
    if-eqz v7, :cond_3

    .line 65
    .line 66
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->r:Z

    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/mycompany/app/main/MainListAdapter;->i()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    move-object v7, v6

    .line 73
    move v6, v10

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v6, v10

    .line 76
    goto :goto_0

    .line 77
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v8, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 83
    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    if-eqz v6, :cond_4

    .line 87
    .line 88
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    iget-object v8, v8, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    const/4 v8, 0x0

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    iget-object v8, v8, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 102
    .line 103
    :goto_2
    if-eqz v8, :cond_b

    .line 104
    .line 105
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-nez v11, :cond_b

    .line 110
    .line 111
    new-instance v11, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .line 115
    .line 116
    if-eqz v7, :cond_6

    .line 117
    .line 118
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    goto :goto_3

    .line 123
    :cond_6
    move v8, v10

    .line 124
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    move v13, v10

    .line 129
    move v14, v13

    .line 130
    :goto_4
    if-ge v14, v12, :cond_b

    .line 131
    .line 132
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v15

    .line 136
    add-int/lit8 v14, v14, 0x1

    .line 137
    .line 138
    check-cast v15, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 139
    .line 140
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 141
    .line 142
    if-eqz v9, :cond_7

    .line 143
    .line 144
    goto/16 :goto_14

    .line 145
    .line 146
    :cond_7
    if-ge v13, v8, :cond_8

    .line 147
    .line 148
    move-object/from16 v16, v2

    .line 149
    .line 150
    iget-wide v1, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 151
    .line 152
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    iput-boolean v1, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 161
    .line 162
    if-eqz v1, :cond_9

    .line 163
    .line 164
    add-int/lit8 v13, v13, 0x1

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_8
    move-object/from16 v16, v2

    .line 168
    .line 169
    iput-boolean v10, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 170
    .line 171
    :cond_9
    :goto_5
    iput-boolean v10, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 172
    .line 173
    if-nez v5, :cond_a

    .line 174
    .line 175
    invoke-static {v15}, Lcom/mycompany/app/list/book/ListBookUser;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 176
    .line 177
    .line 178
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-object/from16 v2, v16

    .line 184
    .line 185
    const/4 v1, 0x1

    .line 186
    goto :goto_4

    .line 187
    :cond_b
    move-object/from16 v16, v2

    .line 188
    .line 189
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 190
    .line 191
    if-eqz v1, :cond_c

    .line 192
    .line 193
    goto/16 :goto_14

    .line 194
    .line 195
    :cond_c
    if-nez v5, :cond_13

    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_13

    .line 204
    .line 205
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 210
    .line 211
    .line 212
    move-result-object v17

    .line 213
    const-string v18, "DbBookUser_table"

    .line 214
    .line 215
    const/16 v21, 0x0

    .line 216
    .line 217
    const/16 v22, 0x0

    .line 218
    .line 219
    const/16 v19, 0x0

    .line 220
    .line 221
    const/16 v20, 0x0

    .line 222
    .line 223
    invoke-static/range {v17 .. v22}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 224
    .line 225
    .line 226
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    if-eqz v1, :cond_11

    .line 228
    .line 229
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_11

    .line 234
    .line 235
    const-string v2, "_id"

    .line 236
    .line 237
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    const-string v7, "_path"

    .line 242
    .line 243
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    const-string v8, "_time"

    .line 248
    .line 249
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    const-string v11, "_use"

    .line 254
    .line 255
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    :cond_d
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v12

    .line 263
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    if-eqz v13, :cond_e

    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_e
    new-instance v13, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 271
    .line 272
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 276
    .line 277
    .line 278
    move-result-wide v14

    .line 279
    iput-wide v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 280
    .line 281
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 282
    .line 283
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 284
    .line 285
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 286
    .line 287
    .line 288
    move-result-wide v14

    .line 289
    iput-wide v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 290
    .line 291
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 292
    .line 293
    .line 294
    move-result v14

    .line 295
    const/4 v9, 0x1

    .line 296
    if-ne v14, v9, :cond_f

    .line 297
    .line 298
    const/4 v14, 0x1

    .line 299
    goto :goto_6

    .line 300
    :cond_f
    move v14, v10

    .line 301
    :goto_6
    iput-boolean v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 302
    .line 303
    iput v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 304
    .line 305
    const v14, -0x70708

    .line 306
    .line 307
    .line 308
    iput v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 309
    .line 310
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_24:I

    .line 311
    .line 312
    iput v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 313
    .line 314
    invoke-static {v12}, Lcom/mycompany/app/db/book/DbBookUser;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v12

    .line 318
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 319
    .line 320
    iget-boolean v12, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->j:Z

    .line 321
    .line 322
    if-eqz v12, :cond_10

    .line 323
    .line 324
    iget-object v12, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->h:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    if-eqz v12, :cond_10

    .line 333
    .line 334
    iput-boolean v10, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->j:Z

    .line 335
    .line 336
    const/4 v9, 0x1

    .line 337
    iput-boolean v9, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 338
    .line 339
    :cond_10
    invoke-static {v13}, Lcom/mycompany/app/list/book/ListBookUser;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 340
    .line 341
    .line 342
    iget-object v12, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 343
    .line 344
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    :goto_7
    iget-boolean v12, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 348
    .line 349
    if-nez v12, :cond_11

    .line 350
    .line 351
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 352
    .line 353
    .line 354
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    if-nez v12, :cond_d

    .line 356
    .line 357
    goto :goto_8

    .line 358
    :catch_0
    const/4 v1, 0x0

    .line 359
    :catch_1
    :cond_11
    :goto_8
    if-eqz v1, :cond_12

    .line 360
    .line 361
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 362
    .line 363
    .line 364
    :cond_12
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 365
    .line 366
    if-eqz v1, :cond_13

    .line 367
    .line 368
    goto/16 :goto_14

    .line 369
    .line 370
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .line 374
    .line 375
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 376
    .line 377
    new-instance v1, Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .line 381
    .line 382
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->m:Ljava/util/ArrayList;

    .line 383
    .line 384
    if-nez v5, :cond_14

    .line 385
    .line 386
    sget v1, Lcom/mycompany/app/pref/PrefList;->W0:I

    .line 387
    .line 388
    if-eqz v1, :cond_14

    .line 389
    .line 390
    const/4 v1, 0x1

    .line 391
    goto :goto_9

    .line 392
    :cond_14
    move v1, v10

    .line 393
    :goto_9
    if-eqz v1, :cond_15

    .line 394
    .line 395
    new-instance v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 396
    .line 397
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 398
    .line 399
    .line 400
    iput v10, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 401
    .line 402
    iget-object v7, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    :cond_15
    if-eqz v6, :cond_1a

    .line 408
    .line 409
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 410
    .line 411
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-nez v2, :cond_1a

    .line 416
    .line 417
    new-instance v2, Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .line 421
    .line 422
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 425
    .line 426
    .line 427
    move-result v7

    .line 428
    move v8, v10

    .line 429
    :cond_16
    :goto_a
    if-ge v8, v7, :cond_19

    .line 430
    .line 431
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v11

    .line 435
    add-int/lit8 v8, v8, 0x1

    .line 436
    .line 437
    check-cast v11, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 438
    .line 439
    iget-boolean v12, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 440
    .line 441
    if-eqz v12, :cond_17

    .line 442
    .line 443
    goto/16 :goto_14

    .line 444
    .line 445
    :cond_17
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 446
    .line 447
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 448
    .line 449
    .line 450
    move-result v12

    .line 451
    if-eqz v12, :cond_18

    .line 452
    .line 453
    goto :goto_a

    .line 454
    :cond_18
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 455
    .line 456
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 457
    .line 458
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v12

    .line 462
    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    if-eqz v12, :cond_16

    .line 467
    .line 468
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_19
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 473
    .line 474
    :cond_1a
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    if-nez v2, :cond_28

    .line 481
    .line 482
    if-nez v5, :cond_1b

    .line 483
    .line 484
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 485
    .line 486
    sget v4, Lcom/mycompany/app/pref/PrefList;->W0:I

    .line 487
    .line 488
    sget v5, Lcom/mycompany/app/pref/PrefList;->X0:I

    .line 489
    .line 490
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->Y0:Z

    .line 491
    .line 492
    invoke-static {v4, v5, v6}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    :try_start_2
    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 497
    .line 498
    .line 499
    :catch_2
    :cond_1b
    iget-boolean v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->r:Z

    .line 500
    .line 501
    if-eqz v2, :cond_1c

    .line 502
    .line 503
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    new-array v4, v2, [Z

    .line 510
    .line 511
    iput-object v4, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->p:[Z

    .line 512
    .line 513
    goto :goto_b

    .line 514
    :cond_1c
    move v2, v10

    .line 515
    :goto_b
    iget-object v11, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 518
    .line 519
    .line 520
    move-result v12

    .line 521
    move v4, v10

    .line 522
    move v6, v4

    .line 523
    move v7, v6

    .line 524
    move v8, v7

    .line 525
    move v13, v8

    .line 526
    const/4 v5, 0x0

    .line 527
    :goto_c
    if-ge v13, v12, :cond_27

    .line 528
    .line 529
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v14

    .line 533
    add-int/lit8 v13, v13, 0x1

    .line 534
    .line 535
    check-cast v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 536
    .line 537
    iget-boolean v15, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 538
    .line 539
    if-eqz v15, :cond_1d

    .line 540
    .line 541
    goto/16 :goto_14

    .line 542
    .line 543
    :cond_1d
    if-nez v14, :cond_1e

    .line 544
    .line 545
    goto :goto_c

    .line 546
    :cond_1e
    iget-object v15, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->m:Ljava/util/ArrayList;

    .line 547
    .line 548
    iget-wide v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 549
    .line 550
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 551
    .line 552
    .line 553
    move-result-object v9

    .line 554
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    if-eqz v1, :cond_21

    .line 558
    .line 559
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 560
    .line 561
    .line 562
    move-result v9

    .line 563
    if-nez v9, :cond_1f

    .line 564
    .line 565
    iget-object v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v9

    .line 571
    if-nez v9, :cond_1f

    .line 572
    .line 573
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookUser;->p(Lcom/mycompany/app/list/book/ListBookUser;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 576
    .line 577
    .line 578
    const/4 v4, 0x0

    .line 579
    const/4 v6, 0x0

    .line 580
    const/4 v7, 0x0

    .line 581
    :cond_1f
    iget-object v5, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 582
    .line 583
    const/4 v9, 0x1

    .line 584
    add-int/2addr v6, v9

    .line 585
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 586
    .line 587
    if-eqz v10, :cond_20

    .line 588
    .line 589
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 590
    .line 591
    .line 592
    move-result v10

    .line 593
    goto :goto_d

    .line 594
    :cond_20
    const/4 v10, 0x0

    .line 595
    :goto_d
    iput v10, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 596
    .line 597
    goto :goto_e

    .line 598
    :cond_21
    const/4 v10, 0x0

    .line 599
    iput v10, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 600
    .line 601
    :goto_e
    iput v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 602
    .line 603
    iput v8, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 604
    .line 605
    iget-wide v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 606
    .line 607
    move-object v15, v3

    .line 608
    move/from16 v19, v4

    .line 609
    .line 610
    iget-wide v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->g:J

    .line 611
    .line 612
    cmp-long v3, v9, v3

    .line 613
    .line 614
    if-nez v3, :cond_22

    .line 615
    .line 616
    iput-object v14, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 617
    .line 618
    :cond_22
    iget-boolean v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 619
    .line 620
    if-eqz v3, :cond_23

    .line 621
    .line 622
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->p:[Z

    .line 623
    .line 624
    if-eqz v3, :cond_23

    .line 625
    .line 626
    if-ge v8, v2, :cond_23

    .line 627
    .line 628
    const/4 v9, 0x1

    .line 629
    aput-boolean v9, v3, v8

    .line 630
    .line 631
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->q:I

    .line 632
    .line 633
    add-int/2addr v3, v9

    .line 634
    iput v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->q:I

    .line 635
    .line 636
    add-int/lit8 v7, v7, 0x1

    .line 637
    .line 638
    goto :goto_f

    .line 639
    :cond_23
    const/4 v9, 0x1

    .line 640
    :goto_f
    iget-boolean v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 641
    .line 642
    if-eqz v3, :cond_26

    .line 643
    .line 644
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->s:I

    .line 645
    .line 646
    iget v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 647
    .line 648
    if-eq v3, v4, :cond_25

    .line 649
    .line 650
    iput v4, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->s:I

    .line 651
    .line 652
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->t:Ljava/util/ArrayList;

    .line 653
    .line 654
    if-nez v3, :cond_24

    .line 655
    .line 656
    new-instance v3, Ljava/util/ArrayList;

    .line 657
    .line 658
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .line 660
    .line 661
    iput-object v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->t:Ljava/util/ArrayList;

    .line 662
    .line 663
    :cond_24
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->t:Ljava/util/ArrayList;

    .line 664
    .line 665
    iget v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 666
    .line 667
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v3

    .line 675
    if-nez v3, :cond_25

    .line 676
    .line 677
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->t:Ljava/util/ArrayList;

    .line 678
    .line 679
    iget v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 680
    .line 681
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 682
    .line 683
    .line 684
    move-result-object v4

    .line 685
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    :cond_25
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->u:I

    .line 689
    .line 690
    const/4 v4, -0x1

    .line 691
    if-ne v3, v4, :cond_26

    .line 692
    .line 693
    iget v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 694
    .line 695
    iput v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->u:I

    .line 696
    .line 697
    :cond_26
    add-int/lit8 v4, v19, 0x1

    .line 698
    .line 699
    add-int/lit8 v8, v8, 0x1

    .line 700
    .line 701
    const/4 v3, 0x0

    .line 702
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 703
    .line 704
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 705
    .line 706
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 707
    .line 708
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 709
    .line 710
    move-object v3, v15

    .line 711
    const/4 v10, 0x0

    .line 712
    goto/16 :goto_c

    .line 713
    .line 714
    :cond_27
    move-object v15, v3

    .line 715
    const/4 v9, 0x1

    .line 716
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 717
    .line 718
    .line 719
    move-result v2

    .line 720
    if-nez v2, :cond_29

    .line 721
    .line 722
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 723
    .line 724
    move-object v3, v15

    .line 725
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookUser;->p(Lcom/mycompany/app/list/book/ListBookUser;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 726
    .line 727
    .line 728
    goto :goto_10

    .line 729
    :cond_28
    const/4 v9, 0x1

    .line 730
    :cond_29
    :goto_10
    if-nez v1, :cond_2b

    .line 731
    .line 732
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 733
    .line 734
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 735
    .line 736
    .line 737
    const/4 v10, 0x0

    .line 738
    iput v10, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 739
    .line 740
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 743
    .line 744
    .line 745
    move-result v2

    .line 746
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 747
    .line 748
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->q:I

    .line 749
    .line 750
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 751
    .line 752
    if-ne v3, v2, :cond_2a

    .line 753
    .line 754
    goto :goto_11

    .line 755
    :cond_2a
    move v9, v10

    .line 756
    :goto_11
    iput-boolean v9, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 757
    .line 758
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 759
    .line 760
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    goto :goto_12

    .line 764
    :cond_2b
    const/4 v10, 0x0

    .line 765
    :goto_12
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->r:Z

    .line 766
    .line 767
    if-eqz v1, :cond_2d

    .line 768
    .line 769
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    if-nez v1, :cond_2d

    .line 776
    .line 777
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 778
    .line 779
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    new-array v2, v1, [Z

    .line 784
    .line 785
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->n:[Z

    .line 786
    .line 787
    new-array v1, v1, [I

    .line 788
    .line 789
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->o:[I

    .line 790
    .line 791
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 792
    .line 793
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    :goto_13
    if-ge v10, v2, :cond_2d

    .line 798
    .line 799
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    add-int/lit8 v10, v10, 0x1

    .line 804
    .line 805
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 806
    .line 807
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 808
    .line 809
    if-eqz v4, :cond_2c

    .line 810
    .line 811
    goto :goto_14

    .line 812
    :cond_2c
    iget v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 813
    .line 814
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->n:[Z

    .line 815
    .line 816
    iget-boolean v6, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 817
    .line 818
    aput-boolean v6, v5, v4

    .line 819
    .line 820
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->o:[I

    .line 821
    .line 822
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 823
    .line 824
    aput v3, v5, v4

    .line 825
    .line 826
    goto :goto_13

    .line 827
    :cond_2d
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 832
    .line 833
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->m:Ljava/util/ArrayList;

    .line 834
    .line 835
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 836
    .line 837
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 838
    .line 839
    :cond_2e
    :goto_14
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookUser;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser;->c:Lcom/mycompany/app/list/book/ListBookUser$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookUser;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->n:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->o:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->p:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->t:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookUser;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookUser;->c:Lcom/mycompany/app/list/book/ListBookUser$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookUser;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->n:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->o:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->p:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->q:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->u:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->r:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->w:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->h:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->l:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->m:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->n:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->o:[I

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->p:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookUser$ListTask;->t:Ljava/util/ArrayList;

    .line 99
    .line 100
    return-void
.end method
