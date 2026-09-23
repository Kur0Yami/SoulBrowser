.class Lcom/mycompany/app/dialog/DialogEditScript$2;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript$2;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript$2;->c:Lcom/mycompany/app/dialog/DialogEditScript;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->J:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    iget-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditScript;->Z:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->i:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->a0:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 17
    .line 18
    sget-object v5, Lcom/mycompany/app/db/book/DbBookScript;->c:Lcom/mycompany/app/db/book/DbBookScript;

    .line 19
    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_2

    .line 25
    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const-string v5, "_content"

    .line 34
    .line 35
    filled-new-array {v5}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const-string v9, "_name=? AND _namespace=?"

    .line 40
    .line 41
    filled-new-array {v3, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    :try_start_0
    invoke-static {v4}, Lcom/mycompany/app/db/book/DbBookScript;->d(Landroid/content/Context;)Lcom/mycompany/app/db/book/DbBookScript;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v7, "DbBookScript_table"

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    invoke-static/range {v6 .. v11}, Lcom/mycompany/app/db/DbUtil;->g(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 57
    .line 58
    .line 59
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-object v1, v2

    .line 78
    :catch_1
    :cond_1
    move-object v3, v2

    .line 79
    :goto_0
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    :goto_1
    move-object v3, v2

    .line 86
    :cond_3
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->K:Z

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditScript;->u()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v3, "// ==UserScript==\n// @name             "

    .line 101
    .line 102
    const-string v4, "\n// @namespace        "

    .line 103
    .line 104
    invoke-static {v3, v1, v4}, Landroid/support/v4/media/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    move-object v1, v2

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v5, "userscript://"

    .line 119
    .line 120
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 124
    .line 125
    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :goto_3
    const-string v4, "\n// @version          1.0\n// @description      User\n// @run-at           document-end\n// @match            https://*\n// ==/UserScript==\n\n(function() {\n\n    // TODO\n\n})();\n"

    .line 137
    .line 138
    invoke-static {v3, v1, v4}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    :goto_4
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditScript;->b0:Ljava/lang/String;

    .line 143
    .line 144
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    const-string v1, "#fafafa;"

    .line 149
    .line 150
    const-string v4, "#171717;\'>"

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_6
    const-string v1, "black;"

    .line 154
    .line 155
    const-string v4, "white;\'>"

    .line 156
    .line 157
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v6, "<!DOCTYPE html><html dir=\'auto\'><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\'/><style>body{margin:0;padding:0;}</style></head><body><textarea style=\'display:block;margin:0;padding:0;width:100vw;height:100vh;border:none;outline:none;font-size:12px;color:"

    .line 160
    .line 161
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, "background-color:"

    .line 168
    .line 169
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_8

    .line 180
    .line 181
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_7

    .line 186
    .line 187
    :catch_2
    move-object v1, v2

    .line 188
    goto :goto_6

    .line 189
    :cond_7
    :try_start_2
    sget-object v1, Lorg/apache/commons/text/StringEscapeUtils;->b:Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 195
    goto :goto_6

    .line 196
    :catch_3
    :try_start_3
    sget-object v1, Lorg/apache/commons/text/StringEscapeUtils;->b:Lorg/apache/commons/text/translate/AggregateTranslator;

    .line 197
    .line 198
    invoke-virtual {v1, v3}, Lorg/apache/commons/text/translate/CharSequenceTranslator;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 202
    :goto_6
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    :cond_8
    const-string v1, "</textarea></body></html>"

    .line 206
    .line 207
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->n0:Ljava/lang/String;

    .line 215
    .line 216
    const-string v1, "soul_script_"

    .line 217
    .line 218
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->M1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->g0:Ljava/lang/String;

    .line 223
    .line 224
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->W:Z

    .line 225
    .line 226
    if-eqz v1, :cond_b

    .line 227
    .line 228
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditScript;->n0:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_9

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 238
    .line 239
    if-nez v1, :cond_a

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_a
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditScript$16;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditScript$16;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    .line 249
    .line 250
    :cond_b
    :goto_7
    return-void
.end method
