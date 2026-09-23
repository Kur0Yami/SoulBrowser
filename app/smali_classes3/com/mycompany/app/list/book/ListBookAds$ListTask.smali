.class Lcom/mycompany/app/list/book/ListBookAds$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookAds;
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
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookAds;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->s:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->u:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookAds;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookAds;->d:Z

    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->v:Z

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookAds;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->w:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookAds;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_13

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
    check-cast v3, Lcom/mycompany/app/list/book/ListBookAds;

    .line 18
    .line 19
    if-eqz v3, :cond_2d

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/book/ListBookAds;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto/16 :goto_13

    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->h:Ljava/lang/String;

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
    iput-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->j:Z

    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->w:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->v:Z

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
    iget-object v6, v3, Lcom/mycompany/app/list/book/ListBookAds;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->r:Z

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
    iput-object v8, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

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
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

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
    goto/16 :goto_13

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
    invoke-static {v15}, Lcom/mycompany/app/list/book/ListBookAds;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 176
    .line 177
    .line 178
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

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
    goto/16 :goto_13

    .line 194
    .line 195
    :cond_c
    if-nez v5, :cond_12

    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_12

    .line 204
    .line 205
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/db/book/DbBookAds;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAds;

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
    const-string v18, "DbBookAds_table"

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
    if-eqz v1, :cond_10

    .line 228
    .line 229
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_10

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
    :cond_d
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v12

    .line 261
    if-eqz v12, :cond_e

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_e
    new-instance v12, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 265
    .line 266
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 270
    .line 271
    .line 272
    move-result-wide v13

    .line 273
    iput-wide v13, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 274
    .line 275
    iput-object v11, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 276
    .line 277
    iput-object v11, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 278
    .line 279
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 280
    .line 281
    .line 282
    move-result-wide v13

    .line 283
    iput-wide v13, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 284
    .line 285
    iput v10, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 286
    .line 287
    const v13, -0x70708

    .line 288
    .line 289
    .line 290
    iput v13, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 291
    .line 292
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 293
    .line 294
    iput v13, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 295
    .line 296
    invoke-static {v11, v10}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v11

    .line 300
    iput-object v11, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 301
    .line 302
    iget-boolean v11, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->j:Z

    .line 303
    .line 304
    if-eqz v11, :cond_f

    .line 305
    .line 306
    iget-object v11, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->h:Ljava/lang/String;

    .line 307
    .line 308
    iget-object v13, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v11

    .line 314
    if-eqz v11, :cond_f

    .line 315
    .line 316
    iput-boolean v10, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->j:Z

    .line 317
    .line 318
    const/4 v9, 0x1

    .line 319
    iput-boolean v9, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 320
    .line 321
    :cond_f
    invoke-static {v12}, Lcom/mycompany/app/list/book/ListBookAds;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 322
    .line 323
    .line 324
    iget-object v11, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 325
    .line 326
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    :goto_6
    iget-boolean v11, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 330
    .line 331
    if-nez v11, :cond_10

    .line 332
    .line 333
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 334
    .line 335
    .line 336
    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    if-nez v11, :cond_d

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :catch_0
    const/4 v1, 0x0

    .line 341
    :catch_1
    :cond_10
    :goto_7
    if-eqz v1, :cond_11

    .line 342
    .line 343
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 344
    .line 345
    .line 346
    :cond_11
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 347
    .line 348
    if-eqz v1, :cond_12

    .line 349
    .line 350
    goto/16 :goto_13

    .line 351
    .line 352
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .line 356
    .line 357
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 358
    .line 359
    new-instance v1, Ljava/util/ArrayList;

    .line 360
    .line 361
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .line 363
    .line 364
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->m:Ljava/util/ArrayList;

    .line 365
    .line 366
    if-nez v5, :cond_13

    .line 367
    .line 368
    sget v1, Lcom/mycompany/app/pref/PrefList;->Q:I

    .line 369
    .line 370
    if-eqz v1, :cond_13

    .line 371
    .line 372
    const/4 v1, 0x1

    .line 373
    goto :goto_8

    .line 374
    :cond_13
    move v1, v10

    .line 375
    :goto_8
    if-eqz v1, :cond_14

    .line 376
    .line 377
    new-instance v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 378
    .line 379
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 380
    .line 381
    .line 382
    iput v10, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 383
    .line 384
    iget-object v7, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    :cond_14
    if-eqz v6, :cond_19

    .line 390
    .line 391
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-nez v2, :cond_19

    .line 398
    .line 399
    new-instance v2, Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .line 403
    .line 404
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 407
    .line 408
    .line 409
    move-result v7

    .line 410
    move v8, v10

    .line 411
    :cond_15
    :goto_9
    if-ge v8, v7, :cond_18

    .line 412
    .line 413
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v11

    .line 417
    add-int/lit8 v8, v8, 0x1

    .line 418
    .line 419
    check-cast v11, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 420
    .line 421
    iget-boolean v12, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 422
    .line 423
    if-eqz v12, :cond_16

    .line 424
    .line 425
    goto/16 :goto_13

    .line 426
    .line 427
    :cond_16
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 428
    .line 429
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 430
    .line 431
    .line 432
    move-result v12

    .line 433
    if-eqz v12, :cond_17

    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_17
    iget-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 437
    .line 438
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 439
    .line 440
    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v12

    .line 444
    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 445
    .line 446
    .line 447
    move-result v12

    .line 448
    if-eqz v12, :cond_15

    .line 449
    .line 450
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    goto :goto_9

    .line 454
    :cond_18
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 455
    .line 456
    :cond_19
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    if-nez v2, :cond_27

    .line 463
    .line 464
    if-nez v5, :cond_1a

    .line 465
    .line 466
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 467
    .line 468
    sget v4, Lcom/mycompany/app/pref/PrefList;->Q:I

    .line 469
    .line 470
    sget v5, Lcom/mycompany/app/pref/PrefList;->R:I

    .line 471
    .line 472
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->S:Z

    .line 473
    .line 474
    invoke-static {v4, v5, v6}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    :try_start_2
    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 479
    .line 480
    .line 481
    :catch_2
    :cond_1a
    iget-boolean v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->r:Z

    .line 482
    .line 483
    if-eqz v2, :cond_1b

    .line 484
    .line 485
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    new-array v4, v2, [Z

    .line 492
    .line 493
    iput-object v4, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->p:[Z

    .line 494
    .line 495
    goto :goto_a

    .line 496
    :cond_1b
    move v2, v10

    .line 497
    :goto_a
    iget-object v11, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 500
    .line 501
    .line 502
    move-result v12

    .line 503
    move v4, v10

    .line 504
    move v6, v4

    .line 505
    move v7, v6

    .line 506
    move v8, v7

    .line 507
    move v13, v8

    .line 508
    const/4 v5, 0x0

    .line 509
    :goto_b
    if-ge v13, v12, :cond_26

    .line 510
    .line 511
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v14

    .line 515
    add-int/lit8 v13, v13, 0x1

    .line 516
    .line 517
    check-cast v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 518
    .line 519
    iget-boolean v15, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 520
    .line 521
    if-eqz v15, :cond_1c

    .line 522
    .line 523
    goto/16 :goto_13

    .line 524
    .line 525
    :cond_1c
    if-nez v14, :cond_1d

    .line 526
    .line 527
    goto :goto_b

    .line 528
    :cond_1d
    iget-object v15, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->m:Ljava/util/ArrayList;

    .line 529
    .line 530
    iget-wide v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 531
    .line 532
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    if-eqz v1, :cond_20

    .line 540
    .line 541
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 542
    .line 543
    .line 544
    move-result v9

    .line 545
    if-nez v9, :cond_1e

    .line 546
    .line 547
    iget-object v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 548
    .line 549
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v9

    .line 553
    if-nez v9, :cond_1e

    .line 554
    .line 555
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookAds;->p(Lcom/mycompany/app/list/book/ListBookAds;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 558
    .line 559
    .line 560
    const/4 v4, 0x0

    .line 561
    const/4 v6, 0x0

    .line 562
    const/4 v7, 0x0

    .line 563
    :cond_1e
    iget-object v5, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 564
    .line 565
    const/4 v9, 0x1

    .line 566
    add-int/2addr v6, v9

    .line 567
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 568
    .line 569
    if-eqz v10, :cond_1f

    .line 570
    .line 571
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 572
    .line 573
    .line 574
    move-result v10

    .line 575
    goto :goto_c

    .line 576
    :cond_1f
    const/4 v10, 0x0

    .line 577
    :goto_c
    iput v10, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 578
    .line 579
    goto :goto_d

    .line 580
    :cond_20
    const/4 v10, 0x0

    .line 581
    iput v10, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 582
    .line 583
    :goto_d
    iput v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 584
    .line 585
    iput v8, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 586
    .line 587
    iget-wide v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 588
    .line 589
    move-object v15, v3

    .line 590
    move/from16 v19, v4

    .line 591
    .line 592
    iget-wide v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->g:J

    .line 593
    .line 594
    cmp-long v3, v9, v3

    .line 595
    .line 596
    if-nez v3, :cond_21

    .line 597
    .line 598
    iput-object v14, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 599
    .line 600
    :cond_21
    iget-boolean v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 601
    .line 602
    if-eqz v3, :cond_22

    .line 603
    .line 604
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->p:[Z

    .line 605
    .line 606
    if-eqz v3, :cond_22

    .line 607
    .line 608
    if-ge v8, v2, :cond_22

    .line 609
    .line 610
    const/4 v9, 0x1

    .line 611
    aput-boolean v9, v3, v8

    .line 612
    .line 613
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->q:I

    .line 614
    .line 615
    add-int/2addr v3, v9

    .line 616
    iput v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->q:I

    .line 617
    .line 618
    add-int/lit8 v7, v7, 0x1

    .line 619
    .line 620
    goto :goto_e

    .line 621
    :cond_22
    const/4 v9, 0x1

    .line 622
    :goto_e
    iget-boolean v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 623
    .line 624
    if-eqz v3, :cond_25

    .line 625
    .line 626
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->s:I

    .line 627
    .line 628
    iget v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 629
    .line 630
    if-eq v3, v4, :cond_24

    .line 631
    .line 632
    iput v4, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->s:I

    .line 633
    .line 634
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->t:Ljava/util/ArrayList;

    .line 635
    .line 636
    if-nez v3, :cond_23

    .line 637
    .line 638
    new-instance v3, Ljava/util/ArrayList;

    .line 639
    .line 640
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .line 642
    .line 643
    iput-object v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->t:Ljava/util/ArrayList;

    .line 644
    .line 645
    :cond_23
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->t:Ljava/util/ArrayList;

    .line 646
    .line 647
    iget v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 648
    .line 649
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result v3

    .line 657
    if-nez v3, :cond_24

    .line 658
    .line 659
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->t:Ljava/util/ArrayList;

    .line 660
    .line 661
    iget v4, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 662
    .line 663
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    :cond_24
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->u:I

    .line 671
    .line 672
    const/4 v4, -0x1

    .line 673
    if-ne v3, v4, :cond_25

    .line 674
    .line 675
    iget v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 676
    .line 677
    iput v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->u:I

    .line 678
    .line 679
    :cond_25
    add-int/lit8 v4, v19, 0x1

    .line 680
    .line 681
    add-int/lit8 v8, v8, 0x1

    .line 682
    .line 683
    const/4 v3, 0x0

    .line 684
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 685
    .line 686
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 687
    .line 688
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 689
    .line 690
    iput-object v3, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 691
    .line 692
    move-object v3, v15

    .line 693
    const/4 v10, 0x0

    .line 694
    goto/16 :goto_b

    .line 695
    .line 696
    :cond_26
    move-object v15, v3

    .line 697
    const/4 v9, 0x1

    .line 698
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 699
    .line 700
    .line 701
    move-result v2

    .line 702
    if-nez v2, :cond_28

    .line 703
    .line 704
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 705
    .line 706
    move-object v3, v15

    .line 707
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookAds;->p(Lcom/mycompany/app/list/book/ListBookAds;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 708
    .line 709
    .line 710
    goto :goto_f

    .line 711
    :cond_27
    const/4 v9, 0x1

    .line 712
    :cond_28
    :goto_f
    if-nez v1, :cond_2a

    .line 713
    .line 714
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 715
    .line 716
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 717
    .line 718
    .line 719
    const/4 v10, 0x0

    .line 720
    iput v10, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 721
    .line 722
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 723
    .line 724
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 729
    .line 730
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->q:I

    .line 731
    .line 732
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 733
    .line 734
    if-ne v3, v2, :cond_29

    .line 735
    .line 736
    goto :goto_10

    .line 737
    :cond_29
    move v9, v10

    .line 738
    :goto_10
    iput-boolean v9, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 739
    .line 740
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    goto :goto_11

    .line 746
    :cond_2a
    const/4 v10, 0x0

    .line 747
    :goto_11
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->r:Z

    .line 748
    .line 749
    if-eqz v1, :cond_2c

    .line 750
    .line 751
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 752
    .line 753
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    if-nez v1, :cond_2c

    .line 758
    .line 759
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 760
    .line 761
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    new-array v2, v1, [Z

    .line 766
    .line 767
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->n:[Z

    .line 768
    .line 769
    new-array v1, v1, [I

    .line 770
    .line 771
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->o:[I

    .line 772
    .line 773
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 774
    .line 775
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    :goto_12
    if-ge v10, v2, :cond_2c

    .line 780
    .line 781
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    add-int/lit8 v10, v10, 0x1

    .line 786
    .line 787
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 788
    .line 789
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 790
    .line 791
    if-eqz v4, :cond_2b

    .line 792
    .line 793
    goto :goto_13

    .line 794
    :cond_2b
    iget v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 795
    .line 796
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->n:[Z

    .line 797
    .line 798
    iget-boolean v6, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 799
    .line 800
    aput-boolean v6, v5, v4

    .line 801
    .line 802
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->o:[I

    .line 803
    .line 804
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 805
    .line 806
    aput v3, v5, v4

    .line 807
    .line 808
    goto :goto_12

    .line 809
    :cond_2c
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 814
    .line 815
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->m:Ljava/util/ArrayList;

    .line 816
    .line 817
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 818
    .line 819
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 820
    .line 821
    :cond_2d
    :goto_13
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookAds;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds;->c:Lcom/mycompany/app/list/book/ListBookAds$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookAds;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->n:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->o:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->p:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->t:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookAds;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAds;->c:Lcom/mycompany/app/list/book/ListBookAds$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookAds;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->n:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->o:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->p:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->q:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->u:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->r:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->w:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->h:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->l:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->m:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->n:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->o:[I

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->p:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAds$ListTask;->t:Ljava/util/ArrayList;

    .line 99
    .line 100
    return-void
.end method
