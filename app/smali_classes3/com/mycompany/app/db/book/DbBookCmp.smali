.class public Lcom/mycompany/app/db/book/DbBookCmp;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookCmp;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookCmp;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookCmp;->c:Lcom/mycompany/app/db/book/DbBookCmp;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookCmp;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookCmp;->c:Lcom/mycompany/app/db/book/DbBookCmp;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookCmp;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookCmp.db"

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
    sput-object v1, Lcom/mycompany/app/db/book/DbBookCmp;->c:Lcom/mycompany/app/db/book/DbBookCmp;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookCmp;->c:Lcom/mycompany/app/db/book/DbBookCmp;

    .line 35
    .line 36
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/Bitmap;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_1
    const/4 v6, 0x3

    .line 23
    if-eq v4, v6, :cond_2

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    if-eq v4, v6, :cond_2

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    const-string v6, "_path"

    .line 34
    .line 35
    const-string v10, "_name"

    .line 36
    .line 37
    invoke-static {v6, v0, v10, v1}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string v10, "_count"

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    .line 49
    .line 50
    const-string v10, "_index"

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v11

    .line 56
    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    .line 58
    .line 59
    const-string v10, "_page"

    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    const-string v10, "_time"

    .line 69
    .line 70
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    .line 76
    .line 77
    const-string v10, "_icon"

    .line 78
    .line 79
    filled-new-array {v10}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    const-string v14, "_path=? AND _index=?"

    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    filled-new-array {v0, v11}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    const/16 v17, 0x0

    .line 94
    .line 95
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookCmp;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookCmp;

    .line 96
    .line 97
    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    const-string v12, "DbBookCmp_table"

    .line 104
    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    invoke-static/range {v11 .. v16}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 108
    .line 109
    .line 110
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    if-eqz v11, :cond_4

    .line 112
    .line 113
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    .line 115
    .line 116
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    if-eqz v12, :cond_4

    .line 118
    .line 119
    :try_start_2
    invoke-static/range {p6 .. p6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    if-eqz v12, :cond_3

    .line 124
    .line 125
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    if-eqz v12, :cond_3

    .line 134
    .line 135
    array-length v12, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    if-lez v12, :cond_3

    .line 137
    .line 138
    const/16 v17, 0x1

    .line 139
    .line 140
    :catch_0
    :cond_3
    const/4 v12, 0x1

    .line 141
    goto :goto_0

    .line 142
    :catch_1
    move/from16 v12, v17

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    const/4 v12, 0x2

    .line 146
    goto :goto_0

    .line 147
    :catch_2
    move/from16 v12, v17

    .line 148
    .line 149
    const/4 v11, 0x0

    .line 150
    :goto_0
    if-eqz v11, :cond_5

    .line 151
    .line 152
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 153
    .line 154
    .line 155
    :cond_5
    if-eqz v12, :cond_8

    .line 156
    .line 157
    if-nez v17, :cond_6

    .line 158
    .line 159
    invoke-static/range {p6 .. p6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-eqz v11, :cond_6

    .line 164
    .line 165
    :try_start_3
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    .line 166
    .line 167
    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .line 169
    .line 170
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 171
    .line 172
    const/16 v5, 0x64

    .line 173
    .line 174
    move-object/from16 v7, p6

    .line 175
    .line 176
    invoke-virtual {v7, v13, v5, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v6, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 187
    .line 188
    .line 189
    :catch_3
    :cond_6
    const-string v5, "DbBookCmp_table"

    .line 190
    .line 191
    const/4 v7, 0x1

    .line 192
    if-ne v12, v7, :cond_7

    .line 193
    .line 194
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookCmp;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookCmp;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-static {v7, v5, v6, v14, v15}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookCmp;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookCmp;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-static {v7, v5, v6}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 215
    .line 216
    .line 217
    :cond_8
    :goto_1
    const-string v5, "_id"

    .line 218
    .line 219
    filled-new-array {v5}, [Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    const-string v13, "_time=?"

    .line 224
    .line 225
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    filled-new-array {v6}, [Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v14

    .line 233
    const-wide/16 v6, 0x0

    .line 234
    .line 235
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookCmp;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookCmp;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 240
    .line 241
    .line 242
    move-result-object v10

    .line 243
    const-string v11, "DbBookCmp_table"

    .line 244
    .line 245
    const/4 v15, 0x0

    .line 246
    invoke-static/range {v10 .. v15}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 247
    .line 248
    .line 249
    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 250
    if-eqz v10, :cond_9

    .line 251
    .line 252
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 253
    .line 254
    .line 255
    move-result v11

    .line 256
    if-eqz v11, :cond_9

    .line 257
    .line 258
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 263
    .line 264
    .line 265
    move-result-wide v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 266
    goto :goto_2

    .line 267
    :catch_4
    const/4 v10, 0x0

    .line 268
    :catch_5
    :cond_9
    move-wide v11, v6

    .line 269
    :goto_2
    if-eqz v10, :cond_a

    .line 270
    .line 271
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 272
    .line 273
    .line 274
    :cond_a
    cmp-long v5, v11, v6

    .line 275
    .line 276
    if-gtz v5, :cond_b

    .line 277
    .line 278
    const/4 v5, 0x0

    .line 279
    goto :goto_3

    .line 280
    :cond_b
    new-instance v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 281
    .line 282
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 283
    .line 284
    .line 285
    iput-wide v11, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 286
    .line 287
    iput-object v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 288
    .line 289
    iput v2, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 290
    .line 291
    iput v3, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 292
    .line 293
    iput v4, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I

    .line 294
    .line 295
    invoke-static {v2, v3, v4, v0}, Lcom/mycompany/app/main/MainUtil;->X1(IIILjava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iput-object v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 300
    .line 301
    iput-wide v8, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 302
    .line 303
    iput-object v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 304
    .line 305
    const/16 v0, 0xb

    .line 306
    .line 307
    iput v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 308
    .line 309
    const v0, -0x70708

    .line 310
    .line 311
    .line 312
    iput v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 313
    .line 314
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_image_black_24:I

    .line 315
    .line 316
    iput v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 317
    .line 318
    const-string v0, "yyyy.MM.dd"

    .line 319
    .line 320
    const/4 v1, 0x0

    .line 321
    invoke-static {v8, v9, v1, v0}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    iput-object v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 326
    .line 327
    iget v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 328
    .line 329
    iget v1, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 330
    .line 331
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->W2(II)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    iput-object v0, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 336
    .line 337
    :goto_3
    return-object v5

    .line 338
    :goto_4
    return-object v1
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookCmp_table (_id INTEGER PRIMARY KEY, _path TEXT, _name TEXT, _count INTEGER, _index INTEGER, _page INTEGER, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookCmp_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookCmp_table (_id INTEGER PRIMARY KEY, _path TEXT, _name TEXT, _count INTEGER, _index INTEGER, _page INTEGER, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
