.class Lcom/mycompany/app/dialog/DialogSetPms$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPms$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPms$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPms$4$1;->c:Lcom/mycompany/app/dialog/DialogSetPms$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPms$4$1;->c:Lcom/mycompany/app/dialog/DialogSetPms$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetPms$4;->c:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPms;->j0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 11
    .line 12
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->T:I

    .line 13
    .line 14
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 15
    .line 16
    iput v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->U:I

    .line 17
    .line 18
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetPms;->a0:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v3, v2}, Lcom/mycompany/app/db/book/DbBookPms;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetPms;->a0:Landroid/content/Context;

    .line 27
    .line 28
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 29
    .line 30
    invoke-static {v2, v3}, Lcom/mycompany/app/db/book/DbBookPms;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetPms;->a0:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookPms;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookPms;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v1}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetPms;->a0:Landroid/content/Context;

    .line 46
    .line 47
    iget-wide v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 48
    .line 49
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 50
    .line 51
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    const-wide/16 v6, 0x0

    .line 56
    .line 57
    cmp-long v6, v3, v6

    .line 58
    .line 59
    if-gtz v6, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookPms;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookPms;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v6, "DbBookPms_table"

    .line 71
    .line 72
    invoke-static {v2, v6, v3, v4}, Lcom/mycompany/app/db/DbUtil;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const/4 v8, 0x1

    .line 77
    if-ne v7, v8, :cond_2

    .line 78
    .line 79
    new-instance v7, Landroid/content/ContentValues;

    .line 80
    .line 81
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const-string v9, "_time"

    .line 93
    .line 94
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    .line 96
    .line 97
    const-string v8, "_allow"

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    .line 105
    .line 106
    const-string v1, "_block"

    .line 107
    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v7, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v6, v7, v3, v4}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 116
    .line 117
    .line 118
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 119
    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    :goto_1
    return-void

    .line 123
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetPms$4$1$1;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogSetPms$4$1$1;-><init>(Lcom/mycompany/app/dialog/DialogSetPms$4$1;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    .line 130
    .line 131
    return-void
.end method
