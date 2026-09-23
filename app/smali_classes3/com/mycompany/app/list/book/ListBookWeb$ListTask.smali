.class Lcom/mycompany/app/list/book/ListBookWeb$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public g:Z

.field public final h:Z

.field public i:Ljava/lang/String;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public l:[Z

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:Ljava/util/List;

.field public s:I

.field public t:I

.field public final u:Z

.field public final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookWeb;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->p:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->s:I

    .line 8
    .line 9
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->t:I

    .line 10
    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/mycompany/app/list/book/ListBookWeb;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->h:Z

    .line 28
    .line 29
    iput-object p3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->j:Ljava/util/List;

    .line 32
    .line 33
    iput-object p5, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->r:Ljava/util/List;

    .line 34
    .line 35
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookWeb;->g:Z

    .line 36
    .line 37
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->u:Z

    .line 38
    .line 39
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookWeb;->h:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->v:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookWeb;->c:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-interface {p1}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->f()V

    .line 48
    .line 49
    .line 50
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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2b

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/mycompany/app/list/book/ListBookWeb;

    .line 17
    .line 18
    if-eqz v2, :cond_46

    .line 19
    .line 20
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookWeb;->a:Landroid/content/Context;

    .line 21
    .line 22
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    goto/16 :goto_2b

    .line 27
    .line 28
    :cond_1
    iget-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->u:Z

    .line 29
    .line 30
    const/16 v6, 0xb

    .line 31
    .line 32
    const-string v7, "_rsv4"

    .line 33
    .line 34
    const-string v8, "_time"

    .line 35
    .line 36
    const-string v9, "_title"

    .line 37
    .line 38
    const-string v10, "_path"

    .line 39
    .line 40
    const-string v11, "_id"

    .line 41
    .line 42
    const-string v12, "1"

    .line 43
    .line 44
    const-string v13, "0"

    .line 45
    .line 46
    const/4 v14, 0x0

    .line 47
    if-eqz v4, :cond_17

    .line 48
    .line 49
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->v:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v16

    .line 55
    if-nez v16, :cond_46

    .line 56
    .line 57
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 62
    .line 63
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_e

    .line 72
    .line 73
    :cond_2
    if-nez v3, :cond_3

    .line 74
    .line 75
    const/4 v15, 0x0

    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v20, "_secret=? AND _isdir=?"

    .line 84
    .line 85
    sget-boolean v17, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 86
    .line 87
    if-eqz v17, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    move-object v12, v13

    .line 91
    :goto_0
    filled-new-array {v12, v13}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v21

    .line 95
    const-string v22, "_title ASC"

    .line 96
    .line 97
    :try_start_0
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    .line 103
    .line 104
    move-result-object v17

    .line 105
    const-string v18, "DbBookWeb_table"

    .line 106
    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    invoke-static/range {v17 .. v22}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 110
    .line 111
    .line 112
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    if-eqz v12, :cond_a

    .line 114
    .line 115
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    if-eqz v13, :cond_a

    .line 120
    .line 121
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    const-string v13, "_dir"

    .line 126
    .line 127
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    :goto_1
    new-instance v15, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 148
    .line 149
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-boolean v14, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 153
    .line 154
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iput-object v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 159
    .line 160
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    iput-object v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 165
    .line 166
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    iput-object v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_5

    .line 177
    .line 178
    move v6, v7

    .line 179
    move/from16 v19, v8

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    iget-object v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v5, v14}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    iput-object v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_6

    .line 195
    .line 196
    iget-object v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 199
    .line 200
    :cond_6
    iget-object v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 201
    .line 202
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    iput-object v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 207
    .line 208
    iput v6, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 209
    .line 210
    const v5, -0x70708

    .line 211
    .line 212
    .line 213
    iput v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 214
    .line 215
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 216
    .line 217
    iput v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 218
    .line 219
    move/from16 v19, v7

    .line 220
    .line 221
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 222
    .line 223
    .line 224
    move-result-wide v6

    .line 225
    iput-wide v6, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 226
    .line 227
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 228
    .line 229
    .line 230
    move-result-wide v6

    .line 231
    iput-wide v6, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 232
    .line 233
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 234
    .line 235
    if-eqz v6, :cond_7

    .line 236
    .line 237
    move/from16 v6, v19

    .line 238
    .line 239
    move/from16 v19, v8

    .line 240
    .line 241
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 242
    .line 243
    .line 244
    move-result-wide v7

    .line 245
    iput-wide v7, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 246
    .line 247
    long-to-int v7, v7

    .line 248
    iput v7, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_7
    move/from16 v6, v19

    .line 252
    .line 253
    move/from16 v19, v8

    .line 254
    .line 255
    invoke-static {v15}, Lcom/mycompany/app/list/book/ListBookWeb;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 256
    .line 257
    .line 258
    :goto_2
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    :goto_3
    iget-object v7, v2, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 262
    .line 263
    if-eqz v7, :cond_8

    .line 264
    .line 265
    iget-boolean v7, v7, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 266
    .line 267
    if-eqz v7, :cond_8

    .line 268
    .line 269
    const/4 v7, 0x1

    .line 270
    goto :goto_4

    .line 271
    :cond_8
    move v7, v14

    .line 272
    :goto_4
    if-nez v7, :cond_a

    .line 273
    .line 274
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 275
    .line 276
    .line 277
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    if-nez v7, :cond_9

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_9
    move v7, v6

    .line 282
    move/from16 v8, v19

    .line 283
    .line 284
    const/16 v6, 0xb

    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :catch_0
    const/4 v12, 0x0

    .line 289
    :catch_1
    :cond_a
    :goto_5
    if-eqz v12, :cond_b

    .line 290
    .line 291
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 292
    .line 293
    .line 294
    :cond_b
    iget-object v2, v2, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 295
    .line 296
    if-eqz v2, :cond_c

    .line 297
    .line 298
    iget-boolean v2, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 299
    .line 300
    if-eqz v2, :cond_c

    .line 301
    .line 302
    const/4 v1, 0x0

    .line 303
    :cond_c
    move-object v15, v1

    .line 304
    :goto_6
    iput-object v15, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 305
    .line 306
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 307
    .line 308
    if-eqz v1, :cond_d

    .line 309
    .line 310
    goto/16 :goto_2b

    .line 311
    .line 312
    :cond_d
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 317
    .line 318
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 319
    .line 320
    const/4 v2, 0x0

    .line 321
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookSearch;->b:Ljava/util/List;

    .line 322
    .line 323
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 324
    .line 325
    if-eqz v1, :cond_46

    .line 326
    .line 327
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_46

    .line 332
    .line 333
    new-instance v1, Ljava/util/ArrayList;

    .line 334
    .line 335
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .line 337
    .line 338
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 339
    .line 340
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    :cond_f
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-eqz v3, :cond_14

    .line 349
    .line 350
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 355
    .line 356
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 357
    .line 358
    if-eqz v5, :cond_10

    .line 359
    .line 360
    goto/16 :goto_2b

    .line 361
    .line 362
    :cond_10
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 363
    .line 364
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-eqz v5, :cond_11

    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_11
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 372
    .line 373
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 374
    .line 375
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_12

    .line 384
    .line 385
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_12
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 390
    .line 391
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-eqz v5, :cond_13

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_13
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-eqz v5, :cond_f

    .line 409
    .line 410
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_7

    .line 414
    :cond_14
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-nez v1, :cond_46

    .line 421
    .line 422
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 423
    .line 424
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 429
    .line 430
    .line 431
    move-result v2

    .line 432
    if-eqz v2, :cond_46

    .line 433
    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 439
    .line 440
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 441
    .line 442
    if-eqz v3, :cond_15

    .line 443
    .line 444
    goto/16 :goto_2b

    .line 445
    .line 446
    :cond_15
    if-nez v2, :cond_16

    .line 447
    .line 448
    goto :goto_8

    .line 449
    :cond_16
    iput v14, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 450
    .line 451
    add-int/lit8 v14, v14, 0x1

    .line 452
    .line 453
    goto :goto_8

    .line 454
    :cond_17
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 455
    .line 456
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->Y6(Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 461
    .line 462
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    const-string v4, "/"

    .line 467
    .line 468
    if-eqz v1, :cond_18

    .line 469
    .line 470
    iput-object v4, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 471
    .line 472
    goto :goto_9

    .line 473
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 479
    .line 480
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 488
    .line 489
    const/4 v6, 0x0

    .line 490
    invoke-static {v6, v1}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iget-object v15, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 495
    .line 496
    invoke-static {v6, v15}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v15

    .line 500
    invoke-static {v3, v1, v15}, Lcom/mycompany/app/db/book/DbBookWeb;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-nez v1, :cond_19

    .line 505
    .line 506
    iput-object v4, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 507
    .line 508
    :cond_19
    :goto_9
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookWeb;->e:Ljava/lang/String;

    .line 509
    .line 510
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 511
    .line 512
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    if-nez v6, :cond_1a

    .line 517
    .line 518
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 519
    .line 520
    iput-object v6, v2, Lcom/mycompany/app/list/book/ListBookWeb;->e:Ljava/lang/String;

    .line 521
    .line 522
    const/4 v6, 0x1

    .line 523
    iput-boolean v6, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->g:Z

    .line 524
    .line 525
    goto :goto_a

    .line 526
    :cond_1a
    const/4 v6, 0x1

    .line 527
    :goto_a
    iget-boolean v15, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 528
    .line 529
    if-eqz v15, :cond_1b

    .line 530
    .line 531
    goto/16 :goto_2b

    .line 532
    .line 533
    :cond_1b
    new-instance v15, Ljava/util/ArrayList;

    .line 534
    .line 535
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .line 537
    .line 538
    iput-object v15, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 539
    .line 540
    iget-object v15, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->j:Ljava/util/List;

    .line 541
    .line 542
    if-eqz v15, :cond_1c

    .line 543
    .line 544
    iput-boolean v6, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->q:Z

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :cond_1c
    iget-object v15, v2, Lcom/mycompany/app/list/book/ListBookWeb;->c:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 548
    .line 549
    if-eqz v15, :cond_1d

    .line 550
    .line 551
    invoke-interface {v15}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->e()Lcom/mycompany/app/main/MainListAdapter2;

    .line 552
    .line 553
    .line 554
    move-result-object v15

    .line 555
    if-eqz v15, :cond_1d

    .line 556
    .line 557
    iget-boolean v5, v15, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 558
    .line 559
    if-eqz v5, :cond_1d

    .line 560
    .line 561
    iput-boolean v6, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->q:Z

    .line 562
    .line 563
    invoke-virtual {v15}, Lcom/mycompany/app/main/MainListAdapter2;->x()Ljava/util/ArrayList;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    move-object v15, v5

    .line 568
    goto :goto_b

    .line 569
    :cond_1d
    const/4 v15, 0x0

    .line 570
    :goto_b
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 573
    .line 574
    .line 575
    move-result v5

    .line 576
    if-nez v5, :cond_20

    .line 577
    .line 578
    new-instance v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 579
    .line 580
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 581
    .line 582
    .line 583
    const/4 v14, 0x1

    .line 584
    iput v14, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 585
    .line 586
    iget-object v14, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 587
    .line 588
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 589
    .line 590
    .line 591
    move-result v21

    .line 592
    if-nez v21, :cond_1e

    .line 593
    .line 594
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v21

    .line 598
    if-eqz v21, :cond_1f

    .line 599
    .line 600
    :cond_1e
    move/from16 v21, v5

    .line 601
    .line 602
    goto :goto_c

    .line 603
    :cond_1f
    move/from16 v21, v5

    .line 604
    .line 605
    const/4 v5, 0x0

    .line 606
    invoke-static {v5, v14}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v14

    .line 610
    goto :goto_d

    .line 611
    :goto_c
    move-object v14, v4

    .line 612
    :goto_d
    iput-object v14, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 613
    .line 614
    const-string v5, ".."

    .line 615
    .line 616
    iput-object v5, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 617
    .line 618
    const/4 v5, 0x0

    .line 619
    iput v5, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 620
    .line 621
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_shift_2_black_24:I

    .line 622
    .line 623
    iput v5, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 624
    .line 625
    const/4 v14, 0x1

    .line 626
    iput-boolean v14, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 627
    .line 628
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 629
    .line 630
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    iget v5, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->n:I

    .line 634
    .line 635
    add-int/2addr v5, v14

    .line 636
    iput v5, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->n:I

    .line 637
    .line 638
    goto :goto_e

    .line 639
    :cond_20
    move/from16 v21, v5

    .line 640
    .line 641
    :goto_e
    iget-object v5, v2, Lcom/mycompany/app/list/book/ListBookWeb;->f:Ljava/util/List;

    .line 642
    .line 643
    iget-boolean v6, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->h:Z

    .line 644
    .line 645
    if-nez v6, :cond_22

    .line 646
    .line 647
    iget-boolean v6, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->g:Z

    .line 648
    .line 649
    if-nez v6, :cond_22

    .line 650
    .line 651
    if-eqz v5, :cond_22

    .line 652
    .line 653
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 654
    .line 655
    .line 656
    move-result v6

    .line 657
    if-eqz v6, :cond_21

    .line 658
    .line 659
    goto :goto_f

    .line 660
    :cond_21
    move-object/from16 v23, v1

    .line 661
    .line 662
    move-object v14, v2

    .line 663
    move-object/from16 v22, v3

    .line 664
    .line 665
    goto/16 :goto_22

    .line 666
    .line 667
    :cond_22
    :goto_f
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 668
    .line 669
    iget-object v6, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->r:Ljava/util/List;

    .line 670
    .line 671
    if-eqz v3, :cond_23

    .line 672
    .line 673
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 674
    .line 675
    .line 676
    move-result v14

    .line 677
    if-eqz v14, :cond_24

    .line 678
    .line 679
    :cond_23
    move-object/from16 v23, v1

    .line 680
    .line 681
    move-object v14, v2

    .line 682
    move-object/from16 v22, v3

    .line 683
    .line 684
    goto/16 :goto_20

    .line 685
    .line 686
    :cond_24
    new-instance v14, Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .line 690
    .line 691
    if-eqz v15, :cond_25

    .line 692
    .line 693
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 694
    .line 695
    .line 696
    move-result v22

    .line 697
    move/from16 v30, v22

    .line 698
    .line 699
    move-object/from16 v22, v12

    .line 700
    .line 701
    move/from16 v12, v30

    .line 702
    .line 703
    goto :goto_10

    .line 704
    :cond_25
    move-object/from16 v22, v12

    .line 705
    .line 706
    const/4 v12, 0x0

    .line 707
    :goto_10
    if-eqz v6, :cond_26

    .line 708
    .line 709
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 710
    .line 711
    .line 712
    move-result v23

    .line 713
    move/from16 v30, v23

    .line 714
    .line 715
    move-object/from16 v23, v13

    .line 716
    .line 717
    move/from16 v13, v30

    .line 718
    .line 719
    goto :goto_11

    .line 720
    :cond_26
    move-object/from16 v23, v13

    .line 721
    .line 722
    const/4 v13, 0x0

    .line 723
    :goto_11
    const-string v27, "_secret=? AND _dir=?"

    .line 724
    .line 725
    sget-boolean v24, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 726
    .line 727
    if-eqz v24, :cond_27

    .line 728
    .line 729
    move-object/from16 v30, v22

    .line 730
    .line 731
    move-object/from16 v22, v3

    .line 732
    .line 733
    move-object/from16 v3, v30

    .line 734
    .line 735
    goto :goto_12

    .line 736
    :cond_27
    move-object/from16 v22, v3

    .line 737
    .line 738
    move-object/from16 v3, v23

    .line 739
    .line 740
    :goto_12
    filled-new-array {v3, v5}, [Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v28

    .line 744
    :try_start_2
    invoke-static/range {v22 .. v22}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 749
    .line 750
    .line 751
    move-result-object v24

    .line 752
    const-string v25, "DbBookWeb_table"

    .line 753
    .line 754
    const/16 v26, 0x0

    .line 755
    .line 756
    const/16 v29, 0x0

    .line 757
    .line 758
    invoke-static/range {v24 .. v29}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 759
    .line 760
    .line 761
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 762
    if-eqz v3, :cond_33

    .line 763
    .line 764
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 765
    .line 766
    .line 767
    move-result v23

    .line 768
    if-eqz v23, :cond_33

    .line 769
    .line 770
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 771
    .line 772
    .line 773
    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 774
    move-object/from16 v23, v1

    .line 775
    .line 776
    :try_start_4
    const-string v1, "_isdir"

    .line 777
    .line 778
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 779
    .line 780
    .line 781
    move-result v1

    .line 782
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 783
    .line 784
    .line 785
    move-result v10

    .line 786
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    move-result v9

    .line 790
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 791
    .line 792
    .line 793
    move-result v8

    .line 794
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 795
    .line 796
    .line 797
    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 798
    move-object/from16 v24, v2

    .line 799
    .line 800
    move-object/from16 v25, v14

    .line 801
    .line 802
    const/4 v0, 0x0

    .line 803
    const/4 v2, 0x0

    .line 804
    :goto_13
    :try_start_5
    new-instance v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 805
    .line 806
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 807
    .line 808
    .line 809
    move-object/from16 v26, v6

    .line 810
    .line 811
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 812
    .line 813
    .line 814
    move-result v6

    .line 815
    move/from16 v27, v1

    .line 816
    .line 817
    const/4 v1, 0x1

    .line 818
    if-ne v6, v1, :cond_28

    .line 819
    .line 820
    const/4 v1, 0x1

    .line 821
    goto :goto_14

    .line 822
    :cond_28
    const/4 v1, 0x0

    .line 823
    :goto_14
    iput-boolean v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 824
    .line 825
    iput-object v5, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 826
    .line 827
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 832
    .line 833
    iget-boolean v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 834
    .line 835
    if-eqz v1, :cond_2a

    .line 836
    .line 837
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 838
    .line 839
    .line 840
    move-result v1

    .line 841
    if-eqz v1, :cond_29

    .line 842
    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    .line 844
    .line 845
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    iget-object v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 852
    .line 853
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 861
    .line 862
    goto :goto_15

    .line 863
    :catch_2
    move-object/from16 v14, v24

    .line 864
    .line 865
    move-object/from16 v6, v25

    .line 866
    .line 867
    goto/16 :goto_1e

    .line 868
    .line 869
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 870
    .line 871
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    iget-object v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 881
    .line 882
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    .line 884
    .line 885
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 890
    .line 891
    :goto_15
    const-string v1, " "

    .line 892
    .line 893
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 894
    .line 895
    const/4 v1, 0x0

    .line 896
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 897
    .line 898
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 899
    .line 900
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    .line 901
    .line 902
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 903
    .line 904
    :goto_16
    move v1, v7

    .line 905
    goto :goto_18

    .line 906
    :cond_2a
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 911
    .line 912
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 913
    .line 914
    .line 915
    move-result v1

    .line 916
    if-eqz v1, :cond_2b

    .line 917
    .line 918
    move v1, v7

    .line 919
    move-object/from16 v6, v25

    .line 920
    .line 921
    move-object/from16 v7, v26

    .line 922
    .line 923
    :goto_17
    move-object/from16 v14, v24

    .line 924
    .line 925
    move/from16 v24, v0

    .line 926
    .line 927
    goto/16 :goto_1c

    .line 928
    .line 929
    :cond_2b
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 930
    .line 931
    const/4 v6, 0x0

    .line 932
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v1

    .line 936
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 937
    .line 938
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    if-eqz v1, :cond_2c

    .line 943
    .line 944
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 945
    .line 946
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 947
    .line 948
    :cond_2c
    iget-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 949
    .line 950
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    iput-object v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 955
    .line 956
    const/16 v1, 0xb

    .line 957
    .line 958
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 959
    .line 960
    const v6, -0x70708

    .line 961
    .line 962
    .line 963
    iput v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 964
    .line 965
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 966
    .line 967
    iput v1, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 968
    .line 969
    goto :goto_16

    .line 970
    :goto_18
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 971
    .line 972
    .line 973
    move-result-wide v6

    .line 974
    iput-wide v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 975
    .line 976
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 977
    .line 978
    .line 979
    move-result-wide v6

    .line 980
    iput-wide v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 981
    .line 982
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 983
    .line 984
    if-eqz v6, :cond_2d

    .line 985
    .line 986
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 987
    .line 988
    .line 989
    move-result-wide v6

    .line 990
    iput-wide v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 991
    .line 992
    long-to-int v6, v6

    .line 993
    iput v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 994
    .line 995
    goto :goto_19

    .line 996
    :cond_2d
    invoke-static {v14}, Lcom/mycompany/app/list/book/ListBookWeb;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 997
    .line 998
    .line 999
    :goto_19
    if-ge v0, v12, :cond_2e

    .line 1000
    .line 1001
    iget-wide v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1002
    .line 1003
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v6

    .line 1007
    invoke-interface {v15, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v6

    .line 1011
    iput-boolean v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 1012
    .line 1013
    if-eqz v6, :cond_2e

    .line 1014
    .line 1015
    add-int/lit8 v0, v0, 0x1

    .line 1016
    .line 1017
    :cond_2e
    if-ge v2, v13, :cond_30

    .line 1018
    .line 1019
    iget-wide v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1020
    .line 1021
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v6

    .line 1025
    move-object/from16 v7, v26

    .line 1026
    .line 1027
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    move-result v6

    .line 1031
    iput-boolean v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1032
    .line 1033
    if-eqz v6, :cond_2f

    .line 1034
    .line 1035
    add-int/lit8 v2, v2, 0x1

    .line 1036
    .line 1037
    :cond_2f
    :goto_1a
    move-object/from16 v6, v25

    .line 1038
    .line 1039
    goto :goto_1b

    .line 1040
    :cond_30
    move-object/from16 v7, v26

    .line 1041
    .line 1042
    goto :goto_1a

    .line 1043
    :goto_1b
    :try_start_6
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1044
    .line 1045
    .line 1046
    goto :goto_17

    .line 1047
    :goto_1c
    :try_start_7
    iget-object v0, v14, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 1048
    .line 1049
    if-eqz v0, :cond_31

    .line 1050
    .line 1051
    iget-boolean v0, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1052
    .line 1053
    if-eqz v0, :cond_31

    .line 1054
    .line 1055
    const/4 v0, 0x1

    .line 1056
    goto :goto_1d

    .line 1057
    :cond_31
    const/4 v0, 0x0

    .line 1058
    :goto_1d
    if-nez v0, :cond_34

    .line 1059
    .line 1060
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1061
    .line 1062
    .line 1063
    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1064
    if-nez v0, :cond_32

    .line 1065
    .line 1066
    goto :goto_1e

    .line 1067
    :cond_32
    move-object/from16 v25, v6

    .line 1068
    .line 1069
    move-object v6, v7

    .line 1070
    move/from16 v0, v24

    .line 1071
    .line 1072
    move v7, v1

    .line 1073
    move-object/from16 v24, v14

    .line 1074
    .line 1075
    move/from16 v1, v27

    .line 1076
    .line 1077
    goto/16 :goto_13

    .line 1078
    .line 1079
    :catch_3
    move-object/from16 v14, v24

    .line 1080
    .line 1081
    goto :goto_1e

    .line 1082
    :catch_4
    :cond_33
    move-object/from16 v23, v1

    .line 1083
    .line 1084
    :catch_5
    move-object v6, v14

    .line 1085
    move-object v14, v2

    .line 1086
    goto :goto_1e

    .line 1087
    :catch_6
    move-object/from16 v23, v1

    .line 1088
    .line 1089
    move-object v6, v14

    .line 1090
    move-object v14, v2

    .line 1091
    const/4 v3, 0x0

    .line 1092
    :catch_7
    :cond_34
    :goto_1e
    if-eqz v3, :cond_35

    .line 1093
    .line 1094
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1095
    .line 1096
    .line 1097
    :cond_35
    iget-object v0, v14, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 1098
    .line 1099
    if-eqz v0, :cond_36

    .line 1100
    .line 1101
    iget-boolean v0, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1102
    .line 1103
    if-eqz v0, :cond_36

    .line 1104
    .line 1105
    goto :goto_20

    .line 1106
    :cond_36
    :goto_1f
    move-object/from16 v0, p0

    .line 1107
    .line 1108
    goto :goto_21

    .line 1109
    :goto_20
    const/4 v6, 0x0

    .line 1110
    goto :goto_1f

    .line 1111
    :goto_21
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1112
    .line 1113
    if-eqz v1, :cond_37

    .line 1114
    .line 1115
    goto/16 :goto_2b

    .line 1116
    .line 1117
    :cond_37
    move-object v5, v6

    .line 1118
    :goto_22
    if-eqz v5, :cond_39

    .line 1119
    .line 1120
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v1

    .line 1124
    if-nez v1, :cond_39

    .line 1125
    .line 1126
    sget-boolean v1, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 1127
    .line 1128
    if-eqz v1, :cond_38

    .line 1129
    .line 1130
    new-instance v1, Lcom/mycompany/app/main/MainUtil$SortChildUser;

    .line 1131
    .line 1132
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    :try_start_8
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1136
    .line 1137
    .line 1138
    :catch_8
    const/4 v6, 0x0

    .line 1139
    goto :goto_23

    .line 1140
    :cond_38
    sget v1, Lcom/mycompany/app/pref/PrefList;->H:I

    .line 1141
    .line 1142
    sget-boolean v2, Lcom/mycompany/app/pref/PrefList;->I:Z

    .line 1143
    .line 1144
    const/4 v6, 0x0

    .line 1145
    invoke-static {v6, v1, v2}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v1

    .line 1149
    :try_start_9
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1150
    .line 1151
    .line 1152
    :catch_9
    :goto_23
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 1153
    .line 1154
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1155
    .line 1156
    .line 1157
    goto :goto_24

    .line 1158
    :cond_39
    const/4 v6, 0x0

    .line 1159
    :goto_24
    iput-object v5, v14, Lcom/mycompany/app/list/book/ListBookWeb;->f:Ljava/util/List;

    .line 1160
    .line 1161
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 1162
    .line 1163
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    if-nez v1, :cond_46

    .line 1168
    .line 1169
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1170
    .line 1171
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1172
    .line 1173
    .line 1174
    const/4 v2, 0x2

    .line 1175
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 1176
    .line 1177
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 1178
    .line 1179
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    .line 1181
    .line 1182
    iget v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->o:I

    .line 1183
    .line 1184
    const/16 v16, 0x1

    .line 1185
    .line 1186
    add-int/lit8 v1, v1, 0x1

    .line 1187
    .line 1188
    iput v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->o:I

    .line 1189
    .line 1190
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->q:Z

    .line 1191
    .line 1192
    if-eqz v1, :cond_3a

    .line 1193
    .line 1194
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 1195
    .line 1196
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1197
    .line 1198
    .line 1199
    move-result v5

    .line 1200
    new-array v1, v5, [Z

    .line 1201
    .line 1202
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->l:[Z

    .line 1203
    .line 1204
    goto :goto_25

    .line 1205
    :cond_3a
    move v5, v6

    .line 1206
    :goto_25
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->g:Z

    .line 1207
    .line 1208
    if-eqz v1, :cond_3c

    .line 1209
    .line 1210
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1211
    .line 1212
    .line 1213
    move-result v1

    .line 1214
    if-nez v1, :cond_3c

    .line 1215
    .line 1216
    if-eqz v21, :cond_3b

    .line 1217
    .line 1218
    :goto_26
    const/4 v1, 0x1

    .line 1219
    goto :goto_27

    .line 1220
    :cond_3b
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 1221
    .line 1222
    move-object/from16 v2, v23

    .line 1223
    .line 1224
    const/4 v3, 0x0

    .line 1225
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v4

    .line 1229
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v1

    .line 1233
    if-eqz v1, :cond_3d

    .line 1234
    .line 1235
    move-object v4, v2

    .line 1236
    goto :goto_26

    .line 1237
    :cond_3c
    move-object/from16 v2, v23

    .line 1238
    .line 1239
    :cond_3d
    move-object v4, v2

    .line 1240
    move v1, v6

    .line 1241
    :goto_27
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 1242
    .line 1243
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v2

    .line 1247
    move v3, v1

    .line 1248
    move v1, v6

    .line 1249
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1250
    .line 1251
    .line 1252
    move-result v7

    .line 1253
    if-eqz v7, :cond_46

    .line 1254
    .line 1255
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v7

    .line 1259
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1260
    .line 1261
    iget-boolean v8, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1262
    .line 1263
    if-eqz v8, :cond_3e

    .line 1264
    .line 1265
    goto/16 :goto_2b

    .line 1266
    .line 1267
    :cond_3e
    if-nez v7, :cond_3f

    .line 1268
    .line 1269
    goto :goto_28

    .line 1270
    :cond_3f
    sget-boolean v8, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 1271
    .line 1272
    if-eqz v8, :cond_41

    .line 1273
    .line 1274
    iget v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1275
    .line 1276
    if-eq v8, v1, :cond_40

    .line 1277
    .line 1278
    iput v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1279
    .line 1280
    int-to-long v8, v1

    .line 1281
    iput-wide v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 1282
    .line 1283
    move-object/from16 v8, v22

    .line 1284
    .line 1285
    invoke-static {v8, v7, v1}, Lcom/mycompany/app/db/book/DbBookWeb;->z(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;I)V

    .line 1286
    .line 1287
    .line 1288
    goto :goto_29

    .line 1289
    :cond_40
    move-object/from16 v8, v22

    .line 1290
    .line 1291
    goto :goto_29

    .line 1292
    :cond_41
    move-object/from16 v8, v22

    .line 1293
    .line 1294
    iput v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1295
    .line 1296
    :goto_29
    iget-boolean v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 1297
    .line 1298
    if-eqz v9, :cond_42

    .line 1299
    .line 1300
    if-eqz v3, :cond_42

    .line 1301
    .line 1302
    iget-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1303
    .line 1304
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v9

    .line 1308
    if-eqz v9, :cond_42

    .line 1309
    .line 1310
    iget v3, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1311
    .line 1312
    iput v3, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->t:I

    .line 1313
    .line 1314
    move v3, v6

    .line 1315
    :cond_42
    iget-boolean v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 1316
    .line 1317
    const/4 v10, -0x1

    .line 1318
    if-eqz v9, :cond_43

    .line 1319
    .line 1320
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->l:[Z

    .line 1321
    .line 1322
    if-eqz v9, :cond_43

    .line 1323
    .line 1324
    iget v11, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1325
    .line 1326
    if-ge v11, v5, :cond_43

    .line 1327
    .line 1328
    const/16 v16, 0x1

    .line 1329
    .line 1330
    aput-boolean v16, v9, v11

    .line 1331
    .line 1332
    iget v9, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->m:I

    .line 1333
    .line 1334
    add-int/lit8 v9, v9, 0x1

    .line 1335
    .line 1336
    iput v9, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->m:I

    .line 1337
    .line 1338
    iget v9, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->p:I

    .line 1339
    .line 1340
    if-ne v9, v10, :cond_44

    .line 1341
    .line 1342
    iput v11, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->p:I

    .line 1343
    .line 1344
    goto :goto_2a

    .line 1345
    :cond_43
    const/16 v16, 0x1

    .line 1346
    .line 1347
    :cond_44
    :goto_2a
    iget-boolean v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 1348
    .line 1349
    if-eqz v9, :cond_45

    .line 1350
    .line 1351
    iget v9, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->s:I

    .line 1352
    .line 1353
    if-ne v9, v10, :cond_45

    .line 1354
    .line 1355
    iget v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 1356
    .line 1357
    iput v9, v0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->s:I

    .line 1358
    .line 1359
    :cond_45
    const/4 v9, 0x0

    .line 1360
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 1361
    .line 1362
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 1363
    .line 1364
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 1365
    .line 1366
    iput-object v9, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 1367
    .line 1368
    add-int/lit8 v1, v1, 0x1

    .line 1369
    .line 1370
    move-object/from16 v22, v8

    .line 1371
    .line 1372
    goto :goto_28

    .line 1373
    :cond_46
    :goto_2b
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookWeb;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookWeb;->c:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->j:Ljava/util/List;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->l:[Z

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->r:Ljava/util/List;

    .line 38
    .line 39
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookWeb;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookWeb;->d:Lcom/mycompany/app/list/book/ListBookWeb$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookWeb;->c:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->l:[Z

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 39
    .line 40
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->m:I

    .line 41
    .line 42
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 43
    .line 44
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->n:I

    .line 45
    .line 46
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->i:I

    .line 47
    .line 48
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->o:I

    .line 49
    .line 50
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->j:I

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->p:I

    .line 53
    .line 54
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->k:I

    .line 55
    .line 56
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->s:I

    .line 57
    .line 58
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 59
    .line 60
    iput-object v1, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 61
    .line 62
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->q:Z

    .line 63
    .line 64
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 65
    .line 66
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->q:Ljava/lang/String;

    .line 69
    .line 70
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->g:Z

    .line 71
    .line 72
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->r:Z

    .line 73
    .line 74
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->t:I

    .line 75
    .line 76
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->s:I

    .line 77
    .line 78
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->v:Ljava/lang/String;

    .line 79
    .line 80
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->i:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->j:Ljava/util/List;

    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->k:Ljava/util/List;

    .line 90
    .line 91
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->l:[Z

    .line 92
    .line 93
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookWeb$ListTask;->r:Ljava/util/List;

    .line 94
    .line 95
    return-void
.end method
