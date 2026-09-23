.class Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogNewsLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;Ljava/lang/String;)V
    .locals 1

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->h:Z

    .line 22
    .line 23
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->i:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v1, Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 14
    .line 15
    if-eqz v1, :cond_2e

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
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto/16 :goto_12

    .line 28
    .line 29
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-eqz v3, :cond_4

    .line 33
    .line 34
    iget v2, v3, Lcom/mycompany/app/main/MainLangAdapter;->e:I

    .line 35
    .line 36
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbRecentLang;->e(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    iget-object v4, v3, Lcom/mycompany/app/main/MainLangAdapter;->f:Ljava/util/List;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 v4, 0x0

    .line 46
    :goto_0
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->f:Ljava/util/List;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->t0:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->g:Ljava/util/List;

    .line 51
    .line 52
    goto/16 :goto_e

    .line 53
    .line 54
    :cond_4
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->e0:[Ljava/lang/String;

    .line 55
    .line 56
    if-nez v3, :cond_5

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sget v3, Lnet/kaki87/soul2/testing/R$array;->news_lang:I

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :cond_5
    if-eqz v3, :cond_2e

    .line 69
    .line 70
    array-length v2, v3

    .line 71
    if-nez v2, :cond_6

    .line 72
    .line 73
    goto/16 :goto_12

    .line 74
    .line 75
    :cond_6
    const/4 v2, 0x0

    .line 76
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbRecentLang;->e(I)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_12

    .line 81
    .line 82
    array-length v6, v3

    .line 83
    if-nez v6, :cond_7

    .line 84
    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_7
    const-string v6, "_id"

    .line 88
    .line 89
    const-string v7, "_lang"

    .line 90
    .line 91
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    filled-new-array {v8}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    const-string v13, "_time DESC"

    .line 104
    .line 105
    const/4 v14, -0x1

    .line 106
    :try_start_0
    iget-object v8, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v8}, Lcom/mycompany/app/db/book/DbRecentLang;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbRecentLang;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    const-string v9, "DbRecentLang_table"

    .line 117
    .line 118
    const-string v11, "_type=?"

    .line 119
    .line 120
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 121
    .line 122
    .line 123
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    if-eqz v8, :cond_13

    .line 125
    .line 126
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-eqz v9, :cond_13

    .line 131
    .line 132
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbRecentLang;->e(I)I

    .line 141
    .line 142
    .line 143
    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    if-ne v9, v14, :cond_8

    .line 145
    .line 146
    const v9, 0x7fffffff

    .line 147
    .line 148
    .line 149
    :cond_8
    move v11, v2

    .line 150
    const/4 v10, 0x0

    .line 151
    :goto_1
    :try_start_2
    iget-object v12, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 152
    .line 153
    if-eqz v12, :cond_11

    .line 154
    .line 155
    iget-boolean v12, v12, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 156
    .line 157
    if-eqz v12, :cond_9

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_9
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    if-eqz v13, :cond_a

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_a
    array-length v13, v3

    .line 172
    move v15, v2

    .line 173
    :goto_2
    if-ge v15, v13, :cond_c

    .line 174
    .line 175
    aget-object v2, v3, v15

    .line 176
    .line 177
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_b

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 185
    .line 186
    const/4 v2, 0x0

    .line 187
    goto :goto_2

    .line 188
    :cond_c
    move v15, v14

    .line 189
    :goto_3
    if-ne v15, v14, :cond_d

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_d
    new-instance v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 193
    .line 194
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 195
    .line 196
    .line 197
    iput v5, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 198
    .line 199
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v4

    .line 203
    iput-wide v4, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->b:J

    .line 204
    .line 205
    add-int/lit16 v4, v15, 0x3e8

    .line 206
    .line 207
    iput v4, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 208
    .line 209
    iput-object v12, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 210
    .line 211
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 212
    .line 213
    invoke-virtual {v12, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    iput-object v4, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 218
    .line 219
    iget v4, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->f0:I

    .line 220
    .line 221
    if-ne v4, v15, :cond_e

    .line 222
    .line 223
    iget v4, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 224
    .line 225
    iput v4, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->f0:I

    .line 226
    .line 227
    iput v11, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->g0:I

    .line 228
    .line 229
    :cond_e
    if-nez v10, :cond_f

    .line 230
    .line 231
    new-instance v4, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    move-object v10, v4

    .line 237
    :cond_f
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    add-int/lit8 v11, v11, 0x1

    .line 241
    .line 242
    :goto_4
    if-ge v11, v9, :cond_14

    .line 243
    .line 244
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v2, :cond_10

    .line 249
    .line 250
    goto :goto_8

    .line 251
    :cond_10
    const/4 v2, 0x0

    .line 252
    const/4 v5, 0x1

    .line 253
    goto :goto_1

    .line 254
    :cond_11
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 255
    .line 256
    .line 257
    :cond_12
    :goto_6
    const/4 v10, 0x0

    .line 258
    goto :goto_9

    .line 259
    :catch_0
    :cond_13
    :goto_7
    const/4 v10, 0x0

    .line 260
    goto :goto_8

    .line 261
    :catch_1
    const/4 v8, 0x0

    .line 262
    goto :goto_7

    .line 263
    :catch_2
    :cond_14
    :goto_8
    if-eqz v8, :cond_15

    .line 264
    .line 265
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 266
    .line 267
    .line 268
    :cond_15
    if-eqz v10, :cond_12

    .line 269
    .line 270
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_16

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_16
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 278
    .line 279
    if-eqz v2, :cond_12

    .line 280
    .line 281
    iget-boolean v2, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 282
    .line 283
    if-eqz v2, :cond_17

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_17
    new-instance v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 287
    .line 288
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 289
    .line 290
    .line 291
    const/4 v4, 0x2

    .line 292
    iput v4, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->a:I

    .line 293
    .line 294
    iput v14, v2, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 295
    .line 296
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    :goto_9
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->f:Ljava/util/List;

    .line 300
    .line 301
    array-length v2, v3

    .line 302
    if-nez v2, :cond_18

    .line 303
    .line 304
    goto :goto_c

    .line 305
    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .line 309
    .line 310
    array-length v4, v3

    .line 311
    const/4 v5, 0x0

    .line 312
    :goto_a
    if-ge v5, v4, :cond_1d

    .line 313
    .line 314
    iget-object v6, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 315
    .line 316
    if-eqz v6, :cond_1c

    .line 317
    .line 318
    iget-boolean v6, v6, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 319
    .line 320
    if-eqz v6, :cond_19

    .line 321
    .line 322
    goto :goto_c

    .line 323
    :cond_19
    new-instance v6, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 324
    .line 325
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 326
    .line 327
    .line 328
    iput v5, v6, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 329
    .line 330
    aget-object v7, v3, v5

    .line 331
    .line 332
    iput-object v7, v6, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 333
    .line 334
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 335
    .line 336
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    iput-object v7, v6, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 341
    .line 342
    iget v7, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->f0:I

    .line 343
    .line 344
    iget v8, v6, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->c:I

    .line 345
    .line 346
    if-ne v7, v8, :cond_1b

    .line 347
    .line 348
    if-eqz v10, :cond_1a

    .line 349
    .line 350
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 351
    .line 352
    .line 353
    move-result v7

    .line 354
    goto :goto_b

    .line 355
    :cond_1a
    const/4 v7, 0x0

    .line 356
    :goto_b
    add-int/2addr v7, v5

    .line 357
    iput v7, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->g0:I

    .line 358
    .line 359
    const/4 v13, 0x1

    .line 360
    iput-boolean v13, v6, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->g:Z

    .line 361
    .line 362
    :cond_1b
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    add-int/lit8 v5, v5, 0x1

    .line 366
    .line 367
    goto :goto_a

    .line 368
    :cond_1c
    :goto_c
    const/4 v4, 0x0

    .line 369
    goto :goto_d

    .line 370
    :cond_1d
    move-object v4, v2

    .line 371
    :goto_d
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->g:Ljava/util/List;

    .line 372
    .line 373
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->t0:Ljava/util/ArrayList;

    .line 374
    .line 375
    :goto_e
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->g:Ljava/util/List;

    .line 376
    .line 377
    if-eqz v2, :cond_2e

    .line 378
    .line 379
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_1e

    .line 384
    .line 385
    goto/16 :goto_12

    .line 386
    .line 387
    :cond_1e
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->f:Ljava/util/List;

    .line 388
    .line 389
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->s0:Ljava/util/List;

    .line 390
    .line 391
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogNewsLocale;->I()V

    .line 392
    .line 393
    .line 394
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 395
    .line 396
    if-eqz v2, :cond_23

    .line 397
    .line 398
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 399
    .line 400
    if-eqz v2, :cond_1f

    .line 401
    .line 402
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    if-eqz v2, :cond_20

    .line 407
    .line 408
    :cond_1f
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 409
    .line 410
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->J0:Ljava/lang/String;

    .line 411
    .line 412
    invoke-static {v2, v3}, Lcom/mycompany/app/db/book/DbBookLocale;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    iput-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 417
    .line 418
    :cond_20
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->z0:Ljava/util/List;

    .line 419
    .line 420
    if-eqz v2, :cond_22

    .line 421
    .line 422
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    if-eqz v2, :cond_21

    .line 427
    .line 428
    goto :goto_f

    .line 429
    :cond_21
    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogNewsLocale;->E(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 430
    .line 431
    .line 432
    goto :goto_10

    .line 433
    :cond_22
    :goto_f
    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogNewsLocale;->C(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 434
    .line 435
    .line 436
    :cond_23
    :goto_10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->i:Ljava/lang/String;

    .line 437
    .line 438
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-eqz v2, :cond_24

    .line 443
    .line 444
    goto/16 :goto_12

    .line 445
    .line 446
    :cond_24
    const/4 v13, 0x1

    .line 447
    iput-boolean v13, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->h:Z

    .line 448
    .line 449
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->i:Ljava/lang/String;

    .line 450
    .line 451
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 452
    .line 453
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->i:Ljava/lang/String;

    .line 458
    .line 459
    iget-boolean v1, v1, Lcom/mycompany/app/dialog/DialogNewsLocale;->L0:Z

    .line 460
    .line 461
    new-instance v2, Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .line 465
    .line 466
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->g:Ljava/util/List;

    .line 467
    .line 468
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    :cond_25
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    if-eqz v4, :cond_2d

    .line 477
    .line 478
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    check-cast v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 483
    .line 484
    iget-boolean v5, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 485
    .line 486
    if-eqz v5, :cond_26

    .line 487
    .line 488
    goto/16 :goto_12

    .line 489
    .line 490
    :cond_26
    if-nez v4, :cond_27

    .line 491
    .line 492
    goto :goto_11

    .line 493
    :cond_27
    iget-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 494
    .line 495
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    if-eqz v5, :cond_28

    .line 500
    .line 501
    goto :goto_11

    .line 502
    :cond_28
    iget-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 503
    .line 504
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    if-eqz v5, :cond_29

    .line 509
    .line 510
    goto :goto_11

    .line 511
    :cond_29
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->i:Ljava/lang/String;

    .line 512
    .line 513
    if-eqz v1, :cond_2a

    .line 514
    .line 515
    iget-object v6, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->d:Ljava/lang/String;

    .line 516
    .line 517
    iget-object v7, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 518
    .line 519
    invoke-static {v6, v7, v5}, Lcom/mycompany/app/main/InitialSearch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v6

    .line 523
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    if-nez v7, :cond_2a

    .line 528
    .line 529
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 530
    .line 531
    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    iput-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 536
    .line 537
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    goto :goto_11

    .line 541
    :cond_2a
    iget-object v6, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->e:Ljava/lang/String;

    .line 542
    .line 543
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 544
    .line 545
    .line 546
    move-result v6

    .line 547
    if-eqz v6, :cond_2b

    .line 548
    .line 549
    iput-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 550
    .line 551
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    goto :goto_11

    .line 555
    :cond_2b
    sget-boolean v6, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 556
    .line 557
    if-eqz v6, :cond_25

    .line 558
    .line 559
    iget-object v6, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->j:Ljava/lang/String;

    .line 560
    .line 561
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 562
    .line 563
    .line 564
    move-result v6

    .line 565
    if-nez v6, :cond_25

    .line 566
    .line 567
    if-eqz v1, :cond_2c

    .line 568
    .line 569
    iget-object v6, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->h:Ljava/lang/String;

    .line 570
    .line 571
    iget-object v7, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->j:Ljava/lang/String;

    .line 572
    .line 573
    invoke-static {v6, v7, v5}, Lcom/mycompany/app/main/InitialSearch;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 578
    .line 579
    .line 580
    move-result v7

    .line 581
    if-nez v7, :cond_2c

    .line 582
    .line 583
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 584
    .line 585
    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v5

    .line 589
    iput-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 590
    .line 591
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    goto :goto_11

    .line 595
    :cond_2c
    iget-object v6, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->j:Ljava/lang/String;

    .line 596
    .line 597
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 598
    .line 599
    .line 600
    move-result v6

    .line 601
    if-eqz v6, :cond_25

    .line 602
    .line 603
    iput-object v5, v4, Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;->f:Ljava/lang/String;

    .line 604
    .line 605
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    goto/16 :goto_11

    .line 609
    .line 610
    :cond_2d
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->g:Ljava/util/List;

    .line 611
    .line 612
    :cond_2e
    :goto_12
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogNewsLocale;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/dialog/DialogNewsLocale;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 17
    .line 18
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->f:Ljava/util/List;

    .line 19
    .line 20
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->g:Ljava/util/List;

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;->h:Z

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 25
    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    iput-object v6, v2, Lcom/mycompany/app/main/MainLangAdapter;->g:Ljava/util/List;

    .line 34
    .line 35
    iput-boolean v1, v2, Lcom/mycompany/app/main/MainLangAdapter;->k:Z

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, v2, Lcom/mycompany/app/main/MainLangAdapter;->o:I

    .line 39
    .line 40
    iput v0, v2, Lcom/mycompany/app/main/MainLangAdapter;->p:I

    .line 41
    .line 42
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainLangAdapter;

    .line 47
    .line 48
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 49
    .line 50
    iget v7, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->f0:I

    .line 51
    .line 52
    new-instance v8, Lcom/mycompany/app/dialog/DialogNewsLocale$11;

    .line 53
    .line 54
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$11;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/main/MainLangAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;ILcom/mycompany/app/main/MainLangAdapter$MainLangListener;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->u0:Lcom/mycompany/app/main/MainLangAdapter;

    .line 62
    .line 63
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->Y:Z

    .line 64
    .line 65
    iput-boolean v1, v2, Lcom/mycompany/app/main/MainLangAdapter;->l:Z

    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->w0:Z

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogNewsLocale;->G(Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->H()V

    .line 78
    .line 79
    .line 80
    return-void
.end method
