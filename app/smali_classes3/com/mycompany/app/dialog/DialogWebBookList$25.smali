.class Lcom/mycompany/app/dialog/DialogWebBookList$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$25;->c:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList$25;->c:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 4
    .line 5
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v2, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    const-string v2, "0"

    .line 15
    .line 16
    filled-new-array {v2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v13

    .line 20
    const/4 v2, 0x0

    .line 21
    :try_start_0
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    const-string v10, "DbBookWeb_table"

    .line 30
    .line 31
    const-string v12, "_secret=?"

    .line 32
    .line 33
    const/4 v14, 0x0

    .line 34
    const/4 v11, 0x0

    .line 35
    invoke-static/range {v9 .. v14}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 36
    .line 37
    .line 38
    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 39
    if-eqz v9, :cond_9

    .line 40
    .line 41
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_9

    .line 46
    .line 47
    const-string v2, "_isdir"

    .line 48
    .line 49
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    const-string v2, "_dir"

    .line 54
    .line 55
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v11

    .line 59
    const-string v2, "_path"

    .line 60
    .line 61
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v12

    .line 65
    const-string v2, "_title"

    .line 66
    .line 67
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    const-string v2, "_icon"

    .line 72
    .line 73
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 77
    const/4 v15, 0x0

    .line 78
    :goto_0
    :try_start_2
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    const/4 v3, 0x1

    .line 83
    if-ne v2, v3, :cond_1

    .line 84
    .line 85
    move v2, v3

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const/4 v2, 0x0

    .line 88
    :goto_1
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    invoke-static {v4, v5, v6}, Lcom/mycompany/app/db/book/DbBookWeb;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    move v7, v3

    .line 105
    const-wide/16 v2, -0x1

    .line 106
    .line 107
    move/from16 v16, v7

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/book/DbBookWeb;->l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catch_0
    move-object v2, v9

    .line 115
    move v8, v15

    .line 116
    goto :goto_4

    .line 117
    :cond_2
    move/from16 v16, v3

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move/from16 v16, v3

    .line 121
    .line 122
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v4, v2}, Lcom/mycompany/app/db/book/DbBookWeb;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_7

    .line 131
    .line 132
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 141
    .line 142
    .line 143
    move-result v17

    .line 144
    if-nez v17, :cond_4

    .line 145
    .line 146
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getBlob(I)[B

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    if-eqz v8, :cond_4

    .line 151
    .line 152
    move-object/from16 v18, v7

    .line 153
    .line 154
    array-length v7, v8

    .line 155
    if-lez v7, :cond_5

    .line 156
    .line 157
    array-length v7, v8

    .line 158
    invoke-static {v8, v7}, Lcom/mycompany/app/main/BitmapUtil;->a([BI)Landroid/graphics/Bitmap;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_6

    .line 167
    .line 168
    invoke-static {v3, v7}, Lcom/mycompany/app/main/MainUtil;->V7(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    move-object/from16 v18, v7

    .line 173
    .line 174
    :cond_5
    move-object/from16 v7, v18

    .line 175
    .line 176
    :cond_6
    :goto_2
    invoke-static {v4, v5, v2, v6, v7}, Lcom/mycompany/app/db/book/DbBookWeb;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    .line 178
    .line 179
    :cond_7
    :goto_3
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 180
    .line 181
    .line 182
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 183
    if-nez v2, :cond_8

    .line 184
    .line 185
    move/from16 v8, v16

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_8
    move/from16 v15, v16

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :catch_1
    move-object v2, v9

    .line 192
    move/from16 v8, v16

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :catch_2
    move-object v2, v9

    .line 196
    :catch_3
    const/4 v8, 0x0

    .line 197
    goto :goto_4

    .line 198
    :cond_9
    const/4 v8, 0x0

    .line 199
    goto :goto_5

    .line 200
    :goto_4
    move-object v9, v2

    .line 201
    :goto_5
    if-eqz v9, :cond_a

    .line 202
    .line 203
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 204
    .line 205
    .line 206
    :cond_a
    :goto_6
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 207
    .line 208
    if-nez v1, :cond_b

    .line 209
    .line 210
    return-void

    .line 211
    :cond_b
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookList$25$1;

    .line 212
    .line 213
    invoke-direct {v2, v0, v8}, Lcom/mycompany/app/dialog/DialogWebBookList$25$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList$25;Z)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 217
    .line 218
    .line 219
    return-void
.end method
