.class public Lcom/mycompany/app/db/book/DbBookJava;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookJava;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookJava;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookJava;->c:Lcom/mycompany/app/db/book/DbBookJava;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookJava;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookJava;->c:Lcom/mycompany/app/db/book/DbBookJava;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookJava;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookJava.db"

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
    sput-object v1, Lcom/mycompany/app/db/book/DbBookJava;->c:Lcom/mycompany/app/db/book/DbBookJava;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookJava;->c:Lcom/mycompany/app/db/book/DbBookJava;

    .line 35
    .line 36
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 11

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
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    filled-new-array {p1}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookJava;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookJava;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string p0, "DbBookJava_table"

    .line 29
    .line 30
    const-string v6, "_path=?"

    .line 31
    .line 32
    invoke-static {v3, p0, v0, v6, v7}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    const-string v5, "_path"

    .line 39
    .line 40
    invoke-static {v5, p1}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v8, "_time"

    .line 45
    .line 46
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    .line 52
    .line 53
    const/4 v8, 0x1

    .line 54
    if-ne v4, v8, :cond_1

    .line 55
    .line 56
    invoke-static {v3, p0, v5, v6, v7}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v3, p0, v5}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    const-string p0, "_id"

    .line 64
    .line 65
    filled-new-array {p0}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-wide/16 v9, 0x0

    .line 70
    .line 71
    :try_start_0
    const-string v4, "DbBookJava_table"

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 75
    .line 76
    .line 77
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-object v3, v0

    .line 96
    :catch_1
    :cond_3
    move-wide v4, v9

    .line 97
    :goto_1
    if-eqz v3, :cond_4

    .line 98
    .line 99
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 100
    .line 101
    .line 102
    :cond_4
    cmp-long p0, v4, v9

    .line 103
    .line 104
    if-gtz p0, :cond_5

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    new-instance p0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 108
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-wide v4, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 113
    .line 114
    iput-object p1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 117
    .line 118
    iput-wide v1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    iput v3, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 122
    .line 123
    const v4, -0x70708

    .line 124
    .line 125
    .line 126
    iput v4, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 127
    .line 128
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 129
    .line 130
    iput v4, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 131
    .line 132
    const-string v4, "yyyy.MM.dd"

    .line 133
    .line 134
    invoke-static {v1, v2, v0, v4}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iput-object v0, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->D1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iput-object p1, p0, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 145
    .line 146
    return-object p0

    .line 147
    :cond_6
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookJava_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookJava_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookJava_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
