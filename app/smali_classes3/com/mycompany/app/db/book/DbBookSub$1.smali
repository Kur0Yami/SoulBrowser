.class Lcom/mycompany/app/db/book/DbBookSub$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->h:I

    .line 11
    .line 12
    iput p5, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->i:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    sget-object v0, Lcom/mycompany/app/db/book/DbBookSub;->c:Lcom/mycompany/app/db/book/DbBookSub;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->f:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->c:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookSub;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSub;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    const-string v5, "DbBookSub_table"

    .line 28
    .line 29
    const-string v6, "_path=?"

    .line 30
    .line 31
    invoke-static {v3, v5, v4, v6, v1}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    const-string v7, "_path"

    .line 38
    .line 39
    const-string v8, "_sub"

    .line 40
    .line 41
    iget-object v9, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->g:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v7, v0, v8, v9}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v7, "_sync"

    .line 48
    .line 49
    iget v8, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->h:I

    .line 50
    .line 51
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    .line 57
    .line 58
    const-string v7, "_lang"

    .line 59
    .line 60
    iget v8, p0, Lcom/mycompany/app/db/book/DbBookSub$1;->i:I

    .line 61
    .line 62
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const-string v8, "_time"

    .line 78
    .line 79
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    .line 81
    .line 82
    const/4 v7, 0x1

    .line 83
    if-ne v4, v7, :cond_1

    .line 84
    .line 85
    invoke-static {v3, v5, v0, v6, v1}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    invoke-static {v3, v5, v0}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    const-wide/16 v3, 0x0

    .line 94
    .line 95
    cmp-long v0, v0, v3

    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookSub;->a(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    :goto_0
    return-void
.end method
