.class Lcom/mycompany/app/dialog/DialogEditArea$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$16;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$16;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->s0:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditArea;->w0:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v4, Lcom/mycompany/app/db/book/DbBookUser;->c:Lcom/mycompany/app/db/book/DbBookUser;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    :goto_0
    move-wide v2, v5

    .line 24
    goto :goto_4

    .line 25
    :cond_1
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookUser;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookUser;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v7, "DbBookUser_table"

    .line 34
    .line 35
    invoke-static {v4, v7, v5, v6}, Lcom/mycompany/app/db/DbUtil;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_3

    .line 40
    .line 41
    const-string v9, "_rsv1"

    .line 42
    .line 43
    const-string v10, "_path"

    .line 44
    .line 45
    invoke-static {v9, v2, v10, v3}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x1

    .line 50
    if-ne v8, v3, :cond_2

    .line 51
    .line 52
    invoke-static {v4, v7, v2, v5, v6}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
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
    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    .line 68
    .line 69
    const-string v8, "_use"

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v4, v7, v2}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    :goto_1
    move-wide v2, v5

    .line 84
    :goto_2
    cmp-long v8, v2, v5

    .line 85
    .line 86
    if-nez v8, :cond_4

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const/4 v8, 0x0

    .line 90
    :try_start_0
    invoke-static {v4, v7, v8, v2, v3}, Lcom/mycompany/app/db/DbUtil;->f(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;J)Landroid/database/Cursor;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    if-eqz v8, :cond_5

    .line 95
    .line 96
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    const-string v2, "_id"

    .line 103
    .line 104
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_3

    .line 113
    :catch_0
    :cond_5
    move-wide v2, v5

    .line 114
    :goto_3
    if-eqz v8, :cond_6

    .line 115
    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    .line 118
    .line 119
    :cond_6
    :goto_4
    cmp-long v2, v2, v5

    .line 120
    .line 121
    if-lez v2, :cond_7

    .line 122
    .line 123
    const-string v2, "sb_user_filter_path"

    .line 124
    .line 125
    invoke-static {v1, v2, v2}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->w0:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1}, Lcom/mycompany/app/web/WebClean;->e0(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_9

    .line 135
    .line 136
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 137
    .line 138
    if-nez v0, :cond_8

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditArea$16$1;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditArea$16$1;-><init>(Lcom/mycompany/app/dialog/DialogEditArea$16;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->u0:Ljava/lang/String;

    .line 151
    .line 152
    const/4 v2, 0x0

    .line 153
    invoke-static {v1, v2}, Lcom/mycompany/app/dialog/DialogEditArea;->D(Ljava/lang/String;Z)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->v0:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 160
    .line 161
    if-nez v0, :cond_a

    .line 162
    .line 163
    :goto_5
    return-void

    .line 164
    :cond_a
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditArea$16$2;

    .line 165
    .line 166
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditArea$16$2;-><init>(Lcom/mycompany/app/dialog/DialogEditArea$16;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    .line 171
    .line 172
    return-void
.end method
