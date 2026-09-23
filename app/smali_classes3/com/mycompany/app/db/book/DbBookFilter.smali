.class public Lcom/mycompany/app/db/book/DbBookFilter;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field public static c:Lcom/mycompany/app/db/book/DbBookFilter;


# direct methods
.method public static a(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    if-ltz p0, :cond_2

    .line 2
    .line 3
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetFilter;->p0:[[Ljava/lang/String;

    .line 4
    .line 5
    const/16 v1, 0x2c

    .line 6
    .line 7
    if-lt p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    aget-object v0, v0, p0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    aget-object v1, v0, v1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aget-object v0, v0, v2

    .line 17
    .line 18
    invoke-static {p1, v1, v0}, Lcom/mycompany/app/db/book/DbBookFilter;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "/"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_1
    return-object p2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const/4 v6, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "DbBookFilter_table"

    .line 15
    .line 16
    const-string v3, "_path=?"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    :cond_0
    new-instance p0, Landroid/content/ContentValues;

    .line 33
    .line 34
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "_path"

    .line 38
    .line 39
    invoke-virtual {p0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "_title"

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "_time"

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    .line 59
    .line 60
    const-string p1, "_use"

    .line 61
    .line 62
    const/4 p2, 0x1

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    .line 69
    .line 70
    const-string p1, "DbBookFilter_table"

    .line 71
    .line 72
    invoke-static {v0, p1, p0}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    :cond_1
    if-eqz v6, :cond_2

    .line 76
    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void
.end method

.method public static d(Landroid/content/Context;)J
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    const-string v2, "_path"

    .line 7
    .line 8
    const-string v3, "_time"

    .line 9
    .line 10
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const-string v7, "_use=?"

    .line 15
    .line 16
    const-string v4, "1"

    .line 17
    .line 18
    filled-new-array {v4}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    const/4 v10, 0x0

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "DbBookFilter_table"

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 35
    .line 36
    .line 37
    move-result-object v10

    .line 38
    if-eqz v10, :cond_6

    .line 39
    .line 40
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_6

    .line 45
    .line 46
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    move-wide v4, v0

    .line 51
    :cond_1
    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v7, "sb_user_filter_path"

    .line 56
    .line 57
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_2

    .line 62
    .line 63
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    :goto_0
    add-long/2addr v4, v6

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-static {v6}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_4

    .line 78
    .line 79
    invoke-static {p0, v6}, Lcom/mycompany/app/main/MainUri;->f(Landroid/content/Context;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-nez v6, :cond_3

    .line 84
    .line 85
    move-wide v6, v0

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v6}, Landroidx/documentfile/provider/DocumentFile;->f()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-static {p0, v6}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    new-instance v7, Ljava/io/File;

    .line 104
    .line 105
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 109
    .line 110
    .line 111
    move-result-wide v6

    .line 112
    goto :goto_0

    .line 113
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 114
    .line 115
    .line 116
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    if-nez v6, :cond_1

    .line 118
    .line 119
    :catch_0
    move-wide v0, v4

    .line 120
    :catch_1
    :cond_6
    if-eqz v10, :cond_7

    .line 121
    .line 122
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 123
    .line 124
    .line 125
    :cond_7
    return-wide v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "sb_user_filter_path"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_red_24:I

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_black_24:I

    .line 19
    .line 20
    return p0

    .line 21
    :cond_1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->c2(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    move-object p0, v0

    .line 32
    :cond_2
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetFilter;->p0:[[Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    move v0, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const-string v0, "https://raw.githubusercontent.com/AdguardTeam/"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    :goto_0
    if-eqz v0, :cond_5

    .line 50
    .line 51
    :goto_1
    const/16 v0, 0x12

    .line 52
    .line 53
    if-ge v1, v0, :cond_7

    .line 54
    .line 55
    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogSetFilter;->C(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->ic_adguard:I

    .line 66
    .line 67
    return p0

    .line 68
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    :goto_2
    const/16 v0, 0x2c

    .line 72
    .line 73
    if-ge v1, v0, :cond_7

    .line 74
    .line 75
    sget-object v0, Lcom/mycompany/app/dialog/DialogSetFilter;->p0:[[Ljava/lang/String;

    .line 76
    .line 77
    aget-object v0, v0, v1

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    aget-object v0, v0, v2

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->ic_adblock:I

    .line 89
    .line 90
    return p0

    .line 91
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_7
    sget p0, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 95
    .line 96
    return p0
.end method

.method public static f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;
    .locals 5

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/mycompany/app/db/book/DbBookFilter;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/mycompany/app/db/book/DbBookFilter;

    .line 13
    .line 14
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->R(Landroid/content/Context;)Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "DbBookFilter.db"

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
    sput-object v1, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

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
    sget-object p0, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 35
    .line 36
    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    :cond_0
    move-object/from16 v16, v2

    .line 15
    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    :cond_1
    const-string v3, "sb_user_filter_path"

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    move-object v4, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    move-object/from16 v4, p2

    .line 29
    .line 30
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    filled-new-array {v1}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    const-string v8, "DbBookFilter_table"

    .line 47
    .line 48
    const-string v10, "_path=?"

    .line 49
    .line 50
    invoke-static {v7, v8, v2, v10, v11}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    const-string v13, "_use"

    .line 55
    .line 56
    const-string v14, "_time"

    .line 57
    .line 58
    const/4 v15, 0x1

    .line 59
    if-eqz v9, :cond_4

    .line 60
    .line 61
    const-string v12, "_path"

    .line 62
    .line 63
    const-string v2, "_title"

    .line 64
    .line 65
    invoke-static {v12, v1, v2, v4}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v12

    .line 73
    invoke-virtual {v2, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    .line 75
    .line 76
    if-ne v9, v15, :cond_3

    .line 77
    .line 78
    invoke-static {v7, v8, v2, v10, v11}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v2, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v7, v8, v2}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 90
    .line 91
    .line 92
    :cond_4
    :goto_1
    const-string v2, "_id"

    .line 93
    .line 94
    filled-new-array {v2, v14, v13}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    const-wide/16 v17, 0x0

    .line 99
    .line 100
    const/4 v8, 0x0

    .line 101
    move v12, v8

    .line 102
    :try_start_0
    const-string v8, "DbBookFilter_table"

    .line 103
    .line 104
    move/from16 v19, v12

    .line 105
    .line 106
    const/4 v12, 0x0

    .line 107
    invoke-static/range {v7 .. v12}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 108
    .line 109
    .line 110
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    if-eqz v7, :cond_5

    .line 112
    .line 113
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_5

    .line 118
    .line 119
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :try_start_2
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 140
    .line 141
    .line 142
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    if-ne v2, v15, :cond_6

    .line 144
    .line 145
    move v2, v15

    .line 146
    goto :goto_3

    .line 147
    :catch_0
    :cond_5
    move-wide/from16 v8, v17

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :catch_1
    move-wide/from16 v8, v17

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    :catch_2
    :cond_6
    :goto_2
    const/4 v2, 0x0

    .line 154
    :goto_3
    if-eqz v7, :cond_7

    .line 155
    .line 156
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 157
    .line 158
    .line 159
    :cond_7
    cmp-long v7, v8, v17

    .line 160
    .line 161
    if-gtz v7, :cond_8

    .line 162
    .line 163
    const/16 v16, 0x0

    .line 164
    .line 165
    goto/16 :goto_8

    .line 166
    .line 167
    :cond_8
    new-instance v7, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 168
    .line 169
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    iput-wide v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 173
    .line 174
    iput-object v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 175
    .line 176
    iput-wide v5, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 177
    .line 178
    iput-boolean v2, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 179
    .line 180
    const/4 v12, 0x0

    .line 181
    iput v12, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 182
    .line 183
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookFilter;->e(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    iput v2, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 188
    .line 189
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_verified_user_red_24:I

    .line 190
    .line 191
    if-eq v2, v5, :cond_a

    .line 192
    .line 193
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->ic_adblock:I

    .line 194
    .line 195
    if-eq v2, v6, :cond_a

    .line 196
    .line 197
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->ic_adguard:I

    .line 198
    .line 199
    if-ne v2, v6, :cond_9

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_9
    const v8, -0x70708

    .line 203
    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_a
    :goto_4
    move v8, v12

    .line 207
    :goto_5
    iput v8, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 208
    .line 209
    if-ne v2, v5, :cond_b

    .line 210
    .line 211
    move v15, v12

    .line 212
    goto :goto_6

    .line 213
    :cond_b
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->ic_adblock:I

    .line 214
    .line 215
    if-ne v2, v5, :cond_c

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_c
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->ic_adguard:I

    .line 219
    .line 220
    if-ne v2, v5, :cond_d

    .line 221
    .line 222
    const/4 v15, 0x2

    .line 223
    goto :goto_6

    .line 224
    :cond_d
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 225
    .line 226
    if-ne v2, v5, :cond_e

    .line 227
    .line 228
    const/4 v15, 0x3

    .line 229
    goto :goto_6

    .line 230
    :cond_e
    const/4 v15, 0x4

    .line 231
    :goto_6
    iput v15, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 232
    .line 233
    iget-wide v5, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 234
    .line 235
    const-string v2, "yyyy.MM.dd"

    .line 236
    .line 237
    const/4 v8, 0x0

    .line 238
    invoke-static {v5, v6, v8, v2}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    iput-object v2, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_f

    .line 249
    .line 250
    sget v1, Lnet/kaki87/soul2/testing/R$string;->user_filter:I

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iput-object v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_f
    invoke-static {v1}, Lcom/mycompany/app/main/MainUri;->q(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_11

    .line 264
    .line 265
    iput-object v4, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static/range {p0 .. p1}, Lcom/mycompany/app/main/MainUtil;->p1(Landroid/content/Context;Ljava/lang/String;)J

    .line 268
    .line 269
    .line 270
    move-result-wide v1

    .line 271
    iput-wide v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 272
    .line 273
    const-wide/16 v3, -0x4d2

    .line 274
    .line 275
    cmp-long v3, v1, v3

    .line 276
    .line 277
    if-nez v3, :cond_10

    .line 278
    .line 279
    sget v1, Lnet/kaki87/soul2/testing/R$string;->permission_removed:I

    .line 280
    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iput-object v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 286
    .line 287
    goto :goto_7

    .line 288
    :cond_10
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iput-object v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_11
    iput-object v4, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 296
    .line 297
    invoke-static/range {p0 .. p1}, Lcom/mycompany/app/main/MainUtil;->a4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    iput-object v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-nez v0, :cond_12

    .line 308
    .line 309
    :try_start_3
    new-instance v0, Ljava/io/File;

    .line 310
    .line 311
    iget-object v1, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 312
    .line 313
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 317
    .line 318
    .line 319
    move-result-wide v0

    .line 320
    iput-wide v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 321
    .line 322
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    iput-object v0, v7, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 327
    .line 328
    :catch_3
    :cond_12
    :goto_7
    return-object v7

    .line 329
    :goto_8
    return-object v16
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE DbBookFilter_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _time INTEGER, _use INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

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
    const-string p2, "DROP TABLE IF EXISTS DbBookFilter_table"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "CREATE TABLE DbBookFilter_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _time INTEGER, _use INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
