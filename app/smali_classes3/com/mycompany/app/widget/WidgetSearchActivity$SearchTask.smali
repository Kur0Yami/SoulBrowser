.class Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/widget/WidgetSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 12
    .line 13
    and-int/lit8 v0, p1, 0x2

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x2

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->f:Z

    .line 24
    .line 25
    and-int/lit8 v0, p1, 0x4

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    if-ne v0, v3, :cond_1

    .line 29
    .line 30
    move v0, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v1

    .line 33
    :goto_1
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->g:Z

    .line 34
    .line 35
    and-int/lit8 v0, p1, 0x8

    .line 36
    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    if-ne v0, v3, :cond_2

    .line 40
    .line 41
    move v0, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v0, v1

    .line 44
    :goto_2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->h:Z

    .line 45
    .line 46
    const/16 v0, 0x10

    .line 47
    .line 48
    and-int/2addr p1, v0

    .line 49
    if-ne p1, v0, :cond_3

    .line 50
    .line 51
    move v1, v2

    .line 52
    :cond_3
    iput-boolean v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->i:Z

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->e:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_12

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 14
    .line 15
    if-eqz v1, :cond_2d

    .line 16
    .line 17
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_12

    .line 22
    .line 23
    :cond_1
    iget-boolean v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->f:Z

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookRecent;->l()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v2, v2, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-lez v2, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookRecent;->e(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v4}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    iput-object v2, v4, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 65
    .line 66
    iput-boolean v3, v4, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 67
    .line 68
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 69
    .line 70
    if-eqz v2, :cond_4

    .line 71
    .line 72
    goto/16 :goto_12

    .line 73
    .line 74
    :cond_4
    :goto_1
    iget-boolean v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->g:Z

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    const-string v5, "0"

    .line 78
    .line 79
    const-string v6, "1"

    .line 80
    .line 81
    const-string v7, "_title"

    .line 82
    .line 83
    const-string v8, "_path"

    .line 84
    .line 85
    const-string v9, "_id"

    .line 86
    .line 87
    const/4 v10, 0x1

    .line 88
    if-nez v2, :cond_5

    .line 89
    .line 90
    sget-boolean v11, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 91
    .line 92
    if-eqz v11, :cond_12

    .line 93
    .line 94
    :cond_5
    sget v11, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 95
    .line 96
    if-eqz v11, :cond_11

    .line 97
    .line 98
    sget-boolean v12, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 99
    .line 100
    const-wide/16 v13, 0x0

    .line 101
    .line 102
    if-eqz v12, :cond_6

    .line 103
    .line 104
    sget-wide v15, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 105
    .line 106
    cmp-long v12, v15, v13

    .line 107
    .line 108
    if-eqz v12, :cond_11

    .line 109
    .line 110
    :cond_6
    const/4 v12, -0x1

    .line 111
    if-eq v11, v12, :cond_7

    .line 112
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v11

    .line 117
    sget v13, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 118
    .line 119
    int-to-long v13, v13

    .line 120
    const-wide/32 v15, 0x5265c00

    .line 121
    .line 122
    .line 123
    mul-long/2addr v13, v15

    .line 124
    sub-long v13, v11, v13

    .line 125
    .line 126
    sget-boolean v11, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 127
    .line 128
    if-eqz v11, :cond_7

    .line 129
    .line 130
    sget-wide v11, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 131
    .line 132
    cmp-long v15, v11, v13

    .line 133
    .line 134
    if-lez v15, :cond_7

    .line 135
    .line 136
    move-wide v13, v11

    .line 137
    :cond_7
    filled-new-array {v9, v8, v7}, [Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v17

    .line 141
    sget-boolean v11, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 142
    .line 143
    if-eqz v11, :cond_8

    .line 144
    .line 145
    move-object v11, v6

    .line 146
    goto :goto_2

    .line 147
    :cond_8
    move-object v11, v5

    .line 148
    :goto_2
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    filled-new-array {v11, v12}, [Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v19

    .line 156
    const-string v20, "_time DESC"

    .line 157
    .line 158
    :try_start_0
    iget-object v11, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 159
    .line 160
    invoke-static {v11}, Lcom/mycompany/app/db/book/DbBookHistory;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookHistory;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    const-string v16, "DbBookHistory_table"

    .line 169
    .line 170
    const-string v18, "_secret=? AND _time>?"

    .line 171
    .line 172
    invoke-static/range {v15 .. v20}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 173
    .line 174
    .line 175
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    if-eqz v11, :cond_10

    .line 177
    .line 178
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    if-eqz v12, :cond_10

    .line 183
    .line 184
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    if-eqz v2, :cond_9

    .line 197
    .line 198
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 199
    .line 200
    if-nez v2, :cond_9

    .line 201
    .line 202
    new-instance v2, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    iput-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 208
    .line 209
    :cond_9
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 210
    .line 211
    if-eqz v2, :cond_a

    .line 212
    .line 213
    iget-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 214
    .line 215
    if-nez v2, :cond_a

    .line 216
    .line 217
    new-instance v2, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    iput-object v2, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 223
    .line 224
    :cond_a
    :goto_3
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 225
    .line 226
    if-eqz v2, :cond_b

    .line 227
    .line 228
    iput-object v4, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 229
    .line 230
    iput-object v4, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 231
    .line 232
    iput-object v4, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 233
    .line 234
    iput-object v4, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :cond_b
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v15

    .line 248
    if-nez v15, :cond_c

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_c
    iget-object v15, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 252
    .line 253
    if-eqz v15, :cond_d

    .line 254
    .line 255
    new-instance v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 256
    .line 257
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 258
    .line 259
    .line 260
    const/16 v4, 0x12

    .line 261
    .line 262
    iput v4, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    .line 263
    .line 264
    move/from16 v17, v3

    .line 265
    .line 266
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 267
    .line 268
    .line 269
    move-result-wide v3

    .line 270
    iput-wide v3, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 271
    .line 272
    iput-object v2, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->o3(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    iput v3, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    .line 279
    .line 280
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    iput-object v3, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 285
    .line 286
    iget-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_d
    move/from16 v17, v3

    .line 293
    .line 294
    :goto_4
    iget-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 295
    .line 296
    if-eqz v3, :cond_e

    .line 297
    .line 298
    invoke-static {v2, v10}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-nez v3, :cond_e

    .line 307
    .line 308
    iget-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    if-nez v3, :cond_e

    .line 315
    .line 316
    iget-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    :cond_e
    add-int/lit8 v3, v17, 0x1

    .line 322
    .line 323
    :goto_5
    const/16 v2, 0x64

    .line 324
    .line 325
    if-ge v3, v2, :cond_10

    .line 326
    .line 327
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 328
    .line 329
    .line 330
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    if-nez v2, :cond_f

    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_f
    const/4 v4, 0x0

    .line 335
    goto :goto_3

    .line 336
    :catch_0
    const/4 v11, 0x0

    .line 337
    :catch_1
    :cond_10
    :goto_6
    if-eqz v11, :cond_11

    .line 338
    .line 339
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 340
    .line 341
    .line 342
    :cond_11
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 343
    .line 344
    if-eqz v2, :cond_12

    .line 345
    .line 346
    goto/16 :goto_12

    .line 347
    .line 348
    :cond_12
    const-string v2, "_secret=?"

    .line 349
    .line 350
    iget-boolean v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->h:Z

    .line 351
    .line 352
    if-nez v3, :cond_14

    .line 353
    .line 354
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 355
    .line 356
    if-eqz v4, :cond_13

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_13
    move-object v10, v5

    .line 360
    move-object/from16 v18, v6

    .line 361
    .line 362
    goto/16 :goto_e

    .line 363
    .line 364
    :cond_14
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    const-string v11, "_isdir"

    .line 370
    .line 371
    filled-new-array {v9, v11, v8, v7}, [Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v19

    .line 375
    sget-boolean v12, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 376
    .line 377
    if-eqz v12, :cond_15

    .line 378
    .line 379
    move-object v12, v6

    .line 380
    goto :goto_8

    .line 381
    :cond_15
    move-object v12, v5

    .line 382
    :goto_8
    filled-new-array {v12}, [Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v21

    .line 386
    :try_start_2
    iget-object v12, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 387
    .line 388
    invoke-static {v12}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 389
    .line 390
    .line 391
    move-result-object v12

    .line 392
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 393
    .line 394
    .line 395
    move-result-object v17

    .line 396
    const-string v18, "DbBookWeb_table"

    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v20

    .line 402
    const/16 v22, 0x0

    .line 403
    .line 404
    invoke-static/range {v17 .. v22}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 405
    .line 406
    .line 407
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 408
    if-eqz v4, :cond_1e

    .line 409
    .line 410
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 411
    .line 412
    .line 413
    move-result v12

    .line 414
    if-eqz v12, :cond_1e

    .line 415
    .line 416
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v12

    .line 420
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    move-result v11

    .line 424
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    move-result v13

    .line 428
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    move-result v14

    .line 432
    if-eqz v3, :cond_16

    .line 433
    .line 434
    new-instance v3, Ljava/util/ArrayList;

    .line 435
    .line 436
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .line 438
    .line 439
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 440
    .line 441
    :cond_16
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 442
    .line 443
    if-eqz v3, :cond_17

    .line 444
    .line 445
    iget-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 446
    .line 447
    if-nez v3, :cond_17

    .line 448
    .line 449
    new-instance v3, Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .line 453
    .line 454
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 455
    .line 456
    :cond_17
    :goto_9
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 457
    .line 458
    if-eqz v3, :cond_18

    .line 459
    .line 460
    const/4 v3, 0x0

    .line 461
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 462
    .line 463
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 464
    .line 465
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 466
    .line 467
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 468
    .line 469
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_12

    .line 473
    .line 474
    :cond_18
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    if-ne v3, v10, :cond_19

    .line 479
    .line 480
    :goto_a
    move-object v10, v5

    .line 481
    move-object/from16 v18, v6

    .line 482
    .line 483
    goto :goto_c

    .line 484
    :cond_19
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 489
    .line 490
    .line 491
    move-result v15

    .line 492
    if-nez v15, :cond_1a

    .line 493
    .line 494
    goto :goto_a

    .line 495
    :cond_1a
    iget-object v15, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 496
    .line 497
    if-eqz v15, :cond_1b

    .line 498
    .line 499
    new-instance v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 500
    .line 501
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 502
    .line 503
    .line 504
    const/16 v10, 0x11

    .line 505
    .line 506
    iput v10, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 507
    .line 508
    move-object v10, v5

    .line 509
    move-object/from16 v18, v6

    .line 510
    .line 511
    :try_start_4
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 512
    .line 513
    .line 514
    move-result-wide v5

    .line 515
    iput-wide v5, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 516
    .line 517
    iput-object v3, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 518
    .line 519
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->o3(Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result v5

    .line 523
    iput v5, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    .line 524
    .line 525
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    iput-object v5, v15, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 530
    .line 531
    iget-object v5, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    goto :goto_b

    .line 537
    :cond_1b
    move-object v10, v5

    .line 538
    move-object/from16 v18, v6

    .line 539
    .line 540
    :goto_b
    iget-object v5, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 541
    .line 542
    if-eqz v5, :cond_1c

    .line 543
    .line 544
    const/4 v5, 0x1

    .line 545
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 550
    .line 551
    .line 552
    move-result v5

    .line 553
    if-nez v5, :cond_1c

    .line 554
    .line 555
    iget-object v5, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 556
    .line 557
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    if-nez v5, :cond_1c

    .line 562
    .line 563
    iget-object v5, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    :cond_1c
    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 569
    .line 570
    .line 571
    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 572
    if-nez v3, :cond_1d

    .line 573
    .line 574
    goto :goto_d

    .line 575
    :cond_1d
    move-object v5, v10

    .line 576
    move-object/from16 v6, v18

    .line 577
    .line 578
    const/4 v10, 0x1

    .line 579
    goto :goto_9

    .line 580
    :catch_2
    :cond_1e
    move-object v10, v5

    .line 581
    move-object/from16 v18, v6

    .line 582
    .line 583
    goto :goto_d

    .line 584
    :catch_3
    move-object v10, v5

    .line 585
    move-object/from16 v18, v6

    .line 586
    .line 587
    const/4 v4, 0x0

    .line 588
    :catch_4
    :goto_d
    if-eqz v4, :cond_1f

    .line 589
    .line 590
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 591
    .line 592
    .line 593
    :cond_1f
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 594
    .line 595
    if-eqz v3, :cond_20

    .line 596
    .line 597
    goto/16 :goto_12

    .line 598
    .line 599
    :cond_20
    :goto_e
    iget-boolean v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->i:Z

    .line 600
    .line 601
    if-nez v3, :cond_21

    .line 602
    .line 603
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 604
    .line 605
    if-eqz v4, :cond_2c

    .line 606
    .line 607
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    const-string v2, "_rsv4"

    .line 613
    .line 614
    filled-new-array {v9, v8, v7, v2}, [Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v21

    .line 618
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 619
    .line 620
    if-eqz v5, :cond_22

    .line 621
    .line 622
    move-object/from16 v5, v18

    .line 623
    .line 624
    goto :goto_f

    .line 625
    :cond_22
    move-object v5, v10

    .line 626
    :goto_f
    filled-new-array {v5}, [Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v23

    .line 630
    :try_start_5
    iget-object v5, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 631
    .line 632
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 637
    .line 638
    .line 639
    move-result-object v19

    .line 640
    const-string v20, "DbBookQuick_table"

    .line 641
    .line 642
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v22

    .line 646
    const/16 v24, 0x0

    .line 647
    .line 648
    invoke-static/range {v19 .. v24}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 649
    .line 650
    .line 651
    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 652
    if-eqz v4, :cond_2a

    .line 653
    .line 654
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 655
    .line 656
    .line 657
    move-result v5

    .line 658
    if-eqz v5, :cond_2a

    .line 659
    .line 660
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    move-result v5

    .line 664
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    move-result v6

    .line 668
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 669
    .line 670
    .line 671
    move-result v7

    .line 672
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    if-eqz v3, :cond_23

    .line 677
    .line 678
    new-instance v3, Ljava/util/ArrayList;

    .line 679
    .line 680
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .line 682
    .line 683
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 684
    .line 685
    :cond_23
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 686
    .line 687
    if-eqz v3, :cond_24

    .line 688
    .line 689
    iget-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 690
    .line 691
    if-nez v3, :cond_24

    .line 692
    .line 693
    new-instance v3, Ljava/util/ArrayList;

    .line 694
    .line 695
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .line 697
    .line 698
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 699
    .line 700
    :cond_24
    iget-boolean v3, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 701
    .line 702
    if-eqz v3, :cond_25

    .line 703
    .line 704
    const/4 v3, 0x0

    .line 705
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 706
    .line 707
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 708
    .line 709
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 710
    .line 711
    iput-object v3, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 712
    .line 713
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_12

    .line 717
    .line 718
    :cond_25
    const/4 v3, 0x0

    .line 719
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v8

    .line 723
    invoke-static {v8}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 724
    .line 725
    .line 726
    move-result v9

    .line 727
    if-nez v9, :cond_27

    .line 728
    .line 729
    :cond_26
    const/4 v9, 0x1

    .line 730
    goto :goto_10

    .line 731
    :cond_27
    iget-object v9, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 732
    .line 733
    if-eqz v9, :cond_28

    .line 734
    .line 735
    new-instance v9, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 736
    .line 737
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 738
    .line 739
    .line 740
    const/16 v10, 0x21

    .line 741
    .line 742
    iput v10, v9, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    .line 743
    .line 744
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 745
    .line 746
    .line 747
    move-result-wide v10

    .line 748
    iput-wide v10, v9, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 749
    .line 750
    iput-object v8, v9, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 751
    .line 752
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->o3(Ljava/lang/String;)I

    .line 753
    .line 754
    .line 755
    move-result v10

    .line 756
    iput v10, v9, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    .line 757
    .line 758
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v10

    .line 762
    iput-object v10, v9, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 763
    .line 764
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 765
    .line 766
    .line 767
    move-result v10

    .line 768
    iput v10, v9, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->g:I

    .line 769
    .line 770
    iget-object v10, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 771
    .line 772
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .line 774
    .line 775
    :cond_28
    iget-object v9, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 776
    .line 777
    if-eqz v9, :cond_26

    .line 778
    .line 779
    const/4 v9, 0x1

    .line 780
    invoke-static {v8, v9}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v8

    .line 784
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 785
    .line 786
    .line 787
    move-result v10

    .line 788
    if-nez v10, :cond_29

    .line 789
    .line 790
    iget-object v10, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 791
    .line 792
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v10

    .line 796
    if-nez v10, :cond_29

    .line 797
    .line 798
    iget-object v10, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 799
    .line 800
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    :cond_29
    :goto_10
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 804
    .line 805
    .line 806
    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 807
    if-nez v8, :cond_24

    .line 808
    .line 809
    goto :goto_11

    .line 810
    :catch_5
    const/4 v3, 0x0

    .line 811
    move-object v4, v3

    .line 812
    :catch_6
    :cond_2a
    :goto_11
    if-eqz v4, :cond_2b

    .line 813
    .line 814
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 815
    .line 816
    .line 817
    :cond_2b
    iget-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 818
    .line 819
    if-eqz v2, :cond_2c

    .line 820
    .line 821
    goto :goto_12

    .line 822
    :cond_2c
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 823
    .line 824
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->T4(Landroid/content/Context;)Z

    .line 825
    .line 826
    .line 827
    move-result v2

    .line 828
    iput-boolean v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->y1:Z

    .line 829
    .line 830
    :cond_2d
    :goto_12
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/widget/WidgetSearchActivity;

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
    iput-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->w1:Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->e:Ljava/lang/ref/WeakReference;

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
    move-object v2, v0

    .line 11
    check-cast v2, Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, v2, Lcom/mycompany/app/widget/WidgetSearchActivity;->w1:Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->j:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->k:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->l:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;->m:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v1, v2, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_2
    iget-boolean v1, v2, Lcom/mycompany/app/widget/WidgetSearchActivity;->y1:Z

    .line 33
    .line 34
    iget-object v6, v2, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 35
    .line 36
    if-nez v6, :cond_3

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    if-eqz v1, :cond_5

    .line 40
    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    iget-object v1, v2, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 44
    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    new-instance v1, Lcom/mycompany/app/widget/WidgetSearchActivity$16;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/mycompany/app/widget/WidgetSearchActivity$16;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v2, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->F0(Z)V

    .line 59
    .line 60
    .line 61
    :goto_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 62
    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    iget-object v1, v2, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyEditAuto;->setAutoList(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    :cond_6
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/mycompany/app/widget/WidgetSearchActivity;->B0()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    xor-int/lit8 v6, v0, 0x1

    .line 77
    .line 78
    new-instance v8, Lcom/mycompany/app/widget/WidgetSearchActivity$20;

    .line 79
    .line 80
    invoke-direct {v8, v2}, Lcom/mycompany/app/widget/WidgetSearchActivity$20;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 81
    .line 82
    .line 83
    const/4 v7, 0x1

    .line 84
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/web/WebSearchAdapter2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, v2, Lcom/mycompany/app/widget/WidgetSearchActivity;->v1:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 88
    .line 89
    iget-object v0, v2, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyEditAuto;->setDropDownAdapter(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
