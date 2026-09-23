.class public Lcom/mycompany/app/db/book/DbBookRecent;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookRecent;


# direct methods
.method public static a(Landroid/content/Context;Z)V
    .locals 14

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_1
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/mycompany/app/db/book/DbBookRecent;->j(Landroid/content/Context;Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_2
    const-string v1, "_time"

    .line 17
    .line 18
    filled-new-array {v1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v8, "0"

    .line 23
    .line 24
    const-string v9, "1"

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    move-object v2, v9

    .line 29
    goto :goto_0

    .line 30
    :cond_3
    move-object v2, v8

    .line 31
    :goto_0
    filled-new-array {v2}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "_time DESC"

    .line 36
    .line 37
    const/4 v10, 0x1

    .line 38
    const-wide/16 v11, 0x0

    .line 39
    .line 40
    const/4 v13, 0x0

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookRecent;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "DbBookRecent_table"

    .line 50
    .line 51
    const-string v5, "_secret=?"

    .line 52
    .line 53
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    if-eqz v13, :cond_4

    .line 58
    .line 59
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-le v2, v0, :cond_4

    .line 64
    .line 65
    sub-int/2addr v0, v10

    .line 66
    invoke-interface {v13, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    :cond_4
    move-wide v0, v11

    .line 82
    :goto_1
    if-eqz v13, :cond_5

    .line 83
    .line 84
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 85
    .line 86
    .line 87
    :cond_5
    cmp-long v2, v0, v11

    .line 88
    .line 89
    if-gtz v2, :cond_6

    .line 90
    .line 91
    :goto_2
    return-void

    .line 92
    :cond_6
    if-eqz p1, :cond_7

    .line 93
    .line 94
    move-object v8, v9

    .line 95
    :cond_7
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    filled-new-array {v8, p1}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookRecent;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "DbBookRecent_table"

    .line 112
    .line 113
    const-string v2, "_secret=? AND _time<?"

    .line 114
    .line 115
    invoke-static {v0, v1, v2, p1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    invoke-static {p0}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    iput-boolean v10, p0, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 123
    .line 124
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 13

    .line 1
    const-string v0, "_time"

    .line 2
    .line 3
    const-string v1, "_title"

    .line 4
    .line 5
    const-string v2, "_secret"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p0, :cond_d

    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookRecent;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "DbBookRecent_table"

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-static/range {v5 .. v10}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 37
    if-eqz p0, :cond_7

    .line 38
    .line 39
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_7

    .line 44
    .line 45
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 57
    move-object v8, v3

    .line 58
    move-object v9, v8

    .line 59
    :cond_1
    if-nez v8, :cond_2

    .line 60
    .line 61
    :try_start_2
    invoke-static {p1, v4}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    new-instance v10, Ljava/io/BufferedWriter;

    .line 66
    .line 67
    new-instance v11, Ljava/io/OutputStreamWriter;

    .line 68
    .line 69
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 70
    .line 71
    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    .line 76
    .line 77
    move-object v8, v10

    .line 78
    :catch_0
    if-nez v8, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    :try_start_3
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->a0(Ljava/io/BufferedWriter;)Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-nez v10, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    invoke-static {v8, v2, v10}, Lcom/mycompany/app/main/MainUtil;->Z(Ljava/io/BufferedWriter;Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    move-result v10

    .line 96
    if-nez v10, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-static {v8, v1, v10}, Lcom/mycompany/app/main/MainUtil;->c0(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-nez v10, :cond_5

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 111
    .line 112
    .line 113
    move-result-wide v10

    .line 114
    invoke-static {v8, v0, v10, v11}, Lcom/mycompany/app/main/MainUtil;->b0(Ljava/io/BufferedWriter;Ljava/lang/String;J)Z

    .line 115
    .line 116
    .line 117
    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 118
    if-nez v10, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    const/4 v10, 0x1

    .line 122
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 123
    .line 124
    .line 125
    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 126
    if-nez v11, :cond_1

    .line 127
    .line 128
    :catch_1
    move v4, v10

    .line 129
    goto :goto_1

    .line 130
    :catch_2
    :cond_7
    move-object v8, v3

    .line 131
    :goto_0
    move-object v9, v8

    .line 132
    goto :goto_1

    .line 133
    :catch_3
    move-object p0, v3

    .line 134
    move-object v8, p0

    .line 135
    goto :goto_0

    .line 136
    :catch_4
    :goto_1
    if-eqz p0, :cond_8

    .line 137
    .line 138
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 139
    .line 140
    .line 141
    :cond_8
    if-eqz v8, :cond_9

    .line 142
    .line 143
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 144
    .line 145
    .line 146
    :catch_5
    :cond_9
    if-eqz v9, :cond_a

    .line 147
    .line 148
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 149
    .line 150
    .line 151
    :catch_6
    :cond_a
    if-nez v4, :cond_c

    .line 152
    .line 153
    new-instance p0, Ljava/io/File;

    .line 154
    .line 155
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_b

    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 165
    .line 166
    .line 167
    :cond_b
    return-object v3

    .line 168
    :cond_c
    new-instance p0, Ljava/io/File;

    .line 169
    .line 170
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object p0

    .line 174
    :cond_d
    :goto_2
    return-object v3
.end method

.method public static d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookRecent;->c:Lcom/mycompany/app/db/book/DbBookRecent;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookRecent;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookRecent;->c:Lcom/mycompany/app/db/book/DbBookRecent;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookRecent;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookRecent.db"

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
    sput-object v1, Lcom/mycompany/app/db/book/DbBookRecent;->c:Lcom/mycompany/app/db/book/DbBookRecent;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookRecent;->c:Lcom/mycompany/app/db/book/DbBookRecent;

    .line 35
    .line 36
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "_id"

    .line 11
    .line 12
    const-string v3, "_title"

    .line 13
    .line 14
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    sget-boolean v4, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    const-string v4, "1"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v4, "0"

    .line 26
    .line 27
    :goto_0
    filled-new-array {v4}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    const-string v9, "_time DESC"

    .line 32
    .line 33
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookRecent;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "DbBookRecent_table"

    .line 42
    .line 43
    const-string v7, "_secret=?"

    .line 44
    .line 45
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    sget v3, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 66
    .line 67
    const/4 v4, -0x1

    .line 68
    if-ne v3, v4, :cond_2

    .line 69
    .line 70
    const v3, 0x7fffffff

    .line 71
    .line 72
    .line 73
    :cond_2
    const/4 v4, 0x0

    .line 74
    :cond_3
    new-instance v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    const/16 v6, 0x26

    .line 80
    .line 81
    iput v6, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    .line 82
    .line 83
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    iput-wide v6, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 88
    .line 89
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    iput-object v6, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    if-ge v4, v3, :cond_4

    .line 101
    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 103
    .line 104
    .line 105
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    if-nez v5, :cond_3

    .line 107
    .line 108
    :catch_0
    :cond_4
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    .line 112
    .line 113
    :cond_5
    return-object v1
.end method

.method public static f(Landroid/content/Context;J)V
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
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookRecent;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "DbBookRecent_table"

    .line 19
    .line 20
    invoke-static {v0, v1, p1, p2}, Lcom/mycompany/app/db/DbUtil;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookRecent;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;

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
    const-string v1, "DbBookRecent_table"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v1, v2, v2}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 24
    .line 25
    return-void
.end method

.method public static j(Landroid/content/Context;Z)V
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
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookRecent;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;

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
    const-string v1, "DbBookRecent_table"

    .line 24
    .line 25
    const-string v2, "_secret=?"

    .line 26
    .line 27
    invoke-static {v0, v1, v2, p1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 36
    .line 37
    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;)V
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
    new-instance v0, Lcom/mycompany/app/db/book/DbBookRecent$1;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/db/book/DbBookRecent$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static l()Z
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->Z:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->a0:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    return v1

    .line 17
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 18
    return v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookRecent_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _title TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookRecent_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookRecent_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _title TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
