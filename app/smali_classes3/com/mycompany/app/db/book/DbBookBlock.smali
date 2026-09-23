.class public Lcom/mycompany/app/db/book/DbBookBlock;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookBlock;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookBlock;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookBlock;->c:Lcom/mycompany/app/db/book/DbBookBlock;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookBlock;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookBlock;->c:Lcom/mycompany/app/db/book/DbBookBlock;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookBlock;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookBlock.db"

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
    sput-object v1, Lcom/mycompany/app/db/book/DbBookBlock;->c:Lcom/mycompany/app/db/book/DbBookBlock;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookBlock;->c:Lcom/mycompany/app/db/book/DbBookBlock;

    .line 35
    .line 36
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_6

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
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookBlock;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookBlock;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string p0, "DbBookBlock_table"

    .line 35
    .line 36
    const-string v6, "_path=? AND _image=?"

    .line 37
    .line 38
    invoke-static {v3, p0, v0, v6, v7}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v9, 0x0

    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    new-instance v5, Landroid/content/ContentValues;

    .line 46
    .line 47
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v8, "_type"

    .line 51
    .line 52
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    invoke-virtual {v5, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    .line 58
    .line 59
    const-string v8, "_path"

    .line 60
    .line 61
    invoke-virtual {v5, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v8, "_image"

    .line 65
    .line 66
    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v8, "_time"

    .line 70
    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-virtual {v5, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    .line 77
    .line 78
    const/4 v8, 0x1

    .line 79
    if-ne v4, v8, :cond_1

    .line 80
    .line 81
    invoke-static {v3, p0, v5, v6, v7}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v3, p0, v5}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_0
    const-string p0, "_id"

    .line 89
    .line 90
    filled-new-array {p0}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-wide/16 v10, 0x0

    .line 95
    .line 96
    :try_start_0
    const-string v4, "DbBookBlock_table"

    .line 97
    .line 98
    const/4 v8, 0x0

    .line 99
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 100
    .line 101
    .line 102
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-object v3, v0

    .line 121
    :catch_1
    :cond_3
    move-wide v4, v10

    .line 122
    :goto_1
    if-eqz v3, :cond_4

    .line 123
    .line 124
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 125
    .line 126
    .line 127
    :cond_4
    cmp-long p0, v4, v10

    .line 128
    .line 129
    if-gtz p0, :cond_5

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    new-instance p0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 133
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-wide v4, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 138
    .line 139
    iput-object p1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 140
    .line 141
    iput-object p2, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 142
    .line 143
    iput-wide v1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 144
    .line 145
    iput v9, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 146
    .line 147
    const p2, -0x70708

    .line 148
    .line 149
    .line 150
    iput p2, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 151
    .line 152
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 153
    .line 154
    iput p2, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 155
    .line 156
    const-string p2, "yyyy.MM.dd"

    .line 157
    .line 158
    invoke-static {v1, v2, v0, p2}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    iput-object p2, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {p1, v9}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    iput-object p1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 169
    .line 170
    return-object p0

    .line 171
    :cond_6
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookBlock_table (_id INTEGER PRIMARY KEY, _type INTEGER, _path TEXT, _image TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookBlock_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookBlock_table (_id INTEGER PRIMARY KEY, _type INTEGER, _path TEXT, _image TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
