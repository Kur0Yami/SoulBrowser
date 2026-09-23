.class Lcom/mycompany/app/web/WebViewActivity$640;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$640;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-string v0, "_path"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$640;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_14

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    :try_start_0
    iget-object v2, v2, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :catch_0
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    :try_start_1
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookAds;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookAds;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, "DbBookAds_table"

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 57
    .line 58
    .line 59
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 87
    .line 88
    if-eqz v6, :cond_4

    .line 89
    .line 90
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 91
    .line 92
    .line 93
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    if-nez v6, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-object v4, v3

    .line 98
    :catch_2
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 101
    .line 102
    .line 103
    :cond_5
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 104
    .line 105
    if-nez v4, :cond_6

    .line 106
    .line 107
    goto/16 :goto_14

    .line 108
    .line 109
    :cond_6
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 110
    .line 111
    invoke-static {v4}, Lcom/mycompany/app/data/book/DataBookAds;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookAds;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iput-object v2, v4, Lcom/mycompany/app/data/book/DataBookAds;->c:Ljava/util/ArrayList;

    .line 116
    .line 117
    :goto_2
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 118
    .line 119
    if-nez v2, :cond_7

    .line 120
    .line 121
    goto/16 :goto_14

    .line 122
    .line 123
    :cond_7
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    :try_start_3
    iget-object v2, v2, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 133
    .line 134
    if-eqz v2, :cond_8

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 140
    if-nez v2, :cond_8

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :catch_3
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    filled-new-array {v0}, [Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    :try_start_4
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookOver;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookOver;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    const-string v5, "DbBookOver_table"

    .line 163
    .line 164
    const/4 v8, 0x0

    .line 165
    const/4 v9, 0x0

    .line 166
    const/4 v7, 0x0

    .line 167
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 168
    .line 169
    .line 170
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 171
    if-eqz v4, :cond_b

    .line 172
    .line 173
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_b

    .line 178
    .line 179
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    :cond_9
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    if-eqz v7, :cond_a

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_a
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    :goto_3
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 198
    .line 199
    if-eqz v6, :cond_b

    .line 200
    .line 201
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 202
    .line 203
    .line 204
    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 205
    if-nez v6, :cond_9

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :catch_4
    move-object v4, v3

    .line 209
    :catch_5
    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 210
    .line 211
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 212
    .line 213
    .line 214
    :cond_c
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 215
    .line 216
    if-nez v4, :cond_d

    .line 217
    .line 218
    goto/16 :goto_14

    .line 219
    .line 220
    :cond_d
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 221
    .line 222
    invoke-static {v4}, Lcom/mycompany/app/data/book/DataBookOver;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookOver;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    iput-object v2, v4, Lcom/mycompany/app/data/book/DataBookOver;->c:Ljava/util/ArrayList;

    .line 227
    .line 228
    :goto_5
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 229
    .line 230
    if-nez v2, :cond_e

    .line 231
    .line 232
    goto/16 :goto_14

    .line 233
    .line 234
    :cond_e
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 235
    .line 236
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    :try_start_6
    iget-object v2, v2, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 244
    .line 245
    if-eqz v2, :cond_f

    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 251
    if-nez v2, :cond_f

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :catch_6
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    filled-new-array {v0}, [Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    :try_start_7
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 264
    .line 265
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookPop;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPop;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    const-string v5, "DbBookPop_table"

    .line 274
    .line 275
    const/4 v8, 0x0

    .line 276
    const/4 v9, 0x0

    .line 277
    const/4 v7, 0x0

    .line 278
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 279
    .line 280
    .line 281
    move-result-object v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 282
    if-eqz v4, :cond_12

    .line 283
    .line 284
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 285
    .line 286
    .line 287
    move-result v5

    .line 288
    if-eqz v5, :cond_12

    .line 289
    .line 290
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    :cond_10
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-eqz v7, :cond_11

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_11
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    :goto_6
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 309
    .line 310
    if-eqz v6, :cond_12

    .line 311
    .line 312
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 313
    .line 314
    .line 315
    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 316
    if-nez v6, :cond_10

    .line 317
    .line 318
    goto :goto_7

    .line 319
    :catch_7
    move-object v4, v3

    .line 320
    :catch_8
    :cond_12
    :goto_7
    if-eqz v4, :cond_13

    .line 321
    .line 322
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 323
    .line 324
    .line 325
    :cond_13
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 326
    .line 327
    if-nez v4, :cond_14

    .line 328
    .line 329
    goto/16 :goto_14

    .line 330
    .line 331
    :cond_14
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 332
    .line 333
    invoke-static {v4}, Lcom/mycompany/app/data/book/DataBookPop;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPop;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    iput-object v2, v4, Lcom/mycompany/app/data/book/DataBookPop;->c:Ljava/util/ArrayList;

    .line 338
    .line 339
    :goto_8
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 340
    .line 341
    if-nez v2, :cond_15

    .line 342
    .line 343
    goto/16 :goto_14

    .line 344
    .line 345
    :cond_15
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 346
    .line 347
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 352
    .line 353
    .line 354
    :try_start_9
    iget-object v2, v2, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 355
    .line 356
    if-eqz v2, :cond_16

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 359
    .line 360
    .line 361
    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 362
    if-nez v2, :cond_16

    .line 363
    .line 364
    goto :goto_b

    .line 365
    :catch_9
    :cond_16
    new-instance v2, Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .line 369
    .line 370
    filled-new-array {v0}, [Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    :try_start_a
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 375
    .line 376
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookLink;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLink;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    const-string v5, "DbBookLink_table"

    .line 385
    .line 386
    const/4 v8, 0x0

    .line 387
    const/4 v9, 0x0

    .line 388
    const/4 v7, 0x0

    .line 389
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 390
    .line 391
    .line 392
    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 393
    if-eqz v4, :cond_19

    .line 394
    .line 395
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    if-eqz v5, :cond_19

    .line 400
    .line 401
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    :cond_17
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    if-eqz v7, :cond_18

    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_18
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    :goto_9
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 420
    .line 421
    if-eqz v6, :cond_19

    .line 422
    .line 423
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 424
    .line 425
    .line 426
    move-result v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 427
    if-nez v6, :cond_17

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :catch_a
    move-object v4, v3

    .line 431
    :catch_b
    :cond_19
    :goto_a
    if-eqz v4, :cond_1a

    .line 432
    .line 433
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 434
    .line 435
    .line 436
    :cond_1a
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 437
    .line 438
    if-nez v4, :cond_1b

    .line 439
    .line 440
    goto/16 :goto_14

    .line 441
    .line 442
    :cond_1b
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 443
    .line 444
    invoke-static {v4}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    iput-object v2, v4, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 449
    .line 450
    :goto_b
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 451
    .line 452
    if-nez v2, :cond_1c

    .line 453
    .line 454
    goto/16 :goto_14

    .line 455
    .line 456
    :cond_1c
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 457
    .line 458
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    :try_start_c
    iget-object v2, v2, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

    .line 466
    .line 467
    if-eqz v2, :cond_1d

    .line 468
    .line 469
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 473
    if-nez v2, :cond_1d

    .line 474
    .line 475
    goto :goto_e

    .line 476
    :catch_c
    :cond_1d
    new-instance v2, Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .line 480
    .line 481
    filled-new-array {v0}, [Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    :try_start_d
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 486
    .line 487
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookJava;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookJava;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    const-string v5, "DbBookJava_table"

    .line 496
    .line 497
    const/4 v8, 0x0

    .line 498
    const/4 v9, 0x0

    .line 499
    const/4 v7, 0x0

    .line 500
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 501
    .line 502
    .line 503
    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 504
    if-eqz v4, :cond_20

    .line 505
    .line 506
    :try_start_e
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 507
    .line 508
    .line 509
    move-result v5

    .line 510
    if-eqz v5, :cond_20

    .line 511
    .line 512
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    :cond_1e
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    if-eqz v7, :cond_1f

    .line 525
    .line 526
    goto :goto_c

    .line 527
    :cond_1f
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    :goto_c
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 531
    .line 532
    if-eqz v6, :cond_20

    .line 533
    .line 534
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 535
    .line 536
    .line 537
    move-result v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 538
    if-nez v6, :cond_1e

    .line 539
    .line 540
    goto :goto_d

    .line 541
    :catch_d
    move-object v4, v3

    .line 542
    :catch_e
    :cond_20
    :goto_d
    if-eqz v4, :cond_21

    .line 543
    .line 544
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 545
    .line 546
    .line 547
    :cond_21
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 548
    .line 549
    if-nez v4, :cond_22

    .line 550
    .line 551
    goto/16 :goto_14

    .line 552
    .line 553
    :cond_22
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 554
    .line 555
    invoke-static {v4}, Lcom/mycompany/app/data/book/DataBookJava;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookJava;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    iput-object v2, v4, Lcom/mycompany/app/data/book/DataBookJava;->c:Ljava/util/ArrayList;

    .line 560
    .line 561
    :goto_e
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 562
    .line 563
    if-nez v2, :cond_23

    .line 564
    .line 565
    goto/16 :goto_14

    .line 566
    .line 567
    :cond_23
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 568
    .line 569
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    .line 575
    .line 576
    :try_start_f
    iget-object v2, v2, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 577
    .line 578
    if-eqz v2, :cond_24

    .line 579
    .line 580
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 581
    .line 582
    .line 583
    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 584
    if-nez v2, :cond_24

    .line 585
    .line 586
    goto :goto_11

    .line 587
    :catch_f
    :cond_24
    new-instance v2, Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .line 591
    .line 592
    filled-new-array {v0}, [Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v6

    .line 596
    :try_start_10
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 597
    .line 598
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookTmem;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTmem;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    const-string v5, "DbBookTmem_table"

    .line 607
    .line 608
    const/4 v8, 0x0

    .line 609
    const/4 v9, 0x0

    .line 610
    const/4 v7, 0x0

    .line 611
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 612
    .line 613
    .line 614
    move-result-object v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 615
    if-eqz v4, :cond_27

    .line 616
    .line 617
    :try_start_11
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 618
    .line 619
    .line 620
    move-result v5

    .line 621
    if-eqz v5, :cond_27

    .line 622
    .line 623
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    move-result v5

    .line 627
    :cond_25
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v6

    .line 631
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 632
    .line 633
    .line 634
    move-result v7

    .line 635
    if-eqz v7, :cond_26

    .line 636
    .line 637
    goto :goto_f

    .line 638
    :cond_26
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    :goto_f
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 642
    .line 643
    if-eqz v6, :cond_27

    .line 644
    .line 645
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 646
    .line 647
    .line 648
    move-result v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 649
    if-nez v6, :cond_25

    .line 650
    .line 651
    goto :goto_10

    .line 652
    :catch_10
    move-object v4, v3

    .line 653
    :catch_11
    :cond_27
    :goto_10
    if-eqz v4, :cond_28

    .line 654
    .line 655
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 656
    .line 657
    .line 658
    :cond_28
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 659
    .line 660
    if-nez v4, :cond_29

    .line 661
    .line 662
    goto/16 :goto_14

    .line 663
    .line 664
    :cond_29
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 665
    .line 666
    invoke-static {v4}, Lcom/mycompany/app/data/book/DataBookTmem;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTmem;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    iput-object v2, v4, Lcom/mycompany/app/data/book/DataBookTmem;->c:Ljava/util/ArrayList;

    .line 671
    .line 672
    :goto_11
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 673
    .line 674
    if-nez v2, :cond_2a

    .line 675
    .line 676
    goto :goto_14

    .line 677
    :cond_2a
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 678
    .line 679
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    .line 685
    .line 686
    :try_start_12
    iget-object v2, v2, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 687
    .line 688
    if-eqz v2, :cond_2b

    .line 689
    .line 690
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 691
    .line 692
    .line 693
    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 694
    if-nez v2, :cond_2b

    .line 695
    .line 696
    goto :goto_13

    .line 697
    :catch_12
    :cond_2b
    new-instance v2, Ljava/util/ArrayList;

    .line 698
    .line 699
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .line 701
    .line 702
    filled-new-array {v0}, [Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v6

    .line 706
    :try_start_13
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 707
    .line 708
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookTrans;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTrans;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    const-string v5, "DbBookTrans_table"

    .line 717
    .line 718
    const/4 v8, 0x0

    .line 719
    const/4 v9, 0x0

    .line 720
    const/4 v7, 0x0

    .line 721
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 722
    .line 723
    .line 724
    move-result-object v3

    .line 725
    if-eqz v3, :cond_2e

    .line 726
    .line 727
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 728
    .line 729
    .line 730
    move-result v4

    .line 731
    if-eqz v4, :cond_2e

    .line 732
    .line 733
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    :cond_2c
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v4

    .line 741
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 742
    .line 743
    .line 744
    move-result v5

    .line 745
    if-eqz v5, :cond_2d

    .line 746
    .line 747
    goto :goto_12

    .line 748
    :cond_2d
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    :goto_12
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 752
    .line 753
    if-eqz v4, :cond_2e

    .line 754
    .line 755
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 756
    .line 757
    .line 758
    move-result v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 759
    if-nez v4, :cond_2c

    .line 760
    .line 761
    :catch_13
    :cond_2e
    if-eqz v3, :cond_2f

    .line 762
    .line 763
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 764
    .line 765
    .line 766
    :cond_2f
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 767
    .line 768
    if-nez v0, :cond_30

    .line 769
    .line 770
    goto :goto_14

    .line 771
    :cond_30
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 772
    .line 773
    invoke-static {v0}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    iput-object v2, v0, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 778
    .line 779
    :goto_13
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->x7()V

    .line 780
    .line 781
    .line 782
    :goto_14
    const/4 v0, 0x0

    .line 783
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I9:Z

    .line 784
    .line 785
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->J9:Z

    .line 786
    .line 787
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 788
    .line 789
    if-nez v0, :cond_31

    .line 790
    .line 791
    return-void

    .line 792
    :cond_31
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$640$1;

    .line 793
    .line 794
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$640$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$640;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 798
    .line 799
    .line 800
    return-void
.end method
