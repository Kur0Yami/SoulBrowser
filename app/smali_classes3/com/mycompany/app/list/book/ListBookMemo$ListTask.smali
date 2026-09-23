.class Lcom/mycompany/app/list/book/ListBookMemo$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookMemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public final g:Z

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public j:[Z

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Ljava/util/List;

.field public p:I

.field public final q:Z

.field public final r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookMemo;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->m:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->p:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookMemo;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->g:Z

    .line 26
    .line 27
    iput-object p3, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->h:Ljava/util/List;

    .line 28
    .line 29
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->o:Ljava/util/List;

    .line 30
    .line 31
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookMemo;->e:Z

    .line 32
    .line 33
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->q:Z

    .line 34
    .line 35
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookMemo;->f:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->r:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookMemo;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->f()V

    .line 44
    .line 45
    .line 46
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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_15

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/mycompany/app/list/book/ListBookMemo;

    .line 17
    .line 18
    if-eqz v2, :cond_2a

    .line 19
    .line 20
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookMemo;->a:Landroid/content/Context;

    .line 21
    .line 22
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    goto/16 :goto_15

    .line 27
    .line 28
    :cond_1
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->q:Z

    .line 29
    .line 30
    const v6, -0x70708

    .line 31
    .line 32
    .line 33
    const-string v7, "_order"

    .line 34
    .line 35
    const-string v8, "_time"

    .line 36
    .line 37
    const-string v9, "_text"

    .line 38
    .line 39
    const-string v10, "_id"

    .line 40
    .line 41
    const/4 v11, 0x0

    .line 42
    if-eqz v5, :cond_11

    .line 43
    .line 44
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->r:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_2a

    .line 51
    .line 52
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget-object v5, v5, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 57
    .line 58
    iput-object v5, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 59
    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_a

    .line 67
    .line 68
    :cond_2
    if-nez v3, :cond_3

    .line 69
    .line 70
    :goto_0
    const/4 v5, 0x0

    .line 71
    goto/16 :goto_4

    .line 72
    .line 73
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v18, "_text ASC"

    .line 79
    .line 80
    :try_start_0
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookMemo;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookMemo;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    .line 86
    .line 87
    move-result-object v13

    .line 88
    const-string v14, "DbBookMemo_table"

    .line 89
    .line 90
    const/16 v16, 0x0

    .line 91
    .line 92
    const/16 v17, 0x0

    .line 93
    .line 94
    const/4 v15, 0x0

    .line 95
    invoke-static/range {v13 .. v18}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 96
    .line 97
    .line 98
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    if-eqz v13, :cond_6

    .line 100
    .line 101
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    if-eqz v14, :cond_6

    .line 106
    .line 107
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    :goto_1
    new-instance v14, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 124
    .line 125
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    iput-object v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 133
    .line 134
    iput v11, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 135
    .line 136
    iput v6, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 137
    .line 138
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_black_24:I

    .line 139
    .line 140
    iput v15, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 141
    .line 142
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 143
    .line 144
    .line 145
    move-result-wide v11

    .line 146
    iput-wide v11, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 147
    .line 148
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v11

    .line 152
    iput-wide v11, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 153
    .line 154
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 155
    .line 156
    .line 157
    move-result-wide v11

    .line 158
    iput-wide v11, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 159
    .line 160
    long-to-int v11, v11

    .line 161
    iput v11, v14, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 162
    .line 163
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    iget-object v11, v2, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 167
    .line 168
    if-eqz v11, :cond_4

    .line 169
    .line 170
    iget-boolean v11, v11, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 171
    .line 172
    if-eqz v11, :cond_4

    .line 173
    .line 174
    move v11, v1

    .line 175
    goto :goto_2

    .line 176
    :cond_4
    const/4 v11, 0x0

    .line 177
    :goto_2
    if-nez v11, :cond_6

    .line 178
    .line 179
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 180
    .line 181
    .line 182
    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    if-nez v11, :cond_5

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    const/4 v11, 0x0

    .line 187
    goto :goto_1

    .line 188
    :catch_0
    const/4 v13, 0x0

    .line 189
    :catch_1
    :cond_6
    :goto_3
    if-eqz v13, :cond_7

    .line 190
    .line 191
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 192
    .line 193
    .line 194
    :cond_7
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 195
    .line 196
    if-eqz v1, :cond_8

    .line 197
    .line 198
    iget-boolean v1, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 199
    .line 200
    if-eqz v1, :cond_8

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :cond_8
    :goto_4
    iput-object v5, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 205
    .line 206
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 207
    .line 208
    if-eqz v1, :cond_9

    .line 209
    .line 210
    goto/16 :goto_15

    .line 211
    .line 212
    :cond_9
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 217
    .line 218
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookSearch;->b:Ljava/util/List;

    .line 222
    .line 223
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 224
    .line 225
    if-eqz v1, :cond_2a

    .line 226
    .line 227
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-nez v1, :cond_2a

    .line 232
    .line 233
    new-instance v1, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 239
    .line 240
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_e

    .line 249
    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 255
    .line 256
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 257
    .line 258
    if-eqz v5, :cond_c

    .line 259
    .line 260
    goto/16 :goto_15

    .line 261
    .line 262
    :cond_c
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 263
    .line 264
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    if-eqz v5, :cond_d

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_d
    iget-object v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 272
    .line 273
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 274
    .line 275
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_b

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_e
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    if-nez v1, :cond_2a

    .line 296
    .line 297
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 298
    .line 299
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const/4 v11, 0x0

    .line 304
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eqz v2, :cond_2a

    .line 309
    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 315
    .line 316
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 317
    .line 318
    if-eqz v3, :cond_f

    .line 319
    .line 320
    goto/16 :goto_15

    .line 321
    .line 322
    :cond_f
    if-nez v2, :cond_10

    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_10
    iput v11, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 326
    .line 327
    add-int/lit8 v11, v11, 0x1

    .line 328
    .line 329
    goto :goto_6

    .line 330
    :cond_11
    if-eqz v4, :cond_12

    .line 331
    .line 332
    goto/16 :goto_15

    .line 333
    .line 334
    :cond_12
    new-instance v4, Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .line 338
    .line 339
    iput-object v4, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 340
    .line 341
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->h:Ljava/util/List;

    .line 342
    .line 343
    if-eqz v4, :cond_13

    .line 344
    .line 345
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->n:Z

    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_13
    iget-object v4, v2, Lcom/mycompany/app/list/book/ListBookMemo;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 349
    .line 350
    if-eqz v4, :cond_14

    .line 351
    .line 352
    invoke-interface {v4}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->e()Lcom/mycompany/app/main/MainListAdapter2;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    if-eqz v4, :cond_14

    .line 357
    .line 358
    iget-boolean v5, v4, Lcom/mycompany/app/main/MainListAdapter2;->m:Z

    .line 359
    .line 360
    if-eqz v5, :cond_14

    .line 361
    .line 362
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->n:Z

    .line 363
    .line 364
    invoke-virtual {v4}, Lcom/mycompany/app/main/MainListAdapter2;->x()Ljava/util/ArrayList;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    goto :goto_7

    .line 369
    :cond_14
    const/4 v4, 0x0

    .line 370
    :goto_7
    iget-object v5, v2, Lcom/mycompany/app/list/book/ListBookMemo;->d:Ljava/util/List;

    .line 371
    .line 372
    iget-boolean v11, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->g:Z

    .line 373
    .line 374
    if-nez v11, :cond_16

    .line 375
    .line 376
    if-eqz v5, :cond_16

    .line 377
    .line 378
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 379
    .line 380
    .line 381
    move-result v11

    .line 382
    if-eqz v11, :cond_15

    .line 383
    .line 384
    goto :goto_8

    .line 385
    :cond_15
    move/from16 v17, v1

    .line 386
    .line 387
    move-object/from16 v20, v3

    .line 388
    .line 389
    goto/16 :goto_11

    .line 390
    .line 391
    :cond_16
    :goto_8
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->o:Ljava/util/List;

    .line 392
    .line 393
    if-nez v3, :cond_17

    .line 394
    .line 395
    move/from16 v17, v1

    .line 396
    .line 397
    move-object/from16 v20, v3

    .line 398
    .line 399
    :goto_9
    const/4 v11, 0x0

    .line 400
    goto/16 :goto_10

    .line 401
    .line 402
    :cond_17
    new-instance v11, Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .line 406
    .line 407
    if-eqz v4, :cond_18

    .line 408
    .line 409
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 410
    .line 411
    .line 412
    move-result v12

    .line 413
    goto :goto_a

    .line 414
    :cond_18
    const/4 v12, 0x0

    .line 415
    :goto_a
    if-eqz v5, :cond_19

    .line 416
    .line 417
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 418
    .line 419
    .line 420
    move-result v13

    .line 421
    goto :goto_b

    .line 422
    :cond_19
    const/4 v13, 0x0

    .line 423
    :goto_b
    :try_start_2
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookMemo;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookMemo;

    .line 424
    .line 425
    .line 426
    move-result-object v14

    .line 427
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 428
    .line 429
    .line 430
    move-result-object v17

    .line 431
    const-string v18, "DbBookMemo_table"

    .line 432
    .line 433
    const/16 v21, 0x0

    .line 434
    .line 435
    const/16 v22, 0x0

    .line 436
    .line 437
    const/16 v19, 0x0

    .line 438
    .line 439
    const/16 v20, 0x0

    .line 440
    .line 441
    invoke-static/range {v17 .. v22}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 442
    .line 443
    .line 444
    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 445
    if-eqz v14, :cond_1e

    .line 446
    .line 447
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 448
    .line 449
    .line 450
    move-result v17

    .line 451
    if-eqz v17, :cond_1e

    .line 452
    .line 453
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 454
    .line 455
    .line 456
    move-result v10

    .line 457
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    move-result v9

    .line 461
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 466
    .line 467
    .line 468
    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 469
    move/from16 v17, v1

    .line 470
    .line 471
    const/4 v1, 0x0

    .line 472
    const/4 v15, 0x0

    .line 473
    :goto_c
    :try_start_4
    new-instance v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 474
    .line 475
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 476
    .line 477
    .line 478
    move-object/from16 v20, v3

    .line 479
    .line 480
    :try_start_5
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    iput-object v3, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 485
    .line 486
    const/4 v3, 0x0

    .line 487
    iput v3, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 488
    .line 489
    const v3, -0x70708

    .line 490
    .line 491
    .line 492
    iput v3, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 493
    .line 494
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_text_snippet_black_24:I

    .line 495
    .line 496
    iput v3, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 497
    .line 498
    move-object/from16 v21, v2

    .line 499
    .line 500
    :try_start_6
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 501
    .line 502
    .line 503
    move-result-wide v2

    .line 504
    iput-wide v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 505
    .line 506
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 507
    .line 508
    .line 509
    move-result-wide v2

    .line 510
    iput-wide v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 511
    .line 512
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 513
    .line 514
    .line 515
    move-result-wide v2

    .line 516
    iput-wide v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 517
    .line 518
    long-to-int v2, v2

    .line 519
    iput v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 520
    .line 521
    if-ge v1, v12, :cond_1a

    .line 522
    .line 523
    iget-wide v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 524
    .line 525
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    iput-boolean v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 534
    .line 535
    if-eqz v2, :cond_1a

    .line 536
    .line 537
    add-int/lit8 v1, v1, 0x1

    .line 538
    .line 539
    goto :goto_d

    .line 540
    :catch_2
    move-object/from16 v2, v21

    .line 541
    .line 542
    goto :goto_f

    .line 543
    :cond_1a
    :goto_d
    if-ge v15, v13, :cond_1b

    .line 544
    .line 545
    iget-wide v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 546
    .line 547
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v2

    .line 555
    iput-boolean v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 556
    .line 557
    if-eqz v2, :cond_1b

    .line 558
    .line 559
    add-int/lit8 v15, v15, 0x1

    .line 560
    .line 561
    :cond_1b
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 562
    .line 563
    .line 564
    move-object/from16 v2, v21

    .line 565
    .line 566
    :try_start_7
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 567
    .line 568
    if-eqz v3, :cond_1c

    .line 569
    .line 570
    iget-boolean v3, v3, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 571
    .line 572
    if-eqz v3, :cond_1c

    .line 573
    .line 574
    move/from16 v3, v17

    .line 575
    .line 576
    goto :goto_e

    .line 577
    :cond_1c
    const/4 v3, 0x0

    .line 578
    :goto_e
    if-nez v3, :cond_1f

    .line 579
    .line 580
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 581
    .line 582
    .line 583
    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 584
    if-nez v3, :cond_1d

    .line 585
    .line 586
    goto :goto_f

    .line 587
    :cond_1d
    move-object/from16 v3, v20

    .line 588
    .line 589
    goto :goto_c

    .line 590
    :catch_3
    :cond_1e
    move/from16 v17, v1

    .line 591
    .line 592
    :catch_4
    move-object/from16 v20, v3

    .line 593
    .line 594
    goto :goto_f

    .line 595
    :catch_5
    move/from16 v17, v1

    .line 596
    .line 597
    move-object/from16 v20, v3

    .line 598
    .line 599
    const/4 v14, 0x0

    .line 600
    :catch_6
    :cond_1f
    :goto_f
    if-eqz v14, :cond_20

    .line 601
    .line 602
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 603
    .line 604
    .line 605
    :cond_20
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 606
    .line 607
    if-eqz v1, :cond_21

    .line 608
    .line 609
    iget-boolean v1, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 610
    .line 611
    if-eqz v1, :cond_21

    .line 612
    .line 613
    goto/16 :goto_9

    .line 614
    .line 615
    :cond_21
    :goto_10
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 616
    .line 617
    if-eqz v1, :cond_22

    .line 618
    .line 619
    goto/16 :goto_15

    .line 620
    .line 621
    :cond_22
    move-object v5, v11

    .line 622
    :goto_11
    if-eqz v5, :cond_23

    .line 623
    .line 624
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-nez v1, :cond_23

    .line 629
    .line 630
    new-instance v1, Lcom/mycompany/app/main/MainUtil$SortChildUser;

    .line 631
    .line 632
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 633
    .line 634
    .line 635
    :try_start_8
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 636
    .line 637
    .line 638
    :catch_7
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 639
    .line 640
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 641
    .line 642
    .line 643
    :cond_23
    iput-object v5, v2, Lcom/mycompany/app/list/book/ListBookMemo;->d:Ljava/util/List;

    .line 644
    .line 645
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 646
    .line 647
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 648
    .line 649
    .line 650
    move-result v1

    .line 651
    if-nez v1, :cond_2a

    .line 652
    .line 653
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 654
    .line 655
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 656
    .line 657
    .line 658
    const/4 v2, 0x2

    .line 659
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 660
    .line 661
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 662
    .line 663
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    iget v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->l:I

    .line 667
    .line 668
    add-int/lit8 v1, v1, 0x1

    .line 669
    .line 670
    iput v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->l:I

    .line 671
    .line 672
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->n:Z

    .line 673
    .line 674
    if-eqz v1, :cond_24

    .line 675
    .line 676
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 677
    .line 678
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    new-array v2, v1, [Z

    .line 683
    .line 684
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->j:[Z

    .line 685
    .line 686
    goto :goto_12

    .line 687
    :cond_24
    const/4 v1, 0x0

    .line 688
    :goto_12
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 689
    .line 690
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    const/4 v11, 0x0

    .line 695
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    if-eqz v3, :cond_2a

    .line 700
    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v3

    .line 705
    check-cast v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 706
    .line 707
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 708
    .line 709
    if-eqz v4, :cond_25

    .line 710
    .line 711
    goto :goto_15

    .line 712
    :cond_25
    if-nez v3, :cond_26

    .line 713
    .line 714
    goto :goto_13

    .line 715
    :cond_26
    iget v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 716
    .line 717
    if-eq v4, v11, :cond_27

    .line 718
    .line 719
    iput v11, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 720
    .line 721
    int-to-long v4, v11

    .line 722
    iput-wide v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 723
    .line 724
    iget-wide v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 725
    .line 726
    move-object/from16 v6, v20

    .line 727
    .line 728
    invoke-static {v6, v4, v5, v11}, Lcom/mycompany/app/db/book/DbBookMemo;->b(Landroid/content/Context;JI)V

    .line 729
    .line 730
    .line 731
    goto :goto_14

    .line 732
    :cond_27
    move-object/from16 v6, v20

    .line 733
    .line 734
    :goto_14
    iget-boolean v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 735
    .line 736
    const/4 v5, -0x1

    .line 737
    if-eqz v4, :cond_28

    .line 738
    .line 739
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->j:[Z

    .line 740
    .line 741
    if-eqz v4, :cond_28

    .line 742
    .line 743
    iget v7, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 744
    .line 745
    if-ge v7, v1, :cond_28

    .line 746
    .line 747
    aput-boolean v17, v4, v7

    .line 748
    .line 749
    iget v4, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->k:I

    .line 750
    .line 751
    add-int/lit8 v4, v4, 0x1

    .line 752
    .line 753
    iput v4, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->k:I

    .line 754
    .line 755
    iget v4, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->m:I

    .line 756
    .line 757
    if-ne v4, v5, :cond_28

    .line 758
    .line 759
    iput v7, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->m:I

    .line 760
    .line 761
    :cond_28
    iget-boolean v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 762
    .line 763
    if-eqz v4, :cond_29

    .line 764
    .line 765
    iget v4, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->p:I

    .line 766
    .line 767
    if-ne v4, v5, :cond_29

    .line 768
    .line 769
    iget v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 770
    .line 771
    iput v4, v0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->p:I

    .line 772
    .line 773
    :cond_29
    const/4 v4, 0x0

    .line 774
    iput-object v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 775
    .line 776
    iput-object v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 777
    .line 778
    iput-object v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 779
    .line 780
    iput-object v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 781
    .line 782
    add-int/lit8 v11, v11, 0x1

    .line 783
    .line 784
    move-object/from16 v20, v6

    .line 785
    .line 786
    goto :goto_13

    .line 787
    :cond_2a
    :goto_15
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookMemo;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookMemo;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->h:Ljava/util/List;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->j:[Z

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->o:Ljava/util/List;

    .line 36
    .line 37
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookMemo;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookMemo;->c:Lcom/mycompany/app/list/book/ListBookMemo$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookMemo;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->j:[Z

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 39
    .line 40
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->k:I

    .line 41
    .line 42
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->i:I

    .line 46
    .line 47
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->l:I

    .line 48
    .line 49
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->j:I

    .line 50
    .line 51
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->m:I

    .line 52
    .line 53
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->k:I

    .line 54
    .line 55
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->p:I

    .line 56
    .line 57
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 58
    .line 59
    iput-object v1, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 60
    .line 61
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->n:Z

    .line 62
    .line 63
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 64
    .line 65
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->r:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->h:Ljava/util/List;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->i:Ljava/util/List;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->j:[Z

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookMemo$ListTask;->o:Ljava/util/List;

    .line 79
    .line 80
    return-void
.end method
