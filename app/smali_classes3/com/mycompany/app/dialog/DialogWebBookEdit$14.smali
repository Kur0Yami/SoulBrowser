.class Lcom/mycompany/app/dialog/DialogWebBookEdit$14;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$14;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$14;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 2
    .line 3
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->y0:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->z0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->A0:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->y0:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->z0:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->A0:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    iget-wide v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->B0:J

    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    cmp-long v2, v2, v4

    .line 21
    .line 22
    const-string v3, "_time"

    .line 23
    .line 24
    const-string v4, "_path"

    .line 25
    .line 26
    if-nez v2, :cond_6

    .line 27
    .line 28
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->n3(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_0
    move-object v8, v1

    .line 41
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->d0:Z

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-static {v8}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->C0:Ljava/lang/String;

    .line 52
    .line 53
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->x0:Z

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 60
    .line 61
    sget-object v5, Lcom/mycompany/app/db/book/DbBookWeb;->c:Lcom/mycompany/app/db/book/DbBookWeb;

    .line 62
    .line 63
    if-eqz v1, :cond_8

    .line 64
    .line 65
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    .line 79
    const-string v2, "/"

    .line 80
    .line 81
    :cond_3
    move-object v5, v2

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v9

    .line 86
    move-object v2, v4

    .line 87
    new-instance v4, Landroid/content/ContentValues;

    .line 88
    .line 89
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .line 91
    .line 92
    const/4 v11, 0x0

    .line 93
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    const-string v12, "_isdir"

    .line 98
    .line 99
    invoke-virtual {v4, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    .line 111
    .line 112
    const-string v2, "_icon"

    .line 113
    .line 114
    filled-new-array {v2}, [Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 119
    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    const-string v3, "1"

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_4
    const-string v3, "0"

    .line 126
    .line 127
    :goto_0
    filled-new-array {v3, v6}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-static/range {v1 .. v8}, Lcom/mycompany/app/db/book/DbBookWeb;->v(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 136
    .line 137
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v1, v2, v6, v7, v8}, Lcom/mycompany/app/db/book/DbBookWeb;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_8

    .line 144
    .line 145
    iget-wide v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 146
    .line 147
    iput-wide v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->B0:J

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    move-object v2, v4

    .line 151
    new-instance v1, Landroid/content/ContentValues;

    .line 152
    .line 153
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v4, "_dir"

    .line 157
    .line 158
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string v2, "_title"

    .line 167
    .line 168
    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->h0:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-nez v2, :cond_7

    .line 180
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    .line 191
    .line 192
    const-string v2, "_rsv4"

    .line 193
    .line 194
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    .line 200
    .line 201
    :cond_7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

    .line 202
    .line 203
    invoke-static {v2}, Lcom/mycompany/app/db/book/DbBookWeb;->f(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookWeb;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const-string v3, "DbBookWeb_table"

    .line 212
    .line 213
    iget-wide v4, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->B0:J

    .line 214
    .line 215
    invoke-static {v2, v3, v1, v4, v5}, Lcom/mycompany/app/db/DbUtil;->i(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;J)V

    .line 216
    .line 217
    .line 218
    :cond_8
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 219
    .line 220
    if-nez v0, :cond_9

    .line 221
    .line 222
    return-void

    .line 223
    :cond_9
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookEdit$14$1;

    .line 224
    .line 225
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$14$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit$14;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    .line 230
    .line 231
    return-void
.end method
