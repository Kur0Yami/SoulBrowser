.class public Lcom/mycompany/app/db/book/DbTabState;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/db/book/DbTabState$StateItem;
    }
.end annotation


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbTabState;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "_pages"

    .line 4
    .line 5
    const-string v2, "_state"

    .line 6
    .line 7
    const-string v3, "_path"

    .line 8
    .line 9
    const-string v4, "_uid"

    .line 10
    .line 11
    const-string v5, "_secret"

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_1

    .line 20
    .line 21
    :cond_0
    const/16 v16, 0x0

    .line 22
    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_1
    const/4 v7, 0x0

    .line 26
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbTabState;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabState;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const-string v10, "DbTabState_table"

    .line 35
    .line 36
    const/4 v13, 0x0

    .line 37
    const/4 v14, 0x0

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 41
    .line 42
    .line 43
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 44
    if-eqz v8, :cond_b

    .line 45
    .line 46
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-eqz v9, :cond_b

    .line 51
    .line 52
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 72
    const/4 v14, 0x0

    .line 73
    const/4 v15, 0x0

    .line 74
    :goto_0
    if-nez v14, :cond_2

    .line 75
    .line 76
    :try_start_2
    invoke-static {v0, v7}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 77
    .line 78
    .line 79
    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 80
    const/16 v16, 0x0

    .line 81
    .line 82
    :try_start_3
    new-instance v6, Ljava/io/BufferedWriter;

    .line 83
    .line 84
    new-instance v7, Ljava/io/OutputStreamWriter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 85
    .line 86
    move-object/from16 p0, v14

    .line 87
    .line 88
    :try_start_4
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 89
    .line 90
    invoke-direct {v7, v15, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 94
    .line 95
    .line 96
    move-object v14, v6

    .line 97
    goto :goto_2

    .line 98
    :catch_0
    move-object/from16 p0, v14

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_1
    move-object/from16 p0, v14

    .line 102
    .line 103
    const/16 v16, 0x0

    .line 104
    .line 105
    :catch_2
    :goto_1
    move-object/from16 v14, p0

    .line 106
    .line 107
    :goto_2
    if-nez v14, :cond_3

    .line 108
    .line 109
    :catch_3
    :goto_3
    const/4 v7, 0x0

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :cond_2
    move-object/from16 p0, v14

    .line 113
    .line 114
    const/16 v16, 0x0

    .line 115
    .line 116
    :cond_3
    :try_start_5
    invoke-static {v14}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_4

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-static {v14, v5, v6}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-nez v6, :cond_5

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_5
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v6

    .line 138
    invoke-static {v14, v4, v6, v7}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-nez v6, :cond_6

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_6
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v14, v3, v6}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-nez v6, :cond_7

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_7
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v14, v2, v6}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-nez v6, :cond_8

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_8
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-static {v14, v1, v6}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 175
    if-nez v6, :cond_9

    .line 176
    .line 177
    :goto_4
    goto :goto_3

    .line 178
    :cond_9
    const/4 v6, 0x1

    .line 179
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 180
    .line 181
    .line 182
    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 183
    if-nez v7, :cond_a

    .line 184
    .line 185
    :catch_4
    move v7, v6

    .line 186
    goto :goto_6

    .line 187
    :cond_a
    const/4 v7, 0x0

    .line 188
    goto :goto_0

    .line 189
    :catch_5
    :cond_b
    const/16 v16, 0x0

    .line 190
    .line 191
    move-object/from16 v14, v16

    .line 192
    .line 193
    :goto_5
    move-object v15, v14

    .line 194
    goto :goto_3

    .line 195
    :catch_6
    const/16 v16, 0x0

    .line 196
    .line 197
    move-object/from16 v8, v16

    .line 198
    .line 199
    move-object v14, v8

    .line 200
    goto :goto_5

    .line 201
    :goto_6
    if-eqz v8, :cond_c

    .line 202
    .line 203
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    :cond_c
    if-eqz v14, :cond_d

    .line 207
    .line 208
    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 209
    .line 210
    .line 211
    :catch_7
    :cond_d
    if-eqz v15, :cond_e

    .line 212
    .line 213
    :try_start_8
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 214
    .line 215
    .line 216
    :catch_8
    :cond_e
    if-nez v7, :cond_10

    .line 217
    .line 218
    new-instance v1, Ljava/io/File;

    .line 219
    .line 220
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_f

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 230
    .line 231
    .line 232
    :cond_f
    return-object v16

    .line 233
    :cond_10
    new-instance v1, Ljava/io/File;

    .line 234
    .line 235
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    return-object v1

    .line 239
    :goto_7
    return-object v16
.end method

.method public static b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabState;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbTabState;->c:Lcom/mycompany/app/db/book/DbTabState;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbTabState;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbTabState;->c:Lcom/mycompany/app/db/book/DbTabState;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbTabState;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbTabState.db"

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
    sput-object v1, Lcom/mycompany/app/db/book/DbTabState;->c:Lcom/mycompany/app/db/book/DbTabState;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbTabState;->c:Lcom/mycompany/app/db/book/DbTabState;

    .line 35
    .line 36
    return-object p0
.end method

