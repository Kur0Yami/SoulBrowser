.class Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookAlbum;
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
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookAlbum;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->s:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->u:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookAlbum;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookAlbum;->d:Z

    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->v:Z

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookAlbum;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->w:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookAlbum;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v3, Lcom/mycompany/app/list/book/ListBookAlbum;

    .line 18
    .line 19
    if-eqz v3, :cond_2d

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/book/ListBookAlbum;->a:Landroid/content/Context;

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
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->h:Ljava/lang/String;

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
    iput-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->j:Z

    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->w:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->v:Z

    .line 41
    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    xor-int/2addr v6, v1

    .line 49
    :goto_0
    const/4 v7, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    iget-object v6, v3, Lcom/mycompany/app/list/book/ListBookAlbum;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 52
    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    invoke-interface {v6}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    iget-boolean v7, v6, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 62
    .line 63
    if-eqz v7, :cond_3

    .line 64
    .line 65
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->r:Z

    .line 66
    .line 67
    invoke-virtual {v6}, Lcom/mycompany/app/main/MainListAdapter;->i()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    move-object v7, v6

    .line 72
    const/4 v6, 0x0

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const/4 v6, 0x0

    .line 75
    goto :goto_0

    .line 76
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v8, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-eqz v5, :cond_5

    .line 84
    .line 85
    if-eqz v6, :cond_4

    .line 86
    .line 87
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    iget-object v8, v8, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    const/4 v8, 0x0

    .line 95
    goto :goto_2

    .line 96
    :cond_5
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookAlbum;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAlbum;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    iget-object v8, v8, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 101
    .line 102
    :goto_2
    if-eqz v8, :cond_b

    .line 103
    .line 104
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-nez v11, :cond_b

    .line 109
    .line 110
    new-instance v11, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .line 114
    .line 115
    if-eqz v7, :cond_6

    .line 116
    .line 117
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    const/4 v8, 0x0

    .line 123
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v12

    .line 127
    const/4 v13, 0x0

    .line 128
    const/4 v14, 0x0

    .line 129
    :goto_4
    if-ge v14, v12, :cond_b

    .line 130
    .line 131
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    add-int/lit8 v14, v14, 0x1

    .line 136
    .line 137
    check-cast v15, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 138
    .line 139
    move/from16 v16, v1

    .line 140
    .line 141
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 142
    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    goto/16 :goto_12

    .line 146
    .line 147
    :cond_7
    if-ge v13, v8, :cond_9

    .line 148
    .line 149
    iget-wide v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 150
    .line 151
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    iput-boolean v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 160
    .line 161
    if-eqz v9, :cond_8

    .line 162
    .line 163
    add-int/lit8 v13, v13, 0x1

    .line 164
    .line 165
    :cond_8
    const/4 v9, 0x0

    .line 166
    goto :goto_5

    .line 167
    :cond_9
    const/4 v9, 0x0

    .line 168
    iput-boolean v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 169
    .line 170
    :goto_5
    iput-boolean v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 171
    .line 172
    if-nez v5, :cond_a

    .line 173
    .line 174
    invoke-static {v15}, Lcom/mycompany/app/list/book/ListBookAlbum;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 175
    .line 176
    .line 177
    :cond_a
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move/from16 v1, v16

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_b
    move/from16 v16, v1

    .line 186
    .line 187
    iget-boolean v7, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 188
    .line 189
    if-eqz v7, :cond_c

    .line 190
    .line 191
    goto/16 :goto_12

    .line 192
    .line 193
    :cond_c
    if-nez v5, :cond_12

    .line 194
    .line 195
    iget-object v7, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_12

    .line 202
    .line 203
    :try_start_0
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookAlbum;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAlbum;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    const-string v9, "DbBookAlbum_table"

    .line 212
    .line 213
    const/4 v12, 0x0

    .line 214
    const/4 v13, 0x0

    .line 215
    const/4 v10, 0x0

    .line 216
    const/4 v11, 0x0

    .line 217
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 218
    .line 219
    .line 220
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 221
    if-eqz v7, :cond_f

    .line 222
    .line 223
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_f

    .line 228
    .line 229
    const-string v8, "_id"

    .line 230
    .line 231
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v8

    .line 235
    const-string v9, "_path"

    .line 236
    .line 237
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    const-string v10, "_name"

    .line 242
    .line 243
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    const-string v11, "_count"

    .line 248
    .line 249
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    const-string v12, "_index"

    .line 254
    .line 255
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    const-string v13, "_page"

    .line 260
    .line 261
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v13

    .line 265
    const-string v14, "_time"

    .line 266
    .line 267
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result v14

    .line 271
    :goto_6
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v15

    .line 275
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 276
    .line 277
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    .line 279
    .line 280
    move-object/from16 v18, v2

    .line 281
    .line 282
    move-object/from16 v17, v3

    .line 283
    .line 284
    :try_start_2
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    iput-wide v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 289
    .line 290
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 295
    .line 296
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 297
    .line 298
    .line 299
    move-result-wide v2

    .line 300
    long-to-int v2, v2

    .line 301
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 302
    .line 303
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 304
    .line 305
    .line 306
    move-result-wide v2

    .line 307
    long-to-int v2, v2

    .line 308
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 309
    .line 310
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 315
    .line 316
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 317
    .line 318
    move/from16 v19, v5

    .line 319
    .line 320
    :try_start_3
    iget v5, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 321
    .line 322
    move/from16 v20, v6

    .line 323
    .line 324
    :try_start_4
    iget v6, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 325
    .line 326
    invoke-static {v5, v6, v2, v3}, Lcom/mycompany/app/main/MainUtil;->X1(IIILjava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 331
    .line 332
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 333
    .line 334
    .line 335
    move-result-wide v2

    .line 336
    iput-wide v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 337
    .line 338
    invoke-static {v15}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 343
    .line 344
    const/16 v2, 0xb

    .line 345
    .line 346
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 347
    .line 348
    const v2, -0x70708

    .line 349
    .line 350
    .line 351
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 352
    .line 353
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_local_library_black_24:I

    .line 354
    .line 355
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 356
    .line 357
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 358
    .line 359
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 360
    .line 361
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->W2(II)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 366
    .line 367
    iget-boolean v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->j:Z

    .line 368
    .line 369
    if-eqz v2, :cond_d

    .line 370
    .line 371
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->h:Ljava/lang/String;

    .line 372
    .line 373
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 380
    .line 381
    :cond_d
    invoke-static {v1}, Lcom/mycompany/app/list/book/ListBookAlbum;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 382
    .line 383
    .line 384
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 385
    .line 386
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 390
    .line 391
    if-nez v1, :cond_10

    .line 392
    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 394
    .line 395
    .line 396
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 397
    if-nez v1, :cond_e

    .line 398
    .line 399
    goto :goto_7

    .line 400
    :cond_e
    move-object/from16 v3, v17

    .line 401
    .line 402
    move-object/from16 v2, v18

    .line 403
    .line 404
    move/from16 v5, v19

    .line 405
    .line 406
    move/from16 v6, v20

    .line 407
    .line 408
    goto/16 :goto_6

    .line 409
    .line 410
    :catch_0
    :cond_f
    move-object/from16 v18, v2

    .line 411
    .line 412
    move-object/from16 v17, v3

    .line 413
    .line 414
    :catch_1
    move/from16 v19, v5

    .line 415
    .line 416
    :catch_2
    move/from16 v20, v6

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :catch_3
    move-object/from16 v18, v2

    .line 420
    .line 421
    move-object/from16 v17, v3

    .line 422
    .line 423
    move/from16 v19, v5

    .line 424
    .line 425
    move/from16 v20, v6

    .line 426
    .line 427
    const/4 v7, 0x0

    .line 428
    :catch_4
    :cond_10
    :goto_7
    if-eqz v7, :cond_11

    .line 429
    .line 430
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 431
    .line 432
    .line 433
    :cond_11
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 434
    .line 435
    if-eqz v1, :cond_13

    .line 436
    .line 437
    goto/16 :goto_12

    .line 438
    .line 439
    :cond_12
    move-object/from16 v18, v2

    .line 440
    .line 441
    move-object/from16 v17, v3

    .line 442
    .line 443
    move/from16 v19, v5

    .line 444
    .line 445
    move/from16 v20, v6

    .line 446
    .line 447
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    .line 448
    .line 449
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .line 451
    .line 452
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 453
    .line 454
    new-instance v1, Ljava/util/ArrayList;

    .line 455
    .line 456
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .line 458
    .line 459
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 460
    .line 461
    if-nez v19, :cond_14

    .line 462
    .line 463
    sget v1, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 464
    .line 465
    if-eqz v1, :cond_14

    .line 466
    .line 467
    move/from16 v9, v16

    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_14
    const/4 v9, 0x0

    .line 471
    :goto_8
    if-eqz v9, :cond_15

    .line 472
    .line 473
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 474
    .line 475
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 476
    .line 477
    .line 478
    const/4 v2, 0x0

    .line 479
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 480
    .line 481
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    :cond_15
    if-eqz v20, :cond_1a

    .line 487
    .line 488
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-nez v1, :cond_1a

    .line 495
    .line 496
    new-instance v1, Ljava/util/ArrayList;

    .line 497
    .line 498
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .line 500
    .line 501
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 502
    .line 503
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    const/4 v5, 0x0

    .line 508
    :cond_16
    :goto_9
    if-ge v5, v3, :cond_19

    .line 509
    .line 510
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    add-int/lit8 v5, v5, 0x1

    .line 515
    .line 516
    check-cast v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 517
    .line 518
    iget-boolean v7, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 519
    .line 520
    if-eqz v7, :cond_17

    .line 521
    .line 522
    goto/16 :goto_12

    .line 523
    .line 524
    :cond_17
    iget-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 525
    .line 526
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 527
    .line 528
    .line 529
    move-result v7

    .line 530
    if-eqz v7, :cond_18

    .line 531
    .line 532
    goto :goto_9

    .line 533
    :cond_18
    iget-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 534
    .line 535
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 536
    .line 537
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v7

    .line 541
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 542
    .line 543
    .line 544
    move-result v7

    .line 545
    if-eqz v7, :cond_16

    .line 546
    .line 547
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    goto :goto_9

    .line 551
    :cond_19
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 552
    .line 553
    :cond_1a
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-nez v1, :cond_28

    .line 560
    .line 561
    if-nez v19, :cond_1b

    .line 562
    .line 563
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 564
    .line 565
    sget v2, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 566
    .line 567
    sget v3, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 568
    .line 569
    sget-boolean v4, Lcom/mycompany/app/pref/PrefList;->C:Z

    .line 570
    .line 571
    invoke-static {v2, v3, v4}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    :try_start_5
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 576
    .line 577
    .line 578
    :catch_5
    :cond_1b
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->r:Z

    .line 579
    .line 580
    if-eqz v1, :cond_1c

    .line 581
    .line 582
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 583
    .line 584
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    new-array v2, v1, [Z

    .line 589
    .line 590
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->p:[Z

    .line 591
    .line 592
    goto :goto_a

    .line 593
    :cond_1c
    const/4 v1, 0x0

    .line 594
    :goto_a
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 595
    .line 596
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 597
    .line 598
    .line 599
    move-result v10

    .line 600
    const/4 v3, 0x0

    .line 601
    const/4 v4, 0x0

    .line 602
    const/4 v5, 0x0

    .line 603
    const/4 v6, 0x0

    .line 604
    const/4 v7, 0x0

    .line 605
    const/4 v8, 0x0

    .line 606
    const/4 v11, 0x0

    .line 607
    :goto_b
    if-ge v4, v10, :cond_27

    .line 608
    .line 609
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v12

    .line 613
    add-int/lit8 v13, v4, 0x1

    .line 614
    .line 615
    check-cast v12, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 616
    .line 617
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 618
    .line 619
    if-eqz v4, :cond_1d

    .line 620
    .line 621
    goto/16 :goto_12

    .line 622
    .line 623
    :cond_1d
    if-nez v12, :cond_1e

    .line 624
    .line 625
    :goto_c
    move v4, v13

    .line 626
    goto :goto_b

    .line 627
    :cond_1e
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 628
    .line 629
    iget-wide v14, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 630
    .line 631
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 632
    .line 633
    .line 634
    move-result-object v14

    .line 635
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    if-eqz v9, :cond_21

    .line 639
    .line 640
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 641
    .line 642
    .line 643
    move-result v4

    .line 644
    if-nez v4, :cond_1f

    .line 645
    .line 646
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 647
    .line 648
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v4

    .line 652
    if-nez v4, :cond_1f

    .line 653
    .line 654
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 655
    .line 656
    move-object/from16 v3, v17

    .line 657
    .line 658
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookAlbum;->p(Lcom/mycompany/app/list/book/ListBookAlbum;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 659
    .line 660
    .line 661
    const/4 v3, 0x0

    .line 662
    const/4 v6, 0x0

    .line 663
    const/4 v7, 0x0

    .line 664
    :cond_1f
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 665
    .line 666
    iget-object v5, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 667
    .line 668
    add-int/lit8 v6, v6, 0x1

    .line 669
    .line 670
    iget-object v11, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 671
    .line 672
    if-eqz v11, :cond_20

    .line 673
    .line 674
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 675
    .line 676
    .line 677
    move-result v11

    .line 678
    goto :goto_d

    .line 679
    :cond_20
    const/4 v11, 0x0

    .line 680
    :goto_d
    iput v11, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 681
    .line 682
    move-object v11, v4

    .line 683
    goto :goto_e

    .line 684
    :cond_21
    const/4 v4, 0x0

    .line 685
    iput v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 686
    .line 687
    :goto_e
    iput v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 688
    .line 689
    iput v8, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 690
    .line 691
    iget-wide v14, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 692
    .line 693
    move-object v4, v2

    .line 694
    move/from16 v19, v3

    .line 695
    .line 696
    iget-wide v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->g:J

    .line 697
    .line 698
    cmp-long v2, v14, v2

    .line 699
    .line 700
    if-nez v2, :cond_22

    .line 701
    .line 702
    iput-object v12, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 703
    .line 704
    :cond_22
    iget-boolean v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 705
    .line 706
    if-eqz v2, :cond_23

    .line 707
    .line 708
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->p:[Z

    .line 709
    .line 710
    if-eqz v2, :cond_23

    .line 711
    .line 712
    if-ge v8, v1, :cond_23

    .line 713
    .line 714
    aput-boolean v16, v2, v8

    .line 715
    .line 716
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->q:I

    .line 717
    .line 718
    add-int/lit8 v2, v2, 0x1

    .line 719
    .line 720
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->q:I

    .line 721
    .line 722
    add-int/lit8 v7, v7, 0x1

    .line 723
    .line 724
    :cond_23
    iget-boolean v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 725
    .line 726
    if-eqz v2, :cond_26

    .line 727
    .line 728
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->s:I

    .line 729
    .line 730
    iget v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 731
    .line 732
    if-eq v2, v3, :cond_25

    .line 733
    .line 734
    iput v3, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->s:I

    .line 735
    .line 736
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->t:Ljava/util/ArrayList;

    .line 737
    .line 738
    if-nez v2, :cond_24

    .line 739
    .line 740
    new-instance v2, Ljava/util/ArrayList;

    .line 741
    .line 742
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .line 744
    .line 745
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->t:Ljava/util/ArrayList;

    .line 746
    .line 747
    :cond_24
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->t:Ljava/util/ArrayList;

    .line 748
    .line 749
    iget v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 750
    .line 751
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    if-nez v2, :cond_25

    .line 760
    .line 761
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->t:Ljava/util/ArrayList;

    .line 762
    .line 763
    iget v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 764
    .line 765
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 766
    .line 767
    .line 768
    move-result-object v3

    .line 769
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    :cond_25
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->u:I

    .line 773
    .line 774
    const/4 v3, -0x1

    .line 775
    if-ne v2, v3, :cond_26

    .line 776
    .line 777
    iget v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 778
    .line 779
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->u:I

    .line 780
    .line 781
    :cond_26
    add-int/lit8 v3, v19, 0x1

    .line 782
    .line 783
    add-int/lit8 v8, v8, 0x1

    .line 784
    .line 785
    const/4 v2, 0x0

    .line 786
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 787
    .line 788
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 789
    .line 790
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 791
    .line 792
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 793
    .line 794
    move-object v2, v4

    .line 795
    goto/16 :goto_c

    .line 796
    .line 797
    :cond_27
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    if-nez v1, :cond_28

    .line 802
    .line 803
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 804
    .line 805
    move-object/from16 v3, v17

    .line 806
    .line 807
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookAlbum;->p(Lcom/mycompany/app/list/book/ListBookAlbum;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 808
    .line 809
    .line 810
    :cond_28
    if-nez v9, :cond_2a

    .line 811
    .line 812
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 813
    .line 814
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 815
    .line 816
    .line 817
    const/4 v2, 0x0

    .line 818
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 819
    .line 820
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 821
    .line 822
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 823
    .line 824
    .line 825
    move-result v3

    .line 826
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 827
    .line 828
    iget v4, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->q:I

    .line 829
    .line 830
    iput v4, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 831
    .line 832
    if-ne v4, v3, :cond_29

    .line 833
    .line 834
    move/from16 v3, v16

    .line 835
    .line 836
    goto :goto_f

    .line 837
    :cond_29
    move v3, v2

    .line 838
    :goto_f
    iput-boolean v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 839
    .line 840
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 841
    .line 842
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    goto :goto_10

    .line 846
    :cond_2a
    const/4 v2, 0x0

    .line 847
    :goto_10
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->r:Z

    .line 848
    .line 849
    if-eqz v1, :cond_2c

    .line 850
    .line 851
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 852
    .line 853
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    if-nez v1, :cond_2c

    .line 858
    .line 859
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 860
    .line 861
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 862
    .line 863
    .line 864
    move-result v1

    .line 865
    new-array v3, v1, [Z

    .line 866
    .line 867
    iput-object v3, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->n:[Z

    .line 868
    .line 869
    new-array v1, v1, [I

    .line 870
    .line 871
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->o:[I

    .line 872
    .line 873
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 874
    .line 875
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    move v10, v2

    .line 880
    :goto_11
    if-ge v10, v3, :cond_2c

    .line 881
    .line 882
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    add-int/lit8 v10, v10, 0x1

    .line 887
    .line 888
    check-cast v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 889
    .line 890
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 891
    .line 892
    if-eqz v4, :cond_2b

    .line 893
    .line 894
    goto :goto_12

    .line 895
    :cond_2b
    iget v4, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 896
    .line 897
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->n:[Z

    .line 898
    .line 899
    iget-boolean v6, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 900
    .line 901
    aput-boolean v6, v5, v4

    .line 902
    .line 903
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->o:[I

    .line 904
    .line 905
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 906
    .line 907
    aput v2, v5, v4

    .line 908
    .line 909
    goto :goto_11

    .line 910
    :cond_2c
    invoke-static/range {v18 .. v18}, Lcom/mycompany/app/data/book/DataBookAlbum;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAlbum;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 915
    .line 916
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 917
    .line 918
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 919
    .line 920
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 921
    .line 922
    :cond_2d
    :goto_12
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookAlbum;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum;->c:Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookAlbum;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->n:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->o:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->p:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->t:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookAlbum;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookAlbum;->c:Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookAlbum;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->n:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->o:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->p:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->q:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->u:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->r:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->w:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->h:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->l:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->m:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->n:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->o:[I

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->p:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookAlbum$ListTask;->t:Ljava/util/ArrayList;

    .line 99
    .line 100
    return-void
.end method
