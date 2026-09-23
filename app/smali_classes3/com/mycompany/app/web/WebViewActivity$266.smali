.class Lcom/mycompany/app/web/WebViewActivity$266;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$266;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$266;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->Qi:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->Ri:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->Si:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->Ti:Z

    .line 12
    .line 13
    iget-boolean v6, v1, Lcom/mycompany/app/web/WebViewActivity;->Ui:Z

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->Qi:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->Ri:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->Si:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    const-string v10, "_time"

    .line 27
    .line 28
    if-eqz v8, :cond_2

    .line 29
    .line 30
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    iget-object v11, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 35
    .line 36
    sget-object v12, Lcom/mycompany/app/db/book/DbBookIcon;->c:Lcom/mycompany/app/db/book/DbBookIcon;

    .line 37
    .line 38
    if-eqz v11, :cond_2

    .line 39
    .line 40
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    if-nez v12, :cond_2

    .line 45
    .line 46
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->k6(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    if-nez v12, :cond_2

    .line 51
    .line 52
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    if-nez v12, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    .line 61
    .line 62
    move-result-wide v12

    .line 63
    const-string v14, "_icon"

    .line 64
    .line 65
    filled-new-array {v14}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v15

    .line 69
    filled-new-array {v8}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v11}, Lcom/mycompany/app/db/book/DbBookIcon;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookIcon;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    const-string v9, "DbBookIcon_table"

    .line 82
    .line 83
    const-string v0, "_host=?"

    .line 84
    .line 85
    invoke-static {v11, v9, v15, v0, v7}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v15

    .line 89
    if-eqz v15, :cond_2

    .line 90
    .line 91
    move/from16 v16, v5

    .line 92
    .line 93
    const-string v5, "_host"

    .line 94
    .line 95
    invoke-static {v5, v8}, Landroidx/work/impl/workers/a;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-virtual {v5, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    .line 105
    .line 106
    const/4 v8, 0x1

    .line 107
    if-ne v15, v8, :cond_1

    .line 108
    .line 109
    invoke-static {v11, v9, v5, v0, v7}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .line 117
    .line 118
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 119
    .line 120
    const/16 v8, 0x64

    .line 121
    .line 122
    invoke-virtual {v4, v7, v8, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v5, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 133
    .line 134
    .line 135
    invoke-static {v11, v9, v5}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    :goto_0
    move/from16 v16, v5

    .line 140
    .line 141
    :catch_0
    :goto_1
    if-eqz v16, :cond_9

    .line 142
    .line 143
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 144
    .line 145
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 146
    .line 147
    if-nez v5, :cond_3

    .line 148
    .line 149
    move-object v5, v2

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {v5, v2}, Lcom/mycompany/app/web/WebNestView;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    :goto_2
    sget-object v7, Lcom/mycompany/app/db/book/DbBookHistory;->c:Lcom/mycompany/app/db/book/DbBookHistory;

    .line 156
    .line 157
    sget v7, Lcom/mycompany/app/pref/PrefWeb;->n:I

    .line 158
    .line 159
    if-eqz v7, :cond_9

    .line 160
    .line 161
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 162
    .line 163
    if-eqz v7, :cond_4

    .line 164
    .line 165
    sget-wide v7, Lcom/mycompany/app/pref/PrefSecret;->l:J

    .line 166
    .line 167
    const-wide/16 v11, 0x0

    .line 168
    .line 169
    cmp-long v7, v7, v11

    .line 170
    .line 171
    if-nez v7, :cond_4

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_4
    if-nez v0, :cond_5

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_5
    invoke-static {v0, v5}, Lcom/mycompany/app/main/MainUtil;->Z2(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    if-eqz v7, :cond_6

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 189
    .line 190
    .line 191
    move-result-wide v7

    .line 192
    sget-boolean v9, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 193
    .line 194
    if-eqz v9, :cond_7

    .line 195
    .line 196
    const-string v9, "1"

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_7
    const-string v9, "0"

    .line 200
    .line 201
    :goto_3
    filled-new-array {v9, v5}, [Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    invoke-static {v0}, Lcom/mycompany/app/db/book/DbBookHistory;->b(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookHistory;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    const-string v11, "DbBookHistory_table"

    .line 214
    .line 215
    const-string v12, "_secret=? AND _path=?"

    .line 216
    .line 217
    const/4 v13, 0x0

    .line 218
    invoke-static {v0, v11, v13, v12, v9}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    if-eqz v13, :cond_9

    .line 223
    .line 224
    const-string v14, "_path"

    .line 225
    .line 226
    const-string v15, "_title"

    .line 227
    .line 228
    invoke-static {v14, v5, v15, v3}, Lcom/mycompany/app/dialog/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-virtual {v3, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    .line 238
    .line 239
    const/4 v8, 0x1

    .line 240
    if-ne v13, v8, :cond_8

    .line 241
    .line 242
    invoke-static {v0, v11, v3, v12, v9}, Lcom/mycompany/app/db/DbUtil;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_8
    sget-boolean v5, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 247
    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    const-string v7, "_secret"

    .line 253
    .line 254
    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v0, v11, v3}, Lcom/mycompany/app/db/DbUtil;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 258
    .line 259
    .line 260
    :cond_9
    :goto_4
    if-eqz v6, :cond_a

    .line 261
    .line 262
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 263
    .line 264
    invoke-static {v0, v4, v2}, Lcom/mycompany/app/db/book/DbBookWeb;->o(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->k6:Lcom/mycompany/app/dialog/DialogListBook;

    .line 268
    .line 269
    if-eqz v0, :cond_a

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogListBook;->u()V

    .line 272
    .line 273
    .line 274
    :cond_a
    return-void
.end method
