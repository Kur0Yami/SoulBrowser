.class Lcom/mycompany/app/main/MainFilterSvc$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainFilterSvc$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainFilterSvc$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainFilterSvc$1$1;->c:Lcom/mycompany/app/main/MainFilterSvc$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainFilterSvc$1$1;->c:Lcom/mycompany/app/main/MainFilterSvc$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainFilterSvc$1;->c:Lcom/mycompany/app/main/MainFilterSvc;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/main/MainFilterSvc;->a(Lcom/mycompany/app/main/MainFilterSvc;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    const-string v2, "_path"

    .line 15
    .line 16
    const-string v3, "_title"

    .line 17
    .line 18
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    const-string v7, "_use=?"

    .line 23
    .line 24
    const-string v4, "1"

    .line 25
    .line 26
    filled-new-array {v4}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/4 v10, 0x0

    .line 31
    :try_start_0
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "DbBookFilter_table"

    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    invoke-static/range {v4 .. v9}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 43
    .line 44
    .line 45
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v4, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iput-object v4, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v10, :cond_3

    .line 87
    .line 88
    new-instance v4, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    move-object v10, v4

    .line 94
    :cond_3
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    :goto_0
    iget-boolean v4, v0, Lcom/mycompany/app/main/MainFilterSvc;->e:Z

    .line 98
    .line 99
    if-nez v4, :cond_4

    .line 100
    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 102
    .line 103
    .line 104
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    if-nez v4, :cond_1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-object v1, v10

    .line 109
    :catch_1
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->a:Landroid/content/Context;

    .line 115
    .line 116
    if-nez v1, :cond_6

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_6
    new-instance v1, Lcom/mycompany/app/main/MainFilterDown;

    .line 120
    .line 121
    new-instance v2, Lcom/mycompany/app/main/MainFilterSvc$4;

    .line 122
    .line 123
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainFilterSvc$4;-><init>(Lcom/mycompany/app/main/MainFilterSvc;)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v2}, Lcom/mycompany/app/main/MainFilterDown;-><init>(Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)V

    .line 127
    .line 128
    .line 129
    iput-object v1, v0, Lcom/mycompany/app/main/MainFilterSvc;->k:Lcom/mycompany/app/main/MainFilterDown;

    .line 130
    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1, v10}, Lcom/mycompany/app/main/MainFilterSvc;->b(ILjava/util/List;)V

    .line 133
    .line 134
    .line 135
    :goto_2
    return-void
.end method