.method public static d(Landroid/content/Context;J)Lcom/mycompany/app/db/book/DbTabState$StateItem;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_e

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
    goto/16 :goto_8

    .line 11
    .line 12
    :cond_0
    const-string v1, "_state"

    .line 13
    .line 14
    const-string v2, "_pages"

    .line 15
    .line 16
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-string v6, "_uid=?"

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    filled-new-array {p1}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const/4 p1, 0x0

    .line 31
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbTabState;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabState;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "DbTabState_table"

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    .line 44
    .line 45
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    :try_start_2
    sget-boolean v3, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 63
    .line 64
    if-eqz v3, :cond_1

    .line 65
    .line 66
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move-object v2, v0

    .line 76
    :goto_0
    const/4 v3, 0x1

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move-object v1, v0

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    move v3, p1

    .line 81
    move-object v1, v0

    .line 82
    move-object v2, v1

    .line 83
    goto :goto_2

    .line 84
    :catch_1
    move-object p2, v0

    .line 85
    move-object v1, p2

    .line 86
    :catch_2
    :goto_1
    move v3, p1

    .line 87
    move-object v2, v0

    .line 88
    :goto_2
    if-eqz p2, :cond_3

    .line 89
    .line 90
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 91
    .line 92
    .line 93
    :cond_3
    if-nez v3, :cond_4

    .line 94
    .line 95
    goto/16 :goto_8

    .line 96
    .line 97
    :cond_4
    new-instance p2, Lcom/mycompany/app/db/book/DbTabState$StateItem;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_6

    .line 107
    .line 108
    :catch_3
    :cond_5
    :goto_3
    move-object v3, v0

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    const/4 v3, 0x2

    .line 111
    :try_start_3
    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    array-length v3, v1

    .line 118
    if-nez v3, :cond_7

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    new-instance v3, Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v4, "WEBVIEW_CHROMIUM_STATE"

    .line 127
    .line 128
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 129
    .line 130
    .line 131
    :goto_4
    iput-object v3, p2, Lcom/mycompany/app/db/book/DbTabState$StateItem;->a:Landroid/os/Bundle;

    .line 132
    .line 133
    sget v1, Lcom/mycompany/app/web/WebNestFrame;->v0:I

    .line 134
    .line 135
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 136
    .line 137
    if-nez v1, :cond_8

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_9

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_9
    const-string v1, "!@!"

    .line 148
    .line 149
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_d

    .line 154
    .line 155
    array-length v2, v1

    .line 156
    if-nez v2, :cond_a

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_a
    array-length v2, v1

    .line 160
    :goto_5
    if-ge p1, v2, :cond_d

    .line 161
    .line 162
    aget-object v3, v1, p1

    .line 163
    .line 164
    invoke-static {p0, v3}, Lcom/mycompany/app/main/MainUtil;->Y2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_b

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_b
    new-instance v4, Lcom/mycompany/app/web/WebNestFrame$PageItem;

    .line 176
    .line 177
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v3, v4, Lcom/mycompany/app/web/WebNestFrame$PageItem;->e:Ljava/lang/String;

    .line 181
    .line 182
    if-nez v0, :cond_c

    .line 183
    .line 184
    new-instance v0, Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .line 188
    .line 189
    :cond_c
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :goto_6
    add-int/lit8 p1, p1, 0x1

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_d
    :goto_7
    iput-object v0, p2, Lcom/mycompany/app/db/book/DbTabState$StateItem;->b:Ljava/util/ArrayList;

    .line 196
    .line 197
    return-object p2

    .line 198
    :cond_e
    :goto_8
    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbTabState;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "DbTabState_table"

    .line 12
    .line 13
    invoke-static {p0, v0, p1, p2}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static f(Landroid/content/Context;JLjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_5

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
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbTabState;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbTabState;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v1, "DbTabState_table"

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const-string v3, "_uid=?"

    .line 30
    .line 31
    invoke-static {p0, v1, v2, v3, v0}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_5

    .line 36
    .line 37
    if-nez p4, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :try_start_0
    const-string v5, "WEBVIEW_CHROMIUM_STATE"

    .line 41
    .line 42
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 43
    .line 44
    .line 45
    move-result-object p4

    .line 46
    if-eqz p4, :cond_3

    .line 47
    .line 48
    array-length v5, p4

    .line 49
    if-nez v5, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v5, 0x2

    .line 53
    invoke-static {p4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    :cond_3
    :goto_0
    new-instance p4, Landroid/content/ContentValues;

    .line 58
    .line 59
    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 63
    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "_secret"

    .line 69
    .line 70
    invoke-virtual {p4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    .line 72
    .line 73
    const-string v5, "_uid"

    .line 74
    .line 75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "_path"

    .line 83
    .line 84
    invoke-virtual {p4, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string p1, "_state"

    .line 88
    .line 89
    invoke-virtual {p4, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string p1, "_pages"

    .line 93
    .line 94
    invoke-virtual {p4, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x1

    .line 98
    if-ne v4, p1, :cond_4

    .line 99
    .line 100
    invoke-static {p0, v1, p4, v3, v0}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-static {p0, v1, p4}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 105
    .line 106
    .line 107
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbTabState_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _path TEXT, _state TEXT, _pages TEXT, _ads TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbTabState_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbTabState_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _path TEXT, _state TEXT, _pages TEXT, _ads TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
