.class Lcom/mycompany/app/list/book/ListBookFilter$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookFilter;
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
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookFilter;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->s:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->u:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookFilter;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookFilter;->d:Z

    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->v:Z

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookFilter;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->w:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookFilter;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v2, Lcom/mycompany/app/list/book/ListBookFilter;

    .line 17
    .line 18
    if-eqz v2, :cond_30

    .line 19
    .line 20
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookFilter;->a:Landroid/content/Context;

    .line 21
    .line 22
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    goto/16 :goto_14

    .line 27
    .line 28
    :cond_1
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->h:Ljava/lang/String;

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
    iput-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->j:Z

    .line 36
    .line 37
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->w:Ljava/lang/String;

    .line 38
    .line 39
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->v:Z

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz v5, :cond_2

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
    :goto_0
    const/4 v8, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v2, v2, Lcom/mycompany/app/list/book/ListBookFilter;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-interface {v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-boolean v8, v2, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 62
    .line 63
    if-eqz v8, :cond_3

    .line 64
    .line 65
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->r:Z

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
    goto :goto_1

    .line 74
    :cond_3
    move v2, v7

    .line 75
    goto :goto_0

    .line 76
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-eqz v5, :cond_5

    .line 84
    .line 85
    if-eqz v2, :cond_4

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
    goto :goto_2

    .line 94
    :cond_4
    const/4 v9, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    iget-object v9, v9, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 101
    .line 102
    :goto_2
    if-eqz v9, :cond_b

    .line 103
    .line 104
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-nez v10, :cond_b

    .line 109
    .line 110
    new-instance v10, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .line 114
    .line 115
    if-eqz v8, :cond_6

    .line 116
    .line 117
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    move v9, v7

    .line 123
    :goto_3
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
    :goto_4
    if-ge v13, v11, :cond_b

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
    if-eqz v15, :cond_7

    .line 142
    .line 143
    goto/16 :goto_14

    .line 144
    .line 145
    :cond_7
    if-ge v12, v9, :cond_8

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
    if-eqz v1, :cond_9

    .line 162
    .line 163
    add-int/lit8 v12, v12, 0x1

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_8
    move/from16 v16, v2

    .line 167
    .line 168
    iput-boolean v7, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 169
    .line 170
    :cond_9
    :goto_5
    iput-boolean v7, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 171
    .line 172
    if-nez v5, :cond_a

    .line 173
    .line 174
    invoke-static {v14}, Lcom/mycompany/app/list/book/ListBookFilter;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 175
    .line 176
    .line 177
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

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
    goto :goto_4

    .line 186
    :cond_b
    move/from16 v16, v2

    .line 187
    .line 188
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 189
    .line 190
    if-eqz v1, :cond_c

    .line 191
    .line 192
    goto/16 :goto_14

    .line 193
    .line 194
    :cond_c
    if-nez v5, :cond_1d

    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_1d

    .line 203
    .line 204
    :try_start_0
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    const-string v9, "DbBookFilter_table"

    .line 213
    .line 214
    const/4 v12, 0x0

    .line 215
    const/4 v13, 0x0

    .line 216
    const/4 v10, 0x0

    .line 217
    const/4 v11, 0x0

    .line 218
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 219
    .line 220
    .line 221
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    if-eqz v1, :cond_1b

    .line 223
    .line 224
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_1b

    .line 229
    .line 230
    const-string v2, "_id"

    .line 231
    .line 232
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    const-string v8, "_path"

    .line 237
    .line 238
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    const-string v9, "_title"

    .line 243
    .line 244
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    const-string v10, "_time"

    .line 249
    .line 250
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    const-string v11, "_use"

    .line 255
    .line 256
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    :goto_6
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v13

    .line 268
    if-eqz v13, :cond_d

    .line 269
    .line 270
    goto/16 :goto_c

    .line 271
    .line 272
    :cond_d
    new-instance v13, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 273
    .line 274
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 278
    .line 279
    .line 280
    move-result-wide v6

    .line 281
    iput-wide v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 282
    .line 283
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 284
    .line 285
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 286
    .line 287
    .line 288
    move-result-wide v6

    .line 289
    iput-wide v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 290
    .line 291
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    const/4 v15, 0x1

    .line 296
    if-ne v6, v15, :cond_e

    .line 297
    .line 298
    const/4 v6, 0x1

    .line 299
    goto :goto_7

    .line 300
    :cond_e
    const/4 v6, 0x0

    .line 301
    :goto_7
    iput-boolean v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 302
    .line 303
    const/4 v6, 0x0

    .line 304
    iput v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 305
    .line 306
    invoke-static {v12}, Lcom/mycompany/app/db/book/DbBookFilter;->e(Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v6

    .line 310
    iput v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 311
    .line 312
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_red_24:I

    .line 313
    .line 314
    if-eq v6, v7, :cond_10

    .line 315
    .line 316
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->ic_adblock:I

    .line 317
    .line 318
    if-eq v6, v14, :cond_10

    .line 319
    .line 320
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->ic_adguard:I

    .line 321
    .line 322
    if-ne v6, v14, :cond_f

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_f
    const v14, -0x70708

    .line 326
    .line 327
    .line 328
    goto :goto_9

    .line 329
    :cond_10
    :goto_8
    const/4 v14, 0x0

    .line 330
    :goto_9
    iput v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 331
    .line 332
    if-ne v6, v7, :cond_11

    .line 333
    .line 334
    const/4 v6, 0x0

    .line 335
    goto :goto_a

    .line 336
    :cond_11
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->ic_adblock:I

    .line 337
    .line 338
    if-ne v6, v7, :cond_12

    .line 339
    .line 340
    const/4 v6, 0x1

    .line 341
    goto :goto_a

    .line 342
    :cond_12
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->ic_adguard:I

    .line 343
    .line 344
    if-ne v6, v7, :cond_13

    .line 345
    .line 346
    const/4 v6, 0x2

    .line 347
    goto :goto_a

    .line 348
    :cond_13
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 349
    .line 350
    if-ne v6, v7, :cond_14

    .line 351
    .line 352
    const/4 v6, 0x3

    .line 353
    goto :goto_a

    .line 354
    :cond_14
    const/4 v6, 0x4

    .line 355
    :goto_a
    iput v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 356
    .line 357
    const-string v6, "sb_user_filter_path"

    .line 358
    .line 359
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-eqz v6, :cond_15

    .line 364
    .line 365
    sget v6, Lnet/kaki87/soul2/testing/R$string;->user_filter:I

    .line 366
    .line 367
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    iput-object v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_15
    invoke-static {v12}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    if-eqz v6, :cond_17

    .line 379
    .line 380
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    iput-object v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 385
    .line 386
    invoke-static {v3, v12}, Lcom/mycompany/app/main/MainUtil;->p1(Landroid/content/Context;Ljava/lang/String;)J

    .line 387
    .line 388
    .line 389
    move-result-wide v6

    .line 390
    iput-wide v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 391
    .line 392
    const-wide/16 v17, -0x4d2

    .line 393
    .line 394
    cmp-long v12, v6, v17

    .line 395
    .line 396
    if-nez v12, :cond_16

    .line 397
    .line 398
    sget v6, Lnet/kaki87/soul2/testing/R$string;->permission_removed:I

    .line 399
    .line 400
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    iput-object v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 405
    .line 406
    goto :goto_b

    .line 407
    :cond_16
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    iput-object v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_17
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    iput-object v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {v3, v12}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v6

    .line 424
    iput-object v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 425
    .line 426
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 427
    .line 428
    .line 429
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 430
    if-nez v6, :cond_18

    .line 431
    .line 432
    :try_start_2
    new-instance v6, Ljava/io/File;

    .line 433
    .line 434
    iget-object v7, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 435
    .line 436
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 440
    .line 441
    .line 442
    move-result-wide v6

    .line 443
    iput-wide v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 444
    .line 445
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    iput-object v6, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 450
    .line 451
    :catch_0
    :cond_18
    :goto_b
    :try_start_3
    iget-boolean v6, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->j:Z

    .line 452
    .line 453
    if-eqz v6, :cond_19

    .line 454
    .line 455
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->h:Ljava/lang/String;

    .line 456
    .line 457
    iget-object v7, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 458
    .line 459
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    if-eqz v6, :cond_19

    .line 464
    .line 465
    const/4 v6, 0x0

    .line 466
    iput-boolean v6, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->j:Z

    .line 467
    .line 468
    const/4 v15, 0x1

    .line 469
    iput-boolean v15, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 470
    .line 471
    :cond_19
    invoke-static {v13}, Lcom/mycompany/app/list/book/ListBookFilter;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 472
    .line 473
    .line 474
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    :goto_c
    iget-boolean v6, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 480
    .line 481
    if-nez v6, :cond_1b

    .line 482
    .line 483
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 484
    .line 485
    .line 486
    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 487
    if-nez v6, :cond_1a

    .line 488
    .line 489
    goto :goto_d

    .line 490
    :cond_1a
    const/4 v7, 0x0

    .line 491
    goto/16 :goto_6

    .line 492
    .line 493
    :catch_1
    const/4 v1, 0x0

    .line 494
    :catch_2
    :cond_1b
    :goto_d
    if-eqz v1, :cond_1c

    .line 495
    .line 496
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 497
    .line 498
    .line 499
    :cond_1c
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 500
    .line 501
    if-eqz v1, :cond_1d

    .line 502
    .line 503
    goto/16 :goto_14

    .line 504
    .line 505
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    .line 506
    .line 507
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .line 509
    .line 510
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->k:Ljava/util/ArrayList;

    .line 511
    .line 512
    new-instance v1, Ljava/util/ArrayList;

    .line 513
    .line 514
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .line 516
    .line 517
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->m:Ljava/util/ArrayList;

    .line 518
    .line 519
    if-eqz v16, :cond_22

    .line 520
    .line 521
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 522
    .line 523
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-nez v1, :cond_22

    .line 528
    .line 529
    new-instance v1, Ljava/util/ArrayList;

    .line 530
    .line 531
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .line 533
    .line 534
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 535
    .line 536
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    const/4 v7, 0x0

    .line 541
    :cond_1e
    :goto_e
    if-ge v7, v6, :cond_21

    .line 542
    .line 543
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    add-int/lit8 v7, v7, 0x1

    .line 548
    .line 549
    check-cast v8, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 550
    .line 551
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 552
    .line 553
    if-eqz v9, :cond_1f

    .line 554
    .line 555
    goto/16 :goto_14

    .line 556
    .line 557
    :cond_1f
    iget-object v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 558
    .line 559
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 560
    .line 561
    .line 562
    move-result v9

    .line 563
    if-eqz v9, :cond_20

    .line 564
    .line 565
    goto :goto_e

    .line 566
    :cond_20
    iget-object v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 567
    .line 568
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 569
    .line 570
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v9

    .line 574
    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 575
    .line 576
    .line 577
    move-result v9

    .line 578
    if-eqz v9, :cond_1e

    .line 579
    .line 580
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    goto :goto_e

    .line 584
    :cond_21
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 585
    .line 586
    :cond_22
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    if-nez v1, :cond_2c

    .line 593
    .line 594
    if-nez v5, :cond_23

    .line 595
    .line 596
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 597
    .line 598
    sget v2, Lcom/mycompany/app/pref/PrefList;->u0:I

    .line 599
    .line 600
    sget-boolean v4, Lcom/mycompany/app/pref/PrefList;->v0:Z

    .line 601
    .line 602
    const/4 v6, 0x0

    .line 603
    invoke-static {v6, v2, v4}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    :try_start_4
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 608
    .line 609
    .line 610
    :catch_3
    :cond_23
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->r:Z

    .line 611
    .line 612
    if-eqz v1, :cond_24

    .line 613
    .line 614
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 615
    .line 616
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    new-array v2, v1, [Z

    .line 621
    .line 622
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->p:[Z

    .line 623
    .line 624
    move v6, v1

    .line 625
    goto :goto_f

    .line 626
    :cond_24
    const/4 v6, 0x0

    .line 627
    :goto_f
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 628
    .line 629
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 630
    .line 631
    .line 632
    move-result v2

    .line 633
    const/4 v4, 0x0

    .line 634
    const/4 v5, 0x0

    .line 635
    const/4 v7, 0x0

    .line 636
    :goto_10
    if-ge v7, v2, :cond_2c

    .line 637
    .line 638
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v8

    .line 642
    add-int/lit8 v7, v7, 0x1

    .line 643
    .line 644
    check-cast v8, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 645
    .line 646
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 647
    .line 648
    if-eqz v9, :cond_25

    .line 649
    .line 650
    goto/16 :goto_14

    .line 651
    .line 652
    :cond_25
    if-nez v8, :cond_26

    .line 653
    .line 654
    goto :goto_10

    .line 655
    :cond_26
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->m:Ljava/util/ArrayList;

    .line 656
    .line 657
    iget-wide v10, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 658
    .line 659
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 660
    .line 661
    .line 662
    move-result-object v10

    .line 663
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    const/4 v9, 0x0

    .line 667
    iput v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 668
    .line 669
    iput v4, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 670
    .line 671
    iput v5, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 672
    .line 673
    iget-wide v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 674
    .line 675
    iget-wide v11, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->g:J

    .line 676
    .line 677
    cmp-long v9, v9, v11

    .line 678
    .line 679
    if-nez v9, :cond_27

    .line 680
    .line 681
    iput-object v8, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 682
    .line 683
    :cond_27
    iget-boolean v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 684
    .line 685
    if-eqz v9, :cond_28

    .line 686
    .line 687
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->p:[Z

    .line 688
    .line 689
    if-eqz v9, :cond_28

    .line 690
    .line 691
    if-ge v5, v6, :cond_28

    .line 692
    .line 693
    const/4 v15, 0x1

    .line 694
    aput-boolean v15, v9, v5

    .line 695
    .line 696
    iget v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->q:I

    .line 697
    .line 698
    add-int/2addr v9, v15

    .line 699
    iput v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->q:I

    .line 700
    .line 701
    goto :goto_11

    .line 702
    :cond_28
    const/4 v15, 0x1

    .line 703
    :goto_11
    iget-boolean v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 704
    .line 705
    if-eqz v9, :cond_2b

    .line 706
    .line 707
    iget v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->s:I

    .line 708
    .line 709
    if-eqz v9, :cond_2a

    .line 710
    .line 711
    const/4 v9, 0x0

    .line 712
    iput v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->s:I

    .line 713
    .line 714
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->t:Ljava/util/ArrayList;

    .line 715
    .line 716
    if-nez v9, :cond_29

    .line 717
    .line 718
    new-instance v9, Ljava/util/ArrayList;

    .line 719
    .line 720
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .line 722
    .line 723
    iput-object v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->t:Ljava/util/ArrayList;

    .line 724
    .line 725
    :cond_29
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->t:Ljava/util/ArrayList;

    .line 726
    .line 727
    iget v10, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 728
    .line 729
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 730
    .line 731
    .line 732
    move-result-object v10

    .line 733
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v9

    .line 737
    if-nez v9, :cond_2a

    .line 738
    .line 739
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->t:Ljava/util/ArrayList;

    .line 740
    .line 741
    iget v10, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 742
    .line 743
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 744
    .line 745
    .line 746
    move-result-object v10

    .line 747
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    :cond_2a
    iget v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->u:I

    .line 751
    .line 752
    const/4 v10, -0x1

    .line 753
    if-ne v9, v10, :cond_2b

    .line 754
    .line 755
    iget v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 756
    .line 757
    iput v9, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->u:I

    .line 758
    .line 759
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 760
    .line 761
    add-int/lit8 v5, v5, 0x1

    .line 762
    .line 763
    const/4 v14, 0x0

    .line 764
    iput-object v14, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 765
    .line 766
    iput-object v14, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 767
    .line 768
    iput-object v14, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 769
    .line 770
    iput-object v14, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 771
    .line 772
    goto/16 :goto_10

    .line 773
    .line 774
    :cond_2c
    const/4 v15, 0x1

    .line 775
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 776
    .line 777
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 778
    .line 779
    .line 780
    const/4 v6, 0x0

    .line 781
    iput v6, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 782
    .line 783
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 784
    .line 785
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 790
    .line 791
    iget v4, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->q:I

    .line 792
    .line 793
    iput v4, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 794
    .line 795
    if-ne v4, v2, :cond_2d

    .line 796
    .line 797
    goto :goto_12

    .line 798
    :cond_2d
    move v15, v6

    .line 799
    :goto_12
    iput-boolean v15, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 800
    .line 801
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->k:Ljava/util/ArrayList;

    .line 802
    .line 803
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->r:Z

    .line 807
    .line 808
    if-eqz v1, :cond_2f

    .line 809
    .line 810
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->k:Ljava/util/ArrayList;

    .line 811
    .line 812
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 813
    .line 814
    .line 815
    move-result v1

    .line 816
    if-nez v1, :cond_2f

    .line 817
    .line 818
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->k:Ljava/util/ArrayList;

    .line 819
    .line 820
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    new-array v2, v1, [Z

    .line 825
    .line 826
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->n:[Z

    .line 827
    .line 828
    new-array v1, v1, [I

    .line 829
    .line 830
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->o:[I

    .line 831
    .line 832
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->k:Ljava/util/ArrayList;

    .line 833
    .line 834
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 835
    .line 836
    .line 837
    move-result v2

    .line 838
    move v7, v6

    .line 839
    :goto_13
    if-ge v7, v2, :cond_2f

    .line 840
    .line 841
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 842
    .line 843
    .line 844
    move-result-object v4

    .line 845
    add-int/lit8 v7, v7, 0x1

    .line 846
    .line 847
    check-cast v4, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 848
    .line 849
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 850
    .line 851
    if-eqz v5, :cond_2e

    .line 852
    .line 853
    goto :goto_14

    .line 854
    :cond_2e
    iget v5, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 855
    .line 856
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->n:[Z

    .line 857
    .line 858
    iget-boolean v8, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 859
    .line 860
    aput-boolean v8, v6, v5

    .line 861
    .line 862
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->o:[I

    .line 863
    .line 864
    iget v4, v4, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 865
    .line 866
    aput v4, v6, v5

    .line 867
    .line 868
    goto :goto_13

    .line 869
    :cond_2f
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 874
    .line 875
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->m:Ljava/util/ArrayList;

    .line 876
    .line 877
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 878
    .line 879
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 880
    .line 881
    :cond_30
    :goto_14
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookFilter;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter;->c:Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookFilter;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->n:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->o:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->p:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->t:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookFilter;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookFilter;->c:Lcom/mycompany/app/list/book/ListBookFilter$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookFilter;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->n:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->o:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->p:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->q:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->u:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->r:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->w:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->h:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->l:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->m:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->n:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->o:[I

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->p:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookFilter$ListTask;->t:Ljava/util/ArrayList;

    .line 99
    .line 100
    return-void
.end method
