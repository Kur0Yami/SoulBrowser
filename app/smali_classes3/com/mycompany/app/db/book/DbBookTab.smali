.class public Lcom/mycompany/app/db/book/DbBookTab;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookTab;

.field public static f:Z


# direct methods
.method public static A(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/mycompany/app/db/book/DbBookTab;->f:Z

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/db/book/DbBookTab$1;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/db/book/DbBookTab$1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "_desk"

    .line 4
    .line 5
    const-string v2, "_title"

    .line 6
    .line 7
    const-string v3, "_path"

    .line 8
    .line 9
    const-string v4, "_color"

    .line 10
    .line 11
    const-string v5, "_gname"

    .line 12
    .line 13
    const-string v6, "_gid"

    .line 14
    .line 15
    const-string v7, "_pid"

    .line 16
    .line 17
    const-string v8, "_uid"

    .line 18
    .line 19
    const-string v9, "_secret"

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v11

    .line 27
    if-eqz v11, :cond_1

    .line 28
    .line 29
    :cond_0
    const/16 v16, 0x0

    .line 30
    .line 31
    goto/16 :goto_b

    .line 32
    .line 33
    :cond_1
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 34
    .line 35
    .line 36
    move-result-object v12

    .line 37
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    const-string v14, "DbBookTab3_table"

    .line 42
    .line 43
    const/16 v17, 0x0

    .line 44
    .line 45
    const/16 v18, 0x0

    .line 46
    .line 47
    const/4 v15, 0x0

    .line 48
    const/16 v16, 0x0

    .line 49
    .line 50
    invoke-static/range {v13 .. v18}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    .line 52
    .line 53
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 54
    if-eqz v12, :cond_f

    .line 55
    .line 56
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    if-eqz v13, :cond_f

    .line 61
    .line 62
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v13

    .line 66
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    :try_start_2
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    move-object/from16 v18, v5

    .line 85
    .line 86
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    move-object/from16 v19, v4

    .line 91
    .line 92
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    move-object/from16 v20, v3

    .line 97
    .line 98
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    move-object/from16 v21, v2

    .line 103
    .line 104
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 108
    move-object/from16 v22, v16

    .line 109
    .line 110
    move-object/from16 v23, v22

    .line 111
    .line 112
    :goto_0
    if-nez v22, :cond_3

    .line 113
    .line 114
    move-object/from16 v24, v1

    .line 115
    .line 116
    move/from16 p0, v2

    .line 117
    .line 118
    const/4 v1, 0x0

    .line 119
    :try_start_3
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 120
    .line 121
    .line 122
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 123
    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    .line 124
    .line 125
    new-instance v0, Ljava/io/OutputStreamWriter;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 126
    .line 127
    move/from16 v25, v3

    .line 128
    .line 129
    :try_start_5
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 130
    .line 131
    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 135
    .line 136
    .line 137
    move-object/from16 v22, v1

    .line 138
    .line 139
    :catch_0
    :goto_1
    move-object/from16 v23, v2

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_1
    move/from16 v25, v3

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_2
    move/from16 v25, v3

    .line 146
    .line 147
    :goto_2
    if-nez v22, :cond_2

    .line 148
    .line 149
    :goto_3
    const/4 v11, 0x0

    .line 150
    goto/16 :goto_a

    .line 151
    .line 152
    :cond_2
    :goto_4
    move-object/from16 v0, v22

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_3
    move-object/from16 v24, v1

    .line 156
    .line 157
    move/from16 p0, v2

    .line 158
    .line 159
    move/from16 v25, v3

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :goto_5
    :try_start_6
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_4

    .line 167
    .line 168
    goto/16 :goto_6

    .line 169
    .line 170
    :cond_4
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-static {v0, v9, v1}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_5

    .line 179
    .line 180
    goto/16 :goto_6

    .line 181
    .line 182
    :cond_5
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 183
    .line 184
    .line 185
    move-result-wide v1

    .line 186
    invoke-static {v0, v8, v1, v2}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_6

    .line 191
    .line 192
    goto/16 :goto_6

    .line 193
    .line 194
    :cond_6
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 195
    .line 196
    .line 197
    move-result-wide v1

    .line 198
    invoke-static {v0, v7, v1, v2}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_7

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_7
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 206
    .line 207
    .line 208
    move-result-wide v1

    .line 209
    invoke-static {v0, v6, v1, v2}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_8

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_8
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    move-object/from16 v2, v18

    .line 221
    .line 222
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_9

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_9
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    move-object/from16 v3, v19

    .line 234
    .line 235
    invoke-static {v0, v3, v1}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-nez v1, :cond_a

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_a
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    move-object/from16 v18, v2

    .line 247
    .line 248
    move-object/from16 v2, v20

    .line 249
    .line 250
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_b

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_b
    move-object/from16 v20, v2

    .line 258
    .line 259
    move/from16 v1, v25

    .line 260
    .line 261
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    move-object/from16 v1, v21

    .line 266
    .line 267
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_c

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_c
    move/from16 v2, p0

    .line 275
    .line 276
    move-object/from16 v21, v1

    .line 277
    .line 278
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    move-object/from16 v2, v24

    .line 283
    .line 284
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    .line 285
    .line 286
    .line 287
    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 288
    if-nez v1, :cond_d

    .line 289
    .line 290
    :goto_6
    move-object/from16 v22, v0

    .line 291
    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :cond_d
    const/4 v1, 0x1

    .line 295
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 296
    .line 297
    .line 298
    move-result v19
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 299
    move-object/from16 v22, v0

    .line 300
    .line 301
    if-nez v19, :cond_e

    .line 302
    .line 303
    move v11, v1

    .line 304
    goto :goto_a

    .line 305
    :cond_e
    move-object v1, v2

    .line 306
    move-object/from16 v19, v3

    .line 307
    .line 308
    move/from16 v3, v25

    .line 309
    .line 310
    move/from16 v2, p0

    .line 311
    .line 312
    move-object/from16 v0, p1

    .line 313
    .line 314
    goto/16 :goto_0

    .line 315
    .line 316
    :catch_3
    move v11, v1

    .line 317
    goto :goto_9

    .line 318
    :catch_4
    :goto_7
    const/4 v11, 0x0

    .line 319
    goto :goto_9

    .line 320
    :catch_5
    :goto_8
    move-object/from16 v0, v16

    .line 321
    .line 322
    move-object/from16 v23, v0

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :catch_6
    const/16 v16, 0x0

    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_f
    const/16 v16, 0x0

    .line 329
    .line 330
    move-object/from16 v22, v16

    .line 331
    .line 332
    move-object/from16 v23, v22

    .line 333
    .line 334
    goto/16 :goto_3

    .line 335
    .line 336
    :catch_7
    const/16 v16, 0x0

    .line 337
    .line 338
    move-object/from16 v0, v16

    .line 339
    .line 340
    move-object v12, v0

    .line 341
    move-object/from16 v23, v12

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :goto_9
    move-object/from16 v22, v0

    .line 345
    .line 346
    :goto_a
    if-eqz v12, :cond_10

    .line 347
    .line 348
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 349
    .line 350
    .line 351
    :cond_10
    if-eqz v22, :cond_11

    .line 352
    .line 353
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 354
    .line 355
    .line 356
    :catch_8
    :cond_11
    if-eqz v23, :cond_12

    .line 357
    .line 358
    :try_start_9
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 359
    .line 360
    .line 361
    :catch_9
    :cond_12
    if-nez v11, :cond_14

    .line 362
    .line 363
    new-instance v0, Ljava/io/File;

    .line 364
    .line 365
    move-object/from16 v1, p1

    .line 366
    .line 367
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_13

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 377
    .line 378
    .line 379
    :cond_13
    return-object v16

    .line 380
    :cond_14
    move-object/from16 v1, p1

    .line 381
    .line 382
    new-instance v0, Ljava/io/File;

    .line 383
    .line 384
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    return-object v0

    .line 388
    :goto_b
    return-object v16
.end method

.method public static b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookTab;->c:Lcom/mycompany/app/db/book/DbBookTab;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookTab;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookTab;->c:Lcom/mycompany/app/db/book/DbBookTab;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookTab;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookTab3.db"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v1, p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/mycompany/app/db/book/DbBookTab;->c:Lcom/mycompany/app/db/book/DbBookTab;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    goto :goto_2

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_2
    sget-object p0, Lcom/mycompany/app/db/book/DbBookTab;->c:Lcom/mycompany/app/db/book/DbBookTab;

    .line 35
    .line 36
    return-object p0
.end method

.method public static d(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object/from16 v16, v1

    .line 7
    .line 8
    goto/16 :goto_9

    .line 9
    .line 10
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSecret;->k:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v2, :cond_6

    .line 15
    .line 16
    sput-boolean v3, Lcom/mycompany/app/pref/PrefSecret;->k:Z

    .line 17
    .line 18
    const/16 v2, 0x9

    .line 19
    .line 20
    const-string v5, "mCheckTab"

    .line 21
    .line 22
    invoke-static {v2, v0, v5, v3}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookTabOld;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, "DbBookTab2_table"

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    invoke-static/range {v5 .. v10}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 46
    .line 47
    .line 48
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-object v2, v1

    .line 51
    :catch_1
    :cond_1
    move v5, v3

    .line 52
    :goto_0
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 55
    .line 56
    .line 57
    :cond_2
    if-lez v5, :cond_6

    .line 58
    .line 59
    :try_start_2
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string v6, "DbBookTab3_table"

    .line 68
    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    invoke-static/range {v5 .. v10}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 74
    .line 75
    .line 76
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 80
    .line 81
    .line 82
    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 83
    goto :goto_1

    .line 84
    :catch_2
    move-object v2, v1

    .line 85
    :catch_3
    :cond_3
    move v5, v3

    .line 86
    :goto_1
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 89
    .line 90
    .line 91
    :cond_4
    if-lez v5, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-static {v0, v3}, Lcom/mycompany/app/db/book/DbBookTabOld;->b(Landroid/content/Context;Z)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v4}, Lcom/mycompany/app/db/book/DbBookTabOld;->b(Landroid/content/Context;Z)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookTabOld;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v5, "DbBookTab2_table"

    .line 109
    .line 110
    invoke-static {v2, v5, v1, v1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_6
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    const-string v5, "1"

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    const-string v5, "0"

    .line 124
    .line 125
    :goto_3
    filled-new-array {v5}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    const-string v11, "_pid ASC"

    .line 130
    .line 131
    :try_start_4
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    const-string v7, "DbBookTab3_table"

    .line 140
    .line 141
    const-string v9, "_secret=?"

    .line 142
    .line 143
    const/4 v8, 0x0

    .line 144
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 145
    .line 146
    .line 147
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 148
    if-eqz v5, :cond_b

    .line 149
    .line 150
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_b

    .line 155
    .line 156
    const-string v6, "_id"

    .line 157
    .line 158
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    const-string v7, "_uid"

    .line 163
    .line 164
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    const-string v8, "_pid"

    .line 169
    .line 170
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    const-string v9, "_gid"

    .line 175
    .line 176
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    const-string v10, "_gname"

    .line 181
    .line 182
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    const-string v11, "_color"

    .line 187
    .line 188
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    const-string v12, "_path"

    .line 193
    .line 194
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    const-string v13, "_title"

    .line 199
    .line 200
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    const-string v14, "_desk"

    .line 205
    .line 206
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 210
    :goto_4
    :try_start_6
    new-instance v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 211
    .line 212
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 216
    .line 217
    .line 218
    move-object/from16 v16, v1

    .line 219
    .line 220
    move-object/from16 v17, v2

    .line 221
    .line 222
    :try_start_7
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 223
    .line 224
    .line 225
    move-result-wide v1

    .line 226
    iput-wide v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 227
    .line 228
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 229
    .line 230
    .line 231
    move-result-wide v1

    .line 232
    iput-wide v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 233
    .line 234
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 235
    .line 236
    .line 237
    move-result-wide v1

    .line 238
    iput-wide v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 239
    .line 240
    const-wide/16 v18, 0x0

    .line 241
    .line 242
    cmp-long v1, v1, v18

    .line 243
    .line 244
    if-eqz v1, :cond_8

    .line 245
    .line 246
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    iput-object v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 251
    .line 252
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    iput v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :catch_4
    move-object/from16 v1, v17

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_8
    :goto_5
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iput-object v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 267
    .line 268
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Y2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    iput-object v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 273
    .line 274
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    iput-object v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 279
    .line 280
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-ne v1, v4, :cond_9

    .line 285
    .line 286
    move v1, v4

    .line 287
    goto :goto_6

    .line 288
    :cond_9
    move v1, v3

    .line 289
    :goto_6
    iput-boolean v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    const-string v1, "_rsv1"

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_rsv1_skip

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->r:Ljava/lang/String;

    :cond_rsv1_skip
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 290
    .line 291
    move-object/from16 v1, v17

    .line 292
    .line 293
    :try_start_8
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 294
    .line 295
    .line 296
    goto :goto_7

    .line 297
    :catch_5
    move-object/from16 v16, v1

    .line 298
    .line 299
    move-object v1, v2

    .line 300
    :catch_6
    :goto_7
    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 301
    .line 302
    .line 303
    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 304
    if-nez v2, :cond_a

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_a
    move-object v2, v1

    .line 308
    move-object/from16 v1, v16

    .line 309
    .line 310
    goto :goto_4

    .line 311
    :catch_7
    :cond_b
    move-object/from16 v16, v1

    .line 312
    .line 313
    move-object v1, v2

    .line 314
    goto :goto_8

    .line 315
    :catch_8
    move-object/from16 v16, v1

    .line 316
    .line 317
    move-object v1, v2

    .line 318
    move-object/from16 v5, v16

    .line 319
    .line 320
    :catch_9
    :goto_8
    if-eqz v5, :cond_c

    .line 321
    .line 322
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 323
    .line 324
    .line 325
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_d

    .line 330
    .line 331
    goto :goto_9

    .line 332
    :cond_d
    const-wide/16 v5, -0x1

    .line 333
    .line 334
    invoke-static {v1, v5, v6}, Lcom/mycompany/app/db/book/DbBookTab;->i(Ljava/util/ArrayList;J)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    if-nez v2, :cond_f

    .line 339
    .line 340
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookTab;->e(Ljava/util/ArrayList;)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    if-nez v2, :cond_e

    .line 345
    .line 346
    :goto_9
    return-object v16

    .line 347
    :cond_e
    iput-wide v5, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 348
    .line 349
    new-instance v5, Ljava/util/ArrayList;

    .line 350
    .line 351
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .line 353
    .line 354
    new-instance v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 355
    .line 356
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 357
    .line 358
    .line 359
    iget-wide v7, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 360
    .line 361
    iput-wide v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 362
    .line 363
    iget-wide v7, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 364
    .line 365
    iput-wide v7, v6, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 366
    .line 367
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-object/from16 v16, v5

    .line 371
    .line 372
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .line 376
    .line 377
    :try_start_a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    iput v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 384
    .line 385
    move v6, v4

    .line 386
    :goto_a
    :try_start_b
    iget-wide v7, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 387
    .line 388
    invoke-static {v1, v7, v8}, Lcom/mycompany/app/db/book/DbBookTab;->i(Ljava/util/ArrayList;J)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    if-nez v2, :cond_10

    .line 393
    .line 394
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookTab;->e(Ljava/util/ArrayList;)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    if-nez v2, :cond_10

    .line 399
    .line 400
    goto :goto_b

    .line 401
    :cond_10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    iput v6, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 408
    .line 409
    add-int/lit8 v6, v6, 0x1

    .line 410
    .line 411
    goto :goto_a

    .line 412
    :catch_a
    move v6, v3

    .line 413
    :catch_b
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-nez v2, :cond_15

    .line 418
    .line 419
    :try_start_c
    invoke-static {v6, v5}, Lcom/mycompany/app/db/book/DbBookTab;->j(ILjava/util/List;)J

    .line 420
    .line 421
    .line 422
    move-result-wide v7

    .line 423
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    move v9, v3

    .line 428
    :cond_11
    :goto_c
    if-ge v9, v2, :cond_15

    .line 429
    .line 430
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    add-int/lit8 v9, v9, 0x1

    .line 435
    .line 436
    check-cast v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 437
    .line 438
    if-nez v10, :cond_12

    .line 439
    .line 440
    goto :goto_c

    .line 441
    :cond_12
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    iget-wide v11, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 445
    .line 446
    cmp-long v11, v11, v7

    .line 447
    .line 448
    if-eqz v11, :cond_13

    .line 449
    .line 450
    move v11, v4

    .line 451
    goto :goto_d

    .line 452
    :cond_13
    move v11, v3

    .line 453
    :goto_d
    iput-wide v7, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 454
    .line 455
    iput v6, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 456
    .line 457
    iget-wide v7, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 458
    .line 459
    add-int/lit8 v6, v6, 0x1

    .line 460
    .line 461
    if-eqz v11, :cond_11

    .line 462
    .line 463
    if-nez v16, :cond_14

    .line 464
    .line 465
    new-instance v11, Ljava/util/ArrayList;

    .line 466
    .line 467
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 468
    .line 469
    .line 470
    goto :goto_e

    .line 471
    :cond_14
    move-object/from16 v11, v16

    .line 472
    .line 473
    :goto_e
    :try_start_d
    new-instance v12, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 474
    .line 475
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 476
    .line 477
    .line 478
    iget-wide v13, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 479
    .line 480
    iput-wide v13, v12, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 481
    .line 482
    iget-wide v13, v10, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 483
    .line 484
    iput-wide v13, v12, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 485
    .line 486
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 487
    .line 488
    .line 489
    move-object/from16 v16, v11

    .line 490
    .line 491
    goto :goto_c

    .line 492
    :catch_c
    move-object/from16 v16, v11

    .line 493
    .line 494
    :catch_d
    :cond_15
    move-object/from16 v1, v16

    .line 495
    .line 496
    if-eqz v1, :cond_16

    .line 497
    .line 498
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-nez v2, :cond_16

    .line 503
    .line 504
    invoke-static {v0, v1}, Lcom/mycompany/app/db/book/DbBookTab;->u(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 505
    .line 506
    .line 507
    :cond_16
    return-object v5
.end method

.method public static e(Ljava/util/ArrayList;)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :cond_1
    :goto_0
    if-ge v3, v0, :cond_7

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    check-cast v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-wide v5, v4, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_4

    .line 35
    .line 36
    :cond_3
    move-object v9, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    move v8, v2

    .line 43
    :cond_5
    :goto_1
    if-ge v8, v7, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    add-int/lit8 v8, v8, 0x1

    .line 50
    .line 51
    check-cast v9, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 52
    .line 53
    if-nez v9, :cond_6

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_6
    iget-wide v10, v9, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 57
    .line 58
    cmp-long v10, v10, v5

    .line 59
    .line 60
    if-nez v10, :cond_5

    .line 61
    .line 62
    :goto_2
    if-nez v9, :cond_1

    .line 63
    .line 64
    return-object v4

    .line 65
    :cond_7
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 70
    .line 71
    return-object p0
.end method

.method public static f(Ljava/util/List;)J
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v2, 0x0

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_3

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 32
    .line 33
    if-nez v5, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-wide v5, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 37
    .line 38
    cmp-long v7, v5, v0

    .line 39
    .line 40
    if-nez v7, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    :cond_2
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    if-eqz v2, :cond_4

    .line 49
    .line 50
    const-wide/16 v0, 0x1

    .line 51
    .line 52
    add-long/2addr v3, v0

    .line 53
    return-wide v3

    .line 54
    :cond_4
    :goto_1
    return-wide v0
.end method

.method public static i(Ljava/util/ArrayList;J)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_1
    :goto_0
    if-ge v1, v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    check-cast v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-wide v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 27
    .line 28
    cmp-long v3, v3, p1

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public static j(ILjava/util/List;)J
    .locals 1

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-ltz p0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    :goto_1
    if-nez p0, :cond_2

    .line 23
    .line 24
    const-wide/16 p0, -0x1

    .line 25
    .line 26
    return-wide p0

    .line 27
    :cond_2
    iget-wide p0, p0, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 28
    .line 29
    return-wide p0
.end method

.method public static k(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :cond_1
    :goto_0
    if-ge v1, v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    check-cast v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-wide v2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    cmp-long v4, v2, v4

    .line 34
    .line 35
    if-gtz v4, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    filled-new-array {v2}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "DbBookTab3_table"

    .line 55
    .line 56
    const-string v5, "_uid=?"

    .line 57
    .line 58
    invoke-static {v3, v4, v5, v2}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v5, v2}, Lcom/mycompany/app/db/book/DbTabState;->e(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v5, v2}, Lcom/mycompany/app/db/book/DbTabThumb;->e(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    return-void
.end method

.method public static l(Landroid/content/Context;J)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, p1, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "DbBookTab3_table"

    .line 27
    .line 28
    const-string v1, "_uid=?"

    .line 29
    .line 30
    invoke-static {p2, v0, v1, p1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v1, p1}, Lcom/mycompany/app/db/book/DbTabState;->e(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v1, p1}, Lcom/mycompany/app/db/book/DbTabThumb;->e(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "DbBookTab3_table"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v1, v2, v2}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbTabState;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabState;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "DbTabState_table"

    .line 27
    .line 28
    invoke-static {v0, v1, v2, v2}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbTabThumb;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabThumb;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "DbTabThumb_table"

    .line 40
    .line 41
    invoke-static {p0, v0, v2, v2}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static n(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const-string p1, "1"

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    const-string p1, "0"

    .line 10
    .line 11
    :goto_0
    filled-new-array {p1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "DbBookTab3_table"

    .line 24
    .line 25
    const-string v2, "_secret=?"

    .line 26
    .line 27
    invoke-static {v0, v1, v2, p1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v2, p1}, Lcom/mycompany/app/db/book/DbTabState;->e(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v2, p1}, Lcom/mycompany/app/db/book/DbTabThumb;->e(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static o(Landroid/content/Context;Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;Z)V
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->Z2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "_secret"

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    iget-wide v2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 27
    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v2, "_uid"

    .line 33
    .line 34
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    .line 36
    .line 37
    iget-wide v2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string v2, "_pid"

    .line 44
    .line 45
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    .line 47
    .line 48
    iget-wide v2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->e:J

    .line 49
    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string v2, "_gid"

    .line 55
    .line 56
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    .line 58
    .line 59
    const-string p2, "_gname"

    .line 60
    .line 61
    iget-object v2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->f:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget p2, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->g:I

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    const-string v2, "_color"

    .line 73
    .line 74
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    const-string p2, "_path"

    .line 78
    .line 79
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p2, "_title"

    .line 83
    .line 84
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_rsv1"

    iget-object v0, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->r:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-boolean p1, p1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->l:Z

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "_desk"

    .line 96
    .line 97
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    const-string p1, "DbBookTab3_table"

    .line 109
    .line 110
    invoke-static {p0, p1, v1}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 111
    .line 112
    .line 113
    :cond_1
    :goto_0
    return-void
.end method

# Updates per-tab homepage URL in _rsv1 for an existing tab uid.
.method public static B(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_ret

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_ret

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_rsv1"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "DbBookTab3_table"

    const-string p2, "_uid=?"

    invoke-static {p0, p1, v0, p2, v1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_ret
    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :cond_1
    :goto_0
    if-ge v1, v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    check-cast v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-wide v3, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->c:J

    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    cmp-long v7, v3, v5

    .line 34
    .line 35
    if-lez v7, :cond_1

    .line 36
    .line 37
    iget-wide v7, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 38
    .line 39
    cmp-long v5, v7, v5

    .line 40
    .line 41
    if-nez v5, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    filled-new-array {v3}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v4, Landroid/content/ContentValues;

    .line 53
    .line 54
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-wide v5, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->d:J

    .line 58
    .line 59
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const-string v5, "_pid"

    .line 64
    .line 65
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v5, "DbBookTab3_table"

    .line 77
    .line 78
    const-string v6, "_uid=?"

    .line 79
    .line 80
    invoke-static {v2, v5, v4, v6, v3}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    :goto_1
    return-void
.end method

.method public static v(Landroid/content/Context;JJ)V
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p1, v0

    .line 6
    .line 7
    if-lez v2, :cond_1

    .line 8
    .line 9
    cmp-long v0, p3, v0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Landroid/content/ContentValues;

    .line 23
    .line 24
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "_gid"

    .line 28
    .line 29
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p3, "DbBookTab3_table"

    .line 45
    .line 46
    const-string p4, "_uid=?"

    .line 47
    .line 48
    invoke-static {p0, p3, p2, p4, p1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public static z(Landroid/content/Context;JJ)V
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p1, v0

    .line 6
    .line 7
    if-lez v2, :cond_1

    .line 8
    .line 9
    cmp-long v0, p3, v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Landroid/content/ContentValues;

    .line 23
    .line 24
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "_pid"

    .line 28
    .line 29
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p3, "DbBookTab3_table"

    .line 45
    .line 46
    const-string p4, "_uid=?"

    .line 47
    .line 48
    invoke-static {p0, p3, p2, p4, p1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookTab3_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _pid INTEGER, _gid INTEGER, _gname TEXT, _color INTEGER, _path TEXT, _title TEXT, _state TEXT, _desk INTEGER, _ikey TEXT, _icon BLOB, _tkey TEXT, _thumb BLOB, _ads TEXT, _pages TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p2, "DROP TABLE IF EXISTS DbBookTab3_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookTab3_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _pid INTEGER, _gid INTEGER, _gname TEXT, _color INTEGER, _path TEXT, _title TEXT, _state TEXT, _desk INTEGER, _ikey TEXT, _icon BLOB, _tkey TEXT, _thumb BLOB, _ads TEXT, _pages TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
