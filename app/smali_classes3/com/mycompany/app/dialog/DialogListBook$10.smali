.class Lcom/mycompany/app/dialog/DialogListBook$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogListBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListBook$10;->c:Lcom/mycompany/app/dialog/DialogListBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$10;->c:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->K:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListBook;->L:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogListBook;->K:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogListBook;->L:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    iput v4, v0, Lcom/mycompany/app/dialog/DialogListBook;->M:I

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    iput-wide v5, v0, Lcom/mycompany/app/dialog/DialogListBook;->N:J

    .line 18
    .line 19
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogListBook;->x:Landroid/content/Context;

    .line 20
    .line 21
    if-eqz v7, :cond_8

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    sget-object v8, Lcom/mycompany/app/db/book/DbBookFilter;->c:Lcom/mycompany/app/db/book/DbBookFilter;

    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    move-wide v10, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string v8, "_id"

    .line 42
    .line 43
    filled-new-array {v8}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    filled-new-array {v1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v13

    .line 51
    :try_start_0
    invoke-static {v7}, Lcom/mycompany/app/db/book/DbBookFilter;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookFilter;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    const-string v10, "DbBookFilter_table"

    .line 60
    .line 61
    const-string v12, "_path=?"

    .line 62
    .line 63
    const/4 v14, 0x0

    .line 64
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 65
    .line 66
    .line 67
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    if-eqz v9, :cond_2

    .line 69
    .line 70
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-eqz v10, :cond_2

    .line 75
    .line 76
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-object v9, v3

    .line 86
    :catch_1
    :cond_2
    move-wide v10, v5

    .line 87
    :goto_0
    if-eqz v9, :cond_3

    .line 88
    .line 89
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_1
    cmp-long v8, v10, v5

    .line 93
    .line 94
    if-gtz v8, :cond_4

    .line 95
    .line 96
    invoke-static {v7, v1, v2}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v7}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2, v1}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 105
    .line 106
    .line 107
    iput v4, v0, Lcom/mycompany/app/dialog/DialogListBook;->M:I

    .line 108
    .line 109
    iget-wide v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 110
    .line 111
    iput-wide v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->N:J

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_4
    invoke-static {v7}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2, v10, v11}, Lcom/mycompany/app/data/book/DataBookList;->e(J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    iget-wide v8, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 125
    .line 126
    cmp-long v4, v8, v5

    .line 127
    .line 128
    if-lez v4, :cond_5

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    invoke-static {v7, v1}, Lcom/mycompany/app/main/MainUtil;->p1(Landroid/content/Context;Ljava/lang/String;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    iput-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 136
    .line 137
    const-wide/16 v8, -0x4d2

    .line 138
    .line 139
    cmp-long v1, v4, v8

    .line 140
    .line 141
    if-nez v1, :cond_6

    .line 142
    .line 143
    sget v1, Lnet/kaki87/soul2/testing/R$string;->permission_removed:I

    .line 144
    .line 145
    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 150
    .line 151
    iput-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 152
    .line 153
    sget v1, Lnet/kaki87/soul2/testing/R$string;->permission_removed:I

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_6
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->A:J

    .line 157
    .line 158
    const-string v1, "yyyy.MM.dd"

    .line 159
    .line 160
    invoke-static {v4, v5, v3, v1}, Lcom/mycompany/app/main/MainUtil;->y1(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->F:Ljava/lang/String;

    .line 165
    .line 166
    iget-wide v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->B:J

    .line 167
    .line 168
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->h1(J)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 173
    .line 174
    sget v1, Lnet/kaki87/soul2/testing/R$string;->permission_granted:I

    .line 175
    .line 176
    :goto_2
    iput v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->M:I

    .line 177
    .line 178
    iput-wide v10, v0, Lcom/mycompany/app/dialog/DialogListBook;->N:J

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_7
    :goto_3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->already_added:I

    .line 182
    .line 183
    iput v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->M:I

    .line 184
    .line 185
    iput-wide v10, v0, Lcom/mycompany/app/dialog/DialogListBook;->N:J

    .line 186
    .line 187
    :cond_8
    :goto_4
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 188
    .line 189
    if-nez v0, :cond_9

    .line 190
    .line 191
    return-void

    .line 192
    :cond_9
    new-instance v1, Lcom/mycompany/app/dialog/DialogListBook$10$1;

    .line 193
    .line 194
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogListBook$10$1;-><init>(Lcom/mycompany/app/dialog/DialogListBook$10;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    .line 199
    .line 200
    return-void
.end method
