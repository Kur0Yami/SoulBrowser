.class Lcom/mycompany/app/setting/SettingHome$BookTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/setting/SettingHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z

.field public i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;Ljava/lang/String;ZZ)V
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
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean p3, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->g:Z

    .line 14
    .line 15
    iput-boolean p4, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->h:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/setting/SettingHome;

    .line 12
    .line 13
    if-eqz v0, :cond_f

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->Y6(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const-string v2, "/"

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 55
    .line 56
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->i:Ljava/util/ArrayList;

    .line 62
    .line 63
    const-string v7, "_time"

    .line 64
    .line 65
    const-string v8, "_rsv4"

    .line 66
    .line 67
    const-string v3, "_id"

    .line 68
    .line 69
    const-string v4, "_isdir"

    .line 70
    .line 71
    const-string v5, "_path"

    .line 72
    .line 73
    const-string v6, "_title"

    .line 74
    .line 75
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    const-string v12, "_secret=? AND _dir=?"

    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->g:Z

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    const-string v1, "1"

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const-string v1, "0"

    .line 89
    .line 90
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 91
    .line 92
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    const/4 v1, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x1

    .line 99
    :try_start_0
    iget-object v0, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    const-string v10, "DbBookWeb_table"

    .line 110
    .line 111
    const/4 v14, 0x0

    .line 112
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 113
    .line 114
    .line 115
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    if-eqz v0, :cond_b

    .line 117
    .line 118
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_b

    .line 123
    .line 124
    const-string v5, "_id"

    .line 125
    .line 126
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    const-string v6, "_isdir"

    .line 131
    .line 132
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    const-string v7, "_path"

    .line 137
    .line 138
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    const-string v8, "_title"

    .line 143
    .line 144
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    const-string v9, "_time"

    .line 149
    .line 150
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    const-string v10, "_rsv4"

    .line 155
    .line 156
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    :cond_4
    iget-boolean v11, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 161
    .line 162
    if-eqz v11, :cond_5

    .line 163
    .line 164
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->i:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_5
    new-instance v11, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 171
    .line 172
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    const/16 v12, 0x11

    .line 176
    .line 177
    iput v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 178
    .line 179
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 180
    .line 181
    .line 182
    move-result-wide v12

    .line 183
    iput-wide v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 184
    .line 185
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    if-ne v12, v4, :cond_6

    .line 190
    .line 191
    move v12, v4

    .line 192
    goto :goto_2

    .line 193
    :cond_6
    move v12, v1

    .line 194
    :goto_2
    iput-boolean v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 195
    .line 196
    iget-object v12, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 197
    .line 198
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 199
    .line 200
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 205
    .line 206
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 207
    .line 208
    .line 209
    move-result-wide v12

    .line 210
    iput-wide v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 211
    .line 212
    iget-boolean v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 213
    .line 214
    if-eqz v12, :cond_8

    .line 215
    .line 216
    iget-object v12, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    if-eqz v12, :cond_7

    .line 223
    .line 224
    new-instance v12, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    iget-object v13, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-object v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v12

    .line 266
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_8
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    if-eqz v12, :cond_9

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_9
    :goto_3
    sget-boolean v12, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 283
    .line 284
    if-eqz v12, :cond_a

    .line 285
    .line 286
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 287
    .line 288
    .line 289
    move-result-wide v12

    .line 290
    iput-wide v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_a
    invoke-static {v11}, Lcom/mycompany/app/list/book/ListBookWeb;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 294
    .line 295
    .line 296
    :goto_4
    iget-object v12, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->i:Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 302
    .line 303
    .line 304
    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    if-nez v11, :cond_4

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :catch_0
    move-object v0, v3

    .line 309
    :catch_1
    :cond_b
    :goto_6
    if-eqz v0, :cond_c

    .line 310
    .line 311
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 312
    .line 313
    .line 314
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->i:Ljava/util/ArrayList;

    .line 315
    .line 316
    if-eqz v0, :cond_e

    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-nez v0, :cond_e

    .line 323
    .line 324
    sget-boolean v0, Lcom/mycompany/app/pref/PrefList;->F:Z

    .line 325
    .line 326
    if-eqz v0, :cond_d

    .line 327
    .line 328
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->i:Ljava/util/ArrayList;

    .line 329
    .line 330
    new-instance v5, Lcom/mycompany/app/main/MainUtil$SortChildUser;

    .line 331
    .line 332
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 333
    .line 334
    .line 335
    :try_start_2
    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 336
    .line 337
    .line 338
    goto :goto_7

    .line 339
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->i:Ljava/util/ArrayList;

    .line 340
    .line 341
    sget v5, Lcom/mycompany/app/pref/PrefList;->H:I

    .line 342
    .line 343
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->I:Z

    .line 344
    .line 345
    invoke-static {v1, v5, v6}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    :try_start_3
    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 350
    .line 351
    .line 352
    :catch_2
    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_f

    .line 359
    .line 360
    new-instance v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 361
    .line 362
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 363
    .line 364
    .line 365
    iput v4, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 366
    .line 367
    iput-boolean v4, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 368
    .line 369
    const-string v2, ".."

    .line 370
    .line 371
    iput-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 372
    .line 373
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->f:Ljava/lang/String;

    .line 374
    .line 375
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->d1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    iput-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 380
    .line 381
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->i:Ljava/util/ArrayList;

    .line 382
    .line 383
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :cond_f
    :goto_8
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/setting/SettingHome;

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
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->p2:Lcom/mycompany/app/setting/SettingHome$BookTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/setting/SettingHome;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->p2:Lcom/mycompany/app/setting/SettingHome$BookTask;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->o2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->i:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/QuickAddAdapter;->x(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_3
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->i:Ljava/util/ArrayList;

    .line 37
    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->g:Z

    .line 48
    .line 49
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingHome;->q2:Z

    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->k2:Landroid/widget/ImageView;

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 59
    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->k2:Landroid/widget/ImageView;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 73
    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :cond_6
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingHome$BookTask;->h:Z

    .line 80
    .line 81
    if-eqz v1, :cond_7

    .line 82
    .line 83
    sget v1, Lnet/kaki87/soul2/testing/R$string;->import_no_book:I

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 86
    .line 87
    .line 88
    :cond_7
    :goto_1
    return-void
.end method
