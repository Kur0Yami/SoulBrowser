.class public Lcom/mycompany/app/db/book/DbBookTabOld;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;
    }
.end annotation


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookTabOld;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTabOld;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookTabOld;->c:Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookTabOld;->c:Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookTab2.db"

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
    sput-object v1, Lcom/mycompany/app/db/book/DbBookTabOld;->c:Lcom/mycompany/app/db/book/DbBookTabOld;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookTabOld;->c:Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 35
    .line 36
    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 18

    .line 1
    const-string v0, "_desk"

    .line 2
    .line 3
    const-string v1, "_title"

    .line 4
    .line 5
    const-string v2, "_path"

    .line 6
    .line 7
    const-string v3, "_color"

    .line 8
    .line 9
    const-string v4, "_gname"

    .line 10
    .line 11
    const-string v5, "_gid"

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string v7, "1"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v7, "0"

    .line 28
    .line 29
    :goto_0
    filled-new-array {v7}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    const/4 v7, 0x0

    .line 34
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookTabOld;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTabOld;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    const-string v9, "DbBookTab2_table"

    .line 43
    .line 44
    const-string v11, "_secret=?"

    .line 45
    .line 46
    const-string v13, "_index ASC"

    .line 47
    .line 48
    const/4 v10, 0x0

    .line 49
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-eqz v8, :cond_3

    .line 60
    .line 61
    const-string v8, "_rsv4"

    .line 62
    .line 63
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 91
    :goto_1
    :try_start_1
    new-instance v15, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;

    .line 92
    .line 93
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .line 95
    .line 96
    move-object/from16 v16, v0

    .line 97
    .line 98
    move-object/from16 v17, v1

    .line 99
    .line 100
    :try_start_2
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    iput-wide v0, v15, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->a:J

    .line 105
    .line 106
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    iput-wide v0, v15, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->c:J

    .line 111
    .line 112
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, v15, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->d:Ljava/lang/String;

    .line 117
    .line 118
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, v15, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->e:I

    .line 123
    .line 124
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, v15, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->f:Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, v15, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->g:Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput v0, v15, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->h:I

    .line 141
    .line 142
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_0
    move-object/from16 v16, v0

    .line 147
    .line 148
    move-object/from16 v17, v1

    .line 149
    .line 150
    :catch_1
    :goto_2
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 151
    .line 152
    .line 153
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_2
    move-object/from16 v0, v16

    .line 158
    .line 159
    move-object/from16 v1, v17

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catch_2
    :cond_3
    move-object/from16 v16, v0

    .line 163
    .line 164
    move-object/from16 v17, v1

    .line 165
    .line 166
    :catch_3
    :goto_3
    if-eqz v7, :cond_4

    .line 167
    .line 168
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_5

    .line 176
    .line 177
    goto/16 :goto_5

    .line 178
    .line 179
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    const-wide/16 v7, -0x1

    .line 184
    .line 185
    const/4 v1, 0x0

    .line 186
    :goto_4
    if-ge v1, v0, :cond_8

    .line 187
    .line 188
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    add-int/lit8 v1, v1, 0x1

    .line 193
    .line 194
    check-cast v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;

    .line 195
    .line 196
    if-nez v9, :cond_6

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_6
    iput-wide v7, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->b:J

    .line 200
    .line 201
    new-instance v10, Landroid/content/ContentValues;

    .line 202
    .line 203
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v11, "_secret"

    .line 207
    .line 208
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    .line 214
    .line 215
    iget-wide v11, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->a:J

    .line 216
    .line 217
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    const-string v12, "_uid"

    .line 222
    .line 223
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    .line 225
    .line 226
    iget-wide v11, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->b:J

    .line 227
    .line 228
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    const-string v12, "_pid"

    .line 233
    .line 234
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    .line 236
    .line 237
    iget-wide v11, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->c:J

    .line 238
    .line 239
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    invoke-virtual {v10, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    .line 245
    .line 246
    iget-object v11, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->d:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v10, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget v11, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->e:I

    .line 252
    .line 253
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    invoke-virtual {v10, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    .line 259
    .line 260
    iget-object v11, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->f:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v11, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->g:Ljava/lang/String;

    .line 266
    .line 267
    move-object/from16 v12, v17

    .line 268
    .line 269
    invoke-virtual {v10, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget v11, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->h:I

    .line 273
    .line 274
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v11

    .line 278
    move-object/from16 v13, v16

    .line 279
    .line 280
    invoke-virtual {v10, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    .line 282
    .line 283
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookTab;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookTab;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    const-string v14, "DbBookTab3_table"

    .line 292
    .line 293
    invoke-static {v11, v14, v10}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 294
    .line 295
    .line 296
    move-result-wide v10

    .line 297
    const-wide/16 v14, 0x0

    .line 298
    .line 299
    cmp-long v10, v10, v14

    .line 300
    .line 301
    if-eqz v10, :cond_7

    .line 302
    .line 303
    iget-wide v7, v9, Lcom/mycompany/app/db/book/DbBookTabOld$TabOldItem;->a:J

    .line 304
    .line 305
    :cond_7
    move-object/from16 v17, v12

    .line 306
    .line 307
    move-object/from16 v16, v13

    .line 308
    .line 309
    goto :goto_4

    .line 310
    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookTab2_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _gid INTEGER, _gname TEXT, _color INTEGER, _index INTEGER, _path TEXT, _title TEXT, _state TEXT, _desk INTEGER, _ikey TEXT, _icon BLOB, _tkey TEXT, _thumb BLOB, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookTab2_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookTab2_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _gid INTEGER, _gname TEXT, _color INTEGER, _index INTEGER, _path TEXT, _title TEXT, _state TEXT, _desk INTEGER, _ikey TEXT, _icon BLOB, _tkey TEXT, _thumb BLOB, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
