.class Lcom/mycompany/app/dialog/DialogEditScript$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditScript;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$20;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript$20;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    const/4 v8, 0x0

    .line 10
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogEditScript;->q0:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->r0:Z

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    iput-wide v2, v0, Lcom/mycompany/app/dialog/DialogEditScript;->s0:J

    .line 18
    .line 19
    iget-object v9, v0, Lcom/mycompany/app/dialog/DialogEditScript;->J:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 20
    .line 21
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditScript;->c0:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v9, :cond_1

    .line 24
    .line 25
    iget-object v2, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, v9, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v2, v8

    .line 31
    move-object v3, v2

    .line 32
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditScript;->u()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    move-object v2, v8

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v5, "userscript://"

    .line 53
    .line 54
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 58
    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :cond_3
    :goto_1
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditScript;->j0:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-nez v5, :cond_5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_6

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-nez v10, :cond_7

    .line 112
    .line 113
    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    const-string v7, "-"

    .line 118
    .line 119
    invoke-static {v6, v7, v5}, Landroid/support/v4/media/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    move-object v5, v8

    .line 125
    :goto_2
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogEditScript;->j0:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogEditScript;->k0:Ljava/lang/String;

    .line 128
    .line 129
    :goto_3
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditScript;->j0:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogEditScript;->k0:Ljava/lang/String;

    .line 132
    .line 133
    const/4 v7, 0x1

    .line 134
    invoke-static/range {v1 .. v7}, Lcom/mycompany/app/script/Script;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/script/Script;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    sget-object v3, Lcom/mycompany/app/script/Script;->x:Ljava/lang/String;

    .line 139
    .line 140
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditScript;->q0:Ljava/lang/String;

    .line 141
    .line 142
    sput-object v8, Lcom/mycompany/app/script/Script;->x:Ljava/lang/String;

    .line 143
    .line 144
    if-nez v2, :cond_8

    .line 145
    .line 146
    goto :goto_6

    .line 147
    :cond_8
    iget-object v3, v2, Lcom/mycompany/app/script/ScriptId;->a:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v4, v2, Lcom/mycompany/app/script/ScriptId;->b:Ljava/lang/String;

    .line 150
    .line 151
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditScript;->Z:Ljava/lang/String;

    .line 152
    .line 153
    invoke-static {v3, v5}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_9

    .line 158
    .line 159
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditScript;->a0:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_b

    .line 166
    .line 167
    :cond_9
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 168
    .line 169
    sget-object v6, Lcom/mycompany/app/db/book/DbBookScript;->c:Lcom/mycompany/app/db/book/DbBookScript;

    .line 170
    .line 171
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-nez v6, :cond_b

    .line 176
    .line 177
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_a

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_a
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    invoke-static {v5}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    const-string v7, "DbBookScript_table"

    .line 197
    .line 198
    const-string v10, "_name=? AND _namespace=?"

    .line 199
    .line 200
    invoke-static {v5, v7, v8, v10, v6}, Lcom/mycompany/app/db/DbUtil;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    const/4 v6, 0x1

    .line 205
    if-ne v5, v6, :cond_b

    .line 206
    .line 207
    iput-boolean v6, v0, Lcom/mycompany/app/dialog/DialogEditScript;->r0:Z

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_b
    :goto_4
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditScript;->j0:Ljava/lang/String;

    .line 211
    .line 212
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogEditScript;->k0:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v1, v2, v9, v5, v6}, Lcom/mycompany/app/db/book/DbBookScript;->o(Landroid/content/Context;Lcom/mycompany/app/script/Script;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    if-nez v2, :cond_c

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_c
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditScript;->Z:Ljava/lang/String;

    .line 222
    .line 223
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogEditScript;->a0:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookScript;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookScript;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iget-object v3, v1, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 230
    .line 231
    if-nez v3, :cond_d

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-lez v3, :cond_e

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 241
    .line 242
    .line 243
    :cond_e
    :goto_5
    iget-wide v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 244
    .line 245
    iput-wide v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->s0:J

    .line 246
    .line 247
    :goto_6
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 248
    .line 249
    if-nez v0, :cond_f

    .line 250
    .line 251
    return-void

    .line 252
    :cond_f
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditScript$20$1;

    .line 253
    .line 254
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogEditScript$20$1;-><init>(Lcom/mycompany/app/dialog/DialogEditScript$20;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    .line 259
    .line 260
    return-void
.end method
