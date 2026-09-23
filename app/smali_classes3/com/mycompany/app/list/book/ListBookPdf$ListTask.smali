.class Lcom/mycompany/app/list/book/ListBookPdf$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookPdf;
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
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookPdf;JLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->s:I

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->u:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/list/book/ListBookPdf;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-wide p2, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->g:J

    .line 26
    .line 27
    iput-object p4, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookPdf;->d:Z

    .line 30
    .line 31
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->v:Z

    .line 32
    .line 33
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookPdf;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->w:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookPdf;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v3, Lcom/mycompany/app/list/book/ListBookPdf;

    .line 18
    .line 19
    if-eqz v3, :cond_2d

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/book/ListBookPdf;->a:Landroid/content/Context;

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
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->h:Ljava/lang/String;

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
    iput-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->j:Z

    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->w:Ljava/lang/String;

    .line 39
    .line 40
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->v:Z

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
    iget-object v6, v3, Lcom/mycompany/app/list/book/ListBookPdf;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->r:Z

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
    iput-object v8, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

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
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookPdf;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPdf;

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
    invoke-static {v15}, Lcom/mycompany/app/list/book/ListBookPdf;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 175
    .line 176
    .line 177
    :cond_a
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

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
    iget-object v7, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

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
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookPdf;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPdf;

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
    const-string v9, "DbBookPdf_table"

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
    iput-object v15, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 339
    .line 340
    const/16 v2, 0xb

    .line 341
    .line 342
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 343
    .line 344
    const v2, -0x70708

    .line 345
    .line 346
    .line 347
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 348
    .line 349
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_as_pdf_black_24:I

    .line 350
    .line 351
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 352
    .line 353
    iget v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 354
    .line 355
    iget v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 356
    .line 357
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->W2(II)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 362
    .line 363
    iget-boolean v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->j:Z

    .line 364
    .line 365
    if-eqz v2, :cond_d

    .line 366
    .line 367
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->h:Ljava/lang/String;

    .line 368
    .line 369
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 376
    .line 377
    :cond_d
    invoke-static {v1}, Lcom/mycompany/app/list/book/ListBookPdf;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 378
    .line 379
    .line 380
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 381
    .line 382
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 386
    .line 387
    if-nez v1, :cond_10

    .line 388
    .line 389
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 390
    .line 391
    .line 392
    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 393
    if-nez v1, :cond_e

    .line 394
    .line 395
    goto :goto_7

    .line 396
    :cond_e
    move-object/from16 v3, v17

    .line 397
    .line 398
    move-object/from16 v2, v18

    .line 399
    .line 400
    move/from16 v5, v19

    .line 401
    .line 402
    move/from16 v6, v20

    .line 403
    .line 404
    goto/16 :goto_6

    .line 405
    .line 406
    :catch_0
    :cond_f
    move-object/from16 v18, v2

    .line 407
    .line 408
    move-object/from16 v17, v3

    .line 409
    .line 410
    :catch_1
    move/from16 v19, v5

    .line 411
    .line 412
    :catch_2
    move/from16 v20, v6

    .line 413
    .line 414
    goto :goto_7

    .line 415
    :catch_3
    move-object/from16 v18, v2

    .line 416
    .line 417
    move-object/from16 v17, v3

    .line 418
    .line 419
    move/from16 v19, v5

    .line 420
    .line 421
    move/from16 v20, v6

    .line 422
    .line 423
    const/4 v7, 0x0

    .line 424
    :catch_4
    :cond_10
    :goto_7
    if-eqz v7, :cond_11

    .line 425
    .line 426
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 427
    .line 428
    .line 429
    :cond_11
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 430
    .line 431
    if-eqz v1, :cond_13

    .line 432
    .line 433
    goto/16 :goto_12

    .line 434
    .line 435
    :cond_12
    move-object/from16 v18, v2

    .line 436
    .line 437
    move-object/from16 v17, v3

    .line 438
    .line 439
    move/from16 v19, v5

    .line 440
    .line 441
    move/from16 v20, v6

    .line 442
    .line 443
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .line 447
    .line 448
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 449
    .line 450
    new-instance v1, Ljava/util/ArrayList;

    .line 451
    .line 452
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .line 454
    .line 455
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->m:Ljava/util/ArrayList;

    .line 456
    .line 457
    if-nez v19, :cond_14

    .line 458
    .line 459
    sget v1, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 460
    .line 461
    if-eqz v1, :cond_14

    .line 462
    .line 463
    move/from16 v9, v16

    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_14
    const/4 v9, 0x0

    .line 467
    :goto_8
    if-eqz v9, :cond_15

    .line 468
    .line 469
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 470
    .line 471
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 472
    .line 473
    .line 474
    const/4 v2, 0x0

    .line 475
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 476
    .line 477
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    :cond_15
    if-eqz v20, :cond_1a

    .line 483
    .line 484
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 485
    .line 486
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-nez v1, :cond_1a

    .line 491
    .line 492
    new-instance v1, Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .line 496
    .line 497
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 498
    .line 499
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    const/4 v5, 0x0

    .line 504
    :cond_16
    :goto_9
    if-ge v5, v3, :cond_19

    .line 505
    .line 506
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    add-int/lit8 v5, v5, 0x1

    .line 511
    .line 512
    check-cast v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 513
    .line 514
    iget-boolean v7, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 515
    .line 516
    if-eqz v7, :cond_17

    .line 517
    .line 518
    goto/16 :goto_12

    .line 519
    .line 520
    :cond_17
    iget-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 521
    .line 522
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 523
    .line 524
    .line 525
    move-result v7

    .line 526
    if-eqz v7, :cond_18

    .line 527
    .line 528
    goto :goto_9

    .line 529
    :cond_18
    iget-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 530
    .line 531
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 532
    .line 533
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v7

    .line 537
    invoke-virtual {v7, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 538
    .line 539
    .line 540
    move-result v7

    .line 541
    if-eqz v7, :cond_16

    .line 542
    .line 543
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    goto :goto_9

    .line 547
    :cond_19
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 548
    .line 549
    :cond_1a
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 550
    .line 551
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    if-nez v1, :cond_28

    .line 556
    .line 557
    if-nez v19, :cond_1b

    .line 558
    .line 559
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 560
    .line 561
    sget v2, Lcom/mycompany/app/pref/PrefList;->A:I

    .line 562
    .line 563
    sget v3, Lcom/mycompany/app/pref/PrefList;->B:I

    .line 564
    .line 565
    sget-boolean v4, Lcom/mycompany/app/pref/PrefList;->C:Z

    .line 566
    .line 567
    invoke-static {v2, v3, v4}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    :try_start_5
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 572
    .line 573
    .line 574
    :catch_5
    :cond_1b
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->r:Z

    .line 575
    .line 576
    if-eqz v1, :cond_1c

    .line 577
    .line 578
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 579
    .line 580
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    new-array v2, v1, [Z

    .line 585
    .line 586
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->p:[Z

    .line 587
    .line 588
    goto :goto_a

    .line 589
    :cond_1c
    const/4 v1, 0x0

    .line 590
    :goto_a
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 593
    .line 594
    .line 595
    move-result v10

    .line 596
    const/4 v3, 0x0

    .line 597
    const/4 v4, 0x0

    .line 598
    const/4 v5, 0x0

    .line 599
    const/4 v6, 0x0

    .line 600
    const/4 v7, 0x0

    .line 601
    const/4 v8, 0x0

    .line 602
    const/4 v11, 0x0

    .line 603
    :goto_b
    if-ge v4, v10, :cond_27

    .line 604
    .line 605
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v12

    .line 609
    add-int/lit8 v13, v4, 0x1

    .line 610
    .line 611
    check-cast v12, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 612
    .line 613
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 614
    .line 615
    if-eqz v4, :cond_1d

    .line 616
    .line 617
    goto/16 :goto_12

    .line 618
    .line 619
    :cond_1d
    if-nez v12, :cond_1e

    .line 620
    .line 621
    :goto_c
    move v4, v13

    .line 622
    goto :goto_b

    .line 623
    :cond_1e
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->m:Ljava/util/ArrayList;

    .line 624
    .line 625
    iget-wide v14, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 626
    .line 627
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 628
    .line 629
    .line 630
    move-result-object v14

    .line 631
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    if-eqz v9, :cond_21

    .line 635
    .line 636
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    if-nez v4, :cond_1f

    .line 641
    .line 642
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 643
    .line 644
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v4

    .line 648
    if-nez v4, :cond_1f

    .line 649
    .line 650
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 651
    .line 652
    move-object/from16 v3, v17

    .line 653
    .line 654
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookPdf;->p(Lcom/mycompany/app/list/book/ListBookPdf;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 655
    .line 656
    .line 657
    const/4 v3, 0x0

    .line 658
    const/4 v6, 0x0

    .line 659
    const/4 v7, 0x0

    .line 660
    :cond_1f
    iget-object v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 661
    .line 662
    iget-object v5, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 663
    .line 664
    add-int/lit8 v6, v6, 0x1

    .line 665
    .line 666
    iget-object v11, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 667
    .line 668
    if-eqz v11, :cond_20

    .line 669
    .line 670
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 671
    .line 672
    .line 673
    move-result v11

    .line 674
    goto :goto_d

    .line 675
    :cond_20
    const/4 v11, 0x0

    .line 676
    :goto_d
    iput v11, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 677
    .line 678
    move-object v11, v4

    .line 679
    goto :goto_e

    .line 680
    :cond_21
    const/4 v4, 0x0

    .line 681
    iput v4, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 682
    .line 683
    :goto_e
    iput v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 684
    .line 685
    iput v8, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 686
    .line 687
    iget-wide v14, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 688
    .line 689
    move-object v4, v2

    .line 690
    move/from16 v19, v3

    .line 691
    .line 692
    iget-wide v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->g:J

    .line 693
    .line 694
    cmp-long v2, v14, v2

    .line 695
    .line 696
    if-nez v2, :cond_22

    .line 697
    .line 698
    iput-object v12, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 699
    .line 700
    :cond_22
    iget-boolean v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 701
    .line 702
    if-eqz v2, :cond_23

    .line 703
    .line 704
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->p:[Z

    .line 705
    .line 706
    if-eqz v2, :cond_23

    .line 707
    .line 708
    if-ge v8, v1, :cond_23

    .line 709
    .line 710
    aput-boolean v16, v2, v8

    .line 711
    .line 712
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->q:I

    .line 713
    .line 714
    add-int/lit8 v2, v2, 0x1

    .line 715
    .line 716
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->q:I

    .line 717
    .line 718
    add-int/lit8 v7, v7, 0x1

    .line 719
    .line 720
    :cond_23
    iget-boolean v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->L:Z

    .line 721
    .line 722
    if-eqz v2, :cond_26

    .line 723
    .line 724
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->s:I

    .line 725
    .line 726
    iget v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 727
    .line 728
    if-eq v2, v3, :cond_25

    .line 729
    .line 730
    iput v3, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->s:I

    .line 731
    .line 732
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->t:Ljava/util/ArrayList;

    .line 733
    .line 734
    if-nez v2, :cond_24

    .line 735
    .line 736
    new-instance v2, Ljava/util/ArrayList;

    .line 737
    .line 738
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .line 740
    .line 741
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->t:Ljava/util/ArrayList;

    .line 742
    .line 743
    :cond_24
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->t:Ljava/util/ArrayList;

    .line 744
    .line 745
    iget v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 746
    .line 747
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 748
    .line 749
    .line 750
    move-result-object v3

    .line 751
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v2

    .line 755
    if-nez v2, :cond_25

    .line 756
    .line 757
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->t:Ljava/util/ArrayList;

    .line 758
    .line 759
    iget v3, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 760
    .line 761
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    :cond_25
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->u:I

    .line 769
    .line 770
    const/4 v3, -0x1

    .line 771
    if-ne v2, v3, :cond_26

    .line 772
    .line 773
    iget v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 774
    .line 775
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->u:I

    .line 776
    .line 777
    :cond_26
    add-int/lit8 v3, v19, 0x1

    .line 778
    .line 779
    add-int/lit8 v8, v8, 0x1

    .line 780
    .line 781
    const/4 v2, 0x0

    .line 782
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 783
    .line 784
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 785
    .line 786
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 787
    .line 788
    iput-object v2, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 789
    .line 790
    move-object v2, v4

    .line 791
    goto/16 :goto_c

    .line 792
    .line 793
    :cond_27
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    if-nez v1, :cond_28

    .line 798
    .line 799
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 800
    .line 801
    move-object/from16 v3, v17

    .line 802
    .line 803
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookPdf;->p(Lcom/mycompany/app/list/book/ListBookPdf;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 804
    .line 805
    .line 806
    :cond_28
    if-nez v9, :cond_2a

    .line 807
    .line 808
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 809
    .line 810
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 811
    .line 812
    .line 813
    const/4 v2, 0x0

    .line 814
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 815
    .line 816
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 817
    .line 818
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 819
    .line 820
    .line 821
    move-result v3

    .line 822
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 823
    .line 824
    iget v4, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->q:I

    .line 825
    .line 826
    iput v4, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 827
    .line 828
    if-ne v4, v3, :cond_29

    .line 829
    .line 830
    move/from16 v3, v16

    .line 831
    .line 832
    goto :goto_f

    .line 833
    :cond_29
    move v3, v2

    .line 834
    :goto_f
    iput-boolean v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 835
    .line 836
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 837
    .line 838
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    goto :goto_10

    .line 842
    :cond_2a
    const/4 v2, 0x0

    .line 843
    :goto_10
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->r:Z

    .line 844
    .line 845
    if-eqz v1, :cond_2c

    .line 846
    .line 847
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 848
    .line 849
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 850
    .line 851
    .line 852
    move-result v1

    .line 853
    if-nez v1, :cond_2c

    .line 854
    .line 855
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    new-array v3, v1, [Z

    .line 862
    .line 863
    iput-object v3, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->n:[Z

    .line 864
    .line 865
    new-array v1, v1, [I

    .line 866
    .line 867
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->o:[I

    .line 868
    .line 869
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 870
    .line 871
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 872
    .line 873
    .line 874
    move-result v3

    .line 875
    move v10, v2

    .line 876
    :goto_11
    if-ge v10, v3, :cond_2c

    .line 877
    .line 878
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v2

    .line 882
    add-int/lit8 v10, v10, 0x1

    .line 883
    .line 884
    check-cast v2, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 885
    .line 886
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 887
    .line 888
    if-eqz v4, :cond_2b

    .line 889
    .line 890
    goto :goto_12

    .line 891
    :cond_2b
    iget v4, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 892
    .line 893
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->n:[Z

    .line 894
    .line 895
    iget-boolean v6, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 896
    .line 897
    aput-boolean v6, v5, v4

    .line 898
    .line 899
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->o:[I

    .line 900
    .line 901
    iget v2, v2, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 902
    .line 903
    aput v2, v5, v4

    .line 904
    .line 905
    goto :goto_11

    .line 906
    :cond_2c
    invoke-static/range {v18 .. v18}, Lcom/mycompany/app/data/book/DataBookPdf;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPdf;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 911
    .line 912
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->m:Ljava/util/ArrayList;

    .line 913
    .line 914
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 915
    .line 916
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 917
    .line 918
    :cond_2d
    :goto_12
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookPdf;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf;->c:Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookPdf;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->h:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->m:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->n:[Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->o:[I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->p:[Z

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->t:Ljava/util/ArrayList;

    .line 46
    .line 47
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookPdf;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookPdf;->c:Lcom/mycompany/app/list/book/ListBookPdf$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookPdf;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 37
    .line 38
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->n:[Z

    .line 41
    .line 42
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 43
    .line 44
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->o:[I

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->p:[Z

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 51
    .line 52
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->q:I

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
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->t:Ljava/util/ArrayList;

    .line 60
    .line 61
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->l:Ljava/util/List;

    .line 62
    .line 63
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->u:I

    .line 64
    .line 65
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->r:Z

    .line 72
    .line 73
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->w:Ljava/lang/String;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->h:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->i:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->l:Ljava/util/ArrayList;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->m:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->n:[Z

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->o:[I

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->p:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookPdf$ListTask;->t:Ljava/util/ArrayList;

    .line 99
    .line 100
    return-void
.end method
