.class public Lcom/mycompany/app/script/Script;
.super Lcom/mycompany/app/script/ScriptMetadata;
.source "SourceFile"


# static fields
.field public static x:Ljava/lang/String;


# instance fields
.field public final p:Ljava/lang/String;

.field public q:J

.field public r:J

.field public s:Z

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final y:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/mycompany/app/script/ScriptRequire;[Lcom/mycompany/app/script/ScriptResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/mycompany/app/script/ScriptCriteria;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    iput-object p6, p0, Lcom/mycompany/app/script/ScriptMetadata;->f:Ljava/lang/String;

    .line 3
    iput-object p7, p0, Lcom/mycompany/app/script/ScriptMetadata;->g:Ljava/lang/String;

    .line 4
    iput-object p8, p0, Lcom/mycompany/app/script/ScriptMetadata;->h:Ljava/lang/String;

    .line 5
    iput-object p9, p0, Lcom/mycompany/app/script/ScriptMetadata;->i:Ljava/lang/String;

    .line 6
    iput-object p10, p0, Lcom/mycompany/app/script/ScriptMetadata;->j:Ljava/lang/String;

    .line 7
    iput-object p11, p0, Lcom/mycompany/app/script/ScriptMetadata;->k:Ljava/lang/String;

    .line 8
    iput p12, p0, Lcom/mycompany/app/script/ScriptMetadata;->l:I

    .line 9
    iput-object p13, p0, Lcom/mycompany/app/script/ScriptMetadata;->m:Ljava/lang/String;

    .line 10
    iput-object p14, p0, Lcom/mycompany/app/script/ScriptMetadata;->n:[Lcom/mycompany/app/script/ScriptRequire;

    .line 11
    iput-object p15, p0, Lcom/mycompany/app/script/ScriptMetadata;->o:[Lcom/mycompany/app/script/ScriptResource;

    move-object/from16 p1, p16

    .line 12
    iput-object p1, p0, Lcom/mycompany/app/script/Script;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 13
    iput-object p1, p0, Lcom/mycompany/app/script/Script;->t:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 14
    iput-object p1, p0, Lcom/mycompany/app/script/Script;->u:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 15
    iput-object p1, p0, Lcom/mycompany/app/script/Script;->v:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 16
    iput-object p1, p0, Lcom/mycompany/app/script/Script;->w:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/mycompany/app/script/Script;->y:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/mycompany/app/script/ScriptRequire;
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_7

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/mycompany/app/script/DownloadHelper;->a(Ljava/lang/String;)Lcom/mycompany/app/script/DownloadHelper$DownloadData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    iget-object v2, v0, Lcom/mycompany/app/script/DownloadHelper$DownloadData;->a:[B

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_5

    .line 20
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/mycompany/app/script/UnicodeReader;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/script/DownloadHelper$DownloadData;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v2, v3, v0}, Lcom/mycompany/app/script/UnicodeReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    .line 31
    .line 32
    const/16 v0, 0x1000

    .line 33
    .line 34
    :try_start_1
    new-array v3, v0, [C

    .line 35
    .line 36
    move-object v4, v1

    .line 37
    :cond_2
    :goto_0
    iget-object v5, v2, Lcom/mycompany/app/script/UnicodeReader;->c:Ljava/io/InputStreamReader;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-virtual {v5, v3, v6, v0}, Ljava/io/InputStreamReader;->read([CII)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/4 v7, -0x1

    .line 45
    if-eq v5, v7, :cond_4

    .line 46
    .line 47
    if-lez v5, :cond_2

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    move-object v1, v2

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    :goto_1
    invoke-virtual {v4, v3, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    if-eqz v4, :cond_5

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    goto :goto_2

    .line 71
    :cond_5
    move-object v0, v1

    .line 72
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/mycompany/app/script/UnicodeReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 73
    .line 74
    .line 75
    goto :goto_6

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :catch_0
    move-object v2, v1

    .line 79
    goto :goto_4

    .line 80
    :goto_3
    if-eqz v1, :cond_6

    .line 81
    .line 82
    :try_start_3
    invoke-virtual {v1}, Lcom/mycompany/app/script/UnicodeReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 83
    .line 84
    .line 85
    :catch_1
    :cond_6
    throw p0

    .line 86
    :catch_2
    :goto_4
    if-eqz v2, :cond_7

    .line 87
    .line 88
    :try_start_4
    invoke-virtual {v2}, Lcom/mycompany/app/script/UnicodeReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 89
    .line 90
    .line 91
    :catch_3
    :cond_7
    :goto_5
    move-object v0, v1

    .line 92
    :catch_4
    :goto_6
    if-nez v0, :cond_8

    .line 93
    .line 94
    :goto_7
    return-object v1

    .line 95
    :cond_8
    new-instance v1, Lcom/mycompany/app/script/ScriptRequire;

    .line 96
    .line 97
    invoke-direct {v1, p0, v0}, Lcom/mycompany/app/script/ScriptRequire;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v1
.end method

.method public static b(Lcom/mycompany/app/script/Script;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "function() {};\n"

    .line 2
    .line 3
    const-string v1, ", resourceName); };\n"

    .line 4
    .line 5
    const-string v2, "\", \""

    .line 6
    .line 7
    const-string v3, "\\\""

    .line 8
    .line 9
    const-string v4, "GM_"

    .line 10
    .line 11
    const-string v5, "\""

    .line 12
    .line 13
    :try_start_0
    iget-object v6, p0, Lcom/mycompany/app/script/ScriptId;->b:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/mycompany/app/script/ScriptId;->a:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "[^0-9a-zA-Z_]"

    .line 79
    .line 80
    const-string v4, ""

    .line 81
    .line 82
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "unsafeWindow = (function() { var el = document.createElement(\'p\'); el.setAttribute(\'onclick\', \'return window;\'); return el.onclick(); }()); window.wrappedJSObject = unsafeWindow;\n"

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v4, "var GM_listValues = function() { return "

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v4, "android.onUsListValues("

    .line 102
    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, ").split(\",\"); };\n"

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v4, "var GM_getValue = function(key, defaultValue) { "

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v4, "if (defaultValue === undefined) {defaultValue = null;} "

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v4, "defaultValue = JSON.stringify(defaultValue); "

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v4, "return JSON.parse(android.onUsGetValue("

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v4, ", key, defaultValue)); };\n"

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v4, "var GM_setValue = function(key, value) { "

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v4, "if (value === undefined) {value = null;} "

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v4, "value = JSON.stringify(value); "

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v4, "android.onUsSetValue("

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v4, ", key, value); };\n"

    .line 166
    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v4, "var GM_deleteValue = function(key) { "

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v4, "android.onUsDeleteValue("

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v4, ", key); };\n"

    .line 184
    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v4, "var GM_addStyle = function(css) { "

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v4, "var style = document.createElement(\"style\"); "

    .line 194
    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v4, "style.type = \"text/css\"; style.innerHTML = css; "

    .line 199
    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v4, "document.getElementsByTagName(\'head\')[0].appendChild(style); };\n"

    .line 204
    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v4, "var GM_log = function(message) { "

    .line 209
    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v4, "android.onUsLog("

    .line 214
    .line 215
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v4, ", message); };\n"

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v4, "var GM_openInTab = function(url,option) { "

    .line 227
    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v4, "android.onUsOpenInTab("

    .line 232
    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v4, ", url); };\n"

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v4, "var GM_setClipboard = function(data,type) { "

    .line 245
    .line 246
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v4, "android.onUsSetClipboard("

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v4, ", data); };\n"

    .line 258
    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v4, "var GM_getResourceURL = function(resourceName) { return "

    .line 263
    .line 264
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v4, "android.onUsGetResourceURL("

    .line 268
    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v4, "var GM_getResourceText = function(resourceName) { return "

    .line 279
    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v4, "android.onUsGetResourceText("

    .line 284
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string v1, "var GM_xmlhttpRequest = function(details) { \n"

    .line 295
    .line 296
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v1, "if (details.onabort) { unsafeWindow."

    .line 300
    .line 301
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v1, "GM_onAbortCallback = details.onabort;\n"

    .line 308
    .line 309
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v1, "details.onabort = \'"

    .line 313
    .line 314
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v1, "GM_onAbortCallback\'; }\n"

    .line 321
    .line 322
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v1, "if (details.onerror) { unsafeWindow."

    .line 326
    .line 327
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v1, "GM_onErrorCallback = details.onerror;\n"

    .line 334
    .line 335
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v1, "details.onerror = \'"

    .line 339
    .line 340
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v1, "GM_onErrorCallback\'; }\n"

    .line 347
    .line 348
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v1, "if (details.onload) { unsafeWindow."

    .line 352
    .line 353
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v1, "GM_onLoadCallback = details.onload;\n"

    .line 360
    .line 361
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v1, "details.onload = \'"

    .line 365
    .line 366
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v1, "GM_onLoadCallback\'; }\n"

    .line 373
    .line 374
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    const-string v1, "if (details.onprogress) { unsafeWindow."

    .line 378
    .line 379
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v1, "GM_onProgressCallback = details.onprogress;\n"

    .line 386
    .line 387
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v1, "details.onprogress = \'"

    .line 391
    .line 392
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v1, "GM_onProgressCallback\'; }\n"

    .line 399
    .line 400
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v1, "if (details.onreadystatechange) { unsafeWindow."

    .line 404
    .line 405
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v1, "GM_onReadyStateChange = details.onreadystatechange;\n"

    .line 412
    .line 413
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v1, "details.onreadystatechange = \'"

    .line 417
    .line 418
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v1, "GM_onReadyStateChange\'; }\n"

    .line 425
    .line 426
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v1, "if (details.ontimeout) { unsafeWindow."

    .line 430
    .line 431
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v1, "GM_onTimeoutCallback = details.ontimeout;\n"

    .line 438
    .line 439
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v1, "details.ontimeout = \'"

    .line 443
    .line 444
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v1, "GM_onTimeoutCallback\'; }\n"

    .line 451
    .line 452
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v1, "if (details.upload) {\n"

    .line 456
    .line 457
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v1, "if (details.upload.onabort) { unsafeWindow."

    .line 461
    .line 462
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v1, "GM_uploadOnAbortCallback = details.upload.onabort;\n"

    .line 469
    .line 470
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v1, "details.upload.onabort = \'"

    .line 474
    .line 475
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    const-string v1, "GM_uploadOnAbortCallback\'; }\n"

    .line 482
    .line 483
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    const-string v1, "if (details.upload.onerror) { unsafeWindow."

    .line 487
    .line 488
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    const-string v1, "GM_uploadOnErrorCallback = details.upload.onerror;\n"

    .line 495
    .line 496
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v1, "details.upload.onerror = \'"

    .line 500
    .line 501
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string v1, "GM_uploadOnErrorCallback\'; }\n"

    .line 508
    .line 509
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    const-string v1, "if (details.upload.onload) { unsafeWindow."

    .line 513
    .line 514
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v1, "GM_uploadOnLoadCallback = details.upload.onload;\n"

    .line 521
    .line 522
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v1, "details.upload.onload = \'"

    .line 526
    .line 527
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    const-string v1, "GM_uploadOnLoadCallback\'; }\n"

    .line 534
    .line 535
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v1, "if (details.upload.onprogress) { unsafeWindow."

    .line 539
    .line 540
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v1, "GM_uploadOnProgressCallback = details.upload.onprogress;\n"

    .line 547
    .line 548
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v1, "details.upload.onprogress = \'"

    .line 552
    .line 553
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    const-string v1, "GM_uploadOnProgressCallback\'; }\n"

    .line 560
    .line 561
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    const-string v1, "}\n"

    .line 565
    .line 566
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string v1, "return JSON.parse("

    .line 570
    .line 571
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    const-string v1, "android.onUsXmlHttpRequest("

    .line 575
    .line 576
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    const-string p1, ", JSON.stringify(details))); };\n"

    .line 583
    .line 584
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    const-string p1, "var GM_info = "

    .line 588
    .line 589
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    const-string p1, "var GM_registerMenuCommand = "

    .line 596
    .line 597
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string p1, "var GM={};\n"

    .line 604
    .line 605
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    const-string p1, "GM.listValues=GM_listValues;\n"

    .line 609
    .line 610
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    const-string p1, "GM.getValue=GM_getValue;\n"

    .line 614
    .line 615
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string p1, "GM.setValue=GM_setValue;\n"

    .line 619
    .line 620
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string p1, "GM.deleteValue=GM_deleteValue;\n"

    .line 624
    .line 625
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const-string p1, "GM.addStyle=GM_addStyle;\n"

    .line 629
    .line 630
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string p1, "GM.log=GM_log;\n"

    .line 634
    .line 635
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    const-string p1, "GM.openInTab=GM_openInTab;\n"

    .line 639
    .line 640
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string p1, "GM.setClipboard=GM_setClipboard;\n"

    .line 644
    .line 645
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    const-string p1, "GM.getResourceURL=GM_getResourceURL;\n"

    .line 649
    .line 650
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    const-string p1, "GM.getResourceText=GM_getResourceText;\n"

    .line 654
    .line 655
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    const-string p1, "GM.xmlhttpRequest=GM_xmlhttpRequest;\n"

    .line 659
    .line 660
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    const-string p1, "GM.info=GM_info;\n"

    .line 664
    .line 665
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    const-string p1, "GM.registerMenuCommand=GM_registerMenuCommand;\n"

    .line 669
    .line 670
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "var GM_download = function(details) { \n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "if (typeof details === \'string\') { details = { url: details, name: (arguments[1] || \'download\') }; }\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "if (details.onload) { unsafeWindow."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GM_downloadOnLoadCallback = details.onload;\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "details.onload = \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GM_downloadOnLoadCallback\'; }\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "if (details.onerror) { unsafeWindow."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GM_downloadOnErrorCallback = details.onerror;\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "details.onerror = \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GM_downloadOnErrorCallback\'; }\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "if (details.onprogress) { unsafeWindow."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GM_downloadOnProgressCallback = details.onprogress;\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "details.onprogress = \'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GM_downloadOnProgressCallback\'; }\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "return android.onUsDownload("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", JSON.stringify(details)); };\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GM.download=GM_download;\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;


    .line 671
    .line 672
    .line 673
    iget-object p1, p0, Lcom/mycompany/app/script/ScriptMetadata;->n:[Lcom/mycompany/app/script/ScriptRequire;

    .line 674
    .line 675
    const/4 v0, 0x0

    .line 676
    if-eqz p1, :cond_0

    .line 677
    .line 678
    array-length v1, p1

    .line 679
    move v2, v0

    .line 680
    :goto_0
    if-ge v2, v1, :cond_0

    .line 681
    .line 682
    aget-object v4, p1, v2

    .line 683
    .line 684
    iget-object v4, v4, Lcom/mycompany/app/script/ScriptRequire;->b:Ljava/lang/String;

    .line 685
    .line 686
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    const-string v4, "\n"

    .line 690
    .line 691
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    add-int/lit8 v2, v2, 0x1

    .line 695
    .line 696
    goto :goto_0

    .line 697
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/script/Script;->p:Ljava/lang/String;

    .line 698
    .line 699
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    iget p0, p0, Lcom/mycompany/app/script/ScriptMetadata;->l:I

    .line 703
    .line 704
    const/4 p1, 0x1

    .line 705
    and-int/2addr p0, p1

    .line 706
    if-ne p0, p1, :cond_1

    .line 707
    .line 708
    goto :goto_1

    .line 709
    :cond_1
    const-string p0, "(function(){"

    .line 710
    .line 711
    invoke-virtual {v3, v0, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string p0, "})();"

    .line 715
    .line 716
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    return-object p0

    .line 724
    :catch_0
    const/4 p0, 0x0

    .line 725
    return-object p0
.end method

.method public static connectArr(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_empty

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :cond_empty
    const/4 v1, 0x0

    return-object v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mycompany/app/script/Script;
    .locals 38

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    sput-object v3, Lcom/mycompany/app/script/Script;->x:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    :catch_0
    move-object/from16 v36, v3

    .line 17
    .line 18
    goto/16 :goto_24

    .line 19
    .line 20
    :cond_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-static/range {p0 .. p1}, Lcom/mycompany/app/main/MainUtil;->Z3(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object/from16 v4, p2

    .line 34
    .line 35
    :goto_0
    move-object v5, v0

    .line 36
    :goto_1
    move-object v6, v5

    .line 37
    move-object v7, v6

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move-object/from16 v4, p2

    .line 40
    .line 41
    move-object v5, v3

    .line 42
    goto :goto_1

    .line 43
    :goto_2
    new-instance v8, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v9, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v10, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 56
    .line 57
    .line 58
    new-instance v11, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 61
    .line 62
    .line 63
    new-instance v12, Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :try_start_1
    new-instance v14, Ljava/util/Scanner;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 69
    .line 70
    move-object/from16 v15, p3

    .line 71
    .line 72
    :try_start_2
    invoke-direct {v14, v15}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 73
    .line 74
    .line 75
    :try_start_3
    const-string v16, "// @(\\S+)(?:\\s+(.*))?"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 76
    .line 77
    move-object/from16 v36, v3

    .line 78
    .line 79
    :try_start_4
    invoke-static/range {v16 .. v16}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 80
    .line 81
    .line 82
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 83
    move-object/from16 v17, v36

    .line 84
    .line 85
    move-object/from16 v18, v17

    .line 86
    .line 87
    move-object/from16 v19, v18

    .line 88
    .line 89
    move-object/from16 v20, v19

    .line 90
    .line 91
    move-object/from16 v21, v20

    .line 92
    .line 93
    move-object/from16 v22, v21

    .line 94
    .line 95
    move-object/from16 v23, v22

    .line 96
    .line 97
    move-object/from16 v24, v23

    .line 98
    .line 99
    move-object/from16 v25, v24

    .line 100
    .line 101
    const/4 v13, 0x0

    .line 102
    const/16 v16, 0x0

    .line 103
    .line 104
    :goto_3
    :try_start_5
    invoke-virtual {v14}, Ljava/util/Scanner;->hasNextLine()Z

    .line 105
    .line 106
    .line 107
    move-result v26

    .line 108
    if-eqz v26, :cond_2f

    .line 109
    .line 110
    invoke-virtual {v14}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v26

    .line 114
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v27
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 118
    if-eqz v27, :cond_3

    .line 119
    .line 120
    move-object/from16 v28, v3

    .line 121
    .line 122
    move-object/from16 p2, v4

    .line 123
    .line 124
    :goto_4
    move-object/from16 v26, v5

    .line 125
    .line 126
    goto/16 :goto_a

    .line 127
    .line 128
    :cond_3
    move-object/from16 p2, v4

    .line 129
    .line 130
    :try_start_6
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v26
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 138
    if-eqz v26, :cond_4

    .line 139
    .line 140
    move-object/from16 v28, v3

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_4
    move-object/from16 v26, v5

    .line 144
    .line 145
    if-nez v16, :cond_6

    .line 146
    .line 147
    :try_start_7
    const-string v5, "// ==UserScript=="

    .line 148
    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 153
    if-eqz v4, :cond_5

    .line 154
    .line 155
    move-object/from16 v4, p2

    .line 156
    .line 157
    move-object/from16 v5, v26

    .line 158
    .line 159
    const/16 v16, 0x1

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    :goto_5
    move-object/from16 v28, v3

    .line 163
    .line 164
    goto :goto_a

    .line 165
    :catch_1
    :goto_6
    move-object/from16 v4, p2

    .line 166
    .line 167
    move-object/from16 v5, v26

    .line 168
    .line 169
    goto/16 :goto_1d

    .line 170
    .line 171
    :cond_6
    :try_start_8
    const-string v5, "// ==/UserScript=="

    .line 172
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_7

    .line 178
    .line 179
    const/16 v27, 0x1

    .line 180
    .line 181
    :goto_7
    move-object/from16 v30, v6

    .line 182
    .line 183
    move-object/from16 v31, v7

    .line 184
    .line 185
    goto/16 :goto_19

    .line 186
    .line 187
    :cond_7
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-nez v5, :cond_8

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_8
    const/4 v5, 0x1

    .line 199
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v28

    .line 203
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_9

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_9
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v28

    .line 218
    if-eqz v28, :cond_a

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    move-object/from16 v28, v3

    .line 222
    .line 223
    const-string v3, "unwrap"

    .line 224
    .line 225
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_b

    .line 230
    .line 231
    or-int/lit8 v13, v13, 0x1

    .line 232
    .line 233
    :goto_8
    move-object/from16 v4, p2

    .line 234
    .line 235
    move-object/from16 v5, v26

    .line 236
    .line 237
    :goto_9
    move-object/from16 v3, v28

    .line 238
    .line 239
    goto/16 :goto_3

    .line 240
    .line 241
    :cond_b
    const/4 v3, 0x2

    .line 242
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v29

    .line 250
    if-eqz v29, :cond_c

    .line 251
    .line 252
    goto :goto_a

    .line 253
    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v29

    .line 261
    if-eqz v29, :cond_d

    .line 262
    .line 263
    :goto_a
    goto :goto_8

    .line 264
    :cond_d
    const-string v3, "name"

    .line 265
    .line 266
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 270
    move/from16 v30, v3

    .line 271
    .line 272
    const-string v3, ":"

    .line 273
    .line 274
    if-eqz v30, :cond_14

    .line 275
    .line 276
    move-object/from16 v30, v6

    .line 277
    .line 278
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 282
    move-object/from16 v31, v7

    .line 283
    .line 284
    const/4 v7, 0x4

    .line 285
    if-ne v6, v7, :cond_e

    .line 286
    .line 287
    :goto_b
    goto/16 :goto_11

    .line 288
    .line 289
    :cond_e
    const/4 v7, 0x5

    .line 290
    if-le v6, v7, :cond_13

    .line 291
    .line 292
    const/16 v7, 0x9

    .line 293
    .line 294
    if-ne v6, v7, :cond_f

    .line 295
    .line 296
    :try_start_a
    const-string v6, "space"

    .line 297
    .line 298
    const/4 v7, 0x4

    .line 299
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-eqz v6, :cond_10

    .line 304
    .line 305
    move-object v5, v4

    .line 306
    :goto_c
    move-object/from16 v4, p2

    .line 307
    .line 308
    goto :goto_e

    .line 309
    :catch_2
    move-object/from16 v4, p2

    .line 310
    .line 311
    move-object/from16 v5, v26

    .line 312
    .line 313
    move-object/from16 v6, v30

    .line 314
    .line 315
    move-object/from16 v7, v31

    .line 316
    .line 317
    goto/16 :goto_1d

    .line 318
    .line 319
    :cond_f
    const/4 v7, 0x4

    .line 320
    :cond_10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-nez v6, :cond_13

    .line 325
    .line 326
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-eqz v3, :cond_13

    .line 331
    .line 332
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-nez v3, :cond_11

    .line 337
    .line 338
    const/4 v3, 0x5

    .line 339
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    if-eqz v6, :cond_12

    .line 344
    .line 345
    move-object/from16 v23, v2

    .line 346
    .line 347
    :goto_d
    move-object/from16 v24, v4

    .line 348
    .line 349
    move-object/from16 v5, v26

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :cond_11
    const/4 v3, 0x5

    .line 353
    :cond_12
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eqz v6, :cond_13

    .line 358
    .line 359
    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eqz v3, :cond_13

    .line 364
    .line 365
    move-object/from16 v23, v1

    .line 366
    .line 367
    goto :goto_d

    .line 368
    :cond_13
    move-object/from16 v4, p2

    .line 369
    .line 370
    goto :goto_b

    .line 371
    :goto_e
    move-object/from16 v6, v30

    .line 372
    .line 373
    move-object/from16 v7, v31

    .line 374
    .line 375
    goto/16 :goto_9

    .line 376
    .line 377
    :catch_3
    move-object/from16 v31, v7

    .line 378
    .line 379
    move-object/from16 v4, p2

    .line 380
    .line 381
    move-object/from16 v5, v26

    .line 382
    .line 383
    move-object/from16 v6, v30

    .line 384
    .line 385
    goto/16 :goto_1d

    .line 386
    .line 387
    :cond_14
    move-object/from16 v30, v6

    .line 388
    .line 389
    move-object/from16 v31, v7

    .line 390
    .line 391
    const-string v6, "description"

    .line 392
    .line 393
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    if-eqz v6, :cond_18

    .line 398
    .line 399
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    const/16 v7, 0xb

    .line 404
    .line 405
    if-ne v6, v7, :cond_15

    .line 406
    .line 407
    move-object/from16 v17, v4

    .line 408
    .line 409
    goto :goto_10

    .line 410
    :cond_15
    const/16 v7, 0xc

    .line 411
    .line 412
    if-le v6, v7, :cond_17

    .line 413
    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    if-nez v6, :cond_17

    .line 419
    .line 420
    const/16 v6, 0xb

    .line 421
    .line 422
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-eqz v3, :cond_17

    .line 427
    .line 428
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-nez v3, :cond_16

    .line 433
    .line 434
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-eqz v3, :cond_16

    .line 439
    .line 440
    move-object/from16 v23, v2

    .line 441
    .line 442
    :goto_f
    move-object/from16 v25, v4

    .line 443
    .line 444
    goto :goto_10

    .line 445
    :cond_16
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-eqz v3, :cond_17

    .line 450
    .line 451
    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    if-eqz v3, :cond_17

    .line 456
    .line 457
    move-object/from16 v23, v1

    .line 458
    .line 459
    goto :goto_f

    .line 460
    :cond_connect
    const-string v3, "connect"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v3, v37

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_17
    :goto_10
    move-object/from16 v4, p2

    .line 461
    .line 462
    :goto_11
    move-object/from16 v5, v26

    .line 463
    .line 464
    goto :goto_e

    .line 465
    :cond_18
    const-string v3, "author"

    .line 466
    .line 467
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_19

    .line 472
    .line 473
    move-object/from16 v22, v4

    .line 474
    .line 475
    :goto_12
    move-object/from16 v5, v26

    .line 476
    .line 477
    move-object/from16 v6, v30

    .line 478
    .line 479
    :goto_13
    move-object/from16 v7, v31

    .line 480
    .line 481
    :goto_14
    move-object/from16 v4, p2

    .line 482
    .line 483
    goto/16 :goto_9

    .line 484
    .line 485
    :cond_19
    const-string v3, "downloadURL"

    .line 486
    .line 487
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-eqz v3, :cond_1a

    .line 492
    .line 493
    move-object v6, v4

    .line 494
    move-object/from16 v5, v26

    .line 495
    .line 496
    goto :goto_13

    .line 497
    :cond_1a
    const-string v3, "updateURL"

    .line 498
    .line 499
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    if-eqz v3, :cond_1b

    .line 504
    .line 505
    move-object v7, v4

    .line 506
    move-object/from16 v5, v26

    .line 507
    .line 508
    move-object/from16 v6, v30

    .line 509
    .line 510
    goto :goto_14

    .line 511
    :cond_1b
    const-string v3, "installURL"

    .line 512
    .line 513
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    if-eqz v3, :cond_1c

    .line 518
    .line 519
    move-object/from16 v18, v4

    .line 520
    .line 521
    goto :goto_12

    .line 522
    :cond_1c
    const-string v3, "icon"

    .line 523
    .line 524
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_1d

    .line 529
    .line 530
    invoke-static {v4, v0}, Lcom/mycompany/app/script/DownloadHelper;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    move-object/from16 v4, p2

    .line 535
    .line 536
    move-object/from16 v19, v3

    .line 537
    .line 538
    goto :goto_11

    .line 539
    :cond_1d
    const-string v3, "run-at"

    .line 540
    .line 541
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-eqz v3, :cond_1f

    .line 546
    .line 547
    const-string v3, "document-start"

    .line 548
    .line 549
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    if-nez v3, :cond_1e

    .line 554
    .line 555
    const-string v3, "document-end"

    .line 556
    .line 557
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    if-eqz v3, :cond_17

    .line 562
    .line 563
    :cond_1e
    move-object/from16 v20, v4

    .line 564
    .line 565
    goto :goto_12

    .line 566
    :cond_1f
    const-string v3, "version"

    .line 567
    .line 568
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-eqz v3, :cond_20

    .line 573
    .line 574
    move-object/from16 v21, v4

    .line 575
    .line 576
    goto :goto_12

    .line 577
    :cond_20
    const-string v3, "require"

    .line 578
    .line 579
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    if-eqz v3, :cond_21

    .line 584
    .line 585
    invoke-static {v4, v0}, Lcom/mycompany/app/script/DownloadHelper;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    invoke-static {v3}, Lcom/mycompany/app/script/Script;->a(Ljava/lang/String;)Lcom/mycompany/app/script/ScriptRequire;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    if-eqz v3, :cond_17

    .line 594
    .line 595
    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    goto/16 :goto_10

    .line 599
    .line 600
    :cond_21
    const-string v3, "resource"

    .line 601
    .line 602
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-eqz v3, :cond_26

    .line 607
    .line 608
    const-string v3, "(\\S+)\\s+(.*)"

    .line 609
    .line 610
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 619
    .line 620
    .line 621
    move-result v4

    .line 622
    if-eqz v4, :cond_17

    .line 623
    .line 624
    const/4 v4, 0x2

    .line 625
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    invoke-static {v4, v0}, Lcom/mycompany/app/script/DownloadHelper;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    const/4 v5, 0x1

    .line 634
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 639
    .line 640
    .line 641
    move-result v5

    .line 642
    if-eqz v5, :cond_22

    .line 643
    .line 644
    :goto_15
    move-object/from16 v6, v36

    .line 645
    .line 646
    goto :goto_16

    .line 647
    :cond_22
    invoke-static {v4}, Lcom/mycompany/app/script/DownloadHelper;->a(Ljava/lang/String;)Lcom/mycompany/app/script/DownloadHelper$DownloadData;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    if-eqz v5, :cond_23

    .line 652
    .line 653
    iget-object v5, v5, Lcom/mycompany/app/script/DownloadHelper$DownloadData;->a:[B

    .line 654
    .line 655
    if-nez v5, :cond_24

    .line 656
    .line 657
    :cond_23
    move-object/from16 v5, v36

    .line 658
    .line 659
    :cond_24
    if-nez v5, :cond_25

    .line 660
    .line 661
    goto :goto_15

    .line 662
    :cond_25
    new-instance v6, Lcom/mycompany/app/script/ScriptResource;

    .line 663
    .line 664
    invoke-direct {v6, v5, v3, v4}, Lcom/mycompany/app/script/ScriptResource;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    :goto_16
    if-eqz v6, :cond_17

    .line 668
    .line 669
    invoke-virtual {v12, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    goto/16 :goto_10

    .line 673
    .line 674
    :cond_26
    const-string v3, "exclude"

    .line 675
    .line 676
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    if-eqz v3, :cond_27

    .line 681
    .line 682
    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    goto/16 :goto_10

    .line 686
    .line 687
    :cond_27
    const-string v3, "include"

    .line 688
    .line 689
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    if-eqz v3, :cond_28

    .line 694
    .line 695
    invoke-virtual {v9, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    goto/16 :goto_10

    .line 699
    .line 700
    :cond_28
    const-string v3, "match"

    .line 701
    .line 702
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v3

    .line 706
    if-eqz v3, :cond_29

    .line 707
    .line 708
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    goto/16 :goto_10

    .line 712
    .line 713
    :cond_29
    const-string v3, "flag"

    .line 714
    .line 715
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    if-eqz v3, :cond_2a

    .line 720
    .line 721
    invoke-static {v13, v4}, Lcom/mycompany/app/script/Script;->d(ILjava/lang/String;)I

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    :goto_17
    move-object/from16 v4, p2

    .line 726
    .line 727
    move v13, v3

    .line 728
    goto/16 :goto_11

    .line 729
    .line 730
    :cond_2a
    const-string v3, "flags"

    .line 731
    .line 732
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    if-eqz v3, :cond_2e

    .line 737
    .line 738
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    if-eqz v3, :cond_2b

    .line 743
    .line 744
    goto/16 :goto_10

    .line 745
    .line 746
    :cond_2b
    const-string v3, "\\|"

    .line 747
    .line 748
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v3

    .line 752
    if-eqz v3, :cond_17

    .line 753
    .line 754
    array-length v4, v3

    .line 755
    if-nez v4, :cond_2c

    .line 756
    .line 757
    goto/16 :goto_10

    .line 758
    .line 759
    :cond_2c
    array-length v4, v3

    .line 760
    move v6, v13

    .line 761
    const/4 v5, 0x0

    .line 762
    :goto_18
    if-ge v5, v4, :cond_2d

    .line 763
    .line 764
    aget-object v7, v3, v5

    .line 765
    .line 766
    invoke-static {v6, v7}, Lcom/mycompany/app/script/Script;->d(ILjava/lang/String;)I

    .line 767
    .line 768
    .line 769
    move-result v6

    .line 770
    add-int/lit8 v5, v5, 0x1

    .line 771
    .line 772
    goto :goto_18

    .line 773
    :cond_2d
    move v13, v6

    .line 774
    goto/16 :goto_10

    .line 775
    .line 776
    :cond_2e
    const-string v3, "grant"

    .line 777
    .line 778
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v3

    .line 782
    if-eqz v3, :cond_connect

    .line 783
    .line 784
    const-string v3, "none"

    .line 785
    .line 786
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 790
    if-eqz v3, :cond_17

    .line 791
    .line 792
    or-int/lit8 v3, v13, 0x2

    .line 793
    .line 794
    goto :goto_17

    .line 795
    :catch_4
    move-object/from16 v30, v6

    .line 796
    .line 797
    move-object/from16 v31, v7

    .line 798
    .line 799
    goto/16 :goto_6

    .line 800
    .line 801
    :catch_5
    move-object/from16 v26, v5

    .line 802
    .line 803
    move-object/from16 v30, v6

    .line 804
    .line 805
    move-object/from16 v31, v7

    .line 806
    .line 807
    move-object/from16 v4, p2

    .line 808
    .line 809
    goto/16 :goto_1d

    .line 810
    .line 811
    :catch_6
    move-object/from16 p2, v4

    .line 812
    .line 813
    move-object/from16 v26, v5

    .line 814
    .line 815
    move-object/from16 v30, v6

    .line 816
    .line 817
    move-object/from16 v31, v7

    .line 818
    .line 819
    goto :goto_1d

    .line 820
    :cond_2f
    move-object/from16 p2, v4

    .line 821
    .line 822
    move-object/from16 v26, v5

    .line 823
    .line 824
    const/16 v27, 0x0

    .line 825
    .line 826
    goto/16 :goto_7

    .line 827
    .line 828
    :goto_19
    move/from16 v16, v27

    .line 829
    .line 830
    move/from16 v27, v13

    .line 831
    .line 832
    move/from16 v13, v16

    .line 833
    .line 834
    move-object/from16 v16, p2

    .line 835
    .line 836
    move-object/from16 v28, v21

    .line 837
    .line 838
    move-object/from16 v35, v22

    .line 839
    .line 840
    move-object/from16 v32, v23

    .line 841
    .line 842
    move-object/from16 v22, v30

    .line 843
    .line 844
    move-object/from16 v23, v31

    .line 845
    .line 846
    move-object/from16 v21, v17

    .line 847
    .line 848
    move-object/from16 v17, v26

    .line 849
    .line 850
    move-object/from16 v33, v24

    .line 851
    .line 852
    move-object/from16 v34, v25

    .line 853
    .line 854
    move-object/from16 v24, v18

    .line 855
    .line 856
    move-object/from16 v25, v19

    .line 857
    .line 858
    move-object/from16 v26, v20

    .line 859
    .line 860
    goto :goto_1e

    .line 861
    :catch_7
    :goto_1a
    move-object/from16 v17, v36

    .line 862
    .line 863
    :goto_1b
    move-object/from16 v18, v17

    .line 864
    .line 865
    move-object/from16 v19, v18

    .line 866
    .line 867
    move-object/from16 v20, v19

    .line 868
    .line 869
    move-object/from16 v21, v20

    .line 870
    .line 871
    move-object/from16 v22, v21

    .line 872
    .line 873
    move-object/from16 v23, v22

    .line 874
    .line 875
    move-object/from16 v24, v23

    .line 876
    .line 877
    move-object/from16 v25, v24

    .line 878
    .line 879
    const/4 v13, 0x0

    .line 880
    goto :goto_1d

    .line 881
    :catch_8
    move-object/from16 v36, v3

    .line 882
    .line 883
    goto :goto_1a

    .line 884
    :catch_9
    :goto_1c
    move-object/from16 v36, v3

    .line 885
    .line 886
    move-object/from16 v14, v36

    .line 887
    .line 888
    move-object/from16 v17, v14

    .line 889
    .line 890
    goto :goto_1b

    .line 891
    :catch_a
    move-object/from16 v15, p3

    .line 892
    .line 893
    goto :goto_1c

    .line 894
    :goto_1d
    move-object/from16 v16, v4

    .line 895
    .line 896
    move/from16 v27, v13

    .line 897
    .line 898
    move-object/from16 v28, v21

    .line 899
    .line 900
    move-object/from16 v35, v22

    .line 901
    .line 902
    move-object/from16 v32, v23

    .line 903
    .line 904
    const/4 v13, 0x0

    .line 905
    move-object/from16 v22, v6

    .line 906
    .line 907
    move-object/from16 v23, v7

    .line 908
    .line 909
    move-object/from16 v21, v17

    .line 910
    .line 911
    move-object/from16 v17, v5

    .line 912
    .line 913
    move-object/from16 v26, v20

    .line 914
    .line 915
    move-object/from16 v33, v24

    .line 916
    .line 917
    move-object/from16 v34, v25

    .line 918
    .line 919
    move-object/from16 v24, v18

    .line 920
    .line 921
    move-object/from16 v25, v19

    .line 922
    .line 923
    :goto_1e
    if-eqz v14, :cond_30

    .line 924
    .line 925
    :try_start_b
    invoke-virtual {v14}, Ljava/util/Scanner;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 926
    .line 927
    .line 928
    :catch_b
    :cond_30
    if-nez v13, :cond_31

    .line 929
    .line 930
    if-eqz p6, :cond_39

    .line 931
    .line 932
    :try_start_c
    const-string v0, "UserScript not found"

    .line 933
    .line 934
    sput-object v0, Lcom/mycompany/app/script/Script;->x:Ljava/lang/String;

    .line 935
    .line 936
    goto/16 :goto_24

    .line 937
    .line 938
    :cond_31
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 939
    .line 940
    .line 941
    move-result v0

    .line 942
    if-eqz v0, :cond_32

    .line 943
    .line 944
    if-eqz p6, :cond_39

    .line 945
    .line 946
    const-string v0, "@name not found"

    .line 947
    .line 948
    sput-object v0, Lcom/mycompany/app/script/Script;->x:Ljava/lang/String;

    .line 949
    .line 950
    goto/16 :goto_24

    .line 951
    .line 952
    :cond_32
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 953
    .line 954
    .line 955
    move-result v0

    .line 956
    if-eqz v0, :cond_33

    .line 957
    .line 958
    if-eqz p6, :cond_39

    .line 959
    .line 960
    const-string v0, "@namespace not found"

    .line 961
    .line 962
    sput-object v0, Lcom/mycompany/app/script/Script;->x:Ljava/lang/String;

    .line 963
    .line 964
    goto/16 :goto_24

    .line 965
    .line 966
    :cond_33
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    if-lez v0, :cond_34

    .line 971
    .line 972
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    .line 973
    .line 974
    .line 975
    move-result v0

    .line 976
    new-array v0, v0, [Lcom/mycompany/app/script/ScriptRequire;

    .line 977
    .line 978
    invoke-virtual {v11, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    check-cast v0, [Lcom/mycompany/app/script/ScriptRequire;

    .line 983
    .line 984
    move-object/from16 v29, v0

    .line 985
    .line 986
    goto :goto_1f

    .line 987
    :cond_34
    move-object/from16 v29, v36

    .line 988
    .line 989
    :goto_1f
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    if-lez v0, :cond_35

    .line 994
    .line 995
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    .line 996
    .line 997
    .line 998
    move-result v0

    .line 999
    new-array v0, v0, [Lcom/mycompany/app/script/ScriptResource;

    .line 1000
    .line 1001
    invoke-virtual {v12, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    check-cast v0, [Lcom/mycompany/app/script/ScriptResource;

    .line 1006
    .line 1007
    move-object/from16 v30, v0

    .line 1008
    .line 1009
    goto :goto_20

    .line 1010
    :cond_35
    move-object/from16 v30, v36

    .line 1011
    .line 1012
    :goto_20
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    .line 1013
    .line 1014
    .line 1015
    move-result v0

    .line 1016
    if-lez v0, :cond_36

    .line 1017
    .line 1018
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    .line 1019
    .line 1020
    .line 1021
    move-result v0

    .line 1022
    new-array v0, v0, [Ljava/lang/String;

    .line 1023
    .line 1024
    invoke-virtual {v8, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    check-cast v0, [Ljava/lang/String;

    .line 1029
    .line 1030
    move-object/from16 v18, v0

    .line 1031
    .line 1032
    goto :goto_21

    .line 1033
    :cond_36
    move-object/from16 v18, v36

    .line 1034
    .line 1035
    :goto_21
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    .line 1036
    .line 1037
    .line 1038
    move-result v0

    .line 1039
    if-lez v0, :cond_37

    .line 1040
    .line 1041
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    .line 1042
    .line 1043
    .line 1044
    move-result v0

    .line 1045
    new-array v0, v0, [Ljava/lang/String;

    .line 1046
    .line 1047
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    check-cast v0, [Ljava/lang/String;

    .line 1052
    .line 1053
    move-object/from16 v19, v0

    .line 1054
    .line 1055
    goto :goto_22

    .line 1056
    :cond_37
    move-object/from16 v19, v36

    .line 1057
    .line 1058
    :goto_22
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    .line 1059
    .line 1060
    .line 1061
    move-result v0

    .line 1062
    if-lez v0, :cond_38

    .line 1063
    .line 1064
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    .line 1065
    .line 1066
    .line 1067
    move-result v0

    .line 1068
    new-array v0, v0, [Ljava/lang/String;

    .line 1069
    .line 1070
    invoke-virtual {v10, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    check-cast v0, [Ljava/lang/String;

    .line 1075
    .line 1076
    move-object/from16 v20, v0

    .line 1077
    .line 1078
    goto :goto_23

    .line 1079
    :cond_38
    move-object/from16 v20, v36

    .line 1080
    .line 1081
    :goto_23
    invoke-static/range {v37 .. v37}, Lcom/mycompany/app/script/Script;->connectArr(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v36
    new-instance v15, Lcom/mycompany/app/script/Script;

    .line 1082
    .line 1083
    move-object/from16 v31, p3

    .line 1084
    .line 1085
    invoke-direct/range {v15 .. v36}, Lcom/mycompany/app/script/Script;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/mycompany/app/script/ScriptRequire;[Lcom/mycompany/app/script/ScriptResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 1086
    .line 1087
    .line 1088
    return-object v15

    .line 1089
    :catch_c
    :cond_39
    :goto_24
    return-object v36
.end method

.method public static d(ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v0, "nojsclosure"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    const-string v0, "nojssandbox"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    :goto_0
    return p0

    .line 45
    :cond_2
    or-int/lit8 p0, p0, 0x2

    .line 46
    .line 47
    return p0

    .line 48
    :cond_3
    or-int/lit8 p0, p0, 0x1

    .line 49
    .line 50
    return p0
.end method
