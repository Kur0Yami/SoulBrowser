.class public Lcom/mycompany/app/db/book/DbBookWeb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookWeb;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "_rsv4"

    .line 4
    .line 5
    const-string v2, "_time"

    .line 6
    .line 7
    const-string v3, "_icon"

    .line 8
    .line 9
    const-string v4, "_title"

    .line 10
    .line 11
    const-string v5, "_path"

    .line 12
    .line 13
    const-string v6, "_dir"

    .line 14
    .line 15
    const-string v7, "_isdir"

    .line 16
    .line 17
    const-string v8, "_secret"

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v10

    .line 25
    if-eqz v10, :cond_1

    .line 26
    .line 27
    :cond_0
    const/16 v16, 0x0

    .line 28
    .line 29
    goto/16 :goto_b

    .line 30
    .line 31
    :cond_1
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    const-string v13, "DbBookWeb_table"

    .line 40
    .line 41
    const/16 v16, 0x0

    .line 42
    .line 43
    const/16 v17, 0x0

    .line 44
    .line 45
    const/4 v14, 0x0

    .line 46
    const/4 v15, 0x0

    .line 47
    invoke-static/range {v12 .. v17}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 48
    .line 49
    .line 50
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 51
    if-eqz v11, :cond_e

    .line 52
    .line 53
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    if-eqz v12, :cond_e

    .line 58
    .line 59
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 75
    const/16 v16, 0x0

    .line 76
    .line 77
    :try_start_2
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    move-object/from16 v18, v3

    .line 86
    .line 87
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    move-object/from16 v19, v2

    .line 92
    .line 93
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 97
    move-object/from16 v20, v16

    .line 98
    .line 99
    move-object/from16 v21, v20

    .line 100
    .line 101
    :goto_0
    if-nez v20, :cond_3

    .line 102
    .line 103
    move-object/from16 v22, v1

    .line 104
    .line 105
    move/from16 p0, v2

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    :try_start_3
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 109
    .line 110
    .line 111
    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 112
    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    .line 113
    .line 114
    new-instance v0, Ljava/io/OutputStreamWriter;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 115
    .line 116
    move/from16 v23, v3

    .line 117
    .line 118
    :try_start_5
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 119
    .line 120
    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 124
    .line 125
    .line 126
    move-object/from16 v20, v1

    .line 127
    .line 128
    :catch_0
    :goto_1
    move-object/from16 v21, v2

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :catch_1
    move/from16 v23, v3

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_2
    move/from16 v23, v3

    .line 135
    .line 136
    :goto_2
    if-nez v20, :cond_2

    .line 137
    .line 138
    :goto_3
    const/4 v10, 0x0

    .line 139
    goto/16 :goto_a

    .line 140
    .line 141
    :cond_2
    :goto_4
    move-object/from16 v0, v20

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_3
    move-object/from16 v22, v1

    .line 145
    .line 146
    move/from16 p0, v2

    .line 147
    .line 148
    move/from16 v23, v3

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :goto_5
    :try_start_6
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_4

    .line 156
    .line 157
    goto/16 :goto_6

    .line 158
    .line 159
    :cond_4
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-static {v0, v8, v1}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_5

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_5
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-static {v0, v7, v1}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_6

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_6
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v0, v6, v1}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_7

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_7
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v0, v5, v1}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_8

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_8
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-static {v0, v4, v1}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_9

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_9
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    move-object/from16 v2, v18

    .line 219
    .line 220
    invoke-static {v0, v2, v1}, Lcom/mycompany/app/main/MainUtil;->Y(Ljava/io/BufferedWriter;Ljava/lang/String;[B)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_a

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_a
    move-object/from16 v18, v2

    .line 228
    .line 229
    move/from16 v1, v23

    .line 230
    .line 231
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 232
    .line 233
    .line 234
    move-result-wide v2

    .line 235
    move-object/from16 v1, v19

    .line 236
    .line 237
    invoke-static {v0, v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-nez v2, :cond_b

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_b
    move/from16 v2, p0

    .line 245
    .line 246
    move-object/from16 v19, v4

    .line 247
    .line 248
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 249
    .line 250
    .line 251
    move-result-wide v3

    .line 252
    move-object/from16 v20, v1

    .line 253
    .line 254
    move-object/from16 v1, v22

    .line 255
    .line 256
    invoke-static {v0, v1, v3, v4}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    .line 257
    .line 258
    .line 259
    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 260
    if-nez v3, :cond_c

    .line 261
    .line 262
    :goto_6
    move-object/from16 v20, v0

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_c
    const/4 v3, 0x1

    .line 266
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 267
    .line 268
    .line 269
    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 270
    if-nez v4, :cond_d

    .line 271
    .line 272
    move-object/from16 v20, v0

    .line 273
    .line 274
    move v10, v3

    .line 275
    goto :goto_a

    .line 276
    :cond_d
    move-object/from16 v4, v19

    .line 277
    .line 278
    move-object/from16 v19, v20

    .line 279
    .line 280
    move/from16 v3, v23

    .line 281
    .line 282
    move-object/from16 v20, v0

    .line 283
    .line 284
    move-object/from16 v0, p1

    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :catch_3
    move v10, v3

    .line 289
    goto :goto_9

    .line 290
    :catch_4
    :goto_7
    const/4 v10, 0x0

    .line 291
    goto :goto_9

    .line 292
    :catch_5
    :goto_8
    move-object/from16 v0, v16

    .line 293
    .line 294
    move-object/from16 v21, v0

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :catch_6
    const/16 v16, 0x0

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_e
    const/16 v16, 0x0

    .line 301
    .line 302
    move-object/from16 v20, v16

    .line 303
    .line 304
    move-object/from16 v21, v20

    .line 305
    .line 306
    goto/16 :goto_3

    .line 307
    .line 308
    :catch_7
    const/16 v16, 0x0

    .line 309
    .line 310
    move-object/from16 v0, v16

    .line 311
    .line 312
    move-object v11, v0

    .line 313
    move-object/from16 v21, v11

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :goto_9
    move-object/from16 v20, v0

    .line 317
    .line 318
    :goto_a
    if-eqz v11, :cond_f

    .line 319
    .line 320
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 321
    .line 322
    .line 323
    :cond_f
    if-eqz v20, :cond_10

    .line 324
    .line 325
    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 326
    .line 327
    .line 328
    :catch_8
    :cond_10
    if-eqz v21, :cond_11

    .line 329
    .line 330
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 331
    .line 332
    .line 333
    :catch_9
    :cond_11
    if-nez v10, :cond_13

    .line 334
    .line 335
    new-instance v0, Ljava/io/File;

    .line 336
    .line 337
    move-object/from16 v1, p1

    .line 338
    .line 339
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_12

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 349
    .line 350
    .line 351
    :cond_12
    return-object v16

    .line 352
    :cond_13
    move-object/from16 v1, p1

    .line 353
    .line 354
    new-instance v0, Ljava/io/File;

    .line 355
    .line 356
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    return-object v0

    .line 360
    :goto_b
    return-object v16
.end method

.method public static b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 15

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-wide/from16 v2, p5

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto :goto_4

    .line 11
    :cond_0
    const-string v5, "_id"

    .line 12
    .line 13
    const-string v6, "_dir"

    .line 14
    .line 15
    const-string v7, "_title"

    .line 16
    .line 17
    const-string v8, "_rsv4"

    .line 18
    .line 19
    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v11

    .line 23
    sget-boolean v6, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 24
    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    const-string v6, "1"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v6, "0"

    .line 31
    .line 32
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v13

    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    const-string v10, "DbBookWeb_table"

    .line 51
    .line 52
    const-string v12, "_secret=? AND _time=?"

    .line 53
    .line 54
    const/4 v14, 0x0

    .line 55
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :try_start_2
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 83
    goto :goto_3

    .line 84
    :catch_0
    :goto_1
    move-wide v9, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move-wide/from16 v11, p7

    .line 87
    .line 88
    move-wide v9, v6

    .line 89
    goto :goto_3

    .line 90
    :catch_1
    move-object p0, v4

    .line 91
    goto :goto_1

    .line 92
    :catch_2
    :goto_2
    move-wide/from16 v11, p7

    .line 93
    .line 94
    :goto_3
    if-eqz p0, :cond_3

    .line 95
    .line 96
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 97
    .line 98
    .line 99
    :cond_3
    cmp-long p0, v9, v6

    .line 100
    .line 101
    if-gtz p0, :cond_4

    .line 102
    .line 103
    :goto_4
    return-object v4

    .line 104
    :cond_4
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    const-string v5, "/"

    .line 109
    .line 110
    if-eqz p0, :cond_5

    .line 111
    .line 112
    move-object p0, v5

    .line 113
    goto :goto_5

    .line 114
    :cond_5
    move-object/from16 p0, p2

    .line 115
    .line 116
    :goto_5
    new-instance v6, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 117
    .line 118
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-boolean v0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 122
    .line 123
    iput-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 124
    .line 125
    move-object/from16 v7, p4

    .line 126
    .line 127
    iput-object v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    iput-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_6
    invoke-static {p0, v5}, Landroid/support/v4/media/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    iget-object v0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    iput-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 169
    .line 170
    :goto_6
    const-string p0, " "

    .line 171
    .line 172
    iput-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 173
    .line 174
    iput v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 175
    .line 176
    iput v7, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 177
    .line 178
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_black_24:I

    .line 179
    .line 180
    iput p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 181
    .line 182
    goto :goto_7

    .line 183
    :cond_7
    iput-object v1, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    iput-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 190
    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_8

    .line 196
    .line 197
    iget-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 198
    .line 199
    iput-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 200
    .line 201
    :cond_8
    iget-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    iput-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 208
    .line 209
    const/16 p0, 0xb

    .line 210
    .line 211
    iput p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 212
    .line 213
    const p0, -0x70708

    .line 214
    .line 215
    .line 216
    iput p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 217
    .line 218
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 219
    .line 220
    iput p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 221
    .line 222
    :goto_7
    iput-wide v9, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 223
    .line 224
    iput-wide v2, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 225
    .line 226
    const-string p0, "yyyy.MM.dd"

    .line 227
    .line 228
    invoke-static {v2, v3, v4, p0}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    iput-object p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 233
    .line 234
    iput-wide v11, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->p:J

    .line 235
    .line 236
    long-to-int p0, v11

    .line 237
    iput p0, v6, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 238
    .line 239
    return-object v6
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string v2, "_id"

    .line 13
    .line 14
    filled-new-array {v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    const-string v3, "1"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v3, "0"

    .line 26
    .line 27
    :goto_0
    filled-new-array {v3, p1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/4 p1, 0x0

    .line 32
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "DbBookWeb_table"

    .line 41
    .line 42
    const-string v6, "_secret=? AND _path=?"

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :catch_0
    :cond_2
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    return-wide v0
.end method

.method public static e(Landroid/content/Context;J)[B
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v0, "_icon"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v3, "DbBookWeb_table"

    .line 24
    .line 25
    invoke-static {p0, v3, v2, p1, p2}, Lcom/mycompany/app/db/DbUtil;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 42
    .line 43
    .line 44
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-object p0, v1

    .line 47
    :catch_1
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-object v1
.end method

.method public static f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookWeb;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookWeb;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookWeb.db"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v1, p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

    .line 35
    .line 36
    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->Y6(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "/"

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v2, p1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :goto_0
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 29
    .line 30
    const-string v1, "1"

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    move-object p1, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const-string p1, "0"

    .line 37
    .line 38
    :goto_1
    filled-new-array {p1, v1, v2, p2}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const/4 p1, 0x0

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "DbBookWeb_table"

    .line 52
    .line 53
    const-string v6, "_secret=? AND _isdir=? AND _dir=? AND _title=?"

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 64
    .line 65
    .line 66
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    :catch_0
    :cond_3
    if-eqz p1, :cond_4

    .line 71
    .line 72
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_2
    return v0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-string v1, "1"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const-string v1, "0"

    .line 19
    .line 20
    :goto_0
    filled-new-array {v1, p1}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const/4 p1, 0x0

    .line 25
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "DbBookWeb_table"

    .line 34
    .line 35
    const-string v5, "_secret=? AND _path=?"

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    :catch_0
    :cond_2
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_1
    return v0
.end method

.method public static k(Landroid/content/Context;J)V
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
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "DbBookWeb_table"

    .line 19
    .line 20
    invoke-static {p0, v0, p1, p2}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public static l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 11

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->Y6(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, "/"

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :goto_0
    move-object v4, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {v1, p3}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    cmp-long p3, p0, v0

    .line 37
    .line 38
    if-gez p3, :cond_2

    .line 39
    .line 40
    move-wide v9, v7

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-wide v9, p0

    .line 43
    :goto_2
    new-instance p0, Landroid/content/ContentValues;

    .line 44
    .line 45
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p3, "_isdir"

    .line 54
    .line 55
    invoke-virtual {p0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    const-string p1, "_dir"

    .line 59
    .line 60
    invoke-virtual {p0, p1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "_title"

    .line 64
    .line 65
    invoke-virtual {p0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p1, "_time"

    .line 69
    .line 70
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    .line 76
    .line 77
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p3, "_secret"

    .line 84
    .line 85
    invoke-virtual {p0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    .line 87
    .line 88
    const-string p1, "_rsv4"

    .line 89
    .line 90
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {p0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p2}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string p3, "DbBookWeb_table"

    .line 106
    .line 107
    invoke-static {p1, p3, p0}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 108
    .line 109
    .line 110
    if-nez p5, :cond_3

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_3
    const/4 v3, 0x1

    .line 114
    const/4 v5, 0x0

    .line 115
    move-object v2, p2

    .line 116
    move-object v6, p4

    .line 117
    invoke-static/range {v2 .. v10}, Lcom/mycompany/app/db/book/DbBookWeb;->b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :cond_4
    :goto_3
    const/4 p0, 0x0

    .line 123
    return-object p0
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string p1, "/"

    .line 18
    .line 19
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    new-instance v2, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "_isdir"

    .line 34
    .line 35
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    const-string v3, "_dir"

    .line 39
    .line 40
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "_path"

    .line 44
    .line 45
    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "_title"

    .line 49
    .line 50
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p1, "_time"

    .line 54
    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "_rsv4"

    .line 63
    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->m6(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_search_youtube:I

    .line 82
    .line 83
    invoke-static {p1, p2}, Lcom/mycompany/app/main/BitmapUtil;->d(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    :cond_2
    invoke-static {p4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .line 97
    .line 98
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 99
    .line 100
    const/16 p3, 0x64

    .line 101
    .line 102
    invoke-virtual {p4, p2, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 103
    .line 104
    .line 105
    const-string p2, "_icon"

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    :catch_0
    :cond_3
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 118
    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string p2, "_secret"

    .line 124
    .line 125
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string p1, "DbBookWeb_table"

    .line 137
    .line 138
    invoke-static {p0, p1, v2}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_0
    return-void
.end method

.method public static n(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, p1, v0

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "DbBookWeb_table"

    .line 18
    .line 19
    invoke-static {p0, v0, p1, p2}, Lcom/mycompany/app/db/DbUtil;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    invoke-static {p0, v0, p3, p1, p2}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public static o(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const-string v0, "_icon"

    .line 17
    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "_secret=? AND _path=?"

    .line 23
    .line 24
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const-string v1, "1"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v1, "0"

    .line 32
    .line 33
    :goto_0
    filled-new-array {v1, p2}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 p2, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "DbBookWeb_table"

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    if-eqz v7, :cond_2

    .line 55
    .line 56
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    if-lez v1, :cond_2

    .line 74
    .line 75
    const/4 p2, 0x1

    .line 76
    :catch_0
    :cond_2
    if-eqz v7, :cond_3

    .line 77
    .line 78
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 79
    .line 80
    .line 81
    :cond_3
    if-nez p2, :cond_4

    .line 82
    .line 83
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_4

    .line 88
    .line 89
    :try_start_1
    new-instance p2, Landroid/content/ContentValues;

    .line 90
    .line 91
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .line 93
    .line 94
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    .line 98
    .line 99
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 100
    .line 101
    const/16 v3, 0x64

    .line 102
    .line 103
    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 111
    .line 112
    .line 113
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string p1, "DbBookWeb_table"

    .line 122
    .line 123
    invoke-static {p0, p1, p2, v4, v5}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    .line 128
    .line 129
    :catch_1
    :cond_4
    :goto_1
    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 10

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string p1, "/"

    .line 17
    .line 18
    :cond_1
    move-object v2, p1

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    new-instance v3, Landroid/content/ContentValues;

    .line 24
    .line 25
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "_isdir"

    .line 34
    .line 35
    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "_path"

    .line 39
    .line 40
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "_time"

    .line 44
    .line 45
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    .line 51
    .line 52
    const-string p1, "_icon"

    .line 53
    .line 54
    filled-new-array {p1}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    const-string p1, "1"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string p1, "0"

    .line 66
    .line 67
    :goto_0
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    move-object v0, p0

    .line 72
    move-object v5, p2

    .line 73
    move-object v6, p3

    .line 74
    move-object v7, p4

    .line 75
    move-object v4, v2

    .line 76
    move-object v2, p1

    .line 77
    invoke-static/range {v0 .. v7}, Lcom/mycompany/app/db/book/DbBookWeb;->v(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 78
    .line 79
    .line 80
    move-object v2, v4

    .line 81
    move-object v3, v5

    .line 82
    move-object v4, v6

    .line 83
    const/4 v1, 0x0

    .line 84
    move-wide v5, v8

    .line 85
    move-wide v7, v5

    .line 86
    invoke-static/range {v0 .. v8}, Lcom/mycompany/app/db/book/DbBookWeb;->b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

.method public static v(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 13

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    const-string v6, "_secret=? AND _path=?"

    .line 8
    .line 9
    const-string v9, "_icon"

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    const/4 v10, 0x1

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const-string v4, "DbBookWeb_table"

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    move-object v5, p1

    .line 30
    move-object v7, p2

    .line 31
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object v12

    .line 35
    if-eqz v12, :cond_2

    .line 36
    .line 37
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    .line 39
    .line 40
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    :try_start_1
    invoke-static/range {p7 .. p7}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-interface {v12, p1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    array-length p1, p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    if-lez p1, :cond_1

    .line 61
    .line 62
    move v11, v10

    .line 63
    :catch_0
    :cond_1
    move p1, v10

    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move p1, v11

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 p1, 0x2

    .line 68
    :goto_0
    if-eqz v12, :cond_3

    .line 69
    .line 70
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 71
    .line 72
    .line 73
    :cond_3
    if-eqz p1, :cond_7

    .line 74
    .line 75
    if-nez v11, :cond_4

    .line 76
    .line 77
    invoke-static/range {p5 .. p5}, Lcom/mycompany/app/main/MainUtil;->m6(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_search_youtube:I

    .line 88
    .line 89
    invoke-static {v3, v4}, Lcom/mycompany/app/main/BitmapUtil;->d(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move-object/from16 v3, p7

    .line 95
    .line 96
    :goto_1
    if-nez v11, :cond_5

    .line 97
    .line 98
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_5

    .line 103
    .line 104
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 105
    .line 106
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .line 108
    .line 109
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 110
    .line 111
    const/16 v8, 0x64

    .line 112
    .line 113
    invoke-virtual {v3, v5, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v0, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    .line 125
    .line 126
    :catch_2
    :cond_5
    const-string v3, "DbBookWeb_table"

    .line 127
    .line 128
    const-string v4, "_rsv4"

    .line 129
    .line 130
    const-string v5, "_title"

    .line 131
    .line 132
    const-string v8, "_dir"

    .line 133
    .line 134
    if-ne p1, v10, :cond_6

    .line 135
    .line 136
    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v1

    .line 146
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {p0, v3, v0, v6, p2}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sget-boolean p1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 172
    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const-string p2, "_secret"

    .line 178
    .line 179
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 183
    .line 184
    .line 185
    move-result-wide p1

    .line 186
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    .line 192
    .line 193
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-static {p0, v3, v0}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 202
    .line 203
    .line 204
    :cond_7
    :goto_2
    return-void
.end method

.method public static z(Landroid/content/Context;Lcom/mycompany/app/main/MainItem$ChildItem;I)V
    .locals 4

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "_rsv4"

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    .line 25
    .line 26
    iget-boolean p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 27
    .line 28
    const-string v1, "DbBookWeb_table"

    .line 29
    .line 30
    const-string v2, "0"

    .line 31
    .line 32
    const-string v3, "1"

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    sget-boolean p2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    move-object v2, v3

    .line 41
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 44
    .line 45
    filled-new-array {v2, v3, p2, p1}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p2, "_secret=? AND _isdir=? AND _dir=? AND _title=?"

    .line 58
    .line 59
    invoke-static {p0, v1, v0, p2, p1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget-boolean p2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    move-object v2, v3

    .line 68
    :cond_3
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 69
    .line 70
    filled-new-array {v2, p1}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p2, "_secret=? AND _path=?"

    .line 83
    .line 84
    invoke-static {p0, v1, v0, p2, p1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookWeb_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _isdir INTEGER, _dir TEXT, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookWeb_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookWeb_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _isdir INTEGER, _dir TEXT, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
