.class Lcom/mycompany/app/dialog/DialogLockReset$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogLockReset;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLockReset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLockReset$5;->c:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset$5;->c:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/dialog/DialogLockReset;->c0:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x2

    .line 9
    const-string v5, ""

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    if-nez v2, :cond_16

    .line 13
    .line 14
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    sget v8, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 21
    .line 22
    sput v6, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 23
    .line 24
    sput-object v5, Lcom/mycompany/app/pref/PrefSecret;->t:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v6}, Lcom/mycompany/app/pref/PrefSecret;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSecret;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v8, "mLockType2"

    .line 31
    .line 32
    invoke-virtual {v5, v8}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v8, "mLockCode2"

    .line 36
    .line 37
    invoke-virtual {v5, v8}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 41
    .line 42
    .line 43
    sget v5, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 44
    .line 45
    const/16 v8, 0x20

    .line 46
    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    sget-boolean v9, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 52
    .line 53
    const-string v10, "DbBookWeb_table"

    .line 54
    .line 55
    const-string v11, "DbBookQuick_table"

    .line 56
    .line 57
    const-string v12, "mSecretIndex"

    .line 58
    .line 59
    const/16 v13, 0x40

    .line 60
    .line 61
    const/16 v14, 0x10

    .line 62
    .line 63
    const/16 v15, 0x8

    .line 64
    .line 65
    const/4 v7, 0x4

    .line 66
    if-eqz v9, :cond_8

    .line 67
    .line 68
    and-int/2addr v5, v4

    .line 69
    const-string v9, "_secret=?"

    .line 70
    .line 71
    const-string v16, "1"

    .line 72
    .line 73
    if-ne v5, v4, :cond_2

    .line 74
    .line 75
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v5, v11, v9, v4}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_2
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 91
    .line 92
    and-int/2addr v4, v7

    .line 93
    if-ne v4, v7, :cond_3

    .line 94
    .line 95
    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v5, v10, v9, v4}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_3
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 111
    .line 112
    and-int/2addr v4, v15

    .line 113
    if-ne v4, v15, :cond_4

    .line 114
    .line 115
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookDown;->m(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 119
    .line 120
    and-int/2addr v4, v14

    .line 121
    if-ne v4, v14, :cond_5

    .line 122
    .line 123
    invoke-static {v2, v3}, Lcom/mycompany/app/db/book/DbBookRecent;->j(Landroid/content/Context;Z)V

    .line 124
    .line 125
    .line 126
    :cond_5
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 127
    .line 128
    and-int/2addr v4, v8

    .line 129
    if-ne v4, v8, :cond_6

    .line 130
    .line 131
    invoke-static {v2, v3}, Lcom/mycompany/app/db/book/DbBookHistory;->e(Landroid/content/Context;Z)V

    .line 132
    .line 133
    .line 134
    :cond_6
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 135
    .line 136
    and-int/2addr v4, v13

    .line 137
    if-ne v4, v13, :cond_11

    .line 138
    .line 139
    sget v4, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 140
    .line 141
    if-eqz v4, :cond_7

    .line 142
    .line 143
    sput v6, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 144
    .line 145
    sput v6, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 146
    .line 147
    invoke-static {v2, v6}, Lcom/mycompany/app/pref/PrefSync;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v4, v12}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-static {v2, v3}, Lcom/mycompany/app/db/book/DbBookTab;->n(Landroid/content/Context;Z)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :cond_8
    and-int/2addr v5, v4

    .line 163
    if-ne v5, v4, :cond_9

    .line 164
    .line 165
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookQuick;->i(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookQuick;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    const/4 v5, 0x0

    .line 174
    invoke-static {v4, v11, v5, v5}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_9
    const/4 v5, 0x0

    .line 179
    :goto_0
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 180
    .line 181
    and-int/2addr v4, v7

    .line 182
    if-ne v4, v7, :cond_a

    .line 183
    .line 184
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-static {v4, v10, v5, v5}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    :cond_a
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 196
    .line 197
    and-int/2addr v4, v15

    .line 198
    if-ne v4, v15, :cond_b

    .line 199
    .line 200
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    const-string v7, "DbBookDown_table"

    .line 209
    .line 210
    invoke-static {v4, v7, v5, v5}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    :cond_b
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 214
    .line 215
    and-int/2addr v4, v14

    .line 216
    if-ne v4, v14, :cond_c

    .line 217
    .line 218
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookRecent;->i(Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    :cond_c
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 222
    .line 223
    and-int/2addr v4, v8

    .line 224
    if-ne v4, v8, :cond_d

    .line 225
    .line 226
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookHistory;->d(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    move v4, v3

    .line 230
    goto :goto_1

    .line 231
    :cond_d
    move v4, v6

    .line 232
    :goto_1
    sget v5, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 233
    .line 234
    and-int/2addr v5, v13

    .line 235
    if-ne v5, v13, :cond_10

    .line 236
    .line 237
    sget v5, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 238
    .line 239
    if-nez v5, :cond_e

    .line 240
    .line 241
    sget v5, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 242
    .line 243
    if-eqz v5, :cond_f

    .line 244
    .line 245
    :cond_e
    sput v6, Lcom/mycompany/app/pref/PrefSync;->l:I

    .line 246
    .line 247
    sput v6, Lcom/mycompany/app/pref/PrefSync;->m:I

    .line 248
    .line 249
    sput v6, Lcom/mycompany/app/pref/PrefSync;->n:I

    .line 250
    .line 251
    sput v6, Lcom/mycompany/app/pref/PrefSync;->o:I

    .line 252
    .line 253
    invoke-static {v2, v6}, Lcom/mycompany/app/pref/PrefSync;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSync;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    const-string v6, "mNormalIndex"

    .line 258
    .line 259
    invoke-virtual {v5, v6}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v5, v12}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 266
    .line 267
    .line 268
    :cond_f
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookTab;->m(Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_10
    move v3, v6

    .line 273
    :goto_2
    if-eqz v4, :cond_11

    .line 274
    .line 275
    if-eqz v3, :cond_11

    .line 276
    .line 277
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookIcon;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookIcon;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const-string v3, "DbBookIcon_table"

    .line 286
    .line 287
    const/4 v5, 0x0

    .line 288
    invoke-static {v2, v3, v5, v5}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 289
    .line 290
    .line 291
    :cond_11
    :goto_3
    sget v2, Lcom/mycompany/app/pref/PrefSecret;->v:I

    .line 292
    .line 293
    if-nez v2, :cond_12

    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogLockReset;->B()V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_12
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 300
    .line 301
    if-eqz v3, :cond_13

    .line 302
    .line 303
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogLockReset;->B()V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_13
    and-int/2addr v2, v8

    .line 308
    if-eq v2, v8, :cond_14

    .line 309
    .line 310
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogLockReset;->B()V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_14
    iget-object v2, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 315
    .line 316
    if-nez v2, :cond_15

    .line 317
    .line 318
    :goto_4
    return-void

    .line 319
    :cond_15
    new-instance v3, Lcom/mycompany/app/dialog/DialogLockReset$7;

    .line 320
    .line 321
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogLockReset$7;-><init>(Lcom/mycompany/app/dialog/DialogLockReset;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_16
    if-ne v2, v4, :cond_1a

    .line 329
    .line 330
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

    .line 331
    .line 332
    sget-object v3, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 333
    .line 334
    if-nez v2, :cond_17

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_17
    sget v3, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 338
    .line 339
    if-nez v3, :cond_18

    .line 340
    .line 341
    sget-object v3, Lcom/mycompany/app/pref/PrefSecret;->C:Ljava/lang/String;

    .line 342
    .line 343
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-nez v3, :cond_19

    .line 348
    .line 349
    :cond_18
    sput v6, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 350
    .line 351
    sput-object v5, Lcom/mycompany/app/pref/PrefSecret;->C:Ljava/lang/String;

    .line 352
    .line 353
    invoke-static {v2, v6}, Lcom/mycompany/app/pref/PrefSecret;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSecret;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    const-string v4, "mLinkLockType"

    .line 358
    .line 359
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    const-string v4, "mLinkLockCode"

    .line 363
    .line 364
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 368
    .line 369
    .line 370
    :cond_19
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 371
    .line 372
    .line 373
    move-result-object v3

    .line 374
    const/4 v5, 0x0

    .line 375
    iput-object v5, v3, Lcom/mycompany/app/data/book/DataBookLink;->c:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookLink;->m(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookLink;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v3}, Lcom/mycompany/app/data/book/DataBookList;->f()V

    .line 382
    .line 383
    .line 384
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookLink;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookLink;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const-string v3, "DbBookLink_table"

    .line 393
    .line 394
    invoke-static {v2, v3, v5, v5}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    :goto_5
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogLockReset;->B()V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :cond_1a
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

    .line 402
    .line 403
    sget v4, Lcom/mycompany/app/setting/SettingPassword;->b2:I

    .line 404
    .line 405
    if-nez v2, :cond_1b

    .line 406
    .line 407
    goto/16 :goto_6

    .line 408
    .line 409
    :cond_1b
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSecret;->x:Z

    .line 410
    .line 411
    if-nez v4, :cond_1c

    .line 412
    .line 413
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSecret;->y:Z

    .line 414
    .line 415
    if-nez v4, :cond_1c

    .line 416
    .line 417
    sget v4, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 418
    .line 419
    if-nez v4, :cond_1c

    .line 420
    .line 421
    sget-object v4, Lcom/mycompany/app/pref/PrefSecret;->A:Ljava/lang/String;

    .line 422
    .line 423
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    if-nez v4, :cond_1d

    .line 428
    .line 429
    :cond_1c
    sput-boolean v6, Lcom/mycompany/app/pref/PrefSecret;->x:Z

    .line 430
    .line 431
    sput-boolean v6, Lcom/mycompany/app/pref/PrefSecret;->y:Z

    .line 432
    .line 433
    sput v6, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 434
    .line 435
    sput-object v5, Lcom/mycompany/app/pref/PrefSecret;->A:Ljava/lang/String;

    .line 436
    .line 437
    invoke-static {v2, v6}, Lcom/mycompany/app/pref/PrefSecret;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefSecret;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    const-string v5, "mSavePass2"

    .line 442
    .line 443
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string v5, "mLoginLock"

    .line 447
    .line 448
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const-string v5, "mPassLockType2"

    .line 452
    .line 453
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    const-string v5, "mPassLockCode2"

    .line 457
    .line 458
    invoke-virtual {v4, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v4}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 462
    .line 463
    .line 464
    :cond_1d
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtri;->M:Z

    .line 465
    .line 466
    const/high16 v5, -0x40800000    # -1.0f

    .line 467
    .line 468
    if-eqz v4, :cond_1e

    .line 469
    .line 470
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->N:F

    .line 471
    .line 472
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    .line 473
    .line 474
    .line 475
    move-result v4

    .line 476
    if-nez v4, :cond_1e

    .line 477
    .line 478
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->O:F

    .line 479
    .line 480
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    if-nez v4, :cond_1e

    .line 485
    .line 486
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->P:F

    .line 487
    .line 488
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    .line 489
    .line 490
    .line 491
    move-result v4

    .line 492
    if-nez v4, :cond_1e

    .line 493
    .line 494
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->Q:F

    .line 495
    .line 496
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    if-eqz v4, :cond_1f

    .line 501
    .line 502
    :cond_1e
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZtri;->M:Z

    .line 503
    .line 504
    sput v5, Lcom/mycompany/app/pref/PrefZtri;->N:F

    .line 505
    .line 506
    sput v5, Lcom/mycompany/app/pref/PrefZtri;->O:F

    .line 507
    .line 508
    sput v5, Lcom/mycompany/app/pref/PrefZtri;->P:F

    .line 509
    .line 510
    sput v5, Lcom/mycompany/app/pref/PrefZtri;->Q:F

    .line 511
    .line 512
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    const-string v4, "mPassIcon"

    .line 517
    .line 518
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    const-string v4, "mPassLtX"

    .line 522
    .line 523
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    const-string v4, "mPassRtX"

    .line 527
    .line 528
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    const-string v4, "mPassUpY"

    .line 532
    .line 533
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    const-string v4, "mPassDnY"

    .line 537
    .line 538
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 542
    .line 543
    .line 544
    :cond_1f
    sget-object v3, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 545
    .line 546
    const/4 v4, 0x5

    .line 547
    aget v3, v3, v4

    .line 548
    .line 549
    sget-object v5, Lcom/mycompany/app/main/MainConst;->p:[F

    .line 550
    .line 551
    aget v4, v5, v4

    .line 552
    .line 553
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 554
    .line 555
    if-nez v5, :cond_20

    .line 556
    .line 557
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 558
    .line 559
    if-ne v5, v3, :cond_20

    .line 560
    .line 561
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->U:F

    .line 562
    .line 563
    invoke-static {v5, v4}, Ljava/lang/Float;->compare(FF)I

    .line 564
    .line 565
    .line 566
    move-result v5

    .line 567
    if-eqz v5, :cond_21

    .line 568
    .line 569
    :cond_20
    sput v6, Lcom/mycompany/app/pref/PrefEditor;->S:I

    .line 570
    .line 571
    sput v3, Lcom/mycompany/app/pref/PrefEditor;->T:I

    .line 572
    .line 573
    sput v4, Lcom/mycompany/app/pref/PrefEditor;->U:F

    .line 574
    .line 575
    invoke-static {v3, v6}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 576
    .line 577
    .line 578
    move-result v3

    .line 579
    sput v3, Lcom/mycompany/app/pref/PrefEditor;->V:I

    .line 580
    .line 581
    invoke-static {v2}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    const-string v4, "mPassAlpha"

    .line 586
    .line 587
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    const-string v4, "mPassColor"

    .line 591
    .line 592
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    const-string v4, "mPassPos"

    .line 596
    .line 597
    invoke-virtual {v3, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v3}, Lcom/mycompany/app/pref/PrefCore;->c()V

    .line 601
    .line 602
    .line 603
    :cond_21
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    const-string v3, "DbBookPass_table"

    .line 612
    .line 613
    const/4 v5, 0x0

    .line 614
    invoke-static {v2, v3, v5, v5}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 615
    .line 616
    .line 617
    :goto_6
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogLockReset;->B()V

    .line 618
    .line 619
    .line 620
    return-void
.end method
