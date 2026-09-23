.class public Lcom/mycompany/app/db/book/DbBookSearch;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookSearch;

.field public static f:I


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "_color"

    .line 4
    .line 5
    const-string v2, "_icon"

    .line 6
    .line 7
    const-string v3, "_text"

    .line 8
    .line 9
    const-string v4, "_title"

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
    const/16 v16, 0x0

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_1
    const/4 v6, 0x0

    .line 24
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    const-string v9, "DbBookSearch_table"

    .line 33
    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 42
    if-eqz v7, :cond_a

    .line 43
    .line 44
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-eqz v8, :cond_a

    .line 49
    .line 50
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    :cond_2
    if-nez v12, :cond_3

    .line 69
    .line 70
    :try_start_2
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    new-instance v14, Ljava/io/BufferedWriter;

    .line 75
    .line 76
    new-instance v15, Ljava/io/OutputStreamWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    :try_start_3
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    invoke-direct {v15, v13, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v14, v15}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 86
    .line 87
    .line 88
    move-object v12, v14

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    const/16 v16, 0x0

    .line 91
    .line 92
    :catch_1
    :goto_0
    if-nez v12, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const/16 v16, 0x0

    .line 96
    .line 97
    :cond_4
    :try_start_4
    invoke-static {v12}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-nez v5, :cond_5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-static {v12, v4, v5}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_6

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v12, v3, v5}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_7

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v12, v2, v5}, Lcom/mycompany/app/main/MainUtil;->Y(Ljava/io/BufferedWriter;Ljava/lang/String;[B)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-nez v5, :cond_8

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_8
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    invoke-static {v12, v1, v5}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    .line 142
    .line 143
    .line 144
    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 145
    if-nez v5, :cond_9

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_9
    const/4 v5, 0x1

    .line 149
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 150
    .line 151
    .line 152
    move-result v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 153
    if-nez v14, :cond_2

    .line 154
    .line 155
    :catch_2
    move v6, v5

    .line 156
    goto :goto_2

    .line 157
    :catch_3
    :cond_a
    const/16 v16, 0x0

    .line 158
    .line 159
    move-object/from16 v12, v16

    .line 160
    .line 161
    :goto_1
    move-object v13, v12

    .line 162
    goto :goto_2

    .line 163
    :catch_4
    const/16 v16, 0x0

    .line 164
    .line 165
    move-object/from16 v7, v16

    .line 166
    .line 167
    move-object v12, v7

    .line 168
    goto :goto_1

    .line 169
    :catch_5
    :goto_2
    if-eqz v7, :cond_b

    .line 170
    .line 171
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 172
    .line 173
    .line 174
    :cond_b
    if-eqz v12, :cond_c

    .line 175
    .line 176
    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 177
    .line 178
    .line 179
    :catch_6
    :cond_c
    if-eqz v13, :cond_d

    .line 180
    .line 181
    :try_start_7
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 182
    .line 183
    .line 184
    :catch_7
    :cond_d
    if-nez v6, :cond_f

    .line 185
    .line 186
    new-instance v1, Ljava/io/File;

    .line 187
    .line 188
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-eqz v0, :cond_e

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 198
    .line 199
    .line 200
    :cond_e
    return-object v16

    .line 201
    :cond_f
    new-instance v1, Ljava/io/File;

    .line 202
    .line 203
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-object v1

    .line 207
    :goto_3
    return-object v16
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    invoke-static {v0, p0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static d(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    cmp-long v1, p1, v1

    .line 7
    .line 8
    if-gtz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string v1, "_icon"

    .line 12
    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const-string v3, "DbBookSearch_table"

    .line 26
    .line 27
    invoke-static {p0, v3, v2, p1, p2}, Lcom/mycompany/app/db/DbUtil;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-object p0, v0

    .line 49
    :catch_1
    :cond_1
    move-object p1, v0

    .line 50
    :goto_0
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 53
    .line 54
    .line 55
    :cond_2
    if-eqz p1, :cond_3

    .line 56
    .line 57
    array-length p0, p1

    .line 58
    const/4 p2, 0x1

    .line 59
    if-le p0, p2, :cond_3

    .line 60
    .line 61
    array-length p0, p1

    .line 62
    invoke-static {p1, p0}, Lcom/mycompany/app/main/BitmapUtil;->a([BI)Landroid/graphics/Bitmap;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static e(I)I
    .locals 4

    .line 1
    sget-object v0, Lcom/mycompany/app/main/MainConst;->b0:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    sget-object v3, Lcom/mycompany/app/main/MainConst;->b0:[I

    .line 9
    .line 10
    aget v3, v3, v2

    .line 11
    .line 12
    if-ne p0, v3, :cond_1

    .line 13
    .line 14
    const/high16 v0, -0x1000000

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    sget-boolean p0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->baseline_search_15_dark_24:I

    .line 23
    .line 24
    return p0

    .line 25
    :cond_0
    sget-object p0, Lcom/mycompany/app/main/MainConst;->d0:[I

    .line 26
    .line 27
    aget p0, p0, v2

    .line 28
    .line 29
    return p0

    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    sget-object p0, Lcom/mycompany/app/main/MainConst;->d0:[I

    .line 34
    .line 35
    aget p0, p0, v1

    .line 36
    .line 37
    return p0
.end method

.method public static f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookSearch;->c:Lcom/mycompany/app/db/book/DbBookSearch;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookSearch;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookSearch;->c:Lcom/mycompany/app/db/book/DbBookSearch;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookSearch;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookSearch.db"

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
    sget p0, Lcom/mycompany/app/db/book/DbBookSearch;->f:I

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p0, Lcom/mycompany/app/main/MainConst;->b0:[I

    .line 31
    .line 32
    array-length p0, p0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static {v2, p0}, Lcom/mycompany/app/main/MainUtil;->L6(II)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    sput p0, Lcom/mycompany/app/db/book/DbBookSearch;->f:I

    .line 39
    .line 40
    :goto_0
    sput-object v1, Lcom/mycompany/app/db/book/DbBookSearch;->c:Lcom/mycompany/app/db/book/DbBookSearch;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_1
    monitor-exit v0

    .line 46
    goto :goto_3

    .line 47
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0

    .line 49
    :cond_2
    :goto_3
    sget-object p0, Lcom/mycompany/app/db/book/DbBookSearch;->c:Lcom/mycompany/app/db/book/DbBookSearch;

    .line 50
    .line 51
    return-object p0
.end method

.method public static i(Landroid/content/Context;)Ljava/util/List;
    .locals 17

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/mycompany/app/web/WebSearch;->a()Lcom/mycompany/app/web/WebSearch;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/mycompany/app/web/WebSearch;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-lez v2, :cond_1

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    const/4 v1, 0x4

    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "DbBookSearch_table"

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 37
    .line 38
    .line 39
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_5

    .line 47
    .line 48
    const-string v4, "_id"

    .line 49
    .line 50
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    const-string v5, "_title"

    .line 55
    .line 56
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const-string v6, "_text"

    .line 61
    .line 62
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    const-string v7, "_color"

    .line 67
    .line 68
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    new-instance v8, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 75
    .line 76
    .line 77
    :cond_2
    :try_start_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-eqz v10, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    new-instance v10, Lcom/mycompany/app/web/WebSearch$WebSchItem;

    .line 89
    .line 90
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v11

    .line 97
    iput-wide v11, v10, Lcom/mycompany/app/web/WebSearch$WebSchItem;->a:J

    .line 98
    .line 99
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    iput-object v11, v10, Lcom/mycompany/app/web/WebSearch$WebSchItem;->b:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v9, v10, Lcom/mycompany/app/web/WebSearch$WebSchItem;->c:Ljava/lang/String;

    .line 106
    .line 107
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    iput v9, v10, Lcom/mycompany/app/web/WebSearch$WebSchItem;->d:I

    .line 112
    .line 113
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    sget v9, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 117
    .line 118
    int-to-long v11, v9

    .line 119
    iget-wide v13, v10, Lcom/mycompany/app/web/WebSearch$WebSchItem;->a:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    .line 121
    const-wide/16 v15, 0x64

    .line 122
    .line 123
    add-long/2addr v13, v15

    .line 124
    cmp-long v11, v11, v13

    .line 125
    .line 126
    if-nez v11, :cond_4

    .line 127
    .line 128
    :try_start_3
    iget-object v0, v10, Lcom/mycompany/app/web/WebSearch$WebSchItem;->c:Ljava/lang/String;

    .line 129
    .line 130
    iget v1, v10, Lcom/mycompany/app/web/WebSearch$WebSchItem;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    .line 132
    move v2, v1

    .line 133
    move v1, v9

    .line 134
    goto :goto_2

    .line 135
    :catch_0
    :goto_0
    move-object v1, v0

    .line 136
    :goto_1
    move-object v0, v3

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    :goto_2
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 139
    .line 140
    .line 141
    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 142
    if-nez v9, :cond_2

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :catch_1
    move v9, v1

    .line 146
    goto :goto_0

    .line 147
    :catch_2
    move-object v8, v0

    .line 148
    move v9, v1

    .line 149
    move-object v1, v8

    .line 150
    goto :goto_1

    .line 151
    :cond_5
    move-object v8, v0

    .line 152
    goto :goto_4

    .line 153
    :catch_3
    move-object v8, v0

    .line 154
    move v9, v1

    .line 155
    move-object v1, v8

    .line 156
    :goto_3
    move-object v3, v0

    .line 157
    move-object v0, v1

    .line 158
    move v1, v9

    .line 159
    :goto_4
    if-eqz v3, :cond_6

    .line 160
    .line 161
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 162
    .line 163
    .line 164
    :cond_6
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 165
    .line 166
    const/16 v4, 0xa

    .line 167
    .line 168
    if-lt v3, v4, :cond_8

    .line 169
    .line 170
    if-ne v3, v1, :cond_7

    .line 171
    .line 172
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 173
    .line 174
    if-ne v3, v2, :cond_7

    .line 175
    .line 176
    sget-object v3, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v3, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-nez v3, :cond_8

    .line 183
    .line 184
    :cond_7
    sput v1, Lcom/mycompany/app/pref/PrefZtwo;->j:I

    .line 185
    .line 186
    sput-object v0, Lcom/mycompany/app/pref/PrefZtwo;->k:Ljava/lang/String;

    .line 187
    .line 188
    sput v2, Lcom/mycompany/app/pref/PrefZtwo;->m:I

    .line 189
    .line 190
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/pref/PrefZtwo;->v(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    if-eqz v8, :cond_9

    .line 194
    .line 195
    invoke-static {}, Lcom/mycompany/app/web/WebSearch;->a()Lcom/mycompany/app/web/WebSearch;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iput-object v8, v0, Lcom/mycompany/app/web/WebSearch;->a:Ljava/util/ArrayList;

    .line 200
    .line 201
    :cond_9
    return-object v8
.end method

.method public static j(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    invoke-static {v0, p0}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p0, p1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookSearch_table (_id INTEGER PRIMARY KEY, _title TEXT, _text TEXT, _icon BLOB, _color INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookSearch_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookSearch_table (_id INTEGER PRIMARY KEY, _title TEXT, _text TEXT, _icon BLOB, _color INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
