.class Lcom/mycompany/app/dialog/DialogWebBookEdit$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$13;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$13;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->y0:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    const-string v5, "1"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v5, "0"

    .line 29
    .line 30
    :goto_0
    filled-new-array {v5, v2, v3}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    const/4 v2, 0x0

    .line 35
    :try_start_0
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v7, "DbBookWeb_table"

    .line 44
    .line 45
    const-string v9, "_secret=? AND _dir=? AND _path=?"

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    .line 57
    .line 58
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    :catch_0
    :cond_2
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 68
    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookEdit$13$1;

    .line 73
    .line 74
    invoke-direct {v1, p0, v4}, Lcom/mycompany/app/dialog/DialogWebBookEdit$13$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit$13;Z)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    return-void
.end method
