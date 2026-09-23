.class Lcom/mycompany/app/dialog/DialogPassInfo$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassInfo$15;->c:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassInfo$15;->c:Lcom/mycompany/app/dialog/DialogPassInfo;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->e0:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v3, v1, v3

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->f0:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->E0:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->F0:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->G0:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v9, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->i0:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/book/DbBookPass;->i(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->c0:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->F0:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogPassInfo;->G0:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v7, Lcom/mycompany/app/db/book/DbBookPass;->c:Lcom/mycompany/app/db/book/DbBookPass;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    if-lez v3, :cond_2

    .line 38
    .line 39
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v3, "_user_val"

    .line 53
    .line 54
    const-string v7, "_pass_val"

    .line 55
    .line 56
    invoke-static {v3, v5, v7, v6}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookPass;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPass;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "DbBookPass_table"

    .line 69
    .line 70
    invoke-static {v4, v5, v3, v1, v2}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogPassInfo$15$1;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogPassInfo$15$1;-><init>(Lcom/mycompany/app/dialog/DialogPassInfo$15;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    return-void
.end method
