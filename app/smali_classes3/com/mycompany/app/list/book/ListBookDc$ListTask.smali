.class Lcom/mycompany/app/list/book/ListBookDc$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookDc;
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
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookDc;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->s:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->u:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookDc;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookDc;->d:Z

    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->v:Z

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookDc;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->w:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookDc;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1c

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
    check-cast v3, Lcom/mycompany/app/list/book/ListBookDc;

    .line 18
    .line 19
    if-eqz v3, :cond_34

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/book/ListBookDc;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto/16 :goto_1c

    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->h:Ljava/lang/String;

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
    iput-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->j:Z

    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->w:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->v:Z

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
    iget-object v6, v3, Lcom/mycompany/app/list/book/ListBookDc;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->r:Z

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
    iput-object v8, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

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
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookDc;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDc;

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
    goto/16 :goto_1c

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
    invoke-static {v15}, Lcom/mycompany/app/list/book/ListBookDc;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 176
    .line 177
    .line 178
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

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
    goto/16 :goto_1c

    .line 194
    .line 195
    :cond_c
    if-nez v5, :cond_16

    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_16

    .line 204
    .line 205
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/db/book/DbBookDc;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDc;

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
    const-string v18, "DbBookDc_table"

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 227
    if-eqz v1, :cond_13

    .line 228
    .line 229
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_13

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
    const-string v7, "_isip"

    .line 242
    .line 243
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    const-string v8, "_path"

    .line 248
    .line 249
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    const-string v11, "_name"

    .line 254
    .line 255
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    const-string v12, "_text"

    .line 260
    .line 261
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    const-string v13, "_time"

    .line 266
    .line 267
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v13

    .line 271
    :goto_6
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v14

    .line 275
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v15

    .line 279
    if-eqz v15, :cond_d

    .line 280
    .line 281
    move-object/from16 v19, v3

    .line 282
    .line 283
    move/from16 v20, v5

    .line 284
    .line 285
    move/from16 v21, v6

    .line 286
    .line 287
    goto/16 :goto_b

    .line 288
    .line 289
    :cond_d
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    const/4 v9, 0x1

    .line 294
    if-ne v15, v9, :cond_e

    .line 295
    .line 296
    const/4 v9, 0x1

    .line 297
    goto :goto_7

    .line 298
    :cond_e
    move v9, v10

    .line 299
    :goto_7
    if-nez v9, :cond_f

    .line 300
    .line 301
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    move-object/from16 v10, v18

    .line 306
    .line 307
    :goto_8
    move-object/from16 v19, v3

    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_f
    const/4 v10, 0x0

    .line 311
    goto :goto_8

    .line 312
    :goto_9
    :try_start_2
    new-instance v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 313
    .line 314
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 315
    .line 316
    .line 317
    move/from16 v20, v5

    .line 318
    .line 319
    move/from16 v21, v6

    .line 320
    .line 321
    :try_start_3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 322
    .line 323
    .line 324
    move-result-wide v5

    .line 325
    iput-wide v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 326
    .line 327
    iput v15, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 328
    .line 329
    iput-object v14, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 330
    .line 331
    iput-object v10, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->j:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v14, v10, v9}, Lcom/mycompany/app/db/book/DbBookDc;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    iput-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 338
    .line 339
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    iput-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 344
    .line 345
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v5

    .line 349
    iput-wide v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 350
    .line 351
    const/4 v5, 0x0

    .line 352
    iput v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 353
    .line 354
    const v5, -0x70708

    .line 355
    .line 356
    .line 357
    iput v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 358
    .line 359
    if-eqz v9, :cond_10

    .line 360
    .line 361
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_black_24:I

    .line 362
    .line 363
    iput v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 364
    .line 365
    goto :goto_a

    .line 366
    :cond_10
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_kid_star_black_24:I

    .line 367
    .line 368
    iput v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 369
    .line 370
    :goto_a
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->j:Z

    .line 371
    .line 372
    if-eqz v5, :cond_11

    .line 373
    .line 374
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->h:Ljava/lang/String;

    .line 375
    .line 376
    iget-object v6, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-eqz v5, :cond_11

    .line 383
    .line 384
    const/4 v5, 0x0

    .line 385
    iput-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->j:Z

    .line 386
    .line 387
    const/4 v9, 0x1

    .line 388
    iput-boolean v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 389
    .line 390
    :cond_11
    invoke-static {v3}, Lcom/mycompany/app/list/book/ListBookDc;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 391
    .line 392
    .line 393
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 394
    .line 395
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    :goto_b
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 399
    .line 400
    if-nez v3, :cond_14

    .line 401
    .line 402
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 403
    .line 404
    .line 405
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 406
    if-nez v3, :cond_12

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_12
    move-object/from16 v3, v19

    .line 410
    .line 411
    move/from16 v5, v20

    .line 412
    .line 413
    move/from16 v6, v21

    .line 414
    .line 415
    const/4 v10, 0x0

    .line 416
    goto/16 :goto_6

    .line 417
    .line 418
    :catch_0
    :cond_13
    move-object/from16 v19, v3

    .line 419
    .line 420
    :catch_1
    move/from16 v20, v5

    .line 421
    .line 422
    move/from16 v21, v6

    .line 423
    .line 424
    goto :goto_c

    .line 425
    :catch_2
    move-object/from16 v19, v3

    .line 426
    .line 427
    move/from16 v20, v5

    .line 428
    .line 429
    move/from16 v21, v6

    .line 430
    .line 431
    const/4 v1, 0x0

    .line 432
    :catch_3
    :cond_14
    :goto_c
    if-eqz v1, :cond_15

    .line 433
    .line 434
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 435
    .line 436
    .line 437
    :cond_15
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 438
    .line 439
    if-eqz v1, :cond_17

    .line 440
    .line 441
    goto/16 :goto_1c

    .line 442
    .line 443
    :cond_16
    move-object/from16 v19, v3

    .line 444
    .line 445
    move/from16 v20, v5

    .line 446
    .line 447
    move/from16 v21, v6

    .line 448
    .line 449
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .line 453
    .line 454
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 455
    .line 456
    new-instance v1, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->m:Ljava/util/ArrayList;

    .line 462
    .line 463
    if-nez v20, :cond_18

    .line 464
    .line 465
    sget v1, Lcom/mycompany/app/pref/PrefList;->p0:I

    .line 466
    .line 467
    if-eqz v1, :cond_18

    .line 468
    .line 469
    const/4 v1, 0x1

    .line 470
    goto :goto_d

    .line 471
    :cond_18
    const/4 v1, 0x0

    .line 472
    :goto_d
    if-eqz v1, :cond_19

    .line 473
    .line 474
    new-instance v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 475
    .line 476
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 477
    .line 478
    .line 479
    const/4 v5, 0x0

    .line 480
    iput v5, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 481
    .line 482
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 483
    .line 484
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    :cond_19
    if-eqz v21, :cond_1e

    .line 488
    .line 489
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 490
    .line 491
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 492
    .line 493
    .line 494
    move-result v2

    .line 495
    if-nez v2, :cond_1e

    .line 496
    .line 497
    new-instance v2, Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .line 501
    .line 502
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    const/4 v6, 0x0

    .line 509
    :cond_1a
    :goto_e
    if-ge v6, v5, :cond_1d

    .line 510
    .line 511
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v7

    .line 515
    add-int/lit8 v6, v6, 0x1

    .line 516
    .line 517
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 518
    .line 519
    iget-boolean v8, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 520
    .line 521
    if-eqz v8, :cond_1b

    .line 522
    .line 523
    goto/16 :goto_1c

    .line 524
    .line 525
    :cond_1b
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 526
    .line 527
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 528
    .line 529
    .line 530
    move-result v8

    .line 531
    if-eqz v8, :cond_1c

    .line 532
    .line 533
    goto :goto_e

    .line 534
    :cond_1c
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 535
    .line 536
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 537
    .line 538
    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v8

    .line 542
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 543
    .line 544
    .line 545
    move-result v8

    .line 546
    if-eqz v8, :cond_1a

    .line 547
    .line 548
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    goto :goto_e

    .line 552
    :cond_1d
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 553
    .line 554
    :cond_1e
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    if-nez v2, :cond_2f

    .line 561
    .line 562
    if-nez v20, :cond_1f

    .line 563
    .line 564
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 565
    .line 566
    sget v3, Lcom/mycompany/app/pref/PrefList;->p0:I

    .line 567
    .line 568
    sget v4, Lcom/mycompany/app/pref/PrefList;->q0:I

    .line 569
    .line 570
    sget-boolean v5, Lcom/mycompany/app/pref/PrefList;->r0:Z

    .line 571
    .line 572
    invoke-static {v3, v4, v5}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    :try_start_4
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 577
    .line 578
    .line 579
    :catch_4
    :cond_1f
    iget-boolean v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->r:Z

    .line 580
    .line 581
    if-eqz v2, :cond_20

    .line 582
    .line 583
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 586
    .line 587
    .line 588
    move-result v2

    .line 589
    new-array v3, v2, [Z

    .line 590
    .line 591
    iput-object v3, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->p:[Z

    .line 592
    .line 593
    goto :goto_f

    .line 594
    :cond_20
    const/4 v2, 0x0

    .line 595
    :goto_f
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 598
    .line 599
    .line 600
    move-result v11

    .line 601
    const/4 v3, 0x0

    .line 602
    const/4 v4, 0x0

    .line 603
    const/4 v5, 0x0

    .line 604
    const/4 v6, 0x0

    .line 605
    const/4 v7, 0x0

    .line 606
    const/4 v8, 0x0

    .line 607
    const/4 v13, -0x1

    .line 608
    :goto_10
    const-string v14, "\ub2c9\ub124\uc784"

    .line 609
    .line 610
    const-string v15, "IP"

    .line 611
    .line 612
    if-ge v3, v11, :cond_2d

    .line 613
    .line 614
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v17

    .line 618
    add-int/lit8 v20, v3, 0x1

    .line 619
    .line 620
    move-object/from16 v3, v17

    .line 621
    .line 622
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 623
    .line 624
    iget-boolean v9, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 625
    .line 626
    if-eqz v9, :cond_21

    .line 627
    .line 628
    goto/16 :goto_1c

    .line 629
    .line 630
    :cond_21
    if-nez v3, :cond_22

    .line 631
    .line 632
    :goto_11
    move/from16 v3, v20

    .line 633
    .line 634
    goto :goto_10

    .line 635
    :cond_22
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->m:Ljava/util/ArrayList;

    .line 636
    .line 637
    move/from16 v22, v13

    .line 638
    .line 639
    iget-wide v12, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 640
    .line 641
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 642
    .line 643
    .line 644
    move-result-object v12

    .line 645
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    .line 647
    .line 648
    if-eqz v1, :cond_26

    .line 649
    .line 650
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 651
    .line 652
    .line 653
    move-result v9

    .line 654
    if-nez v9, :cond_24

    .line 655
    .line 656
    iget-object v9, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 657
    .line 658
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v4

    .line 662
    if-nez v4, :cond_24

    .line 663
    .line 664
    move/from16 v12, v22

    .line 665
    .line 666
    const/4 v9, 0x1

    .line 667
    if-ne v12, v9, :cond_23

    .line 668
    .line 669
    move-object v5, v15

    .line 670
    goto :goto_12

    .line 671
    :cond_23
    move-object v5, v14

    .line 672
    :goto_12
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 673
    .line 674
    move-object v13, v3

    .line 675
    move-object/from16 v3, v19

    .line 676
    .line 677
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookDc;->p(Lcom/mycompany/app/list/book/ListBookDc;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 678
    .line 679
    .line 680
    const/4 v5, 0x0

    .line 681
    const/4 v6, 0x0

    .line 682
    const/4 v7, 0x0

    .line 683
    goto :goto_13

    .line 684
    :cond_24
    move-object v13, v3

    .line 685
    move-object/from16 v3, v19

    .line 686
    .line 687
    const/4 v9, 0x1

    .line 688
    :goto_13
    iget-object v4, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 689
    .line 690
    iget v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 691
    .line 692
    add-int/2addr v6, v9

    .line 693
    iget-object v14, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 694
    .line 695
    if-eqz v14, :cond_25

    .line 696
    .line 697
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 698
    .line 699
    .line 700
    move-result v14

    .line 701
    goto :goto_14

    .line 702
    :cond_25
    const/4 v14, 0x0

    .line 703
    :goto_14
    iput v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 704
    .line 705
    goto :goto_15

    .line 706
    :cond_26
    move-object v13, v3

    .line 707
    move-object/from16 v3, v19

    .line 708
    .line 709
    move/from16 v12, v22

    .line 710
    .line 711
    const/4 v14, 0x0

    .line 712
    iput v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 713
    .line 714
    :goto_15
    iput v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 715
    .line 716
    iput v8, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 717
    .line 718
    iget-wide v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 719
    .line 720
    move-object/from16 v17, v10

    .line 721
    .line 722
    iget-wide v9, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->g:J

    .line 723
    .line 724
    cmp-long v9, v14, v9

    .line 725
    .line 726
    if-nez v9, :cond_27

    .line 727
    .line 728
    iput-object v13, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 729
    .line 730
    :cond_27
    iget-boolean v9, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 731
    .line 732
    if-eqz v9, :cond_28

    .line 733
    .line 734
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->p:[Z

    .line 735
    .line 736
    if-eqz v9, :cond_28

    .line 737
    .line 738
    if-ge v8, v2, :cond_28

    .line 739
    .line 740
    const/16 v19, 0x1

    .line 741
    .line 742
    aput-boolean v19, v9, v8

    .line 743
    .line 744
    iget v9, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->q:I

    .line 745
    .line 746
    add-int/lit8 v10, v9, 0x1

    .line 747
    .line 748
    iput v10, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->q:I

    .line 749
    .line 750
    add-int/lit8 v7, v7, 0x1

    .line 751
    .line 752
    :cond_28
    iget-boolean v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 753
    .line 754
    if-eqz v10, :cond_2b

    .line 755
    .line 756
    iget v10, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->s:I

    .line 757
    .line 758
    iget v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 759
    .line 760
    if-eq v10, v14, :cond_2a

    .line 761
    .line 762
    iput v14, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->s:I

    .line 763
    .line 764
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->t:Ljava/util/ArrayList;

    .line 765
    .line 766
    if-nez v10, :cond_29

    .line 767
    .line 768
    new-instance v10, Ljava/util/ArrayList;

    .line 769
    .line 770
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .line 772
    .line 773
    iput-object v10, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->t:Ljava/util/ArrayList;

    .line 774
    .line 775
    :cond_29
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->t:Ljava/util/ArrayList;

    .line 776
    .line 777
    iget v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 778
    .line 779
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 780
    .line 781
    .line 782
    move-result-object v14

    .line 783
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    move-result v10

    .line 787
    if-nez v10, :cond_2a

    .line 788
    .line 789
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->t:Ljava/util/ArrayList;

    .line 790
    .line 791
    iget v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 792
    .line 793
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 794
    .line 795
    .line 796
    move-result-object v14

    .line 797
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    :cond_2a
    iget v10, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->u:I

    .line 801
    .line 802
    const/4 v14, -0x1

    .line 803
    if-ne v10, v14, :cond_2c

    .line 804
    .line 805
    iget v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 806
    .line 807
    iput v10, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->u:I

    .line 808
    .line 809
    goto :goto_16

    .line 810
    :cond_2b
    const/4 v14, -0x1

    .line 811
    :cond_2c
    :goto_16
    add-int/lit8 v5, v5, 0x1

    .line 812
    .line 813
    add-int/lit8 v8, v8, 0x1

    .line 814
    .line 815
    const/4 v10, 0x0

    .line 816
    iput-object v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 817
    .line 818
    iput-object v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 819
    .line 820
    iput-object v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 821
    .line 822
    iput-object v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 823
    .line 824
    move-object/from16 v19, v3

    .line 825
    .line 826
    move v13, v12

    .line 827
    move-object/from16 v10, v17

    .line 828
    .line 829
    goto/16 :goto_11

    .line 830
    .line 831
    :cond_2d
    move v12, v13

    .line 832
    move-object/from16 v3, v19

    .line 833
    .line 834
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 835
    .line 836
    .line 837
    move-result v2

    .line 838
    if-nez v2, :cond_2f

    .line 839
    .line 840
    const/4 v9, 0x1

    .line 841
    if-ne v12, v9, :cond_2e

    .line 842
    .line 843
    move-object v5, v15

    .line 844
    goto :goto_17

    .line 845
    :cond_2e
    move-object v5, v14

    .line 846
    :goto_17
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 847
    .line 848
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookDc;->p(Lcom/mycompany/app/list/book/ListBookDc;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 849
    .line 850
    .line 851
    goto :goto_18

    .line 852
    :cond_2f
    const/4 v9, 0x1

    .line 853
    :goto_18
    if-nez v1, :cond_31

    .line 854
    .line 855
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 856
    .line 857
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 858
    .line 859
    .line 860
    const/4 v5, 0x0

    .line 861
    iput v5, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 862
    .line 863
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 864
    .line 865
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 866
    .line 867
    .line 868
    move-result v2

    .line 869
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 870
    .line 871
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->q:I

    .line 872
    .line 873
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 874
    .line 875
    if-ne v3, v2, :cond_30

    .line 876
    .line 877
    goto :goto_19

    .line 878
    :cond_30
    move v9, v5

    .line 879
    :goto_19
    iput-boolean v9, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 880
    .line 881
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 882
    .line 883
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    goto :goto_1a

    .line 887
    :cond_31
    const/4 v5, 0x0

    .line 888
    :goto_1a
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->r:Z

    .line 889
    .line 890
    if-eqz v1, :cond_33

    .line 891
    .line 892
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 893
    .line 894
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 895
    .line 896
    .line 897
    move-result v1

    .line 898
    if-nez v1, :cond_33

    .line 899
    .line 900
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 901
    .line 902
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 903
    .line 904
    .line 905
    move-result v1

    .line 906
    new-array v2, v1, [Z

    .line 907
    .line 908
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->n:[Z

    .line 909
    .line 910
    new-array v1, v1, [I

    .line 911
    .line 912
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->o:[I

    .line 913
    .line 914
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 915
    .line 916
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 917
    .line 918
    .line 919
    move-result v2

    .line 920
    move v10, v5

    .line 921
    :goto_1b
    if-ge v10, v2, :cond_33

    .line 922
    .line 923
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    add-int/lit8 v10, v10, 0x1

    .line 928
    .line 929
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 930
    .line 931
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 932
    .line 933
    if-eqz v4, :cond_32

    .line 934
    .line 935
    goto :goto_1c

    .line 936
    :cond_32
    iget v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 937
    .line 938
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->n:[Z

    .line 939
    .line 940
    iget-boolean v6, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 941
    .line 942
    aput-boolean v6, v5, v4

    .line 943
    .line 944
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->o:[I

    .line 945
    .line 946
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 947
    .line 948
    aput v3, v5, v4

    .line 949
    .line 950
    goto :goto_1b

    .line 951
    :cond_33
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/data/book/DataBookDc;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDc;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 956
    .line 957
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->m:Ljava/util/ArrayList;

    .line 958
    .line 959
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 960
    .line 961
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 962
    .line 963
    :cond_34
    :goto_1c
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookDc;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc;->c:Lcom/mycompany/app/list/book/ListBookDc$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookDc;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->n:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->o:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->p:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->t:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookDc;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookDc;->c:Lcom/mycompany/app/list/book/ListBookDc$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookDc;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->n:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->o:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->p:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->q:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->u:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->r:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->w:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->h:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->l:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->m:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->n:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->o:[I

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->p:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDc$ListTask;->t:Ljava/util/ArrayList;

    .line 99
    .line 100
    return-void
.end method
