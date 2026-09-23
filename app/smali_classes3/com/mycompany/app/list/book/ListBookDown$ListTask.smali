.class Lcom/mycompany/app/list/book/ListBookDown$ListTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/list/book/ListBookDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public f:Z

.field public final g:Z

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public k:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public l:Ljava/util/ArrayList;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/util/ArrayList;

.field public o:[Z

.field public p:[I

.field public q:[Z

.field public r:I

.field public s:Z

.field public final t:Z

.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/list/book/ListBookDown;ZJ)V
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
    iput-object v0, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/list/book/ListBookDown;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->g:Z

    .line 21
    .line 22
    iput-wide p3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->h:J

    .line 23
    .line 24
    iget-boolean p2, p1, Lcom/mycompany/app/list/book/ListBookDown;->d:Z

    .line 25
    .line 26
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->t:Z

    .line 27
    .line 28
    iget-object p2, p1, Lcom/mycompany/app/list/book/ListBookDown;->e:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->u:Ljava/lang/String;

    .line 31
    .line 32
    sget-object p2, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->i:Ljava/lang/String;

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    sput-object p3, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    xor-int/lit8 p2, p2, 0x1

    .line 44
    .line 45
    iput-boolean p2, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->j:Z

    .line 46
    .line 47
    iget-object p1, p1, Lcom/mycompany/app/list/book/ListBookDown;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-interface {p1}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->f()V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 53

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->f:Z

    .line 5
    .line 6
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->e:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_60

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
    check-cast v3, Lcom/mycompany/app/list/book/ListBookDown;

    .line 18
    .line 19
    if-eqz v3, :cond_77

    .line 20
    .line 21
    iget-object v2, v3, Lcom/mycompany/app/list/book/ListBookDown;->a:Landroid/content/Context;

    .line 22
    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto/16 :goto_60

    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->u:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v5, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->t:Z

    .line 32
    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    xor-int/2addr v6, v1

    .line 40
    :goto_0
    const/4 v7, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v6, v3, Lcom/mycompany/app/list/book/ListBookDown;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 43
    .line 44
    if-eqz v6, :cond_3

    .line 45
    .line 46
    invoke-interface {v6}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->d()Lcom/mycompany/app/main/MainListAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    if-eqz v6, :cond_3

    .line 51
    .line 52
    iget-boolean v7, v6, Lcom/mycompany/app/main/MainListAdapter;->q:Z

    .line 53
    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    iput-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->s:Z

    .line 57
    .line 58
    invoke-virtual {v6}, Lcom/mycompany/app/main/MainListAdapter;->i()Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    move-object v7, v6

    .line 63
    const/4 v6, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 v6, 0x0

    .line 66
    goto :goto_0

    .line 67
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v8, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 73
    .line 74
    sget-boolean v8, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 75
    .line 76
    const-wide/16 v11, 0x0

    .line 77
    .line 78
    if-eqz v8, :cond_4

    .line 79
    .line 80
    sget-wide v13, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 81
    .line 82
    cmp-long v13, v13, v11

    .line 83
    .line 84
    if-eqz v13, :cond_5

    .line 85
    .line 86
    :cond_4
    if-eqz v8, :cond_5

    .line 87
    .line 88
    sget-wide v13, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 89
    .line 90
    cmp-long v15, v13, v11

    .line 91
    .line 92
    if-lez v15, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    move-wide v13, v11

    .line 96
    :goto_2
    const-string v15, "_rsv1"

    .line 97
    .line 98
    move-wide/from16 v16, v11

    .line 99
    .line 100
    const-string v11, "_type"

    .line 101
    .line 102
    const-string v12, "_status"

    .line 103
    .line 104
    const-string v9, "_time"

    .line 105
    .line 106
    const-string v1, "_size"

    .line 107
    .line 108
    const-string v10, "_name"

    .line 109
    .line 110
    move/from16 v21, v5

    .line 111
    .line 112
    const-string v5, "_path"

    .line 113
    .line 114
    move/from16 v22, v6

    .line 115
    .line 116
    const-string v6, "_dname"

    .line 117
    .line 118
    move/from16 v23, v8

    .line 119
    .line 120
    const-string v8, "_dir"

    .line 121
    .line 122
    move-wide/from16 v24, v13

    .line 123
    .line 124
    const-string v13, "_url"

    .line 125
    .line 126
    const-string v14, "_id"

    .line 127
    .line 128
    const-string v26, "0"

    .line 129
    .line 130
    const-string v27, "1"

    .line 131
    .line 132
    move-object/from16 v28, v4

    .line 133
    .line 134
    iget-boolean v4, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->g:Z

    .line 135
    .line 136
    move/from16 v29, v4

    .line 137
    .line 138
    if-eqz v21, :cond_2e

    .line 139
    .line 140
    if-eqz v22, :cond_2d

    .line 141
    .line 142
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    iget-object v7, v7, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 147
    .line 148
    sget v23, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 149
    .line 150
    if-eqz v23, :cond_6

    .line 151
    .line 152
    if-eqz v7, :cond_7

    .line 153
    .line 154
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v23

    .line 158
    if-eqz v23, :cond_6

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    move-object v4, v3

    .line 162
    move-object v3, v2

    .line 163
    move-object v2, v4

    .line 164
    move-object/from16 v41, v1

    .line 165
    .line 166
    move-object/from16 v39, v5

    .line 167
    .line 168
    move-object/from16 v38, v6

    .line 169
    .line 170
    move-object v6, v8

    .line 171
    move-object/from16 v43, v9

    .line 172
    .line 173
    move-object/from16 v40, v10

    .line 174
    .line 175
    move-object/from16 v34, v11

    .line 176
    .line 177
    move-object/from16 v33, v12

    .line 178
    .line 179
    move-object/from16 v35, v13

    .line 180
    .line 181
    move-object v4, v14

    .line 182
    move-object/from16 v36, v15

    .line 183
    .line 184
    goto/16 :goto_27

    .line 185
    .line 186
    :cond_7
    :goto_3
    if-nez v2, :cond_8

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_8
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 190
    .line 191
    if-eqz v7, :cond_9

    .line 192
    .line 193
    sget-wide v30, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 194
    .line 195
    cmp-long v7, v30, v16

    .line 196
    .line 197
    if-nez v7, :cond_9

    .line 198
    .line 199
    :goto_4
    move-object v4, v3

    .line 200
    move-object v3, v2

    .line 201
    move-object v2, v4

    .line 202
    move-object/from16 v41, v1

    .line 203
    .line 204
    move-object/from16 v39, v5

    .line 205
    .line 206
    move-object/from16 v38, v6

    .line 207
    .line 208
    move-object v6, v8

    .line 209
    move-object/from16 v43, v9

    .line 210
    .line 211
    move-object/from16 v40, v10

    .line 212
    .line 213
    move-object/from16 v34, v11

    .line 214
    .line 215
    move-object/from16 v33, v12

    .line 216
    .line 217
    move-object/from16 v35, v13

    .line 218
    .line 219
    move-object v4, v14

    .line 220
    move-object/from16 v36, v15

    .line 221
    .line 222
    const/4 v7, 0x0

    .line 223
    goto/16 :goto_26

    .line 224
    .line 225
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .line 229
    .line 230
    sget-boolean v23, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 231
    .line 232
    if-eqz v23, :cond_a

    .line 233
    .line 234
    sget-wide v30, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 235
    .line 236
    cmp-long v32, v30, v16

    .line 237
    .line 238
    if-lez v32, :cond_a

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_a
    move-wide/from16 v30, v16

    .line 242
    .line 243
    :goto_5
    const-string v35, "_secret=? AND _time>?"

    .line 244
    .line 245
    if-eqz v23, :cond_b

    .line 246
    .line 247
    move-object/from16 v4, v27

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_b
    move-object/from16 v4, v26

    .line 251
    .line 252
    :goto_6
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v36

    .line 260
    :try_start_0
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 265
    .line 266
    .line 267
    move-result-object v32

    .line 268
    const-string v33, "DbBookDown_table"

    .line 269
    .line 270
    const/16 v34, 0x0

    .line 271
    .line 272
    const/16 v37, 0x0

    .line 273
    .line 274
    invoke-static/range {v32 .. v37}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 275
    .line 276
    .line 277
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_18

    .line 278
    if-eqz v0, :cond_1d

    .line 279
    .line 280
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_1d

    .line 285
    .line 286
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17

    .line 290
    move-object/from16 v32, v14

    .line 291
    .line 292
    :try_start_2
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_16

    .line 296
    move-object/from16 v33, v12

    .line 297
    .line 298
    :try_start_3
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15

    .line 302
    move-object/from16 v34, v11

    .line 303
    .line 304
    :try_start_4
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    .line 308
    move-object/from16 v35, v13

    .line 309
    .line 310
    :try_start_5
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_13

    .line 314
    move-object/from16 v36, v15

    .line 315
    .line 316
    :try_start_6
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    .line 320
    move-object/from16 v37, v8

    .line 321
    .line 322
    :try_start_7
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 323
    .line 324
    .line 325
    move-result v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11

    .line 326
    move-object/from16 v38, v6

    .line 327
    .line 328
    :try_start_8
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    .line 332
    move-object/from16 v39, v5

    .line 333
    .line 334
    :try_start_9
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f

    .line 338
    move-object/from16 v40, v10

    .line 339
    .line 340
    :try_start_a
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 341
    .line 342
    .line 343
    move-result v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_e

    .line 344
    move-object/from16 v41, v1

    .line 345
    .line 346
    :try_start_b
    const-string v1, "_read"

    .line 347
    .line 348
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 349
    .line 350
    .line 351
    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    .line 352
    move-object/from16 v42, v3

    .line 353
    .line 354
    :try_start_c
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 358
    move-object/from16 v43, v9

    .line 359
    .line 360
    :try_start_d
    const-string v9, "_fast"

    .line 361
    .line 362
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v9
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 366
    move-object/from16 v23, v7

    .line 367
    .line 368
    :try_start_e
    const-string v7, "_rsv4"

    .line 369
    .line 370
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 374
    move/from16 v46, v7

    .line 375
    .line 376
    const/16 v44, 0x1

    .line 377
    .line 378
    const/16 v45, 0x0

    .line 379
    .line 380
    :goto_7
    :try_start_f
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 385
    .line 386
    .line 387
    move-result v47

    .line 388
    if-eqz v47, :cond_c

    .line 389
    .line 390
    move/from16 v48, v3

    .line 391
    .line 392
    move v7, v4

    .line 393
    move/from16 v49, v5

    .line 394
    .line 395
    move/from16 v47, v6

    .line 396
    .line 397
    move-object v4, v0

    .line 398
    move v5, v1

    .line 399
    move-object v3, v2

    .line 400
    :catch_0
    :goto_8
    move-object/from16 v0, v23

    .line 401
    .line 402
    :catch_1
    :goto_9
    move-object/from16 v2, v42

    .line 403
    .line 404
    goto/16 :goto_17

    .line 405
    .line 406
    :cond_c
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v47

    .line 410
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 411
    .line 412
    .line 413
    move-result v48

    .line 414
    if-eqz v48, :cond_d

    .line 415
    .line 416
    invoke-static {v2, v7}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v47

    .line 420
    :cond_d
    move-object/from16 v48, v47

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :catch_2
    move/from16 v48, v3

    .line 424
    .line 425
    move v7, v4

    .line 426
    move/from16 v49, v5

    .line 427
    .line 428
    move/from16 v47, v6

    .line 429
    .line 430
    move-object v4, v0

    .line 431
    move v5, v1

    .line 432
    :goto_a
    move-object v3, v2

    .line 433
    goto :goto_8

    .line 434
    :goto_b
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 435
    .line 436
    .line 437
    move-result v47

    .line 438
    if-nez v47, :cond_e

    .line 439
    .line 440
    invoke-static/range {v48 .. v48}, Lcom/mycompany/app/main/MainUtil;->P0(Ljava/lang/String;)I

    .line 441
    .line 442
    .line 443
    move-result v47
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 444
    :cond_e
    move/from16 v49, v5

    .line 445
    .line 446
    move/from16 v5, v47

    .line 447
    .line 448
    move/from16 v47, v6

    .line 449
    .line 450
    :try_start_10
    new-instance v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 451
    .line 452
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 453
    .line 454
    .line 455
    iput v5, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 456
    .line 457
    move v5, v1

    .line 458
    move-object/from16 v50, v2

    .line 459
    .line 460
    :try_start_11
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 461
    .line 462
    .line 463
    move-result-wide v1

    .line 464
    iput-wide v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 465
    .line 466
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    iput v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 471
    .line 472
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    iput-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 477
    .line 478
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    iput-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 483
    .line 484
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    iput-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 489
    .line 490
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iput-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 495
    .line 496
    iput-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 497
    .line 498
    move-object/from16 v1, v48

    .line 499
    .line 500
    iput-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 501
    .line 502
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 503
    .line 504
    .line 505
    move-result-wide v1

    .line 506
    iput-wide v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 507
    .line 508
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 509
    .line 510
    .line 511
    move-result-wide v1

    .line 512
    iput-wide v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 513
    .line 514
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 515
    .line 516
    .line 517
    move-result-wide v1

    .line 518
    iput-wide v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 519
    .line 520
    iget v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 521
    .line 522
    const/4 v2, 0x5

    .line 523
    if-ne v1, v2, :cond_f

    .line 524
    .line 525
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    iput v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 530
    .line 531
    goto :goto_d

    .line 532
    :catch_3
    move/from16 v48, v3

    .line 533
    .line 534
    move v7, v4

    .line 535
    move-object/from16 v3, v50

    .line 536
    .line 537
    :goto_c
    move-object v4, v0

    .line 538
    goto/16 :goto_8

    .line 539
    .line 540
    :cond_f
    :goto_d
    iget v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 541
    .line 542
    const/4 v2, 0x1

    .line 543
    if-ne v1, v2, :cond_16

    .line 544
    .line 545
    :try_start_12
    iget-wide v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    .line 546
    .line 547
    cmp-long v1, v1, v16

    .line 548
    .line 549
    if-nez v1, :cond_15

    .line 550
    .line 551
    if-eqz v44, :cond_11

    .line 552
    .line 553
    if-nez v45, :cond_10

    .line 554
    .line 555
    :try_start_13
    invoke-static/range {v50 .. v50}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    .line 560
    .line 561
    move-object/from16 v45, v1

    .line 562
    .line 563
    :cond_10
    const/16 v44, 0x0

    .line 564
    .line 565
    goto :goto_e

    .line 566
    :catch_4
    move/from16 v48, v3

    .line 567
    .line 568
    move v7, v4

    .line 569
    move-object/from16 v3, v50

    .line 570
    .line 571
    const/16 v44, 0x0

    .line 572
    .line 573
    goto :goto_c

    .line 574
    :cond_11
    :goto_e
    if-eqz v45, :cond_15

    .line 575
    .line 576
    :try_start_14
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    if-nez v1, :cond_15

    .line 581
    .line 582
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 583
    .line 584
    .line 585
    move-result-object v1

    .line 586
    :cond_12
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    if-eqz v2, :cond_15

    .line 591
    .line 592
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    .line 597
    .line 598
    if-eqz v2, :cond_12

    .line 599
    .line 600
    move/from16 v48, v3

    .line 601
    .line 602
    move v7, v4

    .line 603
    :try_start_15
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 604
    .line 605
    move-wide/from16 v51, v3

    .line 606
    .line 607
    iget-wide v3, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 608
    .line 609
    cmp-long v3, v51, v3

    .line 610
    .line 611
    if-eqz v3, :cond_13

    .line 612
    .line 613
    move v4, v7

    .line 614
    move/from16 v3, v48

    .line 615
    .line 616
    goto :goto_f

    .line 617
    :cond_13
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 618
    .line 619
    iput-wide v3, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 620
    .line 621
    iget-wide v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 622
    .line 623
    iput-wide v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    .line 624
    .line 625
    goto :goto_12

    .line 626
    :catch_5
    :goto_10
    move-object v4, v0

    .line 627
    :goto_11
    move-object/from16 v0, v23

    .line 628
    .line 629
    move-object/from16 v3, v50

    .line 630
    .line 631
    goto/16 :goto_9

    .line 632
    .line 633
    :catch_6
    move/from16 v48, v3

    .line 634
    .line 635
    move v7, v4

    .line 636
    goto :goto_10

    .line 637
    :cond_14
    :goto_12
    move-object v4, v0

    .line 638
    :goto_13
    move-object/from16 v3, v50

    .line 639
    .line 640
    goto :goto_16

    .line 641
    :cond_15
    move/from16 v48, v3

    .line 642
    .line 643
    move v7, v4

    .line 644
    goto :goto_12

    .line 645
    :cond_16
    move/from16 v48, v3

    .line 646
    .line 647
    move v7, v4

    .line 648
    const/4 v2, 0x3

    .line 649
    if-eq v1, v2, :cond_17

    .line 650
    .line 651
    const/4 v2, 0x4

    .line 652
    if-eq v1, v2, :cond_17

    .line 653
    .line 654
    const/4 v2, 0x5

    .line 655
    if-ne v1, v2, :cond_18

    .line 656
    .line 657
    :cond_17
    move/from16 v1, v46

    .line 658
    .line 659
    goto :goto_15

    .line 660
    :cond_18
    const/4 v2, 0x2

    .line 661
    if-ne v1, v2, :cond_14

    .line 662
    .line 663
    move/from16 v1, v46

    .line 664
    .line 665
    :try_start_16
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 666
    .line 667
    .line 668
    move-result v2

    .line 669
    const/4 v3, 0x1

    .line 670
    if-ne v2, v3, :cond_19

    .line 671
    .line 672
    const/4 v2, 0x1

    .line 673
    goto :goto_14

    .line 674
    :cond_19
    const/4 v2, 0x0

    .line 675
    :goto_14
    iput-boolean v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 676
    .line 677
    :cond_1a
    move-object v4, v0

    .line 678
    move/from16 v46, v1

    .line 679
    .line 680
    goto :goto_13

    .line 681
    :catch_7
    move-object v4, v0

    .line 682
    move/from16 v46, v1

    .line 683
    .line 684
    goto :goto_11

    .line 685
    :goto_15
    iget-wide v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    .line 686
    .line 687
    cmp-long v2, v2, v16

    .line 688
    .line 689
    if-nez v2, :cond_1a

    .line 690
    .line 691
    :try_start_17
    iget-object v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    .line 692
    .line 693
    move-object v4, v0

    .line 694
    move/from16 v46, v1

    .line 695
    .line 696
    move-object/from16 v3, v50

    .line 697
    .line 698
    :try_start_18
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    .line 699
    .line 700
    .line 701
    move-result-wide v0

    .line 702
    iput-wide v0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 703
    .line 704
    goto :goto_16

    .line 705
    :catch_8
    move-object v4, v0

    .line 706
    move/from16 v46, v1

    .line 707
    .line 708
    move-object/from16 v3, v50

    .line 709
    .line 710
    goto/16 :goto_8

    .line 711
    .line 712
    :goto_16
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->Z0(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    .line 713
    .line 714
    .line 715
    move-object/from16 v0, v23

    .line 716
    .line 717
    :try_start_19
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    .line 718
    .line 719
    .line 720
    goto/16 :goto_9

    .line 721
    .line 722
    :catch_9
    move v5, v1

    .line 723
    move/from16 v48, v3

    .line 724
    .line 725
    move v7, v4

    .line 726
    move-object v4, v0

    .line 727
    goto/16 :goto_a

    .line 728
    .line 729
    :goto_17
    :try_start_1a
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 730
    .line 731
    if-eqz v1, :cond_1b

    .line 732
    .line 733
    iget-boolean v1, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 734
    .line 735
    if-eqz v1, :cond_1b

    .line 736
    .line 737
    goto/16 :goto_1e

    .line 738
    .line 739
    :cond_1b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 740
    .line 741
    .line 742
    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_19

    .line 743
    if-nez v1, :cond_1c

    .line 744
    .line 745
    goto/16 :goto_1e

    .line 746
    .line 747
    :cond_1c
    move-object/from16 v23, v0

    .line 748
    .line 749
    move-object/from16 v42, v2

    .line 750
    .line 751
    move-object v2, v3

    .line 752
    move-object v0, v4

    .line 753
    move v1, v5

    .line 754
    move v4, v7

    .line 755
    move/from16 v6, v47

    .line 756
    .line 757
    move/from16 v3, v48

    .line 758
    .line 759
    move/from16 v5, v49

    .line 760
    .line 761
    goto/16 :goto_7

    .line 762
    .line 763
    :catch_a
    move-object v4, v0

    .line 764
    move-object v3, v2

    .line 765
    move-object/from16 v0, v23

    .line 766
    .line 767
    :goto_18
    move-object/from16 v2, v42

    .line 768
    .line 769
    goto/16 :goto_1e

    .line 770
    .line 771
    :catch_b
    move-object v4, v0

    .line 772
    move-object v3, v2

    .line 773
    move-object v0, v7

    .line 774
    goto :goto_18

    .line 775
    :catch_c
    move-object v4, v0

    .line 776
    move-object v3, v2

    .line 777
    move-object v0, v7

    .line 778
    move-object/from16 v43, v9

    .line 779
    .line 780
    goto :goto_18

    .line 781
    :catch_d
    move-object v4, v3

    .line 782
    move-object v3, v2

    .line 783
    move-object v2, v4

    .line 784
    move-object v4, v0

    .line 785
    :goto_19
    move-object v0, v7

    .line 786
    move-object/from16 v43, v9

    .line 787
    .line 788
    goto/16 :goto_1e

    .line 789
    .line 790
    :catch_e
    move-object v4, v3

    .line 791
    move-object v3, v2

    .line 792
    move-object v2, v4

    .line 793
    move-object v4, v0

    .line 794
    move-object/from16 v41, v1

    .line 795
    .line 796
    goto :goto_19

    .line 797
    :catch_f
    move-object v4, v3

    .line 798
    move-object v3, v2

    .line 799
    move-object v2, v4

    .line 800
    move-object v4, v0

    .line 801
    move-object/from16 v41, v1

    .line 802
    .line 803
    :goto_1a
    move-object v0, v7

    .line 804
    :goto_1b
    move-object/from16 v43, v9

    .line 805
    .line 806
    move-object/from16 v40, v10

    .line 807
    .line 808
    goto/16 :goto_1e

    .line 809
    .line 810
    :catch_10
    move-object v4, v3

    .line 811
    move-object v3, v2

    .line 812
    move-object v2, v4

    .line 813
    move-object v4, v0

    .line 814
    move-object/from16 v41, v1

    .line 815
    .line 816
    move-object/from16 v39, v5

    .line 817
    .line 818
    goto :goto_1a

    .line 819
    :catch_11
    move-object v4, v3

    .line 820
    move-object v3, v2

    .line 821
    move-object v2, v4

    .line 822
    move-object v4, v0

    .line 823
    move-object/from16 v41, v1

    .line 824
    .line 825
    move-object/from16 v39, v5

    .line 826
    .line 827
    move-object/from16 v38, v6

    .line 828
    .line 829
    goto :goto_1a

    .line 830
    :catch_12
    move-object v4, v3

    .line 831
    move-object v3, v2

    .line 832
    move-object v2, v4

    .line 833
    move-object v4, v0

    .line 834
    move-object/from16 v41, v1

    .line 835
    .line 836
    move-object/from16 v39, v5

    .line 837
    .line 838
    move-object/from16 v38, v6

    .line 839
    .line 840
    move-object v0, v7

    .line 841
    move-object/from16 v37, v8

    .line 842
    .line 843
    goto :goto_1b

    .line 844
    :catch_13
    move-object v4, v3

    .line 845
    move-object v3, v2

    .line 846
    move-object v2, v4

    .line 847
    move-object v4, v0

    .line 848
    move-object/from16 v41, v1

    .line 849
    .line 850
    move-object/from16 v39, v5

    .line 851
    .line 852
    move-object/from16 v38, v6

    .line 853
    .line 854
    move-object v0, v7

    .line 855
    move-object/from16 v37, v8

    .line 856
    .line 857
    move-object/from16 v43, v9

    .line 858
    .line 859
    move-object/from16 v40, v10

    .line 860
    .line 861
    goto/16 :goto_1d

    .line 862
    .line 863
    :catch_14
    move-object v4, v3

    .line 864
    move-object v3, v2

    .line 865
    move-object v2, v4

    .line 866
    move-object v4, v0

    .line 867
    move-object/from16 v41, v1

    .line 868
    .line 869
    move-object/from16 v39, v5

    .line 870
    .line 871
    move-object/from16 v38, v6

    .line 872
    .line 873
    move-object v0, v7

    .line 874
    move-object/from16 v37, v8

    .line 875
    .line 876
    move-object/from16 v43, v9

    .line 877
    .line 878
    move-object/from16 v40, v10

    .line 879
    .line 880
    :goto_1c
    move-object/from16 v35, v13

    .line 881
    .line 882
    goto/16 :goto_1d

    .line 883
    .line 884
    :catch_15
    move-object v4, v3

    .line 885
    move-object v3, v2

    .line 886
    move-object v2, v4

    .line 887
    move-object v4, v0

    .line 888
    move-object/from16 v41, v1

    .line 889
    .line 890
    move-object/from16 v39, v5

    .line 891
    .line 892
    move-object/from16 v38, v6

    .line 893
    .line 894
    move-object v0, v7

    .line 895
    move-object/from16 v37, v8

    .line 896
    .line 897
    move-object/from16 v43, v9

    .line 898
    .line 899
    move-object/from16 v40, v10

    .line 900
    .line 901
    move-object/from16 v34, v11

    .line 902
    .line 903
    goto :goto_1c

    .line 904
    :catch_16
    move-object v4, v3

    .line 905
    move-object v3, v2

    .line 906
    move-object v2, v4

    .line 907
    move-object v4, v0

    .line 908
    move-object/from16 v41, v1

    .line 909
    .line 910
    move-object/from16 v39, v5

    .line 911
    .line 912
    move-object/from16 v38, v6

    .line 913
    .line 914
    move-object v0, v7

    .line 915
    move-object/from16 v37, v8

    .line 916
    .line 917
    move-object/from16 v43, v9

    .line 918
    .line 919
    move-object/from16 v40, v10

    .line 920
    .line 921
    move-object/from16 v34, v11

    .line 922
    .line 923
    move-object/from16 v33, v12

    .line 924
    .line 925
    goto :goto_1c

    .line 926
    :catch_17
    :cond_1d
    move-object v4, v3

    .line 927
    move-object v3, v2

    .line 928
    move-object v2, v4

    .line 929
    move-object v4, v0

    .line 930
    move-object/from16 v41, v1

    .line 931
    .line 932
    move-object/from16 v39, v5

    .line 933
    .line 934
    move-object/from16 v38, v6

    .line 935
    .line 936
    move-object v0, v7

    .line 937
    move-object/from16 v37, v8

    .line 938
    .line 939
    move-object/from16 v43, v9

    .line 940
    .line 941
    move-object/from16 v40, v10

    .line 942
    .line 943
    move-object/from16 v34, v11

    .line 944
    .line 945
    move-object/from16 v33, v12

    .line 946
    .line 947
    move-object/from16 v35, v13

    .line 948
    .line 949
    move-object/from16 v32, v14

    .line 950
    .line 951
    :goto_1d
    move-object/from16 v36, v15

    .line 952
    .line 953
    goto :goto_1e

    .line 954
    :catch_18
    move-object v0, v3

    .line 955
    move-object v3, v2

    .line 956
    move-object v2, v0

    .line 957
    move-object/from16 v41, v1

    .line 958
    .line 959
    move-object/from16 v39, v5

    .line 960
    .line 961
    move-object/from16 v38, v6

    .line 962
    .line 963
    move-object v0, v7

    .line 964
    move-object/from16 v37, v8

    .line 965
    .line 966
    move-object/from16 v43, v9

    .line 967
    .line 968
    move-object/from16 v40, v10

    .line 969
    .line 970
    move-object/from16 v34, v11

    .line 971
    .line 972
    move-object/from16 v33, v12

    .line 973
    .line 974
    move-object/from16 v35, v13

    .line 975
    .line 976
    move-object/from16 v32, v14

    .line 977
    .line 978
    move-object/from16 v36, v15

    .line 979
    .line 980
    const/4 v4, 0x0

    .line 981
    :catch_19
    :goto_1e
    if-eqz v4, :cond_1e

    .line 982
    .line 983
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 984
    .line 985
    .line 986
    :cond_1e
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 987
    .line 988
    if-eqz v1, :cond_1f

    .line 989
    .line 990
    iget-boolean v1, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 991
    .line 992
    if-eqz v1, :cond_1f

    .line 993
    .line 994
    move-object/from16 v4, v32

    .line 995
    .line 996
    move-object/from16 v6, v37

    .line 997
    .line 998
    :goto_1f
    const/4 v0, 0x0

    .line 999
    goto/16 :goto_25

    .line 1000
    .line 1001
    :cond_1f
    const-string v7, "_secret=? AND _time>?"

    .line 1002
    .line 1003
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 1004
    .line 1005
    if-eqz v1, :cond_20

    .line 1006
    .line 1007
    move-object/from16 v1, v27

    .line 1008
    .line 1009
    goto :goto_20

    .line 1010
    :cond_20
    move-object/from16 v1, v26

    .line 1011
    .line 1012
    :goto_20
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v4

    .line 1016
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v8

    .line 1020
    :try_start_1b
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookPage;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPage;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v4

    .line 1028
    const-string v5, "DbBookPage_table"

    .line 1029
    .line 1030
    const/4 v6, 0x0

    .line 1031
    const/4 v9, 0x0

    .line 1032
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_26

    .line 1036
    if-eqz v1, :cond_25

    .line 1037
    .line 1038
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_24

    .line 1042
    if-eqz v4, :cond_25

    .line 1043
    .line 1044
    move-object/from16 v4, v32

    .line 1045
    .line 1046
    :try_start_1d
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1047
    .line 1048
    .line 1049
    move-result v5
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_25

    .line 1050
    move-object/from16 v6, v37

    .line 1051
    .line 1052
    :try_start_1e
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    move-result v7
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_27

    .line 1056
    move-object/from16 v8, v38

    .line 1057
    .line 1058
    :try_start_1f
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1059
    .line 1060
    .line 1061
    move-result v9
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_23

    .line 1062
    move-object/from16 v10, v39

    .line 1063
    .line 1064
    :try_start_20
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1065
    .line 1066
    .line 1067
    move-result v11
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_22

    .line 1068
    move-object/from16 v12, v40

    .line 1069
    .line 1070
    :try_start_21
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1071
    .line 1072
    .line 1073
    move-result v13
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_21

    .line 1074
    move-object/from16 v14, v35

    .line 1075
    .line 1076
    :try_start_22
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1077
    .line 1078
    .line 1079
    move-result v15
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_20

    .line 1080
    move-object/from16 v39, v10

    .line 1081
    .line 1082
    move-object/from16 v40, v12

    .line 1083
    .line 1084
    move-object/from16 v12, v43

    .line 1085
    .line 1086
    :try_start_23
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1087
    .line 1088
    .line 1089
    move-result v10
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1f

    .line 1090
    move-object/from16 v38, v8

    .line 1091
    .line 1092
    move-object/from16 v43, v12

    .line 1093
    .line 1094
    move-object/from16 v12, v41

    .line 1095
    .line 1096
    :try_start_24
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1097
    .line 1098
    .line 1099
    move-result v8
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_1e

    .line 1100
    move-object/from16 v41, v12

    .line 1101
    .line 1102
    :goto_21
    :try_start_25
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v12

    .line 1106
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v23

    .line 1110
    if-eqz v23, :cond_21

    .line 1111
    .line 1112
    :catch_1a
    move/from16 v30, v11

    .line 1113
    .line 1114
    :catch_1b
    move/from16 v31, v13

    .line 1115
    .line 1116
    :catch_1c
    move-object/from16 v35, v14

    .line 1117
    .line 1118
    goto :goto_22

    .line 1119
    :cond_21
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v23

    .line 1123
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v30

    .line 1127
    if-eqz v30, :cond_22

    .line 1128
    .line 1129
    invoke-static {v3, v12}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v23
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1a

    .line 1133
    :cond_22
    move/from16 v30, v11

    .line 1134
    .line 1135
    :try_start_26
    new-instance v11, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1136
    .line 1137
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_1b

    .line 1138
    .line 1139
    .line 1140
    move/from16 v31, v13

    .line 1141
    .line 1142
    const/16 v13, 0x8

    .line 1143
    .line 1144
    :try_start_27
    iput v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1c

    .line 1145
    .line 1146
    move-object/from16 v35, v14

    .line 1147
    .line 1148
    :try_start_28
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 1149
    .line 1150
    .line 1151
    move-result-wide v13

    .line 1152
    iput-wide v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1153
    .line 1154
    const/4 v13, 0x3

    .line 1155
    iput v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 1156
    .line 1157
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v13

    .line 1161
    iput-object v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 1162
    .line 1163
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v13

    .line 1167
    iput-object v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 1168
    .line 1169
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1170
    .line 1171
    invoke-static/range {v23 .. v23}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v13

    .line 1175
    iput-object v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 1176
    .line 1177
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v13

    .line 1181
    iput-object v13, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 1182
    .line 1183
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v12

    .line 1187
    iput-object v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 1188
    .line 1189
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 1190
    .line 1191
    .line 1192
    move-result-wide v12

    .line 1193
    iput-wide v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 1194
    .line 1195
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 1196
    .line 1197
    .line 1198
    move-result-wide v12

    .line 1199
    iput-wide v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 1200
    .line 1201
    const/16 v12, 0xb

    .line 1202
    .line 1203
    iput v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 1204
    .line 1205
    const v12, -0x70708

    .line 1206
    .line 1207
    .line 1208
    iput v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 1209
    .line 1210
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 1211
    .line 1212
    iput v12, v11, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 1213
    .line 1214
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_1d

    .line 1215
    .line 1216
    .line 1217
    :catch_1d
    :goto_22
    :try_start_29
    iget-object v11, v2, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 1218
    .line 1219
    if-eqz v11, :cond_23

    .line 1220
    .line 1221
    iget-boolean v11, v11, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1222
    .line 1223
    if-eqz v11, :cond_23

    .line 1224
    .line 1225
    goto :goto_24

    .line 1226
    :cond_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1227
    .line 1228
    .line 1229
    move-result v11
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_27

    .line 1230
    if-nez v11, :cond_24

    .line 1231
    .line 1232
    goto :goto_24

    .line 1233
    :cond_24
    move/from16 v11, v30

    .line 1234
    .line 1235
    move/from16 v13, v31

    .line 1236
    .line 1237
    move-object/from16 v14, v35

    .line 1238
    .line 1239
    goto/16 :goto_21

    .line 1240
    .line 1241
    :catch_1e
    move-object/from16 v41, v12

    .line 1242
    .line 1243
    :goto_23
    move-object/from16 v35, v14

    .line 1244
    .line 1245
    goto :goto_24

    .line 1246
    :catch_1f
    move-object/from16 v38, v8

    .line 1247
    .line 1248
    move-object/from16 v43, v12

    .line 1249
    .line 1250
    goto :goto_23

    .line 1251
    :catch_20
    move-object/from16 v38, v8

    .line 1252
    .line 1253
    move-object/from16 v39, v10

    .line 1254
    .line 1255
    move-object/from16 v40, v12

    .line 1256
    .line 1257
    goto :goto_23

    .line 1258
    :catch_21
    move-object/from16 v38, v8

    .line 1259
    .line 1260
    move-object/from16 v39, v10

    .line 1261
    .line 1262
    move-object/from16 v40, v12

    .line 1263
    .line 1264
    goto :goto_24

    .line 1265
    :catch_22
    move-object/from16 v38, v8

    .line 1266
    .line 1267
    move-object/from16 v39, v10

    .line 1268
    .line 1269
    goto :goto_24

    .line 1270
    :catch_23
    move-object/from16 v38, v8

    .line 1271
    .line 1272
    goto :goto_24

    .line 1273
    :catch_24
    :cond_25
    move-object/from16 v4, v32

    .line 1274
    .line 1275
    :catch_25
    move-object/from16 v6, v37

    .line 1276
    .line 1277
    goto :goto_24

    .line 1278
    :catch_26
    move-object/from16 v4, v32

    .line 1279
    .line 1280
    move-object/from16 v6, v37

    .line 1281
    .line 1282
    const/4 v1, 0x0

    .line 1283
    :catch_27
    :goto_24
    if-eqz v1, :cond_26

    .line 1284
    .line 1285
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1286
    .line 1287
    .line 1288
    :cond_26
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 1289
    .line 1290
    if-eqz v1, :cond_27

    .line 1291
    .line 1292
    iget-boolean v1, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1293
    .line 1294
    if-eqz v1, :cond_27

    .line 1295
    .line 1296
    goto/16 :goto_1f

    .line 1297
    .line 1298
    :cond_27
    :goto_25
    move-object v7, v0

    .line 1299
    move-object/from16 v0, p0

    .line 1300
    .line 1301
    :goto_26
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1302
    .line 1303
    if-eqz v1, :cond_28

    .line 1304
    .line 1305
    goto/16 :goto_60

    .line 1306
    .line 1307
    :cond_28
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v1

    .line 1311
    iput-object v7, v1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 1312
    .line 1313
    const/4 v5, 0x0

    .line 1314
    iput-object v5, v1, Lcom/mycompany/app/data/book/DataBookSearch;->b:Ljava/util/List;

    .line 1315
    .line 1316
    :goto_27
    if-eqz v7, :cond_2b

    .line 1317
    .line 1318
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 1319
    .line 1320
    .line 1321
    move-result v1

    .line 1322
    if-nez v1, :cond_2b

    .line 1323
    .line 1324
    new-instance v1, Ljava/util/ArrayList;

    .line 1325
    .line 1326
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1330
    .line 1331
    .line 1332
    move-result v5

    .line 1333
    const/4 v8, 0x0

    .line 1334
    :goto_28
    if-ge v8, v5, :cond_2b

    .line 1335
    .line 1336
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v9

    .line 1340
    add-int/lit8 v8, v8, 0x1

    .line 1341
    .line 1342
    check-cast v9, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1343
    .line 1344
    iget-boolean v10, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1345
    .line 1346
    if-eqz v10, :cond_29

    .line 1347
    .line 1348
    goto/16 :goto_60

    .line 1349
    .line 1350
    :cond_29
    iget-wide v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 1351
    .line 1352
    cmp-long v10, v10, v24

    .line 1353
    .line 1354
    if-gez v10, :cond_2a

    .line 1355
    .line 1356
    goto :goto_28

    .line 1357
    :cond_2a
    const/4 v10, 0x0

    .line 1358
    iput-boolean v10, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 1359
    .line 1360
    iget-object v10, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 1361
    .line 1362
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    .line 1364
    .line 1365
    goto :goto_28

    .line 1366
    :cond_2b
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1367
    .line 1368
    if-eqz v1, :cond_2c

    .line 1369
    .line 1370
    goto/16 :goto_60

    .line 1371
    .line 1372
    :cond_2c
    move-object v5, v7

    .line 1373
    goto/16 :goto_2f

    .line 1374
    .line 1375
    :cond_2d
    move-object v4, v3

    .line 1376
    move-object v3, v2

    .line 1377
    move-object v2, v4

    .line 1378
    move-object/from16 v41, v1

    .line 1379
    .line 1380
    move-object/from16 v39, v5

    .line 1381
    .line 1382
    move-object/from16 v38, v6

    .line 1383
    .line 1384
    move-object v6, v8

    .line 1385
    move-object/from16 v43, v9

    .line 1386
    .line 1387
    move-object/from16 v40, v10

    .line 1388
    .line 1389
    move-object/from16 v34, v11

    .line 1390
    .line 1391
    move-object/from16 v33, v12

    .line 1392
    .line 1393
    move-object/from16 v35, v13

    .line 1394
    .line 1395
    move-object v4, v14

    .line 1396
    move-object/from16 v36, v15

    .line 1397
    .line 1398
    goto/16 :goto_2e

    .line 1399
    .line 1400
    :cond_2e
    move-object v4, v3

    .line 1401
    move-object v3, v2

    .line 1402
    move-object v2, v4

    .line 1403
    move-object/from16 v41, v1

    .line 1404
    .line 1405
    move-object/from16 v39, v5

    .line 1406
    .line 1407
    move-object/from16 v38, v6

    .line 1408
    .line 1409
    move-object v6, v8

    .line 1410
    move-object/from16 v43, v9

    .line 1411
    .line 1412
    move-object/from16 v40, v10

    .line 1413
    .line 1414
    move-object/from16 v34, v11

    .line 1415
    .line 1416
    move-object/from16 v33, v12

    .line 1417
    .line 1418
    move-object/from16 v35, v13

    .line 1419
    .line 1420
    move-object v4, v14

    .line 1421
    move-object/from16 v36, v15

    .line 1422
    .line 1423
    if-nez v29, :cond_37

    .line 1424
    .line 1425
    if-eqz v23, :cond_30

    .line 1426
    .line 1427
    sget-wide v8, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 1428
    .line 1429
    cmp-long v1, v8, v16

    .line 1430
    .line 1431
    if-eqz v1, :cond_2f

    .line 1432
    .line 1433
    goto :goto_29

    .line 1434
    :cond_2f
    const/4 v5, 0x0

    .line 1435
    goto :goto_2d

    .line 1436
    :cond_30
    :goto_29
    invoke-static {v3}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v1

    .line 1440
    iget-object v5, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 1441
    .line 1442
    if-eqz v5, :cond_36

    .line 1443
    .line 1444
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 1445
    .line 1446
    .line 1447
    move-result v1

    .line 1448
    if-nez v1, :cond_36

    .line 1449
    .line 1450
    new-instance v1, Ljava/util/ArrayList;

    .line 1451
    .line 1452
    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1453
    .line 1454
    .line 1455
    if-eqz v7, :cond_31

    .line 1456
    .line 1457
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 1458
    .line 1459
    .line 1460
    move-result v8

    .line 1461
    goto :goto_2a

    .line 1462
    :cond_31
    const/4 v8, 0x0

    .line 1463
    :goto_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1464
    .line 1465
    .line 1466
    move-result v9

    .line 1467
    const/4 v10, 0x0

    .line 1468
    const/4 v11, 0x0

    .line 1469
    :goto_2b
    if-ge v11, v9, :cond_36

    .line 1470
    .line 1471
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v12

    .line 1475
    add-int/lit8 v11, v11, 0x1

    .line 1476
    .line 1477
    check-cast v12, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1478
    .line 1479
    iget-boolean v13, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1480
    .line 1481
    if-eqz v13, :cond_32

    .line 1482
    .line 1483
    goto/16 :goto_60

    .line 1484
    .line 1485
    :cond_32
    iget-wide v13, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 1486
    .line 1487
    cmp-long v13, v13, v24

    .line 1488
    .line 1489
    if-gez v13, :cond_33

    .line 1490
    .line 1491
    goto :goto_2b

    .line 1492
    :cond_33
    if-ge v10, v8, :cond_34

    .line 1493
    .line 1494
    iget-wide v13, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1495
    .line 1496
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v13

    .line 1500
    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1501
    .line 1502
    .line 1503
    move-result v13

    .line 1504
    iput-boolean v13, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 1505
    .line 1506
    if-eqz v13, :cond_35

    .line 1507
    .line 1508
    add-int/lit8 v10, v10, 0x1

    .line 1509
    .line 1510
    goto :goto_2c

    .line 1511
    :cond_34
    const/4 v13, 0x0

    .line 1512
    iput-boolean v13, v12, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 1513
    .line 1514
    :cond_35
    :goto_2c
    invoke-static {v12}, Lcom/mycompany/app/list/book/ListBookDown;->r(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 1515
    .line 1516
    .line 1517
    iget-object v13, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 1518
    .line 1519
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    .line 1521
    .line 1522
    goto :goto_2b

    .line 1523
    :cond_36
    :goto_2d
    iget-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 1524
    .line 1525
    if-eqz v1, :cond_38

    .line 1526
    .line 1527
    goto/16 :goto_60

    .line 1528
    .line 1529
    :cond_37
    :goto_2e
    const/4 v5, 0x0

    .line 1530
    :cond_38
    :goto_2f
    if-nez v21, :cond_39

    .line 1531
    .line 1532
    if-nez v29, :cond_3a

    .line 1533
    .line 1534
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 1535
    .line 1536
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1537
    .line 1538
    .line 1539
    move-result v1

    .line 1540
    if-eqz v1, :cond_39

    .line 1541
    .line 1542
    goto :goto_30

    .line 1543
    :cond_39
    move-object/from16 v42, v2

    .line 1544
    .line 1545
    move-object v4, v3

    .line 1546
    move-object v2, v0

    .line 1547
    goto/16 :goto_4f

    .line 1548
    .line 1549
    :cond_3a
    :goto_30
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 1550
    .line 1551
    if-eqz v1, :cond_3c

    .line 1552
    .line 1553
    sget-wide v7, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 1554
    .line 1555
    cmp-long v7, v7, v16

    .line 1556
    .line 1557
    if-eqz v7, :cond_3b

    .line 1558
    .line 1559
    goto :goto_31

    .line 1560
    :cond_3b
    move-object/from16 v42, v2

    .line 1561
    .line 1562
    move-object/from16 v32, v4

    .line 1563
    .line 1564
    move-object/from16 v37, v6

    .line 1565
    .line 1566
    move-object v2, v0

    .line 1567
    move-object v4, v3

    .line 1568
    goto/16 :goto_4b

    .line 1569
    .line 1570
    :cond_3c
    :goto_31
    const-string v11, "_secret=? AND _time>?"

    .line 1571
    .line 1572
    if-eqz v1, :cond_3d

    .line 1573
    .line 1574
    move-object/from16 v1, v27

    .line 1575
    .line 1576
    goto :goto_32

    .line 1577
    :cond_3d
    move-object/from16 v1, v26

    .line 1578
    .line 1579
    :goto_32
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v7

    .line 1583
    filled-new-array {v1, v7}, [Ljava/lang/String;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v12

    .line 1587
    :try_start_2a
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v1

    .line 1591
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v8

    .line 1595
    const-string v9, "DbBookDown_table"

    .line 1596
    .line 1597
    const/4 v10, 0x0

    .line 1598
    const/4 v13, 0x0

    .line 1599
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_3d

    .line 1603
    if-eqz v1, :cond_4f

    .line 1604
    .line 1605
    :try_start_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1606
    .line 1607
    .line 1608
    move-result v7

    .line 1609
    if-eqz v7, :cond_4f

    .line 1610
    .line 1611
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1612
    .line 1613
    .line 1614
    move-result v7

    .line 1615
    move-object/from16 v8, v33

    .line 1616
    .line 1617
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1618
    .line 1619
    .line 1620
    move-result v8

    .line 1621
    move-object/from16 v9, v34

    .line 1622
    .line 1623
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1624
    .line 1625
    .line 1626
    move-result v9
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_3c

    .line 1627
    move-object/from16 v14, v35

    .line 1628
    .line 1629
    :try_start_2c
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1630
    .line 1631
    .line 1632
    move-result v10

    .line 1633
    move-object/from16 v11, v36

    .line 1634
    .line 1635
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1636
    .line 1637
    .line 1638
    move-result v11

    .line 1639
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1640
    .line 1641
    .line 1642
    move-result v12
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_3b

    .line 1643
    move-object/from16 v13, v38

    .line 1644
    .line 1645
    :try_start_2d
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1646
    .line 1647
    .line 1648
    move-result v15
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_3a

    .line 1649
    move-object/from16 v42, v2

    .line 1650
    .line 1651
    move-object/from16 v23, v5

    .line 1652
    .line 1653
    move-object/from16 v5, v39

    .line 1654
    .line 1655
    :try_start_2e
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1656
    .line 1657
    .line 1658
    move-result v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_39

    .line 1659
    move-object/from16 v39, v5

    .line 1660
    .line 1661
    move-object/from16 v35, v14

    .line 1662
    .line 1663
    move-object/from16 v14, v40

    .line 1664
    .line 1665
    :try_start_2f
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1666
    .line 1667
    .line 1668
    move-result v5
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_38

    .line 1669
    move-object/from16 v38, v13

    .line 1670
    .line 1671
    move-object/from16 v40, v14

    .line 1672
    .line 1673
    move-object/from16 v14, v41

    .line 1674
    .line 1675
    :try_start_30
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1676
    .line 1677
    .line 1678
    move-result v13
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_37

    .line 1679
    move-object/from16 v41, v14

    .line 1680
    .line 1681
    :try_start_31
    const-string v14, "_read"

    .line 1682
    .line 1683
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1684
    .line 1685
    .line 1686
    move-result v14
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_36

    .line 1687
    move-object/from16 v32, v4

    .line 1688
    .line 1689
    move-object/from16 v37, v6

    .line 1690
    .line 1691
    move-object/from16 v6, v43

    .line 1692
    .line 1693
    :try_start_32
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1694
    .line 1695
    .line 1696
    move-result v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_35

    .line 1697
    move-object/from16 v43, v6

    .line 1698
    .line 1699
    :try_start_33
    const-string v6, "_fast"

    .line 1700
    .line 1701
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1702
    .line 1703
    .line 1704
    move-result v6
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_34

    .line 1705
    :try_start_34
    const-string v0, "_rsv4"

    .line 1706
    .line 1707
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1708
    .line 1709
    .line 1710
    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_33

    .line 1711
    const/16 v29, 0x1

    .line 1712
    .line 1713
    :goto_33
    move/from16 v30, v0

    .line 1714
    .line 1715
    :try_start_35
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1716
    .line 1717
    .line 1718
    move-result-object v0

    .line 1719
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1720
    .line 1721
    .line 1722
    move-result v31

    .line 1723
    if-eqz v31, :cond_3e

    .line 1724
    .line 1725
    move/from16 v34, v2

    .line 1726
    .line 1727
    move/from16 v31, v5

    .line 1728
    .line 1729
    goto :goto_35

    .line 1730
    :cond_3e
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v31

    .line 1734
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1735
    .line 1736
    .line 1737
    move-result v33

    .line 1738
    if-eqz v33, :cond_3f

    .line 1739
    .line 1740
    invoke-static {v3, v0}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v31

    .line 1744
    :cond_3f
    move-object/from16 v33, v31

    .line 1745
    .line 1746
    goto :goto_34

    .line 1747
    :catch_28
    move/from16 v34, v2

    .line 1748
    .line 1749
    move/from16 v33, v4

    .line 1750
    .line 1751
    move/from16 v31, v5

    .line 1752
    .line 1753
    move/from16 v0, v30

    .line 1754
    .line 1755
    move-object/from16 v2, p0

    .line 1756
    .line 1757
    goto :goto_36

    .line 1758
    :goto_34
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 1759
    .line 1760
    .line 1761
    move-result v31

    .line 1762
    if-nez v31, :cond_40

    .line 1763
    .line 1764
    invoke-static/range {v33 .. v33}, Lcom/mycompany/app/main/MainUtil;->P0(Ljava/lang/String;)I

    .line 1765
    .line 1766
    .line 1767
    move-result v31
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_28

    .line 1768
    :cond_40
    move/from16 v34, v2

    .line 1769
    .line 1770
    move/from16 v2, v31

    .line 1771
    .line 1772
    move/from16 v31, v5

    .line 1773
    .line 1774
    :try_start_36
    sget v5, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 1775
    .line 1776
    if-eqz v5, :cond_41

    .line 1777
    .line 1778
    if-eq v5, v2, :cond_41

    .line 1779
    .line 1780
    :catch_29
    :goto_35
    move-object/from16 v2, p0

    .line 1781
    .line 1782
    move/from16 v33, v4

    .line 1783
    .line 1784
    move/from16 v0, v30

    .line 1785
    .line 1786
    :goto_36
    move-object v4, v3

    .line 1787
    goto/16 :goto_43

    .line 1788
    .line 1789
    :cond_41
    new-instance v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 1790
    .line 1791
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1792
    .line 1793
    .line 1794
    iput v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_29

    .line 1795
    .line 1796
    move-object/from16 v50, v3

    .line 1797
    .line 1798
    :try_start_37
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 1799
    .line 1800
    .line 1801
    move-result-wide v2

    .line 1802
    iput-wide v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1803
    .line 1804
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 1805
    .line 1806
    .line 1807
    move-result v2

    .line 1808
    iput v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 1809
    .line 1810
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v2

    .line 1814
    iput-object v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 1815
    .line 1816
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1817
    .line 1818
    .line 1819
    move-result-object v2

    .line 1820
    iput-object v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 1821
    .line 1822
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v2

    .line 1826
    iput-object v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 1827
    .line 1828
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v2

    .line 1832
    iput-object v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 1833
    .line 1834
    iput-object v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 1835
    .line 1836
    move-object/from16 v0, v33

    .line 1837
    .line 1838
    iput-object v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 1839
    .line 1840
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 1841
    .line 1842
    .line 1843
    move-result-wide v2

    .line 1844
    iput-wide v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 1845
    .line 1846
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 1847
    .line 1848
    .line 1849
    move-result-wide v2

    .line 1850
    iput-wide v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 1851
    .line 1852
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 1853
    .line 1854
    .line 1855
    move-result-wide v2

    .line 1856
    iput-wide v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 1857
    .line 1858
    iget v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 1859
    .line 1860
    const/4 v2, 0x5

    .line 1861
    if-ne v0, v2, :cond_42

    .line 1862
    .line 1863
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 1864
    .line 1865
    .line 1866
    move-result v0

    .line 1867
    iput v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 1868
    .line 1869
    goto :goto_39

    .line 1870
    :catch_2a
    move-object/from16 v2, p0

    .line 1871
    .line 1872
    move/from16 v33, v4

    .line 1873
    .line 1874
    :goto_37
    move/from16 v0, v30

    .line 1875
    .line 1876
    :goto_38
    move-object/from16 v4, v50

    .line 1877
    .line 1878
    goto/16 :goto_43

    .line 1879
    .line 1880
    :cond_42
    :goto_39
    iget v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_2a

    .line 1881
    .line 1882
    const/4 v2, 0x1

    .line 1883
    if-ne v0, v2, :cond_4a

    .line 1884
    .line 1885
    :try_start_38
    iget-wide v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_2d

    .line 1886
    .line 1887
    cmp-long v0, v2, v16

    .line 1888
    .line 1889
    if-nez v0, :cond_49

    .line 1890
    .line 1891
    if-eqz v29, :cond_44

    .line 1892
    .line 1893
    if-nez v23, :cond_43

    .line 1894
    .line 1895
    :try_start_39
    invoke-static/range {v50 .. v50}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v0

    .line 1899
    iget-object v0, v0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_2b

    .line 1900
    .line 1901
    move-object/from16 v23, v0

    .line 1902
    .line 1903
    :cond_43
    const/16 v29, 0x0

    .line 1904
    .line 1905
    goto :goto_3a

    .line 1906
    :catch_2b
    move-object/from16 v2, p0

    .line 1907
    .line 1908
    move/from16 v33, v4

    .line 1909
    .line 1910
    move/from16 v0, v30

    .line 1911
    .line 1912
    move-object/from16 v4, v50

    .line 1913
    .line 1914
    const/16 v29, 0x0

    .line 1915
    .line 1916
    goto/16 :goto_43

    .line 1917
    .line 1918
    :cond_44
    :goto_3a
    if-eqz v23, :cond_49

    .line 1919
    .line 1920
    :try_start_3a
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    .line 1921
    .line 1922
    .line 1923
    move-result v0

    .line 1924
    if-nez v0, :cond_49

    .line 1925
    .line 1926
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v0

    .line 1930
    :cond_45
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1931
    .line 1932
    .line 1933
    move-result v2

    .line 1934
    if-eqz v2, :cond_49

    .line 1935
    .line 1936
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1937
    .line 1938
    .line 1939
    move-result-object v2

    .line 1940
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_2d

    .line 1941
    .line 1942
    if-eqz v2, :cond_45

    .line 1943
    .line 1944
    move/from16 v33, v4

    .line 1945
    .line 1946
    :try_start_3b
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1947
    .line 1948
    move-wide/from16 v44, v3

    .line 1949
    .line 1950
    iget-wide v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 1951
    .line 1952
    cmp-long v3, v44, v3

    .line 1953
    .line 1954
    if-eqz v3, :cond_46

    .line 1955
    .line 1956
    move/from16 v4, v33

    .line 1957
    .line 1958
    goto :goto_3b

    .line 1959
    :cond_46
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 1960
    .line 1961
    iput-wide v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 1962
    .line 1963
    iget-wide v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J

    .line 1964
    .line 1965
    iput-wide v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->C:J
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_2c

    .line 1966
    .line 1967
    goto :goto_3d

    .line 1968
    :catch_2c
    :goto_3c
    move-object/from16 v2, p0

    .line 1969
    .line 1970
    goto :goto_37

    .line 1971
    :catch_2d
    move/from16 v33, v4

    .line 1972
    .line 1973
    goto :goto_3c

    .line 1974
    :cond_47
    :goto_3d
    move/from16 v0, v30

    .line 1975
    .line 1976
    :cond_48
    :goto_3e
    move-object/from16 v4, v50

    .line 1977
    .line 1978
    goto :goto_42

    .line 1979
    :cond_49
    move/from16 v33, v4

    .line 1980
    .line 1981
    goto :goto_3d

    .line 1982
    :cond_4a
    move/from16 v33, v4

    .line 1983
    .line 1984
    const/4 v2, 0x3

    .line 1985
    if-eq v0, v2, :cond_4d

    .line 1986
    .line 1987
    const/4 v2, 0x4

    .line 1988
    if-eq v0, v2, :cond_4d

    .line 1989
    .line 1990
    const/4 v2, 0x5

    .line 1991
    if-ne v0, v2, :cond_4b

    .line 1992
    .line 1993
    move/from16 v0, v30

    .line 1994
    .line 1995
    goto :goto_40

    .line 1996
    :cond_4b
    const/4 v3, 0x2

    .line 1997
    if-ne v0, v3, :cond_47

    .line 1998
    .line 1999
    move/from16 v0, v30

    .line 2000
    .line 2001
    :try_start_3c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 2002
    .line 2003
    .line 2004
    move-result v3

    .line 2005
    const/4 v4, 0x1

    .line 2006
    if-ne v3, v4, :cond_4c

    .line 2007
    .line 2008
    const/4 v3, 0x1

    .line 2009
    goto :goto_3f

    .line 2010
    :cond_4c
    const/4 v3, 0x0

    .line 2011
    :goto_3f
    iput-boolean v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 2012
    .line 2013
    goto :goto_3e

    .line 2014
    :catch_2e
    move-object/from16 v2, p0

    .line 2015
    .line 2016
    goto/16 :goto_38

    .line 2017
    .line 2018
    :cond_4d
    move/from16 v0, v30

    .line 2019
    .line 2020
    const/4 v2, 0x5

    .line 2021
    :goto_40
    iget-wide v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_2e

    .line 2022
    .line 2023
    cmp-long v3, v3, v16

    .line 2024
    .line 2025
    if-nez v3, :cond_48

    .line 2026
    .line 2027
    :try_start_3d
    iget-object v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_30

    .line 2028
    .line 2029
    move-object/from16 v4, v50

    .line 2030
    .line 2031
    :try_start_3e
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    .line 2032
    .line 2033
    .line 2034
    move-result-wide v2

    .line 2035
    iput-wide v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 2036
    .line 2037
    goto :goto_42

    .line 2038
    :catch_2f
    :goto_41
    move-object/from16 v2, p0

    .line 2039
    .line 2040
    goto :goto_43

    .line 2041
    :catch_30
    move-object/from16 v4, v50

    .line 2042
    .line 2043
    goto :goto_41

    .line 2044
    :goto_42
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->Z0(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 2045
    .line 2046
    .line 2047
    invoke-static {v5}, Lcom/mycompany/app/list/book/ListBookDown;->r(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_2f

    .line 2048
    .line 2049
    .line 2050
    move-object/from16 v2, p0

    .line 2051
    .line 2052
    :try_start_3f
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2053
    .line 2054
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_31

    .line 2055
    .line 2056
    .line 2057
    :catch_31
    :goto_43
    :try_start_40
    iget-boolean v3, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 2058
    .line 2059
    if-nez v3, :cond_50

    .line 2060
    .line 2061
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2062
    .line 2063
    .line 2064
    move-result v3
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_32

    .line 2065
    if-nez v3, :cond_4e

    .line 2066
    .line 2067
    goto/16 :goto_49

    .line 2068
    .line 2069
    :cond_4e
    move-object v3, v4

    .line 2070
    move/from16 v5, v31

    .line 2071
    .line 2072
    move/from16 v4, v33

    .line 2073
    .line 2074
    move/from16 v2, v34

    .line 2075
    .line 2076
    goto/16 :goto_33

    .line 2077
    .line 2078
    :catch_32
    :goto_44
    move-object v5, v1

    .line 2079
    goto/16 :goto_48

    .line 2080
    .line 2081
    :catch_33
    move-object/from16 v2, p0

    .line 2082
    .line 2083
    :goto_45
    move-object v4, v3

    .line 2084
    goto :goto_44

    .line 2085
    :catch_34
    :goto_46
    move-object v2, v0

    .line 2086
    goto :goto_45

    .line 2087
    :catch_35
    move-object v2, v0

    .line 2088
    move-object v4, v3

    .line 2089
    move-object/from16 v43, v6

    .line 2090
    .line 2091
    goto :goto_44

    .line 2092
    :catch_36
    move-object v2, v0

    .line 2093
    move-object/from16 v32, v4

    .line 2094
    .line 2095
    move-object/from16 v37, v6

    .line 2096
    .line 2097
    goto :goto_45

    .line 2098
    :catch_37
    move-object v2, v0

    .line 2099
    move-object/from16 v32, v4

    .line 2100
    .line 2101
    move-object/from16 v37, v6

    .line 2102
    .line 2103
    move-object/from16 v41, v14

    .line 2104
    .line 2105
    goto :goto_45

    .line 2106
    :catch_38
    move-object v2, v0

    .line 2107
    move-object/from16 v32, v4

    .line 2108
    .line 2109
    move-object/from16 v37, v6

    .line 2110
    .line 2111
    move-object/from16 v38, v13

    .line 2112
    .line 2113
    move-object/from16 v40, v14

    .line 2114
    .line 2115
    goto :goto_45

    .line 2116
    :catch_39
    move-object v2, v0

    .line 2117
    move-object/from16 v32, v4

    .line 2118
    .line 2119
    move-object/from16 v39, v5

    .line 2120
    .line 2121
    move-object/from16 v37, v6

    .line 2122
    .line 2123
    move-object/from16 v38, v13

    .line 2124
    .line 2125
    move-object/from16 v35, v14

    .line 2126
    .line 2127
    goto :goto_45

    .line 2128
    :catch_3a
    move-object/from16 v42, v2

    .line 2129
    .line 2130
    move-object/from16 v32, v4

    .line 2131
    .line 2132
    move-object/from16 v37, v6

    .line 2133
    .line 2134
    move-object/from16 v38, v13

    .line 2135
    .line 2136
    :goto_47
    move-object/from16 v35, v14

    .line 2137
    .line 2138
    goto :goto_46

    .line 2139
    :catch_3b
    move-object/from16 v42, v2

    .line 2140
    .line 2141
    move-object/from16 v32, v4

    .line 2142
    .line 2143
    move-object/from16 v37, v6

    .line 2144
    .line 2145
    goto :goto_47

    .line 2146
    :catch_3c
    move-object/from16 v42, v2

    .line 2147
    .line 2148
    move-object/from16 v32, v4

    .line 2149
    .line 2150
    move-object/from16 v37, v6

    .line 2151
    .line 2152
    goto :goto_46

    .line 2153
    :cond_4f
    move-object/from16 v42, v2

    .line 2154
    .line 2155
    move-object/from16 v32, v4

    .line 2156
    .line 2157
    move-object/from16 v37, v6

    .line 2158
    .line 2159
    move-object v2, v0

    .line 2160
    move-object v4, v3

    .line 2161
    goto :goto_49

    .line 2162
    :catch_3d
    move-object/from16 v42, v2

    .line 2163
    .line 2164
    move-object/from16 v32, v4

    .line 2165
    .line 2166
    move-object/from16 v37, v6

    .line 2167
    .line 2168
    move-object v2, v0

    .line 2169
    move-object v4, v3

    .line 2170
    const/4 v5, 0x0

    .line 2171
    :goto_48
    move-object v1, v5

    .line 2172
    :cond_50
    :goto_49
    if-eqz v1, :cond_51

    .line 2173
    .line 2174
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2175
    .line 2176
    .line 2177
    :cond_51
    iget-boolean v0, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 2178
    .line 2179
    if-eqz v0, :cond_52

    .line 2180
    .line 2181
    :goto_4a
    move-object v0, v2

    .line 2182
    goto/16 :goto_60

    .line 2183
    .line 2184
    :cond_52
    :goto_4b
    sget v0, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 2185
    .line 2186
    if-eqz v0, :cond_53

    .line 2187
    .line 2188
    const/16 v13, 0x8

    .line 2189
    .line 2190
    if-ne v0, v13, :cond_5b

    .line 2191
    .line 2192
    :cond_53
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 2193
    .line 2194
    if-eqz v0, :cond_54

    .line 2195
    .line 2196
    sget-wide v5, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 2197
    .line 2198
    cmp-long v1, v5, v16

    .line 2199
    .line 2200
    if-eqz v1, :cond_5b

    .line 2201
    .line 2202
    :cond_54
    const-string v8, "_secret=? AND _time>?"

    .line 2203
    .line 2204
    if-eqz v0, :cond_55

    .line 2205
    .line 2206
    move-object/from16 v0, v27

    .line 2207
    .line 2208
    goto :goto_4c

    .line 2209
    :cond_55
    move-object/from16 v0, v26

    .line 2210
    .line 2211
    :goto_4c
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 2212
    .line 2213
    .line 2214
    move-result-object v1

    .line 2215
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v9

    .line 2219
    :try_start_41
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookPage;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPage;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v0

    .line 2223
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v5

    .line 2227
    const-string v6, "DbBookPage_table"

    .line 2228
    .line 2229
    const/4 v7, 0x0

    .line 2230
    const/4 v10, 0x0

    .line 2231
    invoke-static/range {v5 .. v10}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v5
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_40

    .line 2235
    if-eqz v5, :cond_59

    .line 2236
    .line 2237
    :try_start_42
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2238
    .line 2239
    .line 2240
    move-result v0

    .line 2241
    if-eqz v0, :cond_59

    .line 2242
    .line 2243
    move-object/from16 v0, v32

    .line 2244
    .line 2245
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2246
    .line 2247
    .line 2248
    move-result v0

    .line 2249
    move-object/from16 v6, v37

    .line 2250
    .line 2251
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2252
    .line 2253
    .line 2254
    move-result v1

    .line 2255
    move-object/from16 v8, v38

    .line 2256
    .line 2257
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2258
    .line 2259
    .line 2260
    move-result v3

    .line 2261
    move-object/from16 v10, v39

    .line 2262
    .line 2263
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2264
    .line 2265
    .line 2266
    move-result v6

    .line 2267
    move-object/from16 v12, v40

    .line 2268
    .line 2269
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2270
    .line 2271
    .line 2272
    move-result v7

    .line 2273
    move-object/from16 v14, v35

    .line 2274
    .line 2275
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2276
    .line 2277
    .line 2278
    move-result v8

    .line 2279
    move-object/from16 v12, v43

    .line 2280
    .line 2281
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2282
    .line 2283
    .line 2284
    move-result v9

    .line 2285
    move-object/from16 v12, v41

    .line 2286
    .line 2287
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2288
    .line 2289
    .line 2290
    move-result v10
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_41

    .line 2291
    :cond_56
    :try_start_43
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v11

    .line 2295
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2296
    .line 2297
    .line 2298
    move-result v12

    .line 2299
    if-eqz v12, :cond_57

    .line 2300
    .line 2301
    :catch_3e
    const/4 v14, 0x3

    .line 2302
    goto :goto_4d

    .line 2303
    :cond_57
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v12

    .line 2307
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2308
    .line 2309
    .line 2310
    move-result v13

    .line 2311
    if-eqz v13, :cond_58

    .line 2312
    .line 2313
    invoke-static {v4, v11}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v12

    .line 2317
    :cond_58
    new-instance v13, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2318
    .line 2319
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 2320
    .line 2321
    .line 2322
    const/16 v14, 0x8

    .line 2323
    .line 2324
    iput v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 2325
    .line 2326
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 2327
    .line 2328
    .line 2329
    move-result-wide v14

    .line 2330
    iput-wide v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_3e

    .line 2331
    .line 2332
    const/4 v14, 0x3

    .line 2333
    :try_start_44
    iput v14, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 2334
    .line 2335
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2336
    .line 2337
    .line 2338
    move-result-object v15

    .line 2339
    iput-object v15, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 2340
    .line 2341
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v15

    .line 2345
    iput-object v15, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 2346
    .line 2347
    iput-object v11, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 2348
    .line 2349
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v12

    .line 2353
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 2354
    .line 2355
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v12

    .line 2359
    iput-object v12, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->q:Ljava/lang/String;

    .line 2360
    .line 2361
    invoke-static {v11}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 2362
    .line 2363
    .line 2364
    move-result-object v11

    .line 2365
    iput-object v11, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 2366
    .line 2367
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 2368
    .line 2369
    .line 2370
    move-result-wide v11

    .line 2371
    iput-wide v11, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 2372
    .line 2373
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 2374
    .line 2375
    .line 2376
    move-result-wide v11

    .line 2377
    iput-wide v11, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 2378
    .line 2379
    const/16 v11, 0xb

    .line 2380
    .line 2381
    iput v11, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 2382
    .line 2383
    const v11, -0x70708

    .line 2384
    .line 2385
    .line 2386
    iput v11, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 2387
    .line 2388
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 2389
    .line 2390
    iput v11, v13, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 2391
    .line 2392
    invoke-static {v13}, Lcom/mycompany/app/list/book/ListBookDown;->r(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 2393
    .line 2394
    .line 2395
    iget-object v11, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2396
    .line 2397
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_3f

    .line 2398
    .line 2399
    .line 2400
    :catch_3f
    :goto_4d
    :try_start_45
    iget-boolean v11, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 2401
    .line 2402
    if-nez v11, :cond_59

    .line 2403
    .line 2404
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 2405
    .line 2406
    .line 2407
    move-result v11
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_41

    .line 2408
    if-nez v11, :cond_56

    .line 2409
    .line 2410
    goto :goto_4e

    .line 2411
    :catch_40
    const/4 v5, 0x0

    .line 2412
    :catch_41
    :cond_59
    :goto_4e
    if-eqz v5, :cond_5a

    .line 2413
    .line 2414
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2415
    .line 2416
    .line 2417
    :cond_5a
    iget-boolean v0, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 2418
    .line 2419
    if-eqz v0, :cond_5b

    .line 2420
    .line 2421
    goto/16 :goto_4a

    .line 2422
    .line 2423
    :cond_5b
    :goto_4f
    new-instance v0, Ljava/util/ArrayList;

    .line 2424
    .line 2425
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2426
    .line 2427
    .line 2428
    iput-object v0, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 2429
    .line 2430
    new-instance v0, Ljava/util/ArrayList;

    .line 2431
    .line 2432
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2433
    .line 2434
    .line 2435
    iput-object v0, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->n:Ljava/util/ArrayList;

    .line 2436
    .line 2437
    if-nez v21, :cond_5c

    .line 2438
    .line 2439
    sget v0, Lcom/mycompany/app/pref/PrefList;->a1:I

    .line 2440
    .line 2441
    if-eqz v0, :cond_5c

    .line 2442
    .line 2443
    const/4 v0, 0x1

    .line 2444
    goto :goto_50

    .line 2445
    :cond_5c
    const/4 v0, 0x0

    .line 2446
    :goto_50
    if-eqz v0, :cond_5d

    .line 2447
    .line 2448
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 2449
    .line 2450
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2451
    .line 2452
    .line 2453
    const/4 v10, 0x0

    .line 2454
    iput v10, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 2455
    .line 2456
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 2457
    .line 2458
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2459
    .line 2460
    .line 2461
    :cond_5d
    if-eqz v22, :cond_62

    .line 2462
    .line 2463
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2464
    .line 2465
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2466
    .line 2467
    .line 2468
    move-result v1

    .line 2469
    if-nez v1, :cond_62

    .line 2470
    .line 2471
    new-instance v1, Ljava/util/ArrayList;

    .line 2472
    .line 2473
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2474
    .line 2475
    .line 2476
    iget-object v3, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2477
    .line 2478
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2479
    .line 2480
    .line 2481
    move-result v5

    .line 2482
    const/4 v6, 0x0

    .line 2483
    :goto_51
    if-ge v6, v5, :cond_61

    .line 2484
    .line 2485
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2486
    .line 2487
    .line 2488
    move-result-object v7

    .line 2489
    add-int/lit8 v6, v6, 0x1

    .line 2490
    .line 2491
    check-cast v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2492
    .line 2493
    iget-boolean v8, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 2494
    .line 2495
    if-eqz v8, :cond_5e

    .line 2496
    .line 2497
    goto/16 :goto_4a

    .line 2498
    .line 2499
    :cond_5e
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 2500
    .line 2501
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2502
    .line 2503
    .line 2504
    move-result v8

    .line 2505
    if-eqz v8, :cond_5f

    .line 2506
    .line 2507
    goto :goto_51

    .line 2508
    :cond_5f
    iget-object v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 2509
    .line 2510
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2511
    .line 2512
    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 2513
    .line 2514
    .line 2515
    move-result-object v8

    .line 2516
    move-object/from16 v9, v28

    .line 2517
    .line 2518
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2519
    .line 2520
    .line 2521
    move-result v8

    .line 2522
    if-eqz v8, :cond_60

    .line 2523
    .line 2524
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2525
    .line 2526
    .line 2527
    :cond_60
    move-object/from16 v28, v9

    .line 2528
    .line 2529
    goto :goto_51

    .line 2530
    :cond_61
    iput-object v1, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2531
    .line 2532
    :cond_62
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2533
    .line 2534
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2535
    .line 2536
    .line 2537
    move-result v1

    .line 2538
    if-nez v1, :cond_71

    .line 2539
    .line 2540
    if-nez v21, :cond_63

    .line 2541
    .line 2542
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2543
    .line 2544
    sget v3, Lcom/mycompany/app/pref/PrefList;->a1:I

    .line 2545
    .line 2546
    sget v5, Lcom/mycompany/app/pref/PrefList;->b1:I

    .line 2547
    .line 2548
    sget-boolean v6, Lcom/mycompany/app/pref/PrefList;->c1:Z

    .line 2549
    .line 2550
    invoke-static {v3, v5, v6}, Lcom/mycompany/app/main/MainUtil;->g8(IIZ)Ljava/util/Comparator;

    .line 2551
    .line 2552
    .line 2553
    move-result-object v3

    .line 2554
    :try_start_46
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_42

    .line 2555
    .line 2556
    .line 2557
    :catch_42
    :cond_63
    iget-boolean v1, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->s:Z

    .line 2558
    .line 2559
    if-eqz v1, :cond_64

    .line 2560
    .line 2561
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2562
    .line 2563
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2564
    .line 2565
    .line 2566
    move-result v1

    .line 2567
    new-array v3, v1, [Z

    .line 2568
    .line 2569
    iput-object v3, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->q:[Z

    .line 2570
    .line 2571
    move v10, v1

    .line 2572
    goto :goto_52

    .line 2573
    :cond_64
    const/4 v10, 0x0

    .line 2574
    :goto_52
    iget-object v1, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2575
    .line 2576
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2577
    .line 2578
    .line 2579
    move-result v9

    .line 2580
    const/4 v3, -0x1

    .line 2581
    const/4 v5, -0x1

    .line 2582
    move v6, v5

    .line 2583
    const/4 v5, 0x0

    .line 2584
    const/4 v7, 0x0

    .line 2585
    const/4 v8, 0x0

    .line 2586
    const/4 v11, 0x0

    .line 2587
    const/4 v12, 0x0

    .line 2588
    const/4 v13, 0x0

    .line 2589
    const/4 v14, 0x0

    .line 2590
    :goto_53
    if-ge v14, v9, :cond_70

    .line 2591
    .line 2592
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2593
    .line 2594
    .line 2595
    move-result-object v15

    .line 2596
    add-int/lit8 v14, v14, 0x1

    .line 2597
    .line 2598
    check-cast v15, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2599
    .line 2600
    move/from16 v16, v0

    .line 2601
    .line 2602
    iget-boolean v0, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 2603
    .line 2604
    if-eqz v0, :cond_65

    .line 2605
    .line 2606
    goto/16 :goto_4a

    .line 2607
    .line 2608
    :cond_65
    if-nez v15, :cond_66

    .line 2609
    .line 2610
    :goto_54
    move/from16 v0, v16

    .line 2611
    .line 2612
    goto :goto_53

    .line 2613
    :cond_66
    iget v0, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 2614
    .line 2615
    move-object/from16 v17, v1

    .line 2616
    .line 2617
    const/16 v1, 0x8

    .line 2618
    .line 2619
    if-ne v0, v1, :cond_67

    .line 2620
    .line 2621
    iget-object v0, v2, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->n:Ljava/util/ArrayList;

    .line 2622
    .line 2623
    iget-wide v1, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2624
    .line 2625
    neg-long v1, v1

    .line 2626
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2627
    .line 2628
    .line 2629
    move-result-object v1

    .line 2630
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2631
    .line 2632
    .line 2633
    move-object/from16 v0, p0

    .line 2634
    .line 2635
    move/from16 v18, v8

    .line 2636
    .line 2637
    move v2, v9

    .line 2638
    goto :goto_55

    .line 2639
    :cond_67
    move-object v0, v2

    .line 2640
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->n:Ljava/util/ArrayList;

    .line 2641
    .line 2642
    move/from16 v18, v8

    .line 2643
    .line 2644
    move v2, v9

    .line 2645
    iget-wide v8, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2646
    .line 2647
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v8

    .line 2651
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2652
    .line 2653
    .line 2654
    :goto_55
    if-eqz v16, :cond_6b

    .line 2655
    .line 2656
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2657
    .line 2658
    .line 2659
    move-result v1

    .line 2660
    if-nez v1, :cond_68

    .line 2661
    .line 2662
    iget-object v1, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 2663
    .line 2664
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2665
    .line 2666
    .line 2667
    move-result v1

    .line 2668
    if-nez v1, :cond_68

    .line 2669
    .line 2670
    move-object/from16 v1, v42

    .line 2671
    .line 2672
    invoke-static {v1, v5, v3, v6}, Lcom/mycompany/app/list/book/ListBookDown;->p(Lcom/mycompany/app/list/book/ListBookDown;Ljava/lang/String;II)Ljava/lang/String;

    .line 2673
    .line 2674
    .line 2675
    move-result-object v5

    .line 2676
    move-object/from16 v50, v4

    .line 2677
    .line 2678
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 2679
    .line 2680
    move-object v3, v1

    .line 2681
    move v6, v11

    .line 2682
    move v7, v12

    .line 2683
    move v8, v13

    .line 2684
    const/16 v13, 0x8

    .line 2685
    .line 2686
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookDown;->q(Lcom/mycompany/app/list/book/ListBookDown;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 2687
    .line 2688
    .line 2689
    const/4 v11, 0x0

    .line 2690
    const/4 v12, 0x0

    .line 2691
    const/16 v18, 0x0

    .line 2692
    .line 2693
    goto :goto_56

    .line 2694
    :cond_68
    move-object/from16 v50, v4

    .line 2695
    .line 2696
    move v8, v13

    .line 2697
    move-object/from16 v1, v42

    .line 2698
    .line 2699
    const/16 v13, 0x8

    .line 2700
    .line 2701
    :goto_56
    iget-object v3, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 2702
    .line 2703
    iget-object v4, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 2704
    .line 2705
    iget v5, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 2706
    .line 2707
    const/4 v9, 0x2

    .line 2708
    if-ne v5, v9, :cond_69

    .line 2709
    .line 2710
    const/4 v5, 0x7

    .line 2711
    :cond_69
    iget v6, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 2712
    .line 2713
    const/16 v19, 0x1

    .line 2714
    .line 2715
    add-int/lit8 v11, v11, 0x1

    .line 2716
    .line 2717
    iget-object v7, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 2718
    .line 2719
    if-eqz v7, :cond_6a

    .line 2720
    .line 2721
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 2722
    .line 2723
    .line 2724
    move-result v7

    .line 2725
    goto :goto_57

    .line 2726
    :cond_6a
    const/4 v7, 0x0

    .line 2727
    :goto_57
    iput v7, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 2728
    .line 2729
    move-object v7, v3

    .line 2730
    move v3, v5

    .line 2731
    move-object v5, v4

    .line 2732
    :goto_58
    move/from16 v4, v18

    .line 2733
    .line 2734
    goto :goto_59

    .line 2735
    :cond_6b
    move-object/from16 v50, v4

    .line 2736
    .line 2737
    move v8, v13

    .line 2738
    move-object/from16 v1, v42

    .line 2739
    .line 2740
    const/4 v4, 0x0

    .line 2741
    const/4 v9, 0x2

    .line 2742
    const/16 v13, 0x8

    .line 2743
    .line 2744
    iput v4, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 2745
    .line 2746
    goto :goto_58

    .line 2747
    :goto_59
    iput v4, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->I:I

    .line 2748
    .line 2749
    iput v8, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 2750
    .line 2751
    iget-boolean v9, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->j:Z

    .line 2752
    .line 2753
    if-eqz v9, :cond_6d

    .line 2754
    .line 2755
    iget-object v9, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->i:Ljava/lang/String;

    .line 2756
    .line 2757
    iget-object v13, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 2758
    .line 2759
    invoke-static {v9, v13}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2760
    .line 2761
    .line 2762
    move-result v9

    .line 2763
    if-eqz v9, :cond_6c

    .line 2764
    .line 2765
    iput-object v15, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->k:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2766
    .line 2767
    :cond_6c
    move/from16 v18, v2

    .line 2768
    .line 2769
    move/from16 v20, v3

    .line 2770
    .line 2771
    move v9, v14

    .line 2772
    goto :goto_5a

    .line 2773
    :cond_6d
    iget v9, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 2774
    .line 2775
    const/16 v13, 0x8

    .line 2776
    .line 2777
    if-eq v9, v13, :cond_6c

    .line 2778
    .line 2779
    move v9, v14

    .line 2780
    iget-wide v13, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 2781
    .line 2782
    move/from16 v18, v2

    .line 2783
    .line 2784
    move/from16 v20, v3

    .line 2785
    .line 2786
    iget-wide v2, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->h:J

    .line 2787
    .line 2788
    cmp-long v2, v13, v2

    .line 2789
    .line 2790
    if-nez v2, :cond_6e

    .line 2791
    .line 2792
    iput-object v15, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->k:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2793
    .line 2794
    :cond_6e
    :goto_5a
    iget-boolean v2, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->K:Z

    .line 2795
    .line 2796
    if-eqz v2, :cond_6f

    .line 2797
    .line 2798
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->q:[Z

    .line 2799
    .line 2800
    if-eqz v2, :cond_6f

    .line 2801
    .line 2802
    iget v3, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 2803
    .line 2804
    if-ge v3, v10, :cond_6f

    .line 2805
    .line 2806
    const/16 v19, 0x1

    .line 2807
    .line 2808
    aput-boolean v19, v2, v3

    .line 2809
    .line 2810
    iget v2, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->r:I

    .line 2811
    .line 2812
    add-int/lit8 v2, v2, 0x1

    .line 2813
    .line 2814
    iput v2, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->r:I

    .line 2815
    .line 2816
    add-int/lit8 v12, v12, 0x1

    .line 2817
    .line 2818
    goto :goto_5b

    .line 2819
    :cond_6f
    const/16 v19, 0x1

    .line 2820
    .line 2821
    :goto_5b
    add-int/lit8 v2, v4, 0x1

    .line 2822
    .line 2823
    add-int/lit8 v13, v8, 0x1

    .line 2824
    .line 2825
    const/4 v4, 0x0

    .line 2826
    iput-object v4, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->n:Ljava/lang/String;

    .line 2827
    .line 2828
    iput-object v4, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->o:Ljava/lang/String;

    .line 2829
    .line 2830
    iput-object v4, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->l:Ljava/lang/String;

    .line 2831
    .line 2832
    iput-object v4, v15, Lcom/mycompany/app/main/MainItem$ChildItem;->m:Ljava/lang/String;

    .line 2833
    .line 2834
    move-object/from16 v42, v1

    .line 2835
    .line 2836
    move v8, v2

    .line 2837
    move v14, v9

    .line 2838
    move-object/from16 v1, v17

    .line 2839
    .line 2840
    move/from16 v9, v18

    .line 2841
    .line 2842
    move/from16 v3, v20

    .line 2843
    .line 2844
    move-object/from16 v4, v50

    .line 2845
    .line 2846
    move-object v2, v0

    .line 2847
    goto/16 :goto_54

    .line 2848
    .line 2849
    :cond_70
    move/from16 v16, v0

    .line 2850
    .line 2851
    move-object v0, v2

    .line 2852
    move-object/from16 v50, v4

    .line 2853
    .line 2854
    move v8, v13

    .line 2855
    move-object/from16 v1, v42

    .line 2856
    .line 2857
    const/16 v19, 0x1

    .line 2858
    .line 2859
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2860
    .line 2861
    .line 2862
    move-result v2

    .line 2863
    if-nez v2, :cond_72

    .line 2864
    .line 2865
    invoke-static {v1, v5, v3, v6}, Lcom/mycompany/app/list/book/ListBookDown;->p(Lcom/mycompany/app/list/book/ListBookDown;Ljava/lang/String;II)Ljava/lang/String;

    .line 2866
    .line 2867
    .line 2868
    move-result-object v5

    .line 2869
    iget-object v4, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 2870
    .line 2871
    move-object v3, v1

    .line 2872
    move v6, v11

    .line 2873
    move v7, v12

    .line 2874
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/list/book/ListBookDown;->q(Lcom/mycompany/app/list/book/ListBookDown;Ljava/util/ArrayList;Ljava/lang/String;III)V

    .line 2875
    .line 2876
    .line 2877
    goto :goto_5c

    .line 2878
    :cond_71
    move/from16 v16, v0

    .line 2879
    .line 2880
    move-object v0, v2

    .line 2881
    move-object/from16 v50, v4

    .line 2882
    .line 2883
    const/16 v19, 0x1

    .line 2884
    .line 2885
    :cond_72
    :goto_5c
    if-nez v16, :cond_74

    .line 2886
    .line 2887
    new-instance v1, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 2888
    .line 2889
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2890
    .line 2891
    .line 2892
    const/4 v10, 0x0

    .line 2893
    iput v10, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->a:I

    .line 2894
    .line 2895
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2896
    .line 2897
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 2898
    .line 2899
    .line 2900
    move-result v2

    .line 2901
    iput v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->c:I

    .line 2902
    .line 2903
    iget v3, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->r:I

    .line 2904
    .line 2905
    iput v3, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 2906
    .line 2907
    if-ne v3, v2, :cond_73

    .line 2908
    .line 2909
    move/from16 v2, v19

    .line 2910
    .line 2911
    goto :goto_5d

    .line 2912
    :cond_73
    move v2, v10

    .line 2913
    :goto_5d
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 2914
    .line 2915
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 2916
    .line 2917
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2918
    .line 2919
    .line 2920
    goto :goto_5e

    .line 2921
    :cond_74
    const/4 v10, 0x0

    .line 2922
    :goto_5e
    iget-boolean v1, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->s:Z

    .line 2923
    .line 2924
    if-eqz v1, :cond_76

    .line 2925
    .line 2926
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 2927
    .line 2928
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2929
    .line 2930
    .line 2931
    move-result v1

    .line 2932
    if-nez v1, :cond_76

    .line 2933
    .line 2934
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 2935
    .line 2936
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2937
    .line 2938
    .line 2939
    move-result v1

    .line 2940
    new-array v2, v1, [Z

    .line 2941
    .line 2942
    iput-object v2, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->o:[Z

    .line 2943
    .line 2944
    new-array v1, v1, [I

    .line 2945
    .line 2946
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->p:[I

    .line 2947
    .line 2948
    iget-object v1, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 2949
    .line 2950
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2951
    .line 2952
    .line 2953
    move-result v2

    .line 2954
    :goto_5f
    if-ge v10, v2, :cond_76

    .line 2955
    .line 2956
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2957
    .line 2958
    .line 2959
    move-result-object v3

    .line 2960
    add-int/lit8 v10, v10, 0x1

    .line 2961
    .line 2962
    check-cast v3, Lcom/mycompany/app/main/MainItem$GroupItem;

    .line 2963
    .line 2964
    iget-boolean v4, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 2965
    .line 2966
    if-eqz v4, :cond_75

    .line 2967
    .line 2968
    goto :goto_60

    .line 2969
    :cond_75
    iget v4, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->d:I

    .line 2970
    .line 2971
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->o:[Z

    .line 2972
    .line 2973
    iget-boolean v6, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->g:Z

    .line 2974
    .line 2975
    aput-boolean v6, v5, v4

    .line 2976
    .line 2977
    iget-object v5, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->p:[I

    .line 2978
    .line 2979
    iget v3, v3, Lcom/mycompany/app/main/MainItem$GroupItem;->f:I

    .line 2980
    .line 2981
    aput v3, v5, v4

    .line 2982
    .line 2983
    goto :goto_5f

    .line 2984
    :cond_76
    invoke-static/range {v50 .. v50}, Lcom/mycompany/app/data/book/DataBookDown;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookDown;

    .line 2985
    .line 2986
    .line 2987
    move-result-object v1

    .line 2988
    iget-object v2, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 2989
    .line 2990
    iget-object v3, v0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->n:Ljava/util/ArrayList;

    .line 2991
    .line 2992
    iput-object v2, v1, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 2993
    .line 2994
    iput-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 2995
    .line 2996
    :cond_77
    :goto_60
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookDown;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->f:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookDown;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

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
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->k:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->n:Ljava/util/ArrayList;

    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->o:[Z

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->p:[I

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->q:[Z

    .line 42
    .line 43
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->e:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Lcom/mycompany/app/list/book/ListBookDown;

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
    iput-object v1, v0, Lcom/mycompany/app/list/book/ListBookDown;->c:Lcom/mycompany/app/list/book/ListBookDown$ListTask;

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
    iget-object v0, v0, Lcom/mycompany/app/list/book/ListBookDown;->b:Lcom/mycompany/app/list/ListTask$ListTaskListener;

    .line 24
    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    new-instance v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    sget-wide v3, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 37
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    cmp-long v3, v3, v5

    .line 41
    .line 42
    if-eqz v3, :cond_4

    .line 43
    .line 44
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 45
    .line 46
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->c:Ljava/util/List;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 49
    .line 50
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->d:Ljava/util/List;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->o:[Z

    .line 53
    .line 54
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->e:[Z

    .line 55
    .line 56
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->p:[I

    .line 57
    .line 58
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->f:[I

    .line 59
    .line 60
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->q:[Z

    .line 61
    .line 62
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->g:[Z

    .line 63
    .line 64
    iget v3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->r:I

    .line 65
    .line 66
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->h:I

    .line 67
    .line 68
    const/4 v3, -0x1

    .line 69
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->k:I

    .line 70
    .line 71
    iput v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->m:I

    .line 72
    .line 73
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->k:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 74
    .line 75
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->n:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 76
    .line 77
    iget-boolean v3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->s:Z

    .line 78
    .line 79
    iput-boolean v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->p:Z

    .line 80
    .line 81
    iget-object v3, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->u:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v3, v2, Lcom/mycompany/app/list/ListTask$ListTaskConfig;->u:Ljava/lang/String;

    .line 84
    .line 85
    :cond_4
    invoke-interface {v0, v2}, Lcom/mycompany/app/list/ListTask$ListTaskListener;->g(Lcom/mycompany/app/list/ListTask$ListTaskConfig;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->k:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->l:Ljava/util/ArrayList;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->m:Ljava/util/ArrayList;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->n:Ljava/util/ArrayList;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->o:[Z

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->p:[I

    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/list/book/ListBookDown$ListTask;->q:[Z

    .line 101
    .line 102
    return-void
.end method
