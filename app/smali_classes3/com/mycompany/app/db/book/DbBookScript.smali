.class public Lcom/mycompany/app/db/book/DbBookScript;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookScript;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

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
    const-string p2, "DbBookScript_table"

    .line 27
    .line 28
    const-string v0, "_name=? AND _namespace=?"

    .line 29
    .line 30
    invoke-static {p0, p2, v0, p1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 12

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_d

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "DbBookScript_table"

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 33
    if-eqz p0, :cond_7

    .line 34
    .line 35
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_7

    .line 40
    .line 41
    const-string v3, "_downurl"

    .line 42
    .line 43
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const-string v4, "_name"

    .line 48
    .line 49
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const-string v5, "_content"

    .line 54
    .line 55
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 59
    move-object v6, v1

    .line 60
    move-object v7, v6

    .line 61
    :cond_1
    if-nez v6, :cond_2

    .line 62
    .line 63
    :try_start_2
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    new-instance v8, Ljava/io/BufferedWriter;

    .line 68
    .line 69
    new-instance v9, Ljava/io/OutputStreamWriter;

    .line 70
    .line 71
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 72
    .line 73
    invoke-direct {v9, v7, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    .line 78
    .line 79
    move-object v6, v8

    .line 80
    :catch_0
    if-nez v6, :cond_2

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_2
    :try_start_3
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-eqz v10, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_5

    .line 114
    .line 115
    :goto_0
    move v8, v2

    .line 116
    goto :goto_1

    .line 117
    :cond_5
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-nez v11, :cond_6

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 140
    .line 141
    .line 142
    const/4 v8, 0x1

    .line 143
    :goto_1
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 144
    .line 145
    .line 146
    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 147
    if-nez v9, :cond_1

    .line 148
    .line 149
    :catch_1
    move v2, v8

    .line 150
    goto :goto_3

    .line 151
    :catch_2
    :cond_7
    move-object v6, v1

    .line 152
    :goto_2
    move-object v7, v6

    .line 153
    goto :goto_3

    .line 154
    :catch_3
    move-object p0, v1

    .line 155
    move-object v6, p0

    .line 156
    goto :goto_2

    .line 157
    :catch_4
    :goto_3
    if-eqz p0, :cond_8

    .line 158
    .line 159
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 160
    .line 161
    .line 162
    :cond_8
    if-eqz v6, :cond_9

    .line 163
    .line 164
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 165
    .line 166
    .line 167
    :catch_5
    :cond_9
    if-eqz v7, :cond_a

    .line 168
    .line 169
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 170
    .line 171
    .line 172
    :catch_6
    :cond_a
    if-nez v2, :cond_c

    .line 173
    .line 174
    new-instance p0, Ljava/io/File;

    .line 175
    .line 176
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_b

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 186
    .line 187
    .line 188
    :cond_b
    return-object v1

    .line 189
    :cond_c
    new-instance p0, Ljava/io/File;

    .line 190
    .line 191
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-object p0

    .line 195
    :cond_d
    :goto_4
    return-object v1
.end method

.method public static d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookScript;->c:Lcom/mycompany/app/db/book/DbBookScript;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookScript;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookScript;->c:Lcom/mycompany/app/db/book/DbBookScript;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookScript;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookScript.db"

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
    sput-object v1, Lcom/mycompany/app/db/book/DbBookScript;->c:Lcom/mycompany/app/db/book/DbBookScript;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookScript;->c:Lcom/mycompany/app/db/book/DbBookScript;

    .line 35
    .line 36
    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "_key"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_0
    const-string v6, "_name=? AND _namespace=?"

    .line 18
    .line 19
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "DbBookScript_table_value"

    .line 32
    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    :cond_1
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    new-array p2, p2, [Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .line 84
    move-object v2, p1

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-object p0, v2

    .line 87
    :catch_1
    :goto_0
    if-eqz p0, :cond_3

    .line 88
    .line 89
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 90
    .line 91
    .line 92
    :catch_2
    :cond_3
    :goto_1
    return-object v2
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10

    .line 1
    const-string v0, "_namespace"

    .line 2
    .line 3
    const-string v1, "_name"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "_pattern"

    .line 7
    .line 8
    filled-new-array {v1, v0, v3}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v9, 0x0

    .line 21
    move-object v5, p1

    .line 22
    move-object v7, p2

    .line 23
    move-object v8, p3

    .line 24
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 28
    :try_start_1
    new-instance p1, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    .line 32
    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    :cond_0
    new-instance v0, Lcom/mycompany/app/script/ScriptId;

    .line 50
    .line 51
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/script/ScriptId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/List;

    .line 67
    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    :goto_0
    move-object v2, p0

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    :goto_1
    const/4 v0, 0x2

    .line 82
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    if-nez v0, :cond_0

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catch_1
    move-object p1, v2

    .line 97
    goto :goto_0

    .line 98
    :catch_2
    move-object p1, v2

    .line 99
    :goto_2
    move-object p0, v2

    .line 100
    :cond_2
    :goto_3
    if-eqz p0, :cond_3

    .line 101
    .line 102
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 103
    .line 104
    .line 105
    :catch_3
    :cond_3
    return-object p1
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11

    .line 1
    const-string v1, "DbBookScript_table_require"

    .line 2
    .line 3
    const-string v6, "_content"

    .line 4
    .line 5
    const-string v7, "_downurl"

    .line 6
    .line 7
    const-string v8, "_namespace"

    .line 8
    .line 9
    const-string v9, "_name"

    .line 10
    .line 11
    const/4 v10, 0x0

    .line 12
    :try_start_0
    filled-new-array {v9, v8, v7, v6}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v5, 0x0

    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p2

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 31
    :try_start_1
    new-instance p1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :cond_0
    new-instance v3, Lcom/mycompany/app/script/ScriptId;

    .line 61
    .line 62
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-direct {v3, v4, v5}, Lcom/mycompany/app/script/ScriptId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ljava/util/List;

    .line 78
    .line 79
    if-nez v4, :cond_1

    .line 80
    .line 81
    new-instance v4, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    :goto_0
    move-object v10, p0

    .line 91
    goto :goto_2

    .line 92
    :cond_1
    :goto_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    new-instance v6, Lcom/mycompany/app/script/ScriptRequire;

    .line 101
    .line 102
    invoke-direct {v6, v3, v5}, Lcom/mycompany/app/script/ScriptRequire;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 109
    .line 110
    .line 111
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    if-nez v3, :cond_0

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catch_1
    move-object p1, v10

    .line 116
    goto :goto_0

    .line 117
    :catch_2
    move-object p1, v10

    .line 118
    :goto_2
    move-object p0, v10

    .line 119
    :cond_2
    :goto_3
    if-eqz p0, :cond_3

    .line 120
    .line 121
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 122
    .line 123
    .line 124
    :catch_3
    :cond_3
    return-object p1
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12

    .line 1
    const-string v1, "DbBookScript_table_resource"

    .line 2
    .line 3
    const-string v6, "_data"

    .line 4
    .line 5
    const-string v7, "_resname"

    .line 6
    .line 7
    const-string v8, "_downurl"

    .line 8
    .line 9
    const-string v9, "_namespace"

    .line 10
    .line 11
    const-string v10, "_name"

    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    :try_start_0
    filled-new-array {v10, v9, v8, v7, v6}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v3, p1

    .line 28
    move-object v4, p2

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 33
    :try_start_1
    new-instance p1, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    .line 37
    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    :cond_0
    new-instance v4, Lcom/mycompany/app/script/ScriptId;

    .line 67
    .line 68
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-direct {v4, v5, v6}, Lcom/mycompany/app/script/ScriptId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Ljava/util/List;

    .line 84
    .line 85
    if-nez v5, :cond_1

    .line 86
    .line 87
    new-instance v5, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    :goto_0
    move-object v11, p0

    .line 97
    goto :goto_2

    .line 98
    :cond_1
    :goto_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    new-instance v8, Lcom/mycompany/app/script/ScriptResource;

    .line 111
    .line 112
    invoke-direct {v8, v7, v6, v4}, Lcom/mycompany/app/script/ScriptResource;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 119
    .line 120
    .line 121
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    if-nez v4, :cond_0

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catch_1
    move-object p1, v11

    .line 126
    goto :goto_0

    .line 127
    :catch_2
    move-object p1, v11

    .line 128
    :goto_2
    move-object p0, v11

    .line 129
    :cond_2
    :goto_3
    if-eqz p0, :cond_3

    .line 130
    .line 131
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 132
    .line 133
    .line 134
    :catch_3
    :cond_3
    return-object p1
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/script/Script;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mycompany/app/script/ScriptId;

    .line 16
    .line 17
    invoke-direct {v0, p1, p2}, Lcom/mycompany/app/script/ScriptId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    new-array p1, p1, [Lcom/mycompany/app/script/ScriptId;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    aput-object v0, p1, p2

    .line 25
    .line 26
    invoke-static {p0, p1, v1}, Lcom/mycompany/app/db/book/DbBookScript;->l(Landroid/content/Context;[Lcom/mycompany/app/script/ScriptId;Ljava/lang/Boolean;)[Lcom/mycompany/app/script/Script;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    array-length p1, p0

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    aget-object p0, p0, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    return-object p0

    .line 39
    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static l(Landroid/content/Context;[Lcom/mycompany/app/script/ScriptId;Ljava/lang/Boolean;)[Lcom/mycompany/app/script/Script;
    .locals 50

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v4, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    array-length v5, v1

    .line 16
    const/4 v6, 0x0

    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    new-array v0, v6, [Lcom/mycompany/app/script/Script;

    .line 20
    .line 21
    return-object v0

    .line 22
    :catch_0
    const/4 v2, 0x0

    .line 23
    const/16 v18, 0x0

    .line 24
    .line 25
    goto/16 :goto_d

    .line 26
    .line 27
    :cond_0
    invoke-static {v1, v3, v4}, Lcom/mycompany/app/db/book/DbBookScript;->n([Lcom/mycompany/app/script/ScriptId;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    new-array v5, v5, [Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    const-string v7, "_enabled"

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    :try_start_1
    const-string v8, "("

    .line 51
    .line 52
    invoke-virtual {v3, v6, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    const-string v9, ")"

    .line 57
    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v9, " AND "

    .line 62
    .line 63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v8, " = ?"

    .line 70
    .line 71
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_1

    .line 79
    .line 80
    const-string v8, "1"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const-string v8, "0"

    .line 84
    .line 85
    :goto_0
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    new-array v3, v3, [Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    move-object v13, v3

    .line 103
    check-cast v13, [Ljava/lang/String;

    .line 104
    .line 105
    const-string v3, "DbBookScript_table_exclude"

    .line 106
    .line 107
    invoke-static {v0, v3, v1, v5}, Lcom/mycompany/app/db/book/DbBookScript;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const-string v4, "DbBookScript_table_include"

    .line 112
    .line 113
    invoke-static {v0, v4, v1, v5}, Lcom/mycompany/app/db/book/DbBookScript;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const-string v8, "DbBookScript_table_match"

    .line 118
    .line 119
    invoke-static {v0, v8, v1, v5}, Lcom/mycompany/app/db/book/DbBookScript;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-static {v0, v1, v5}, Lcom/mycompany/app/db/book/DbBookScript;->i(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    invoke-static {v0, v1, v5}, Lcom/mycompany/app/db/book/DbBookScript;->j(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v16, "_name"

    .line 132
    .line 133
    const-string v17, "_namespace"

    .line 134
    .line 135
    const-string v18, "_descript"

    .line 136
    .line 137
    const-string v19, "_downurl"

    .line 138
    .line 139
    const-string v20, "_updateurl"

    .line 140
    .line 141
    const-string v21, "_insturl"

    .line 142
    .line 143
    const-string v22, "_icon"

    .line 144
    .line 145
    const-string v23, "_runat"

    .line 146
    .line 147
    const-string v24, "_flags"

    .line 148
    .line 149
    const-string v25, "_version"

    .line 150
    .line 151
    const-string v26, "_content"

    .line 152
    .line 153
    const-string v27, "_enabled"

    .line 154
    .line 155
    const-string v28, "_id"

    .line 156
    .line 157
    const-string v29, "_time"

    .line 158
    .line 159
    const-string v30, "_loccode"

    .line 160
    .line 161
    const-string v31, "_locname"

    .line 162
    .line 163
    const-string v32, "_locdesc"

    .line 164
    .line 165
    const-string v33, "_author"

    .line 166
    .line 167
    filled-new-array/range {v16 .. v33}, [Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    const-string v10, "DbBookScript_table"

    .line 180
    .line 181
    const/4 v14, 0x0

    .line 182
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 183
    .line 184
    .line 185
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    new-array v5, v5, [Lcom/mycompany/app/script/Script;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 191
    .line 192
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eqz v9, :cond_a

    .line 197
    .line 198
    const-string v9, "_name"

    .line 199
    .line 200
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    const-string v10, "_namespace"

    .line 205
    .line 206
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    const-string v11, "_descript"

    .line 211
    .line 212
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    const-string v12, "_downurl"

    .line 217
    .line 218
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    const-string v13, "_updateurl"

    .line 223
    .line 224
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    const-string v14, "_insturl"

    .line 229
    .line 230
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    const-string v2, "_icon"

    .line 235
    .line 236
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    const-string v6, "_runat"

    .line 241
    .line 242
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 246
    move-object/from16 v18, v5

    .line 247
    .line 248
    :try_start_4
    const-string v5, "_flags"

    .line 249
    .line 250
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    move-object/from16 p1, v1

    .line 255
    .line 256
    const-string v1, "_version"

    .line 257
    .line 258
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    move-object/from16 p2, v15

    .line 263
    .line 264
    const-string v15, "_content"

    .line 265
    .line 266
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    move/from16 p0, v7

    .line 275
    .line 276
    const-string v7, "_id"

    .line 277
    .line 278
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    move/from16 v19, v7

    .line 283
    .line 284
    const-string v7, "_time"

    .line 285
    .line 286
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v7

    .line 290
    move/from16 v20, v7

    .line 291
    .line 292
    const-string v7, "_loccode"

    .line 293
    .line 294
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    move/from16 v21, v15

    .line 299
    .line 300
    const-string v15, "_locname"

    .line 301
    .line 302
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    move-result v15

    .line 306
    move/from16 v22, v15

    .line 307
    .line 308
    const-string v15, "_locdesc"

    .line 309
    .line 310
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    move-result v15

    .line 314
    move/from16 v23, v15

    .line 315
    .line 316
    const-string v15, "_author"

    .line 317
    .line 318
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    move/from16 v46, v15

    .line 323
    .line 324
    const/16 v24, 0x0

    .line 325
    .line 326
    :goto_1
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v15

    .line 330
    move/from16 v47, v9

    .line 331
    .line 332
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v9

    .line 336
    move/from16 v48, v10

    .line 337
    .line 338
    new-instance v10, Lcom/mycompany/app/script/ScriptId;

    .line 339
    .line 340
    invoke-direct {v10, v15, v9}, Lcom/mycompany/app/script/ScriptId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v25

    .line 347
    move-object/from16 v49, v3

    .line 348
    .line 349
    move-object/from16 v3, v25

    .line 350
    .line 351
    check-cast v3, Ljava/util/List;

    .line 352
    .line 353
    if-nez v3, :cond_3

    .line 354
    .line 355
    move-object/from16 v27, v9

    .line 356
    .line 357
    const/16 v28, 0x0

    .line 358
    .line 359
    goto :goto_2

    .line 360
    :cond_3
    move-object/from16 v27, v9

    .line 361
    .line 362
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 363
    .line 364
    .line 365
    move-result v9

    .line 366
    new-array v9, v9, [Ljava/lang/String;

    .line 367
    .line 368
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    check-cast v3, [Ljava/lang/String;

    .line 373
    .line 374
    move-object/from16 v28, v3

    .line 375
    .line 376
    :goto_2
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    check-cast v3, Ljava/util/List;

    .line 381
    .line 382
    if-nez v3, :cond_4

    .line 383
    .line 384
    const/16 v29, 0x0

    .line 385
    .line 386
    goto :goto_3

    .line 387
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 388
    .line 389
    .line 390
    move-result v9

    .line 391
    new-array v9, v9, [Ljava/lang/String;

    .line 392
    .line 393
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    check-cast v3, [Ljava/lang/String;

    .line 398
    .line 399
    move-object/from16 v29, v3

    .line 400
    .line 401
    :goto_3
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    check-cast v3, Ljava/util/List;

    .line 406
    .line 407
    if-nez v3, :cond_5

    .line 408
    .line 409
    const/16 v30, 0x0

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 413
    .line 414
    .line 415
    move-result v9

    .line 416
    new-array v9, v9, [Ljava/lang/String;

    .line 417
    .line 418
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    check-cast v3, [Ljava/lang/String;

    .line 423
    .line 424
    move-object/from16 v30, v3

    .line 425
    .line 426
    :goto_4
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v31

    .line 430
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v32

    .line 434
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v33

    .line 438
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v34

    .line 442
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v35

    .line 446
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v36

    .line 450
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 451
    .line 452
    .line 453
    move-result v37

    .line 454
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v38

    .line 458
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v42

    .line 462
    move/from16 v3, v22

    .line 463
    .line 464
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v43

    .line 468
    move/from16 v9, v23

    .line 469
    .line 470
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v44

    .line 474
    move/from16 v22, v1

    .line 475
    .line 476
    move/from16 v1, v46

    .line 477
    .line 478
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v45

    .line 482
    move/from16 v46, v1

    .line 483
    .line 484
    move-object/from16 v1, p2

    .line 485
    .line 486
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v23

    .line 490
    move-object/from16 p2, v1

    .line 491
    .line 492
    move-object/from16 v1, v23

    .line 493
    .line 494
    check-cast v1, Ljava/util/List;

    .line 495
    .line 496
    if-nez v1, :cond_6

    .line 497
    .line 498
    move/from16 v23, v2

    .line 499
    .line 500
    const/16 v39, 0x0

    .line 501
    .line 502
    :goto_5
    move-object/from16 v1, p1

    .line 503
    .line 504
    goto :goto_6

    .line 505
    :cond_6
    move/from16 v23, v2

    .line 506
    .line 507
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 508
    .line 509
    .line 510
    move-result v2

    .line 511
    new-array v2, v2, [Lcom/mycompany/app/script/ScriptRequire;

    .line 512
    .line 513
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    check-cast v1, [Lcom/mycompany/app/script/ScriptRequire;

    .line 518
    .line 519
    move-object/from16 v39, v1

    .line 520
    .line 521
    goto :goto_5

    .line 522
    :goto_6
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    check-cast v2, Ljava/util/List;

    .line 527
    .line 528
    if-nez v2, :cond_7

    .line 529
    .line 530
    const/16 v40, 0x0

    .line 531
    .line 532
    :goto_7
    move/from16 v2, v21

    .line 533
    .line 534
    goto :goto_8

    .line 535
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 536
    .line 537
    .line 538
    move-result v10

    .line 539
    new-array v10, v10, [Lcom/mycompany/app/script/ScriptResource;

    .line 540
    .line 541
    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    check-cast v2, [Lcom/mycompany/app/script/ScriptResource;

    .line 546
    .line 547
    move-object/from16 v40, v2

    .line 548
    .line 549
    goto :goto_7

    .line 550
    :goto_8
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v41

    .line 554
    new-instance v25, Lcom/mycompany/app/script/Script;

    .line 555
    .line 556
    move-object/from16 v26, v15

    .line 557
    .line 558
    invoke-direct/range {v25 .. v45}, Lcom/mycompany/app/script/Script;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/mycompany/app/script/ScriptRequire;[Lcom/mycompany/app/script/ScriptResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    move-object/from16 v10, v25

    .line 562
    .line 563
    move-object/from16 p1, v1

    .line 564
    .line 565
    move/from16 v21, v2

    .line 566
    .line 567
    move/from16 v15, v19

    .line 568
    .line 569
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 570
    .line 571
    .line 572
    move-result-wide v1

    .line 573
    iput-wide v1, v10, Lcom/mycompany/app/script/Script;->q:J

    .line 574
    .line 575
    move/from16 v19, v3

    .line 576
    .line 577
    move/from16 v1, v20

    .line 578
    .line 579
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 580
    .line 581
    .line 582
    move-result-wide v2

    .line 583
    iput-wide v2, v10, Lcom/mycompany/app/script/Script;->r:J

    .line 584
    .line 585
    move/from16 v2, p0

    .line 586
    .line 587
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 588
    .line 589
    .line 590
    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 591
    move-object/from16 p0, v0

    .line 592
    .line 593
    const/4 v0, 0x1

    .line 594
    if-ne v3, v0, :cond_8

    .line 595
    .line 596
    goto :goto_9

    .line 597
    :cond_8
    const/4 v0, 0x0

    .line 598
    :goto_9
    :try_start_5
    iput-boolean v0, v10, Lcom/mycompany/app/script/Script;->s:Z

    .line 599
    .line 600
    aput-object v10, v18, v24

    .line 601
    .line 602
    add-int/lit8 v24, v24, 0x1

    .line 603
    .line 604
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 605
    .line 606
    .line 607
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 608
    if-nez v0, :cond_9

    .line 609
    .line 610
    goto :goto_b

    .line 611
    :cond_9
    move-object/from16 v0, p0

    .line 612
    .line 613
    move/from16 v20, v1

    .line 614
    .line 615
    move/from16 p0, v2

    .line 616
    .line 617
    move/from16 v1, v22

    .line 618
    .line 619
    move/from16 v2, v23

    .line 620
    .line 621
    move/from16 v10, v48

    .line 622
    .line 623
    move-object/from16 v3, v49

    .line 624
    .line 625
    move/from16 v23, v9

    .line 626
    .line 627
    move/from16 v22, v19

    .line 628
    .line 629
    move/from16 v9, v47

    .line 630
    .line 631
    move/from16 v19, v15

    .line 632
    .line 633
    goto/16 :goto_1

    .line 634
    .line 635
    :catch_1
    :goto_a
    move-object/from16 v2, p0

    .line 636
    .line 637
    goto :goto_d

    .line 638
    :catch_2
    move-object/from16 p0, v0

    .line 639
    .line 640
    goto :goto_a

    .line 641
    :catch_3
    move-object/from16 p0, v0

    .line 642
    .line 643
    move-object/from16 v18, v5

    .line 644
    .line 645
    goto :goto_a

    .line 646
    :cond_a
    move-object/from16 p0, v0

    .line 647
    .line 648
    move-object/from16 v18, v5

    .line 649
    .line 650
    :goto_b
    move-object/from16 v0, p0

    .line 651
    .line 652
    :goto_c
    move-object/from16 v5, v18

    .line 653
    .line 654
    goto :goto_e

    .line 655
    :catch_4
    move-object/from16 p0, v0

    .line 656
    .line 657
    const/16 v18, 0x0

    .line 658
    .line 659
    goto :goto_a

    .line 660
    :goto_d
    move-object v0, v2

    .line 661
    goto :goto_c

    .line 662
    :goto_e
    if-eqz v0, :cond_b

    .line 663
    .line 664
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 665
    .line 666
    .line 667
    :catch_5
    :cond_b
    return-object v5
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "_value"

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_0
    const-string v6, "_name=? AND _namespace=? AND _key=?"

    .line 24
    .line 25
    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "DbBookScript_table_value"

    .line 38
    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-object p0, v2

    .line 66
    :catch_1
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 67
    .line 68
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    .line 70
    .line 71
    :catch_2
    :cond_2
    :goto_1
    return-object v2
.end method

.method public static n([Lcom/mycompany/app/script/ScriptId;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    :try_start_0
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    const-string v4, " OR ("

    .line 9
    .line 10
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v4, "_name"

    .line 14
    .line 15
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v4, "=? AND "

    .line 19
    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, "_namespace"

    .line 24
    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, "=?)"

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v4, v3, Lcom/mycompany/app/script/ScriptId;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v3, v3, Lcom/mycompany/app/script/ScriptId;->b:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p0, 0x4

    .line 47
    invoke-virtual {p1, v1, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    return-void
.end method

.method public static o(Landroid/content/Context;Lcom/mycompany/app/script/Script;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lcom/mycompany/app/script/Script;->w:Ljava/lang/String;

    iget-object v4, v1, Lcom/mycompany/app/script/Script;->v:Ljava/lang/String;

    iget-object v5, v1, Lcom/mycompany/app/script/Script;->u:Ljava/lang/String;

    iget-object v6, v1, Lcom/mycompany/app/script/Script;->t:Ljava/lang/String;

    iget-object v7, v1, Lcom/mycompany/app/script/ScriptMetadata;->m:Ljava/lang/String;

    iget-object v8, v1, Lcom/mycompany/app/script/ScriptMetadata;->j:Ljava/lang/String;

    iget-object v9, v1, Lcom/mycompany/app/script/ScriptMetadata;->g:Ljava/lang/String;

    iget-object v10, v1, Lcom/mycompany/app/script/ScriptMetadata;->f:Ljava/lang/String;

    iget-object v11, v1, Lcom/mycompany/app/script/ScriptId;->b:Ljava/lang/String;

    iget-object v12, v1, Lcom/mycompany/app/script/ScriptId;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2
    iget-object v14, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    invoke-static {v12, v14}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v14, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    .line 3
    invoke-static {v11, v14}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v3

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v14, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    iget-object v15, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    invoke-static {v0, v14, v15}, Lcom/mycompany/app/db/book/DbBookScript;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/mycompany/app/data/book/DataBookScript;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookScript;

    move-result-object v14

    move-object v15, v3

    iget-wide v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    invoke-virtual {v14, v2, v3}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    const/4 v2, 0x0

    .line 6
    :goto_1
    const-string v3, "_id"

    const-string v14, "_enabled"

    if-nez v2, :cond_7

    .line 7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v17, v15

    const/4 v6, 0x1

    goto/16 :goto_8

    .line 8
    :cond_3
    filled-new-array {v3, v14}, [Ljava/lang/String;

    move-result-object v18

    .line 9
    const-string v19, "_name=? AND _namespace=?"

    .line 10
    filled-new-array {v12, v11}, [Ljava/lang/String;

    move-result-object v20

    .line 11
    :try_start_0
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .line 12
    const-string v17, "DbBookScript_table"

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v2, :cond_5

    .line 13
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 14
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v17, v15

    .line 15
    :try_start_2
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v18, v4

    .line 16
    :try_start_3
    new-instance v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 17
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 18
    :try_start_4
    iput-object v12, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 19
    iput-object v11, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    .line 20
    :try_start_5
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 21
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    :try_start_6
    iput-boolean v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    :catch_0
    :goto_3
    const/4 v6, 0x1

    goto :goto_7

    :catch_1
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_3

    :catch_2
    :goto_4
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :goto_5
    const/4 v6, 0x1

    goto :goto_6

    :catch_3
    move-object/from16 v18, v4

    goto :goto_4

    :catch_4
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v17, v15

    goto :goto_5

    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v17, v15

    goto :goto_5

    :goto_6
    const/4 v4, 0x0

    goto :goto_7

    :catch_5
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v17, v15

    const/4 v6, 0x1

    const/4 v2, 0x0

    goto :goto_6

    :catch_6
    :goto_7
    if-eqz v2, :cond_6

    .line 22
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v2, v4

    goto :goto_9

    :goto_8
    const/4 v2, 0x0

    goto :goto_9

    :cond_7
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v17, v15

    const/4 v6, 0x1

    .line 23
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v21, 0x0

    move-object v13, v7

    if-eqz v2, :cond_8

    .line 24
    iget-wide v6, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    cmp-long v15, v6, v21

    if-lez v15, :cond_8

    .line 25
    iget-boolean v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    goto :goto_a

    :cond_8
    move-wide v6, v4

    const/4 v2, 0x1

    .line 26
    :goto_a
    iput-wide v6, v1, Lcom/mycompany/app/script/Script;->q:J

    .line 27
    iput-wide v4, v1, Lcom/mycompany/app/script/Script;->r:J

    .line 28
    iput-boolean v2, v1, Lcom/mycompany/app/script/Script;->s:Z

    .line 29
    invoke-static {v0, v12, v11}, Lcom/mycompany/app/db/book/DbBookScript;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 31
    const-string v4, "_name"

    invoke-virtual {v2, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v4, "_namespace"

    invoke-virtual {v2, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v5, v1, Lcom/mycompany/app/script/ScriptCriteria;->c:[Ljava/lang/String;

    .line 35
    const-string v6, "_pattern"

    if-eqz v5, :cond_9

    .line 36
    array-length v7, v5

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v7, :cond_9

    aget-object v0, v5, v15

    move-object/from16 v23, v5

    .line 37
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 38
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v23

    goto :goto_b

    .line 40
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v5, v1, Lcom/mycompany/app/script/ScriptCriteria;->d:[Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 42
    array-length v7, v5

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v7, :cond_a

    move-object/from16 v23, v5

    aget-object v5, v23, v15

    move/from16 v24, v7

    .line 43
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 44
    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v23

    move/from16 v7, v24

    goto :goto_c

    .line 46
    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v7, v1, Lcom/mycompany/app/script/ScriptCriteria;->e:[Ljava/lang/String;

    if-eqz v7, :cond_b

    .line 48
    array-length v15, v7

    move-object/from16 v23, v7

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v15, :cond_b

    move/from16 v24, v7

    aget-object v7, v23, v24

    move-object/from16 v25, v13

    .line 49
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 50
    invoke-virtual {v13, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v24, 0x1

    move-object/from16 v13, v25

    goto :goto_d

    :cond_b
    move-object/from16 v25, v13

    .line 52
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v7, v1, Lcom/mycompany/app/script/ScriptMetadata;->n:[Lcom/mycompany/app/script/ScriptRequire;

    .line 54
    const-string v13, "_content"

    const-string v15, "_downurl"

    move-object/from16 v23, v11

    if-eqz v7, :cond_c

    .line 55
    array-length v11, v7

    move-object/from16 v24, v7

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v11, :cond_c

    move/from16 v26, v7

    aget-object v7, v24, v26

    move/from16 v27, v11

    .line 56
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    move-object/from16 v28, v12

    .line 57
    iget-object v12, v7, Lcom/mycompany/app/script/ScriptRequire;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {v11, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v7, v7, Lcom/mycompany/app/script/ScriptRequire;->b:Ljava/lang/String;

    .line 60
    invoke-virtual {v11, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v26, 0x1

    move/from16 v11, v27

    move-object/from16 v12, v28

    goto :goto_e

    :cond_c
    move-object/from16 v28, v12

    .line 62
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v11, v1, Lcom/mycompany/app/script/ScriptMetadata;->o:[Lcom/mycompany/app/script/ScriptResource;

    if-eqz v11, :cond_d

    .line 64
    array-length v12, v11

    move-object/from16 v24, v11

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v12, :cond_d

    move/from16 v26, v11

    aget-object v11, v24, v26

    move/from16 v27, v12

    .line 65
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    move-object/from16 v29, v6

    .line 66
    const-string v6, "_resname"

    move-object/from16 v30, v5

    .line 67
    iget-object v5, v11, Lcom/mycompany/app/script/ScriptResource;->a:Ljava/lang/String;

    .line 68
    invoke-virtual {v12, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v5, v11, Lcom/mycompany/app/script/ScriptResource;->b:Ljava/lang/String;

    .line 70
    invoke-virtual {v12, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v5, "_data"

    .line 72
    iget-object v6, v11, Lcom/mycompany/app/script/ScriptResource;->c:[B

    .line 73
    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 74
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v26, 0x1

    move/from16 v12, v27

    move-object/from16 v6, v29

    move-object/from16 v5, v30

    goto :goto_f

    :cond_d
    move-object/from16 v30, v5

    move-object/from16 v29, v6

    .line 75
    iget-wide v5, v1, Lcom/mycompany/app/script/Script;->q:J

    .line 76
    iget-wide v11, v1, Lcom/mycompany/app/script/Script;->r:J

    move-wide/from16 v26, v5

    .line 77
    iget-boolean v5, v1, Lcom/mycompany/app/script/Script;->s:Z

    cmp-long v6, v26, v21

    if-eqz v6, :cond_f

    cmp-long v6, v11, v21

    if-nez v6, :cond_e

    goto :goto_10

    :cond_e
    move/from16 v16, v5

    goto :goto_11

    .line 78
    :cond_f
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v11, v5

    move-wide/from16 v26, v11

    const/16 v16, 0x1

    .line 79
    :goto_11
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 80
    const-string v2, "_descript"

    invoke-virtual {v5, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "_updateurl"

    .line 83
    iget-object v6, v1, Lcom/mycompany/app/script/ScriptMetadata;->h:Ljava/lang/String;

    .line 84
    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "_insturl"

    .line 86
    iget-object v6, v1, Lcom/mycompany/app/script/ScriptMetadata;->i:Ljava/lang/String;

    .line 87
    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "_icon"

    invoke-virtual {v5, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "_runat"

    .line 90
    iget-object v6, v1, Lcom/mycompany/app/script/ScriptMetadata;->k:Ljava/lang/String;

    .line 91
    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget v2, v1, Lcom/mycompany/app/script/ScriptMetadata;->l:I

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "_flags"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v2, "_version"

    move-object/from16 v6, v25

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, v1, Lcom/mycompany/app/script/Script;->p:Ljava/lang/String;

    .line 96
    invoke-virtual {v5, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v2, "_time"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v2, "_loccode"

    move-object/from16 v3, v20

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "_locname"

    move-object/from16 v11, v19

    invoke-virtual {v5, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "_locdesc"

    move-object/from16 v12, v18

    invoke-virtual {v5, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "_author"

    move-object/from16 v15, v17

    invoke-virtual {v5, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static/range {p0 .. p0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 105
    :try_start_7
    const-string v13, "DbBookScript_table"

    invoke-static {v2, v13, v5}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    cmp-long v5, v13, v21

    if-nez v5, :cond_10

    goto/16 :goto_15

    .line 106
    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v5, :cond_12

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Landroid/content/ContentValues;

    move-object/from16 v16, v4

    .line 107
    const-string v4, "DbBookScript_table_exclude"

    invoke-static {v2, v4, v14}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v17

    cmp-long v4, v17, v21

    if-nez v4, :cond_11

    goto/16 :goto_15

    :cond_11
    move-object/from16 v4, v16

    goto :goto_12

    .line 108
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_13
    if-ge v5, v4, :cond_14

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v5, v5, 0x1

    check-cast v13, Landroid/content/ContentValues;

    .line 109
    const-string v14, "DbBookScript_table_include"

    invoke-static {v2, v14, v13}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    cmp-long v13, v13, v21

    if-nez v13, :cond_13

    goto :goto_15

    .line 110
    :cond_14
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v0, :cond_16

    move-object/from16 v5, v30

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v4, v4, 0x1

    check-cast v13, Landroid/content/ContentValues;

    .line 111
    const-string v14, "DbBookScript_table_match"

    invoke-static {v2, v14, v13}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    cmp-long v13, v13, v21

    if-nez v13, :cond_15

    goto :goto_15

    :cond_15
    move-object/from16 v30, v5

    goto :goto_13

    .line 112
    :cond_16
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v0, :cond_18

    move-object/from16 v5, v29

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v4, v4, 0x1

    check-cast v13, Landroid/content/ContentValues;

    .line 113
    const-string v14, "DbBookScript_table_require"

    invoke-static {v2, v14, v13}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13

    cmp-long v13, v13, v21

    if-nez v13, :cond_17

    goto :goto_15

    :cond_17
    move-object/from16 v29, v5

    goto :goto_14

    .line 114
    :cond_18
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :cond_19
    if-ge v4, v0, :cond_1a

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/content/ContentValues;

    .line 115
    const-string v13, "DbBookScript_table_resource"

    invoke-static {v2, v13, v5}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    cmp-long v5, v13, v21

    if-nez v5, :cond_19

    .line 116
    :catch_7
    :cond_1a
    :goto_15
    iget-wide v4, v1, Lcom/mycompany/app/script/Script;->q:J

    cmp-long v0, v4, v21

    if-nez v0, :cond_1b

    :goto_16
    const/4 v13, 0x0

    goto/16 :goto_18

    .line 117
    :cond_1b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_16

    .line 118
    :cond_1c
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_16

    .line 119
    :cond_1d
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_16

    .line 120
    :cond_1e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 121
    const-string v0, "v"

    .line 122
    invoke-static {v0, v6}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_17

    :cond_1f
    const/4 v13, 0x0

    .line 123
    :goto_17
    new-instance v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 124
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide v4, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 126
    iput-object v9, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    move-object/from16 v2, v28

    .line 127
    iput-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    move-object/from16 v2, v23

    .line 128
    iput-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    .line 129
    iget-wide v4, v1, Lcom/mycompany/app/script/Script;->r:J

    .line 130
    iput-wide v4, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 131
    iget-boolean v1, v1, Lcom/mycompany/app/script/Script;->s:Z

    .line 132
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    const/4 v1, 0x0

    .line 133
    iput v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    const v1, -0x70708

    .line 134
    iput v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 135
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_extension_black_24:I

    iput v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 136
    iput-object v13, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 137
    iput-object v8, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 138
    iput-object v10, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 139
    iput-object v15, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->j:Ljava/lang/String;

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    move-object/from16 v1, p4

    .line 141
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    move-object/from16 v1, p3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 142
    :cond_20
    iput-object v11, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->x:Ljava/lang/String;

    .line 143
    iput-object v12, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->Q:Ljava/lang/String;

    .line 144
    :cond_21
    invoke-static {v0}, Lcom/mycompany/app/list/book/ListBookScript;->p(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    move-object v13, v0

    :goto_18
    return-object v13
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "_value"

    .line 21
    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    filled-new-array {p1, p2, p3}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v3, "DbBookScript_table_value"

    .line 39
    .line 40
    const-string v4, "_name=? AND _namespace=? AND _key=?"

    .line 41
    .line 42
    invoke-static {p0, v3, v1, v4, v2}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-static {v0, p4}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 49
    .line 50
    .line 51
    move-result-object p4

    .line 52
    const/4 v0, 0x1

    .line 53
    if-ne v1, v0, :cond_1

    .line 54
    .line 55
    invoke-static {p0, v3, p4, v4, v2}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const-string v0, "_name"

    .line 60
    .line 61
    invoke-virtual {p4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p1, "_namespace"

    .line 65
    .line 66
    invoke-virtual {p4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p1, "_key"

    .line 70
    .line 71
    invoke-virtual {p4, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v3, p4}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookScript_table (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _descript TEXT, _downurl TEXT, _updateurl TEXT, _insturl TEXT, _icon TEXT, _runat TEXT, _flags INTEGER, _version TEXT, _content TEXT NOT NULL, _enabled INTEGER NOT NULL DEFAULT 1, _id INTEGER, _time INTEGER, _loccode TEXT, _locname TEXT, _locdesc TEXT, _author TEXT, _rsv01 TEXT, _rsv02 TEXT, _rsv03 TEXT, _rsv04 TEXT, _rsv05 TEXT, _rsv06 TEXT, _rsv07 TEXT, _rsv08 TEXT, _rsv09 TEXT, _rsv10 TEXT, _rsv11 INTEGER, _rsv12 INTEGER, _rsv13 INTEGER, _rsv14 INTEGER, _rsv15 INTEGER, _rsv16 INTEGER, _rsv17 INTEGER, _rsv18 INTEGER, _rsv19 INTEGER, _rsv20 INTEGER, PRIMARY KEY (_name, _namespace));"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE DbBookScript_table_exclude (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _pattern TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _pattern), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE DbBookScript_table_include (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _pattern TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _pattern), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "CREATE TABLE DbBookScript_table_match (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _pattern TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _pattern), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "CREATE TABLE DbBookScript_table_value (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _key TEXT NOT NULL, _value TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _key), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "CREATE TABLE DbBookScript_table_require (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _downurl TEXT NOT NULL, _content TEXT NOT NULL, PRIMARY KEY (_name, _namespace, _downurl), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "CREATE TABLE DbBookScript_table_resource (_name TEXT NOT NULL, _namespace TEXT NOT NULL, _resname TEXT NOT NULL, _downurl TEXT NOT NULL, _data BLOB NOT NULL, PRIMARY KEY (_name, _namespace, _resname), FOREIGN KEY (_name, _namespace) REFERENCES DbBookScript_table (_name, _namespace) ON UPDATE CASCADE ON DELETE CASCADE);"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    const-string p2, "DROP TABLE IF EXISTS DbBookScript_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "DROP TABLE IF EXISTS DbBookScript_table_exclude"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "DROP TABLE IF EXISTS DbBookScript_table_include"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "DROP TABLE IF EXISTS DbBookScript_table_match"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p2, "DROP TABLE IF EXISTS DbBookScript_table_value"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p2, "DROP TABLE IF EXISTS DbBookScript_table_require"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p2, "DROP TABLE IF EXISTS DbBookScript_table_resource"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/mycompany/app/db/book/DbBookScript;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
