.class Lcom/mycompany/app/list/book/ListBookPms$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookPms;
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
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookPms;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->s:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->u:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookPms;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookPms;->d:Z

    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->v:Z

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookPms;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->w:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookPms;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v3, Lcom/mycompany/app/list/book/ListBookPms;

    .line 18
    .line 19
    if-eqz v3, :cond_2f

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/book/ListBookPms;->a:Landroid/content/Context;

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
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->h:Ljava/lang/String;

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
    iput-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->j:Z

    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->w:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->v:Z

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
    iget-object v6, v3, Lcom/mycompany/app/list/book/ListBookPms;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->r:Z

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
    iput-object v8, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

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
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookPms;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPms;

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
    invoke-static {v15}, Lcom/mycompany/app/list/book/ListBookPms;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 176
    .line 177
    .line 178
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

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
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

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
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/db/book/DbBookPms;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPms;

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
    const-string v18, "DbBookPms_table"

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

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
    const-string v11, "_allow"

    .line 254
    .line 255
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    const-string v12, "_block"

    .line 260
    .line 261
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    :goto_6
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v13

    .line 269
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    if-eqz v14, :cond_d

    .line 274
    .line 275
    move-object/from16 v10, v16

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_d
    new-instance v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 279
    .line 280
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 284
    .line 285
    .line 286
    move-result-wide v9

    .line 287
    iput-wide v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 288
    .line 289
    iput-object v13, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 290
    .line 291
    iput-object v13, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 292
    .line 293
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 294
    .line 295
    .line 296
    move-result-wide v9

    .line 297
    iput-wide v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 298
    .line 299
    const/4 v15, 0x0

    .line 300
    iput v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 301
    .line 302
    const v9, -0x70708

    .line 303
    .line 304
    .line 305
    iput v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 306
    .line 307
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 308
    .line 309
    iput v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 310
    .line 311
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 312
    .line 313
    .line 314
    move-result v9

    .line 315
    iput v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->T:I

    .line 316
    .line 317
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    iput v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 322
    .line 323
    iget v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->T:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    .line 325
    move-object/from16 v10, v16

    .line 326
    .line 327
    :try_start_2
    invoke-static {v10, v9}, Lcom/mycompany/app/db/book/DbBookPms;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v9

    .line 331
    iput-object v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 332
    .line 333
    iget v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 334
    .line 335
    invoke-static {v10, v9}, Lcom/mycompany/app/db/book/DbBookPms;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    iput-object v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 340
    .line 341
    iget-boolean v9, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->j:Z

    .line 342
    .line 343
    if-eqz v9, :cond_e

    .line 344
    .line 345
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->h:Ljava/lang/String;

    .line 346
    .line 347
    iget-object v13, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v9

    .line 353
    if-eqz v9, :cond_e

    .line 354
    .line 355
    const/4 v15, 0x0

    .line 356
    iput-boolean v15, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->j:Z

    .line 357
    .line 358
    const/4 v9, 0x1

    .line 359
    iput-boolean v9, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 360
    .line 361
    :cond_e
    invoke-static {v14}, Lcom/mycompany/app/list/book/ListBookPms;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 362
    .line 363
    .line 364
    iget-object v13, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    :goto_7
    iget-boolean v13, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 370
    .line 371
    if-nez v13, :cond_11

    .line 372
    .line 373
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 374
    .line 375
    .line 376
    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 377
    if-nez v13, :cond_f

    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_f
    move-object/from16 v16, v10

    .line 381
    .line 382
    const/4 v10, 0x0

    .line 383
    goto :goto_6

    .line 384
    :catch_0
    :cond_10
    move-object/from16 v10, v16

    .line 385
    .line 386
    goto :goto_8

    .line 387
    :catch_1
    move-object/from16 v10, v16

    .line 388
    .line 389
    const/4 v1, 0x0

    .line 390
    :catch_2
    :cond_11
    :goto_8
    if-eqz v1, :cond_12

    .line 391
    .line 392
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 393
    .line 394
    .line 395
    :cond_12
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 396
    .line 397
    if-eqz v1, :cond_14

    .line 398
    .line 399
    goto/16 :goto_14

    .line 400
    .line 401
    :cond_13
    move-object/from16 v10, v16

    .line 402
    .line 403
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    .line 404
    .line 405
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .line 407
    .line 408
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 409
    .line 410
    new-instance v1, Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .line 414
    .line 415
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->m:Ljava/util/ArrayList;

    .line 416
    .line 417
    if-nez v5, :cond_15

    .line 418
    .line 419
    sget v1, Lcom/mycompany/app/pref/PrefList;->R0:I

    .line 420
    .line 421
    if-eqz v1, :cond_15

    .line 422
    .line 423
    const/16 v17, 0x1

    .line 424
    .line 425
    goto :goto_9

    .line 426
    :cond_15
    const/16 v17, 0x0

    .line 427
    .line 428
    :goto_9
    if-eqz v17, :cond_16

    .line 429
    .line 430
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 431
    .line 432
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 433
    .line 434
    .line 435
    const/4 v15, 0x0

    .line 436
    iput v15, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 437
    .line 438
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    .line 442
    .line 443
    :cond_16
    if-eqz v6, :cond_1b

    .line 444
    .line 445
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-nez v1, :cond_1b

    .line 452
    .line 453
    new-instance v1, Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .line 457
    .line 458
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    const/4 v7, 0x0

    .line 465
    :cond_17
    :goto_a
    if-ge v7, v6, :cond_1a

    .line 466
    .line 467
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v8

    .line 471
    add-int/lit8 v7, v7, 0x1

    .line 472
    .line 473
    check-cast v8, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 474
    .line 475
    iget-boolean v11, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 476
    .line 477
    if-eqz v11, :cond_18

    .line 478
    .line 479
    goto/16 :goto_14

    .line 480
    .line 481
    :cond_18
    iget-object v11, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 482
    .line 483
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 484
    .line 485
    .line 486
    move-result v11

    .line 487
    if-eqz v11, :cond_19

    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_19
    iget-object v11, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 491
    .line 492
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 493
    .line 494
    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v11

    .line 498
    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 499
    .line 500
    .line 501
    move-result v11

    .line 502
    if-eqz v11, :cond_17

    .line 503
    .line 504
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_1a
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 509
    .line 510
    :cond_1b
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 511
    .line 512
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-nez v1, :cond_29

    .line 517
    .line 518
    if-nez v5, :cond_1c

    .line 519
    .line 520
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 521
    .line 522
    sget v2, Lcom/mycompany/app/pref/PrefList;->R0:I

    .line 523
    .line 524
    sget v4, Lcom/mycompany/app/pref/PrefList;->S0:I

    .line 525
    .line 526
    sget-boolean v5, Lcom/mycompany/app/pref/PrefList;->T0:Z

    .line 527
    .line 528
    invoke-static {v2, v4, v5}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    :try_start_3
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 533
    .line 534
    .line 535
    :catch_3
    :cond_1c
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->r:Z

    .line 536
    .line 537
    if-eqz v1, :cond_1d

    .line 538
    .line 539
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    new-array v2, v1, [Z

    .line 546
    .line 547
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->p:[Z

    .line 548
    .line 549
    goto :goto_b

    .line 550
    :cond_1d
    const/4 v1, 0x0

    .line 551
    :goto_b
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 552
    .line 553
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 554
    .line 555
    .line 556
    move-result v11

    .line 557
    const/4 v4, 0x0

    .line 558
    const/4 v5, 0x0

    .line 559
    const/4 v6, 0x0

    .line 560
    const/4 v7, 0x0

    .line 561
    const/4 v8, 0x0

    .line 562
    const/4 v12, 0x0

    .line 563
    :goto_c
    if-ge v5, v11, :cond_28

    .line 564
    .line 565
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v13

    .line 569
    add-int/lit8 v14, v5, 0x1

    .line 570
    .line 571
    check-cast v13, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 572
    .line 573
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 574
    .line 575
    if-eqz v5, :cond_1e

    .line 576
    .line 577
    goto/16 :goto_14

    .line 578
    .line 579
    :cond_1e
    if-nez v13, :cond_1f

    .line 580
    .line 581
    move v5, v14

    .line 582
    goto :goto_c

    .line 583
    :cond_1f
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->m:Ljava/util/ArrayList;

    .line 584
    .line 585
    move-object/from16 v16, v10

    .line 586
    .line 587
    iget-wide v9, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 588
    .line 589
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 590
    .line 591
    .line 592
    move-result-object v9

    .line 593
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    if-eqz v17, :cond_22

    .line 597
    .line 598
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    if-nez v5, :cond_20

    .line 603
    .line 604
    iget-object v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    if-nez v5, :cond_20

    .line 611
    .line 612
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 613
    .line 614
    move-object v5, v12

    .line 615
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookPms;->p(Lcom/mycompany/app/list/book/ListBookPms;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 616
    .line 617
    .line 618
    const/4 v4, 0x0

    .line 619
    const/4 v6, 0x0

    .line 620
    const/4 v7, 0x0

    .line 621
    :cond_20
    iget-object v5, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 622
    .line 623
    const/4 v9, 0x1

    .line 624
    add-int/2addr v6, v9

    .line 625
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 626
    .line 627
    if-eqz v10, :cond_21

    .line 628
    .line 629
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 630
    .line 631
    .line 632
    move-result v10

    .line 633
    goto :goto_d

    .line 634
    :cond_21
    const/4 v10, 0x0

    .line 635
    :goto_d
    iput v10, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 636
    .line 637
    move-object v12, v5

    .line 638
    goto :goto_e

    .line 639
    :cond_22
    move-object v5, v12

    .line 640
    const/4 v15, 0x0

    .line 641
    iput v15, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 642
    .line 643
    :goto_e
    iput v4, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 644
    .line 645
    iput v8, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 646
    .line 647
    iget-wide v9, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 648
    .line 649
    move-object/from16 v19, v2

    .line 650
    .line 651
    move-object/from16 v20, v3

    .line 652
    .line 653
    iget-wide v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->g:J

    .line 654
    .line 655
    cmp-long v2, v9, v2

    .line 656
    .line 657
    if-nez v2, :cond_23

    .line 658
    .line 659
    iput-object v13, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 660
    .line 661
    :cond_23
    iget-boolean v2, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 662
    .line 663
    if-eqz v2, :cond_24

    .line 664
    .line 665
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->p:[Z

    .line 666
    .line 667
    if-eqz v2, :cond_24

    .line 668
    .line 669
    if-ge v8, v1, :cond_24

    .line 670
    .line 671
    const/4 v9, 0x1

    .line 672
    aput-boolean v9, v2, v8

    .line 673
    .line 674
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->q:I

    .line 675
    .line 676
    add-int/2addr v2, v9

    .line 677
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->q:I

    .line 678
    .line 679
    add-int/lit8 v7, v7, 0x1

    .line 680
    .line 681
    goto :goto_f

    .line 682
    :cond_24
    const/4 v9, 0x1

    .line 683
    :goto_f
    iget-boolean v2, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 684
    .line 685
    if-eqz v2, :cond_27

    .line 686
    .line 687
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->s:I

    .line 688
    .line 689
    iget v3, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 690
    .line 691
    if-eq v2, v3, :cond_26

    .line 692
    .line 693
    iput v3, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->s:I

    .line 694
    .line 695
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->t:Ljava/util/ArrayList;

    .line 696
    .line 697
    if-nez v2, :cond_25

    .line 698
    .line 699
    new-instance v2, Ljava/util/ArrayList;

    .line 700
    .line 701
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .line 703
    .line 704
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->t:Ljava/util/ArrayList;

    .line 705
    .line 706
    :cond_25
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->t:Ljava/util/ArrayList;

    .line 707
    .line 708
    iget v3, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 709
    .line 710
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v2

    .line 718
    if-nez v2, :cond_26

    .line 719
    .line 720
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->t:Ljava/util/ArrayList;

    .line 721
    .line 722
    iget v3, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 723
    .line 724
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    :cond_26
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->u:I

    .line 732
    .line 733
    const/4 v3, -0x1

    .line 734
    if-ne v2, v3, :cond_27

    .line 735
    .line 736
    iget v2, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 737
    .line 738
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->u:I

    .line 739
    .line 740
    :cond_27
    add-int/lit8 v4, v4, 0x1

    .line 741
    .line 742
    add-int/lit8 v8, v8, 0x1

    .line 743
    .line 744
    const/4 v2, 0x0

    .line 745
    iput-object v2, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 746
    .line 747
    iput-object v2, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 748
    .line 749
    iput-object v2, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 750
    .line 751
    iput-object v2, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 752
    .line 753
    move v5, v14

    .line 754
    move-object/from16 v10, v16

    .line 755
    .line 756
    move-object/from16 v2, v19

    .line 757
    .line 758
    move-object/from16 v3, v20

    .line 759
    .line 760
    goto/16 :goto_c

    .line 761
    .line 762
    :cond_28
    move-object/from16 v20, v3

    .line 763
    .line 764
    move-object/from16 v16, v10

    .line 765
    .line 766
    move-object v5, v12

    .line 767
    const/4 v9, 0x1

    .line 768
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 769
    .line 770
    .line 771
    move-result v1

    .line 772
    if-nez v1, :cond_2a

    .line 773
    .line 774
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 775
    .line 776
    move-object/from16 v3, v20

    .line 777
    .line 778
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookPms;->p(Lcom/mycompany/app/list/book/ListBookPms;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 779
    .line 780
    .line 781
    goto :goto_10

    .line 782
    :cond_29
    move-object/from16 v16, v10

    .line 783
    .line 784
    const/4 v9, 0x1

    .line 785
    :cond_2a
    :goto_10
    if-nez v17, :cond_2c

    .line 786
    .line 787
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 788
    .line 789
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 790
    .line 791
    .line 792
    const/4 v15, 0x0

    .line 793
    iput v15, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 794
    .line 795
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 796
    .line 797
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 798
    .line 799
    .line 800
    move-result v2

    .line 801
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 802
    .line 803
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->q:I

    .line 804
    .line 805
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 806
    .line 807
    if-ne v3, v2, :cond_2b

    .line 808
    .line 809
    goto :goto_11

    .line 810
    :cond_2b
    move v9, v15

    .line 811
    :goto_11
    iput-boolean v9, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 812
    .line 813
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 814
    .line 815
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    .line 817
    .line 818
    goto :goto_12

    .line 819
    :cond_2c
    const/4 v15, 0x0

    .line 820
    :goto_12
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->r:Z

    .line 821
    .line 822
    if-eqz v1, :cond_2e

    .line 823
    .line 824
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 825
    .line 826
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 827
    .line 828
    .line 829
    move-result v1

    .line 830
    if-nez v1, :cond_2e

    .line 831
    .line 832
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 833
    .line 834
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 835
    .line 836
    .line 837
    move-result v1

    .line 838
    new-array v2, v1, [Z

    .line 839
    .line 840
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->n:[Z

    .line 841
    .line 842
    new-array v1, v1, [I

    .line 843
    .line 844
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->o:[I

    .line 845
    .line 846
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 847
    .line 848
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 849
    .line 850
    .line 851
    move-result v2

    .line 852
    move v10, v15

    .line 853
    :goto_13
    if-ge v10, v2, :cond_2e

    .line 854
    .line 855
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    add-int/lit8 v10, v10, 0x1

    .line 860
    .line 861
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 862
    .line 863
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 864
    .line 865
    if-eqz v4, :cond_2d

    .line 866
    .line 867
    goto :goto_14

    .line 868
    :cond_2d
    iget v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 869
    .line 870
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->n:[Z

    .line 871
    .line 872
    iget-boolean v6, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 873
    .line 874
    aput-boolean v6, v5, v4

    .line 875
    .line 876
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->o:[I

    .line 877
    .line 878
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 879
    .line 880
    aput v3, v5, v4

    .line 881
    .line 882
    goto :goto_13

    .line 883
    :cond_2e
    invoke-static/range {v16 .. v16}, Lcom/mycompany/app/data/book/DataBookPms;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPms;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 888
    .line 889
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->m:Ljava/util/ArrayList;

    .line 890
    .line 891
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 892
    .line 893
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 894
    .line 895
    :cond_2f
    :goto_14
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookPms;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms;->c:Lcom/mycompany/app/list/book/ListBookPms$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookPms;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->n:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->o:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->p:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->t:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookPms;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPms;->c:Lcom/mycompany/app/list/book/ListBookPms$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookPms;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->n:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->o:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->p:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->q:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->u:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->r:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->w:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->h:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->l:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->m:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->n:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->o:[I

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->p:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPms$ListTask;->t:Ljava/util/ArrayList;

    .line 99
    .line 100
    return-void
.end method
