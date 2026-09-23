.class public Lcom/mycompany/app/db/book/DbBookUser;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookUser;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "_use"

    .line 4
    .line 5
    const-string v2, "_time"

    .line 6
    .line 7
    const-string v3, "_path"

    .line 8
    .line 9
    const-string v4, "_rsv1"

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
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

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
    const-string v9, "DbBookUser_table"

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
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v14

    .line 130
    invoke-static {v12, v2, v14, v15}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

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

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_c

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
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    const-string v1, "_path"

    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v5, "_rsv1=? AND _use=?"

    .line 19
    .line 20
    const-string v2, "1"

    .line 21
    .line 22
    filled-new-array {p1, v2}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "DbBookUser_table"

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    if-eqz p0, :cond_9

    .line 42
    .line 43
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_9

    .line 48
    .line 49
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    move-object v1, v0

    .line 54
    :cond_1
    :try_start_2
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2}, Lcom/mycompany/app/web/WebClean;->e0(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    if-nez v2, :cond_4

    .line 66
    .line 67
    :cond_3
    :goto_0
    move-object v2, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_5

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    const-string v4, "##"

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-lez v4, :cond_3

    .line 83
    .line 84
    if-lt v4, v3, :cond_6

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_6
    add-int/lit8 v4, v4, 0x2

    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_7
    if-nez v1, :cond_8

    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    move-object v1, v3

    .line 108
    goto :goto_2

    .line 109
    :cond_8
    const-string v3, ","

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 118
    .line 119
    .line 120
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    if-nez v2, :cond_1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :catch_0
    :cond_9
    move-object v1, v0

    .line 125
    goto :goto_4

    .line 126
    :catch_1
    move-object p0, v0

    .line 127
    move-object v1, p0

    .line 128
    :catch_2
    :goto_4
    if-eqz p0, :cond_a

    .line 129
    .line 130
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 131
    .line 132
    .line 133
    :cond_a
    if-nez v1, :cond_b

    .line 134
    .line 135
    return-object v0

    .line 136
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :cond_c
    :goto_5
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookUser;->c:Lcom/mycompany/app/db/book/DbBookUser;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookUser;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookUser;->c:Lcom/mycompany/app/db/book/DbBookUser;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookUser;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookUser.db"

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
    sput-object v1, Lcom/mycompany/app/db/book/DbBookUser;->c:Lcom/mycompany/app/db/book/DbBookUser;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookUser;->c:Lcom/mycompany/app/db/book/DbBookUser;

    .line 35
    .line 36
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    const/16 v0, 0x23

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_3

    .line 19
    .line 20
    if-lt v0, v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_3
    :goto_0
    const-string p0, "noname"

    .line 30
    .line 31
    return-object p0
.end method

.method public static f(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v1, "DbBookUser_table"

    .line 21
    .line 22
    invoke-static {p0, v1, p1, p2}, Lcom/mycompany/app/db/DbUtil;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const-string v3, "_use"

    .line 27
    .line 28
    const-string v4, "_time"

    .line 29
    .line 30
    const-string v5, "_path"

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const-string v7, "_rsv1"

    .line 36
    .line 37
    invoke-static {v7, p3, v5, p4}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    if-ne v2, v6, :cond_1

    .line 42
    .line 43
    invoke-static {p0, v1, p3, p1, p2}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p3, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v1, p3}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    :cond_2
    :goto_0
    const-wide/16 p3, 0x0

    .line 70
    .line 71
    cmp-long p3, p1, p3

    .line 72
    .line 73
    if-nez p3, :cond_3

    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_3
    :try_start_0
    invoke-static {p0, v1, v0, p1, p2}, Lcom/mycompany/app/db/DbUtil;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    .line 78
    .line 79
    .line 80
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    const-string p1, "_id"

    .line 90
    .line 91
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_5

    .line 116
    .line 117
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .line 121
    .line 122
    :try_start_2
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    iput-wide v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 127
    .line 128
    iput-object p2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 129
    .line 130
    iput-object p2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 131
    .line 132
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getLong(I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    iput-wide v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 137
    .line 138
    invoke-interface {p0, p4}, Landroid/database/Cursor;->getInt(I)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    const/4 p3, 0x0

    .line 143
    if-ne p1, v6, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    move v6, p3

    .line 147
    :goto_1
    iput-boolean v6, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 148
    .line 149
    iput p3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 150
    .line 151
    const p1, -0x70708

    .line 152
    .line 153
    .line 154
    iput p1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 155
    .line 156
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_black_24:I

    .line 157
    .line 158
    iput p1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 159
    .line 160
    invoke-static {p2}, Lcom/mycompany/app/db/book/DbBookUser;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iput-object p1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v1}, Lcom/mycompany/app/list/book/ListBookUser;->q(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :catch_0
    :goto_2
    move-object v0, p0

    .line 171
    goto :goto_3

    .line 172
    :catch_1
    move-object v1, v0

    .line 173
    goto :goto_2

    .line 174
    :catch_2
    move-object v1, v0

    .line 175
    :goto_3
    move-object p0, v0

    .line 176
    :goto_4
    move-object v0, v1

    .line 177
    :cond_5
    if-eqz p0, :cond_6

    .line 178
    .line 179
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_5
    return-object v0
.end method

.method public static i(Landroid/content/Context;JZ)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "_use"

    .line 10
    .line 11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    filled-new-array {p1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p2, "DbBookUser_table"

    .line 35
    .line 36
    const-string p3, "_id=?"

    .line 37
    .line 38
    invoke-static {p0, p2, v0, p3, p1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookUser_table (_id INTEGER PRIMARY KEY, _path TEXT, _time INTEGER, _use INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookUser_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookUser_table (_id INTEGER PRIMARY KEY, _path TEXT, _time INTEGER, _use INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
