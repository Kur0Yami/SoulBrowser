.class Lcom/mycompany/app/help/PayHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/help/PayHelper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/help/PayHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/PayHelper$4;->c:Lcom/mycompany/app/help/PayHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/help/PayHelper$4;->c:Lcom/mycompany/app/help/PayHelper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/help/PayHelper;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/mycompany/app/help/PayHelper;->g:J

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/mycompany/app/help/PayHelper;->h:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/mycompany/app/db/book/DbBookPay;->c:Lcom/mycompany/app/db/book/DbBookPay;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookPay;->a(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPay;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v4, "DbBookPay_table"

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v1, v4, v5, v5, v5}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    .line 33
    .line 34
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v8, "_time"

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "_paid"

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    if-ne v6, v0, :cond_2

    .line 57
    .line 58
    invoke-static {v1, v4, v7, v5, v5}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    invoke-static {v1, v4, v7}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 63
    .line 64
    .line 65
    return-void
.end method
