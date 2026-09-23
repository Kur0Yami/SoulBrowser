.class public Lcom/mycompany/app/db/book/DbBookDown;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookDown;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 12

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_5

    .line 4
    .line 5
    :cond_0
    const-string v0, ".down"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->G0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_c

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_2
    const-string v1, "_status"

    .line 36
    .line 37
    const-string v2, "_url"

    .line 38
    .line 39
    const-string v3, "_path"

    .line 40
    .line 41
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-string v5, "DbBookDown_table"

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 61
    .line 62
    .line 63
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    const/4 v5, 0x1

    .line 65
    if-eqz v4, :cond_8

    .line 66
    .line 67
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_8

    .line 72
    .line 73
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    :cond_3
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eq v6, v5, :cond_4

    .line 90
    .line 91
    const/4 v7, 0x2

    .line 92
    if-eq v6, v7, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {p0, v6}, Lcom/mycompany/app/main/MainUtil;->K0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_5

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-static {v7}, Lcom/mycompany/app/main/MainDownSvc;->s(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-nez v11, :cond_6

    .line 119
    .line 120
    new-instance v8, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    move-object v11, v8

    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-object p0, v11

    .line 128
    move-object v11, v4

    .line 129
    goto :goto_2

    .line 130
    :cond_6
    :goto_0
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    const/16 v8, 0xe

    .line 134
    .line 135
    if-ne v7, v8, :cond_7

    .line 136
    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v6, "b"

    .line 146
    .line 147
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    :cond_7
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 158
    .line 159
    .line 160
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    if-nez v6, :cond_3

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catch_1
    move-object p0, v11

    .line 165
    :goto_2
    move v5, v10

    .line 166
    move-object v4, v11

    .line 167
    move-object v11, p0

    .line 168
    :cond_8
    :goto_3
    if-eqz v4, :cond_9

    .line 169
    .line 170
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 171
    .line 172
    .line 173
    :cond_9
    if-eqz v5, :cond_c

    .line 174
    .line 175
    :try_start_2
    array-length p0, v0

    .line 176
    :goto_4
    if-ge v10, p0, :cond_c

    .line 177
    .line 178
    aget-object v1, v0, v10

    .line 179
    .line 180
    if-eqz v11, :cond_a

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-interface {v11, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_b

    .line 191
    .line 192
    :cond_a
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->y(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    .line 194
    .line 195
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :catch_2
    :cond_c
    :goto_5
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookDown;->c:Lcom/mycompany/app/db/book/DbBookDown;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookDown;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookDown;->c:Lcom/mycompany/app/db/book/DbBookDown;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookDown;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookDown.db"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x6

    .line 22
    invoke-direct {v1, p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/mycompany/app/db/book/DbBookDown;->c:Lcom/mycompany/app/db/book/DbBookDown;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookDown;->c:Lcom/mycompany/app/db/book/DbBookDown;

    .line 35
    .line 36
    return-object p0
.end method

.method public static d(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

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
    const-string v1, "_path"

    .line 12
    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

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
    const-string v3, "DbBookDown_table"

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
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0
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
    :goto_0
    if-eqz p0, :cond_2

    .line 50
    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static e(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

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
    const-string v1, "_url"

    .line 12
    .line 13
    filled-new-array {v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

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
    const-string v3, "DbBookDown_table"

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
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0
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
    :goto_0
    if-eqz p0, :cond_2

    .line 50
    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 7

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
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const-string p2, "1"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string p2, "0"

    .line 17
    .line 18
    :goto_0
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const/4 p1, 0x0

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "DbBookDown_table"

    .line 32
    .line 33
    const-string v4, "_secret=? AND _path=?"

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    .line 45
    .line 46
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    :catch_0
    :cond_2
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 53
    .line 54
    .line 55
    :cond_3
    :goto_1
    return v0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)J
    .locals 7

    .line 1
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 2
    .line 3
    sget-wide v5, Lcom/mycompany/app/pref/PrefSecret;->m:J

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/db/book/DbBookDown;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;ZJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;ZJ)J
    .locals 17

    .line 1
    move-object/from16 v7, p3

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    if-eqz p0, :cond_5

    .line 6
    .line 7
    iget-object v2, v7, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object v2, v7, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->P0(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    iget-wide v8, v7, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 23
    .line 24
    const/4 v12, 0x0

    .line 25
    const/16 v16, 0x1

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    move-wide v10, v8

    .line 29
    move-object/from16 v2, p0

    .line 30
    .line 31
    move-object/from16 v5, p1

    .line 32
    .line 33
    move-object/from16 v6, p2

    .line 34
    .line 35
    move/from16 v13, p4

    .line 36
    .line 37
    move-wide/from16 v14, p5

    .line 38
    .line 39
    invoke-static/range {v2 .. v16}, Lcom/mycompany/app/db/book/DbBookDown;->u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v5

    .line 43
    iget-wide v8, v7, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 44
    .line 45
    cmp-long v0, v8, v0

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 v0, 0x20

    .line 51
    .line 52
    if-ne v4, v0, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, v7, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/mycompany/app/data/DataUtil;->d(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x1

    .line 62
    if-eq v0, v1, :cond_4

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    if-eq v0, v1, :cond_4

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    return-wide v5

    .line 72
    :cond_4
    :goto_1
    invoke-static {v2, v0, v7}, Lcom/mycompany/app/data/DataUtil;->a(Landroid/content/Context;ILcom/mycompany/app/main/MainUri$UriItem;)V

    .line 73
    .line 74
    .line 75
    return-wide v5

    .line 76
    :cond_5
    :goto_2
    return-wide v0
.end method

.method public static k(Landroid/content/Context;J)V
    .locals 3

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
    const/4 v1, 0x3

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "_status"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "_rsv4"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    filled-new-array {p1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string p2, "DbBookDown_table"

    .line 46
    .line 47
    const-string v1, "_id=?"

    .line 48
    .line 49
    invoke-static {p0, p2, v0, v1, p1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, p0, v0

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p5, :cond_1

    .line 11
    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p5

    .line 16
    if-nez p5, :cond_1

    .line 17
    .line 18
    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainUtil;->A(Landroid/content/Context;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-nez p3, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p3, p4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->l(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-static {p2}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string p3, "DbBookDown_table"

    .line 43
    .line 44
    invoke-static {p2, p3, p0, p1}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    :cond_3
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
    const-string v0, "1"

    .line 5
    .line 6
    const-string v1, "2"

    .line 7
    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

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
    const-string v1, "DbBookDown_table"

    .line 21
    .line 22
    const-string v2, "_secret=? AND _status>?"

    .line 23
    .line 24
    invoke-static {p0, v1, v2, v0}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static n(Landroid/content/Context;JJJZ)V
    .locals 3

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
    const-string v1, "_status"

    .line 10
    .line 11
    if-eqz p7, :cond_1

    .line 12
    .line 13
    const/4 p7, 0x2

    .line 14
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p7

    .line 18
    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p7, 0x1

    .line 23
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p7

    .line 27
    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const-string p7, "_rsv4"

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, p7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    cmp-long p7, p3, v1

    .line 43
    .line 44
    if-lez p7, :cond_2

    .line 45
    .line 46
    const-string p7, "_size"

    .line 47
    .line 48
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {v0, p7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    cmp-long p3, p5, v1

    .line 56
    .line 57
    if-lez p3, :cond_3

    .line 58
    .line 59
    const-string p3, "_read"

    .line 60
    .line 61
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    filled-new-array {p1}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string p2, "DbBookDown_table"

    .line 85
    .line 86
    const-string p3, "_id=?"

    .line 87
    .line 88
    invoke-static {p0, p2, v0, p3, p1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static o(Landroid/content/Context;JJI)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v0, p3, v0

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    if-nez p5, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 16
    .line 17
    .line 18
    if-lez v0, :cond_2

    .line 19
    .line 20
    const-string v0, "_size"

    .line 21
    .line 22
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {v1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    if-lez p5, :cond_3

    .line 30
    .line 31
    const-string p3, "_fast"

    .line 32
    .line 33
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    filled-new-array {p1}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string p2, "DbBookDown_table"

    .line 57
    .line 58
    const-string p3, "_id=?"

    .line 59
    .line 60
    invoke-static {p0, p2, v1, p3, p1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static u(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;JJZZJZ)J
    .locals 18

    move/from16 v0, p1

    move-object/from16 v1, p5

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-wide/from16 v16, v2

    goto/16 :goto_7

    .line 2
    :cond_1
    const-string v4, "_secret=? AND _path=?"

    const/4 v5, 0x2

    const-string v6, "DbBookDown_table"

    const-string v7, "1"

    if-eqz p11, :cond_2

    cmp-long v8, p12, v2

    if-nez v8, :cond_2

    if-le v0, v5, :cond_2

    .line 3
    iget-object v0, v1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    filled-new-array {v7, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5
    invoke-static {v1, v6, v4, v0}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-wide v2

    :cond_2
    if-eq v0, v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    move/from16 v5, p10

    .line 6
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7
    const-string v10, "0"

    if-eqz p11, :cond_4

    move-object v11, v7

    goto :goto_1

    :cond_4
    move-object v11, v10

    :goto_1
    iget-object v12, v1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    .line 8
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    move-result-object v12

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const/4 v13, 0x0

    .line 9
    invoke-static {v12, v6, v13, v4, v11}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_6

    .line 10
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    move-wide/from16 v16, v2

    .line 11
    const-string v2, "_status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    const-string v0, "_type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    const-string v0, "_url"

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v0, "_rsv1"

    move-object/from16 v2, p4

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v0, "_dir"

    iget-object v2, v1, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "_dname"

    iget-object v2, v1, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "_path"

    iget-object v2, v1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "_name"

    iget-object v1, v1, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "_size"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    const-string v0, "_read"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    const-string v0, "_time"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    const-string v0, "_rsv4"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    if-ne v14, v0, :cond_5

    .line 23
    invoke-static {v12, v6, v15, v4, v11}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 24
    :cond_5
    const-string v0, "_secret"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    invoke-static {v12, v6, v15}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_3

    :cond_6
    move-wide/from16 v16, v2

    :goto_2
    move-wide/from16 v0, v16

    :goto_3
    if-nez p14, :cond_7

    goto :goto_7

    :cond_7
    cmp-long v2, v0, v16

    if-lez v2, :cond_8

    return-wide v0

    .line 26
    :cond_8
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    if-eqz p11, :cond_9

    goto :goto_4

    :cond_9
    move-object v7, v10

    .line 27
    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v7, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 28
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookDown;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDown;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 29
    const-string v4, "DbBookDown_table"

    const-string v5, "_secret=? AND _time=?"

    const/4 v6, 0x0

    move-object/from16 p2, v1

    move-object/from16 p4, v2

    move-object/from16 p0, v3

    move-object/from16 p1, v4

    move-object/from16 p3, v5

    move-object/from16 p5, v6

    invoke-static/range {p0 .. p5}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 30
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 31
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    :cond_a
    move-wide/from16 v0, v16

    :goto_5
    if-eqz v13, :cond_b

    .line 32
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b
    cmp-long v2, v0, v16

    if-gtz v2, :cond_c

    move-wide/from16 v2, v16

    goto :goto_6

    :cond_c
    move-wide v2, v0

    :goto_6
    return-wide v2

    :goto_7
    return-wide v16
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookDown_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _status INTEGER, _type INTEGER, _url TEXT, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _size INTEGER, _read INTEGER, _time INTEGER, _fast INTEGER, _vcnt1 INTEGER, _vcnt2 INTEGER, _vcnt3 INTEGER, _acnt1 INTEGER, _acnt2 INTEGER, _acnt3 INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookDown_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookDown_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _status INTEGER, _type INTEGER, _url TEXT, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _size INTEGER, _read INTEGER, _time INTEGER, _fast INTEGER, _vcnt1 INTEGER, _vcnt2 INTEGER, _vcnt3 INTEGER, _acnt1 INTEGER, _acnt2 INTEGER, _acnt3 INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
