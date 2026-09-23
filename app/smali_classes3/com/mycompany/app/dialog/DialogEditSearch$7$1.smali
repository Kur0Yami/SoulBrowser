.class Lcom/mycompany/app/dialog/DialogEditSearch$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditSearch$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditSearch$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$7$1;->c:Lcom/mycompany/app/dialog/DialogEditSearch$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$7$1;->c:Lcom/mycompany/app/dialog/DialogEditSearch$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditSearch$7;->c:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 29
    .line 30
    sget v3, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 31
    .line 32
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 38
    .line 39
    invoke-static {v4, v3}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 55
    .line 56
    sget v3, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 57
    .line 58
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_2
    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_3

    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 75
    .line 76
    sget v3, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 77
    .line 78
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_3
    iget-wide v5, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->d0:J

    .line 84
    .line 85
    const-wide/16 v7, 0x0

    .line 86
    .line 87
    cmp-long v5, v5, v7

    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    if-lez v5, :cond_4

    .line 91
    .line 92
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->f0:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->j0:Z

    .line 101
    .line 102
    if-nez v5, :cond_9

    .line 103
    .line 104
    iget v5, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->h0:I

    .line 105
    .line 106
    iget v7, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->g0:I

    .line 107
    .line 108
    if-ne v5, v7, :cond_9

    .line 109
    .line 110
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->e0:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_9

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditSearch;->dismiss()V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 123
    .line 124
    sget-object v7, Lcom/mycompany/app/db/book/DbBookSearch;->c:Lcom/mycompany/app/db/book/DbBookSearch;

    .line 125
    .line 126
    if-eqz v5, :cond_7

    .line 127
    .line 128
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_5

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    filled-new-array {v4}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    :try_start_0
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookSearch;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookSearch;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    const-string v9, "DbBookSearch_table"

    .line 148
    .line 149
    const-string v11, "_text=?"

    .line 150
    .line 151
    const/4 v13, 0x0

    .line 152
    const/4 v10, 0x0

    .line 153
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 154
    .line 155
    .line 156
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    if-eqz v5, :cond_6

    .line 158
    .line 159
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 160
    .line 161
    .line 162
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    if-eqz v7, :cond_6

    .line 164
    .line 165
    move v7, v3

    .line 166
    goto :goto_0

    .line 167
    :catch_0
    move-object v5, v6

    .line 168
    :catch_1
    :cond_6
    move v7, v2

    .line 169
    :goto_0
    if-eqz v5, :cond_8

    .line 170
    .line 171
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_7
    :goto_1
    move v7, v2

    .line 176
    :cond_8
    :goto_2
    if-eqz v7, :cond_9

    .line 177
    .line 178
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 179
    .line 180
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 184
    .line 185
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 189
    .line 190
    sget v3, Lnet/kaki87/soul2/testing/R$string;->already_added:I

    .line 191
    .line 192
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->r0:Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;

    .line 197
    .line 198
    if-eqz v5, :cond_a

    .line 199
    .line 200
    iput-boolean v3, v5, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 201
    .line 202
    :cond_a
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->r0:Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;

    .line 203
    .line 204
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;

    .line 205
    .line 206
    invoke-direct {v3, v0, v1, v4}, Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->r0:Lcom/mycompany/app/dialog/DialogEditSearch$DialogTask;

    .line 210
    .line 211
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

    .line 212
    .line 213
    invoke-virtual {v3, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 214
    .line 215
    .line 216
    :goto_3
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->s0:Z

    .line 217
    .line 218
    return-void
.end method
