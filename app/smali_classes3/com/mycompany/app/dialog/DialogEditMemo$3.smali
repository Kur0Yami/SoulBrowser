.class Lcom/mycompany/app/dialog/DialogEditMemo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditMemo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditMemo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditMemo$3;->c:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditMemo$3;->c:Lcom/mycompany/app/dialog/DialogEditMemo;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->i0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    const-string v1, "_id"

    .line 18
    .line 19
    const-string v2, "_text"

    .line 20
    .line 21
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->i0:Ljava/lang/String;

    .line 26
    .line 27
    filled-new-array {v3}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/4 v9, 0x0

    .line 32
    const-wide/16 v10, 0x0

    .line 33
    .line 34
    :try_start_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->a0:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/mycompany/app/db/book/DbBookDc;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookDc;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "DbBookDc_table"

    .line 45
    .line 46
    const-string v6, "_path=?"

    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 50
    .line 51
    .line 52
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 66
    .line 67
    .line 68
    move-result-wide v10

    .line 69
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-object v3, v9

    .line 79
    :catch_1
    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 80
    .line 81
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 82
    .line 83
    .line 84
    :cond_3
    iput-wide v10, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->d0:J

    .line 85
    .line 86
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogEditMemo;->f0:Ljava/lang/String;

    .line 87
    .line 88
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 89
    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditMemo$3$1;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditMemo$3$1;-><init>(Lcom/mycompany/app/dialog/DialogEditMemo$3;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    return-void
.end method
