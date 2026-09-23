.class public Lcom/mycompany/app/cast/CastServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "SourceFile"


# static fields
.field public static final o:I


# instance fields
.field public i:Landroid/content/Context;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/HashMap;

.field public l:Ljava/util/HashMap;

.field public m:Ljava/util/HashMap;

.field public n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$raw;->cast_icon:I

    .line 2
    .line 3
    sput v0, Lcom/mycompany/app/cast/CastServer;->o:I

    .line 4
    .line 5
    return-void
.end method

.method public static h(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD;->c(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "Accept-Ranges"

    .line 6
    .line 7
    const-string p2, "bytes"

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p1, "Access-Control-Allow-Origin"

    .line 13
    .line 14
    const-string p2, "*"

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public static j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 2

    .line 1
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->g:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2
    .line 3
    const-string v1, "text/plain"

    .line 4
    .line 5
    invoke-static {v0, v1, p0}, Lcom/mycompany/app/cast/CastServer;->h(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static m(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 6
    .line 7
    new-instance v2, Ljava/io/InputStreamReader;

    .line 8
    .line 9
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 15
    .line 16
    .line 17
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    const-string v0, "WEBVTT\n"

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v3, "^(\\d{2}:\\d{2}:\\d{2})(,)(\\d+\\s+-->\\s+\\d+:\\d+:\\d+)(,)(\\d+)"

    .line 34
    .line 35
    const-string v4, "$1.$3.$5"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, "\n"

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    :goto_1
    move-object v0, v1

    .line 51
    goto :goto_2

    .line 52
    :catch_1
    move-object v2, v0

    .line 53
    goto :goto_1

    .line 54
    :catch_2
    move-object v2, v0

    .line 55
    :goto_2
    move-object v1, v0

    .line 56
    :cond_1
    if-eqz v1, :cond_2

    .line 57
    .line 58
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 59
    .line 60
    .line 61
    :catch_3
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 62
    .line 63
    .line 64
    :catch_4
    if-nez v2, :cond_3

    .line 65
    .line 66
    :goto_3
    const-string p0, ""

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method


# virtual methods
.method public final e(Lfi/iki/elonen/NanoHTTPD$HTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 8

    .line 1
    iget-object v0, p1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->g:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 2
    .line 3
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->f:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->c:Lfi/iki/elonen/NanoHTTPD$Method;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->g(Ljava/util/HashMap;)V
    :try_end_0
    .catch Lfi/iki/elonen/NanoHTTPD$ResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 25
    .line 26
    .line 27
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mycompany/app/cast/CastServer;->i:Landroid/content/Context;

    .line 28
    .line 29
    if-eqz v0, :cond_13

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/cast/CastServer;->k:Ljava/util/HashMap;

    .line 32
    .line 33
    if-eqz v0, :cond_13

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/cast/CastServer;->l:Ljava/util/HashMap;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_2
    iget-object v0, p1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->f:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    const-string v2, "Error 404: File not found"

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    :try_start_2
    invoke-static {v2}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    :goto_0
    move-object p1, v0

    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_3
    const-string v1, "/"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    invoke-static {v2}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_4
    move-object v3, v0

    .line 85
    const-string v0, "icon"

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    :try_start_3
    iget-object v2, p0, Lcom/mycompany/app/cast/CastServer;->i:Landroid/content/Context;

    .line 94
    .line 95
    const-string v4, "image/*"

    .line 96
    .line 97
    iget-object v7, p1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 98
    .line 99
    const/4 v5, 0x1

    .line 100
    const/4 v6, 0x0

    .line 101
    move-object v1, p0

    .line 102
    :try_start_4
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/cast/CastServer;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    move-object v1, p0

    .line 109
    goto :goto_0

    .line 110
    :cond_5
    move-object v1, p0

    .line 111
    const-string v0, "sbsub_"

    .line 112
    .line 113
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_11

    .line 118
    .line 119
    iget-object v0, v1, Lcom/mycompany/app/cast/CastServer;->m:Ljava/util/HashMap;

    .line 120
    .line 121
    if-eqz v0, :cond_11

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    const/4 v4, 0x6

    .line 128
    if-gt v0, v4, :cond_6

    .line 129
    .line 130
    invoke-static {v2}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :cond_6
    const-string v5, "_"

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-le v5, v4, :cond_10

    .line 142
    .line 143
    add-int/lit8 v6, v5, 0x1

    .line 144
    .line 145
    if-lt v6, v0, :cond_7

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_7
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_8

    .line 157
    .line 158
    invoke-static {v2}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    :cond_8
    iget-object v4, v1, Lcom/mycompany/app/cast/CastServer;->m:Ljava/util/HashMap;

    .line 164
    .line 165
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Ljava/util/List;

    .line 170
    .line 171
    if-eqz v0, :cond_f

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_9

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_9
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    if-eqz v3, :cond_a

    .line 189
    .line 190
    invoke-static {v2}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    return-object p1

    .line 195
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    :cond_b
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_d

    .line 204
    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    check-cast v3, Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_c

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_c
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_b

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_d
    const/4 v3, 0x0

    .line 226
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_e

    .line 231
    .line 232
    invoke-static {v2}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    return-object p1

    .line 237
    :cond_e
    iget-object v2, v1, Lcom/mycompany/app/cast/CastServer;->i:Landroid/content/Context;

    .line 238
    .line 239
    const-string v4, "text/plain; charset=utf-8"

    .line 240
    .line 241
    iget-object v7, p1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 242
    .line 243
    const/4 v5, 0x2

    .line 244
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/cast/CastServer;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    return-object p1

    .line 249
    :cond_f
    :goto_3
    invoke-static {v2}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    return-object p1

    .line 254
    :cond_10
    :goto_4
    invoke-static {v2}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    return-object p1

    .line 259
    :cond_11
    iget-object v0, v1, Lcom/mycompany/app/cast/CastServer;->k:Ljava/util/HashMap;

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_12

    .line 272
    .line 273
    invoke-static {v2}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    return-object p1

    .line 278
    :cond_12
    iget-object v2, v1, Lcom/mycompany/app/cast/CastServer;->l:Ljava/util/HashMap;

    .line 279
    .line 280
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    move-object v4, v2

    .line 285
    check-cast v4, Ljava/lang/String;

    .line 286
    .line 287
    iget-object v2, v1, Lcom/mycompany/app/cast/CastServer;->i:Landroid/content/Context;

    .line 288
    .line 289
    iget-object v7, p1, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->i:Ljava/util/HashMap;

    .line 290
    .line 291
    const/4 v5, 0x0

    .line 292
    const/4 v6, 0x0

    .line 293
    move-object v3, v0

    .line 294
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/cast/CastServer;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    return-object p1

    .line 299
    :cond_13
    :goto_5
    const-string p1, "Server stopped"

    .line 300
    .line 301
    invoke-static {p1}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 302
    .line 303
    .line 304
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 305
    return-object p1

    .line 306
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-static {p1}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    return-object p1

    .line 315
    :catch_2
    move-exception v0

    .line 316
    move-object p1, v0

    .line 317
    goto :goto_7

    .line 318
    :catch_3
    move-exception v0

    .line 319
    move-object p1, v0

    .line 320
    goto :goto_8

    .line 321
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-static {p1}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    return-object p1

    .line 330
    :goto_8
    const-string v0, "text/plain"

    .line 331
    .line 332
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    iget-object p1, p1, Lfi/iki/elonen/NanoHTTPD$ResponseException;->c:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 337
    .line 338
    invoke-static {p1, v0, v1}, Lfi/iki/elonen/NanoHTTPD;->c(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    return-object p1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/cast/CastServer;->k:Ljava/util/HashMap;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v1, p0, Lcom/mycompany/app/cast/CastServer;->l:Ljava/util/HashMap;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/cast/CastServer;->l:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/mycompany/app/cast/CastServer;->j:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p1, p2, p3}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method

.method public final k()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->a:Ljava/net/ServerSocket;

    .line 2
    .line 3
    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->c:Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$DefaultAsyncRunner;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    check-cast v3, Lfi/iki/elonen/NanoHTTPD$ClientHandler;

    .line 32
    .line 33
    iget-object v4, v3, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->c:Ljava/io/InputStream;

    .line 34
    .line 35
    invoke-static {v4}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v3, Lfi/iki/elonen/NanoHTTPD$ClientHandler;->f:Ljava/net/Socket;

    .line 39
    .line 40
    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD;->d(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD;->b:Ljava/lang/Thread;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    :try_start_1
    sget-object v1, Lfi/iki/elonen/NanoHTTPD;->h:Ljava/util/logging/Logger;

    .line 54
    .line 55
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 56
    .line 57
    const-string v3, "Could not stop all connections"

    .line 58
    .line 59
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    :catch_1
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/mycompany/app/cast/CastServer;->i:Landroid/content/Context;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/mycompany/app/cast/CastServer;->j:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/mycompany/app/cast/CastServer;->k:Ljava/util/HashMap;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/mycompany/app/cast/CastServer;->l:Ljava/util/HashMap;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/mycompany/app/cast/CastServer;->m:Ljava/util/HashMap;

    .line 72
    .line 73
    return-void
.end method

.method public final l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p4

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    const-string v3, "bytes "

    .line 8
    .line 9
    const-string v4, "bytes 0-0/"

    .line 10
    .line 11
    sget v5, Lcom/mycompany/app/cast/CastServer;->o:I

    .line 12
    .line 13
    const-wide/16 v6, 0x0

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    if-ne v0, v8, :cond_3

    .line 17
    .line 18
    :try_start_0
    iget-wide v9, v1, Lcom/mycompany/app/cast/CastServer;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    .line 20
    cmp-long v9, v9, v6

    .line 21
    .line 22
    if-nez v9, :cond_2

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    move-wide v10, v6

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v9, 0x0

    .line 29
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    .line 38
    .line 39
    .line 40
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    int-to-long v10, v10

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-wide v10, v6

    .line 44
    :goto_0
    if-eqz v9, :cond_1

    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 47
    .line 48
    .line 49
    :catch_1
    :cond_1
    :goto_1
    :try_start_3
    iput-wide v10, v1, Lcom/mycompany/app/cast/CastServer;->n:J

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catch_2
    move-exception v0

    .line 53
    goto/16 :goto_b

    .line 54
    .line 55
    :cond_2
    :goto_2
    iget-wide v9, v1, Lcom/mycompany/app/cast/CastServer;->n:J

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/mycompany/app/main/MainUri;->l(Landroid/content/Context;Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v9

    .line 62
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    move-object/from16 v12, p2

    .line 68
    .line 69
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    const-string v13, "range"

    .line 88
    .line 89
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    check-cast v13, Ljava/lang/String;

    .line 94
    .line 95
    const-wide/16 v14, -0x1

    .line 96
    .line 97
    if-eqz v13, :cond_5

    .line 98
    .line 99
    move-wide/from16 v16, v6

    .line 100
    .line 101
    const-string v6, "bytes=0-"

    .line 102
    .line 103
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-nez v6, :cond_6

    .line 108
    .line 109
    const-string v6, "bytes="

    .line 110
    .line 111
    invoke-virtual {v13, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    const/4 v6, 0x6

    .line 118
    :try_start_4
    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    const/16 v6, 0x2d

    .line 123
    .line 124
    invoke-virtual {v13, v6}, Ljava/lang/String;->indexOf(I)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-lez v6, :cond_4

    .line 129
    .line 130
    const/4 v7, 0x0

    .line 131
    invoke-virtual {v13, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v18
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 139
    add-int/2addr v6, v8

    .line 140
    :try_start_5
    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v14
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 148
    goto :goto_4

    .line 149
    :catch_3
    :cond_4
    move-wide/from16 v18, v16

    .line 150
    .line 151
    :catch_4
    :goto_4
    move-wide/from16 v6, v18

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_5
    move-wide/from16 v16, v6

    .line 155
    .line 156
    :cond_6
    move-wide/from16 v6, v16

    .line 157
    .line 158
    :goto_5
    const-string v8, "*"

    .line 159
    .line 160
    const-string v1, "Access-Control-Allow-Origin"

    .line 161
    .line 162
    const-string v12, "bytes"

    .line 163
    .line 164
    move-object/from16 v19, v13

    .line 165
    .line 166
    const-string v13, "Accept-Ranges"

    .line 167
    .line 168
    move-wide/from16 v20, v14

    .line 169
    .line 170
    const-string v14, "Content-Length"

    .line 171
    .line 172
    const-string v15, ""

    .line 173
    .line 174
    const-string v2, "ETag"

    .line 175
    .line 176
    if-eqz v19, :cond_c

    .line 177
    .line 178
    cmp-long v19, v6, v16

    .line 179
    .line 180
    if-ltz v19, :cond_c

    .line 181
    .line 182
    cmp-long v22, v6, v9

    .line 183
    .line 184
    move-object/from16 v23, v14

    .line 185
    .line 186
    const-string v14, "Content-Range"

    .line 187
    .line 188
    if-ltz v22, :cond_7

    .line 189
    .line 190
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->l:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 199
    .line 200
    const-string v3, "text/plain"

    .line 201
    .line 202
    invoke-static {v1, v3, v15}, Lcom/mycompany/app/cast/CastServer;->h(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v1, v14, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2, v11}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_c

    .line 217
    .line 218
    :cond_7
    cmp-long v4, v20, v16

    .line 219
    .line 220
    const-wide/16 v24, 0x1

    .line 221
    .line 222
    if-gez v4, :cond_8

    .line 223
    .line 224
    sub-long v20, v9, v24

    .line 225
    .line 226
    :cond_8
    move-object/from16 p5, v14

    .line 227
    .line 228
    move-wide/from16 v14, v20

    .line 229
    .line 230
    sub-long v20, v14, v6

    .line 231
    .line 232
    add-long v20, v20, v24

    .line 233
    .line 234
    cmp-long v4, v20, v16

    .line 235
    .line 236
    if-gez v4, :cond_9

    .line 237
    .line 238
    move-wide/from16 v28, v16

    .line 239
    .line 240
    :goto_6
    const/4 v4, 0x1

    .line 241
    goto :goto_7

    .line 242
    :cond_9
    move-wide/from16 v28, v20

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :goto_7
    if-ne v0, v4, :cond_a

    .line 246
    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    goto :goto_8

    .line 256
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    :goto_8
    if-lez v19, :cond_b

    .line 269
    .line 270
    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 271
    .line 272
    .line 273
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v3, "-"

    .line 282
    .line 283
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v3, "/"

    .line 290
    .line 291
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    sget-object v25, Lfi/iki/elonen/NanoHTTPD$Response$Status;->h:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 298
    .line 299
    new-instance v24, Lfi/iki/elonen/NanoHTTPD$Response;

    .line 300
    .line 301
    move-object/from16 v26, p3

    .line 302
    .line 303
    move-object/from16 v27, v0

    .line 304
    .line 305
    invoke-direct/range {v24 .. v29}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    .line 306
    .line 307
    .line 308
    move-object/from16 v0, v24

    .line 309
    .line 310
    invoke-virtual {v0, v13, v12}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1, v8}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    move-object/from16 v3, v23

    .line 321
    .line 322
    invoke-virtual {v0, v3, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    move-object/from16 v3, p5

    .line 330
    .line 331
    invoke-virtual {v0, v3, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v2, v11}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    move-object v1, v0

    .line 338
    goto/16 :goto_c

    .line 339
    .line 340
    :cond_c
    move-object v3, v14

    .line 341
    const-string v4, "if-none-match"

    .line 342
    .line 343
    move-object/from16 v6, p6

    .line 344
    .line 345
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    if-eqz v4, :cond_d

    .line 354
    .line 355
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->i:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 356
    .line 357
    move-object/from16 v4, p3

    .line 358
    .line 359
    invoke-static {v0, v4, v15}, Lcom/mycompany/app/cast/CastServer;->h(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    goto :goto_c

    .line 364
    :cond_d
    move-object/from16 v4, p3

    .line 365
    .line 366
    const/4 v6, 0x1

    .line 367
    if-ne v0, v6, :cond_e

    .line 368
    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    :goto_9
    move-object/from16 v17, v5

    .line 378
    .line 379
    goto :goto_a

    .line 380
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 389
    .line 390
    .line 391
    move-result-object v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 392
    goto :goto_9

    .line 393
    :goto_a
    const/4 v5, 0x2

    .line 394
    sget-object v15, Lfi/iki/elonen/NanoHTTPD$Response$Status;->g:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 395
    .line 396
    if-ne v0, v5, :cond_f

    .line 397
    .line 398
    :try_start_7
    const-string v0, "srt"

    .line 399
    .line 400
    move-object/from16 v5, p5

    .line 401
    .line 402
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eqz v0, :cond_f

    .line 407
    .line 408
    const-string v0, "text/plain; charset=utf-8"

    .line 409
    .line 410
    invoke-static/range {v17 .. v17}, Lcom/mycompany/app/cast/CastServer;->m(Ljava/io/InputStream;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-static {v15, v0, v1}, Lcom/mycompany/app/cast/CastServer;->h(Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {v0, v2, v11}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    return-object v0

    .line 422
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->available()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    int-to-long v5, v0

    .line 427
    new-instance v14, Lfi/iki/elonen/NanoHTTPD$Response;

    .line 428
    .line 429
    move-object/from16 v16, v4

    .line 430
    .line 431
    move-wide/from16 v18, v5

    .line 432
    .line 433
    invoke-direct/range {v14 .. v19}, Lfi/iki/elonen/NanoHTTPD$Response;-><init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v14, v13, v12}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v14, v1, v8}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-virtual {v14, v3, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v14, v2, v11}, Lfi/iki/elonen/NanoHTTPD$Response;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 450
    .line 451
    .line 452
    move-object v1, v14

    .line 453
    goto :goto_c

    .line 454
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-static {v0}, Lcom/mycompany/app/cast/CastServer;->j(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    :goto_c
    return-object v1
.end method
