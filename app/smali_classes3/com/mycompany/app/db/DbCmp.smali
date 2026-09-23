.class public Lcom/mycompany/app/db/DbCmp;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/DbCmp;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

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
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/DbCmp;->b(Landroid/content/Context;)Lcom/mycompany/app/db/DbCmp;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "DbCmp_table"

    .line 25
    .line 26
    const-string v5, "_path=?"

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const-string v1, "_dir"

    .line 43
    .line 44
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v2, "_dname"

    .line 49
    .line 50
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const-string v3, "_name"

    .line 55
    .line 56
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const-string v4, "_time"

    .line 61
    .line 62
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const-string v5, "_size"

    .line 67
    .line 68
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const-string v6, "_count"

    .line 73
    .line 74
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const-string v7, "_index"

    .line 79
    .line 80
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const-string v8, "_page"

    .line 85
    .line 86
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    new-instance v9, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 91
    .line 92
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 93
    .line 94
    .line 95
    :try_start_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->e:Ljava/lang/String;

    .line 100
    .line 101
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->f:Ljava/lang/String;

    .line 106
    .line 107
    iput-object p1, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 114
    .line 115
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v0

    .line 119
    iput-wide v0, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 120
    .line 121
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    iput-wide v0, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 126
    .line 127
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    long-to-int p1, v0

    .line 132
    iput p1, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->s:I

    .line 133
    .line 134
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    long-to-int p1, v0

    .line 139
    iput p1, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->t:I

    .line 140
    .line 141
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->u:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    .line 147
    :catch_0
    move-object v0, v9

    .line 148
    goto :goto_0

    .line 149
    :catch_1
    move-object p0, v0

    .line 150
    :catch_2
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 151
    .line 152
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/mycompany/app/db/DbCmp;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/DbCmp;->c:Lcom/mycompany/app/db/DbCmp;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/DbCmp;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/DbCmp;->c:Lcom/mycompany/app/db/DbCmp;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/DbCmp;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbCmp.db"

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
    sput-object v1, Lcom/mycompany/app/db/DbCmp;->c:Lcom/mycompany/app/db/DbCmp;

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
    sget-object p0, Lcom/mycompany/app/db/DbCmp;->c:Lcom/mycompany/app/db/DbCmp;

    .line 35
    .line 36
    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/mycompany/app/main/MainUri$UriItem;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz p0, :cond_5

    .line 7
    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    iget-object v1, p1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v1, p1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 21
    .line 22
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/4 v1, 0x0

    .line 27
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/DbCmp;->b(Landroid/content/Context;)Lcom/mycompany/app/db/DbCmp;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "DbCmp_table"

    .line 36
    .line 37
    const-string v5, "_path=?"

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_4

    .line 52
    .line 53
    :cond_1
    iget-wide v3, p1, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 54
    .line 55
    const-wide/16 v5, 0x0

    .line 56
    .line 57
    cmp-long v3, v3, v5

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    iput-wide v3, p1, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 66
    .line 67
    :cond_2
    iget-wide v3, p1, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 68
    .line 69
    cmp-long v3, v3, v5

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    iget-object v3, p1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p0, v3}, Lcom/mycompany/app/main/MainUtil;->g1(Landroid/content/Context;Ljava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    iput-wide v3, p1, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 80
    .line 81
    :cond_3
    new-instance p0, Landroid/content/ContentValues;

    .line 82
    .line 83
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v3, "_dir"

    .line 87
    .line 88
    iget-object v4, p1, Lcom/mycompany/app/main/MainUri$UriItem;->c:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v3, "_dname"

    .line 94
    .line 95
    iget-object v4, p1, Lcom/mycompany/app/main/MainUri$UriItem;->d:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v3, "_path"

    .line 101
    .line 102
    iget-object v4, p1, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v3, "_name"

    .line 108
    .line 109
    iget-object v4, p1, Lcom/mycompany/app/main/MainUri$UriItem;->f:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v3, "_time"

    .line 115
    .line 116
    iget-wide v4, p1, Lcom/mycompany/app/main/MainUri$UriItem;->g:J

    .line 117
    .line 118
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {p0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    .line 124
    .line 125
    const-string v3, "_size"

    .line 126
    .line 127
    iget-wide v4, p1, Lcom/mycompany/app/main/MainUri$UriItem;->h:J

    .line 128
    .line 129
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    .line 135
    .line 136
    const-string p1, "_count"

    .line 137
    .line 138
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    .line 140
    .line 141
    const-string p1, "_index"

    .line 142
    .line 143
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    .line 145
    .line 146
    const-string p1, "_page"

    .line 147
    .line 148
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    .line 150
    .line 151
    const-string p1, "DbCmp_table"

    .line 152
    .line 153
    invoke-static {v2, p1, p0}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    :catch_0
    :cond_4
    if-eqz v1, :cond_5

    .line 157
    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p0}, Lcom/mycompany/app/db/DbCmp;->b(Landroid/content/Context;)Lcom/mycompany/app/db/DbCmp;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "DbCmp_table"

    .line 23
    .line 24
    const-string v1, "_path=?"

    .line 25
    .line 26
    invoke-static {p0, v0, v1, p1}, Lcom/mycompany/app/db/DbUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;JJI)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    new-instance v1, Lcom/mycompany/app/db/DbCmp$1;

    .line 16
    .line 17
    move-object v3, p1

    .line 18
    move-wide v4, p2

    .line 19
    move-wide v6, p4

    .line 20
    move v8, p6

    .line 21
    invoke-direct/range {v1 .. v8}, Lcom/mycompany/app/db/DbCmp$1;-><init>(Landroid/content/Context;Ljava/lang/String;JJI)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbCmp_table (_id INTEGER PRIMARY KEY, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _time INTEGER, _size INTEGER, _count INTEGER, _index INTEGER, _page INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbCmp_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbCmp_table (_id INTEGER PRIMARY KEY, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _time INTEGER, _size INTEGER, _count INTEGER, _index INTEGER, _page INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
