.class Lcom/mycompany/app/db/book/DbBookRecent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/db/book/DbBookRecent$1;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/db/book/DbBookRecent$1;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookRecent;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/db/book/DbBookRecent$1;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const-string v1, "1"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const-string v1, "0"

    .line 25
    .line 26
    :goto_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/mycompany/app/db/book/DbBookRecent$1;->c:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookRecent;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookRecent;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    const-string v5, "DbBookRecent_table"

    .line 42
    .line 43
    const-string v6, "_secret=? AND _title=?"

    .line 44
    .line 45
    invoke-static {v3, v5, v4, v6, v1}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_4

    .line 50
    .line 51
    new-instance v7, Landroid/content/ContentValues;

    .line 52
    .line 53
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v8

    .line 60
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const-string v9, "_time"

    .line 65
    .line 66
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    .line 68
    .line 69
    const/4 v8, 0x1

    .line 70
    if-ne v4, v8, :cond_3

    .line 71
    .line 72
    invoke-static {v3, v5, v7, v6, v1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-boolean v8, v0, Lcom/mycompany/app/data/book/DataBookRecent;->c:Z

    .line 80
    .line 81
    iput-boolean v8, v0, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v4, "_secret"

    .line 91
    .line 92
    invoke-virtual {v7, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    .line 94
    .line 95
    const-string v1, "_title"

    .line 96
    .line 97
    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v3, v5, v7}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-boolean v8, v0, Lcom/mycompany/app/data/book/DataBookRecent;->c:Z

    .line 108
    .line 109
    iput-boolean v8, v0, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 110
    .line 111
    :cond_4
    :goto_1
    return-void
.end method
