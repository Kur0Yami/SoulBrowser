.class Lcom/mycompany/app/main/MainTxtView$LoadTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainTxtView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/main/MainTxtView;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->f:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/mycompany/app/main/MainTxtView;->h2:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->g:Ljava/lang/String;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_9

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/main/MainTxtView;

    .line 12
    .line 13
    if-eqz v0, :cond_10

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_2
    sget v2, Lcom/mycompany/app/main/MainTxtView;->X2:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainTxtView;->b1(Z)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v3, :cond_5

    .line 43
    .line 44
    iget-object v7, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v8, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->f:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v9, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->g:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v10, 0x1

    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-static/range {v5 .. v10}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->L2:Ljava/net/HttpURLConnection;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/16 v5, 0xc8

    .line 66
    .line 67
    if-ne v3, v5, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v6, "gzip"

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    .line 86
    .line 87
    invoke-direct {v7, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 88
    .line 89
    .line 90
    :try_start_1
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->o0(Ljava/io/InputStream;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 95
    .line 96
    .line 97
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    goto :goto_0

    .line 99
    :catch_0
    :try_start_2
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    :try_start_3
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->o0(Ljava/io/InputStream;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 107
    .line 108
    .line 109
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 110
    goto :goto_0

    .line 111
    :catch_1
    :try_start_4
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 112
    .line 113
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    .line 115
    .line 116
    iget-object v10, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 117
    .line 118
    iget-object v11, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->f:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v12, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->g:Ljava/lang/String;

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v13, 0x1

    .line 124
    const/4 v8, 0x0

    .line 125
    invoke-static/range {v8 .. v13}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->L2:Ljava/net/HttpURLConnection;

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-ne v8, v5, :cond_6

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    goto :goto_4

    .line 144
    :cond_4
    const/4 v3, 0x0

    .line 145
    move-object v7, v3

    .line 146
    :goto_1
    move v6, v4

    .line 147
    goto :goto_4

    .line 148
    :cond_5
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 149
    .line 150
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 151
    .line 152
    .line 153
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 154
    :try_start_5
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->o0(Ljava/io/InputStream;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 159
    .line 160
    .line 161
    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 162
    :goto_2
    move-object v7, v3

    .line 163
    goto :goto_3

    .line 164
    :catch_2
    :try_start_6
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :goto_3
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    goto :goto_1

    .line 174
    :cond_6
    :goto_4
    iput-object v3, v0, Lcom/mycompany/app/main/MainTxtView;->M2:Ljava/io/InputStream;

    .line 175
    .line 176
    if-nez v7, :cond_7

    .line 177
    .line 178
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 179
    .line 180
    :cond_7
    if-eqz v6, :cond_8

    .line 181
    .line 182
    new-instance v1, Ljava/io/BufferedReader;

    .line 183
    .line 184
    new-instance v5, Ljava/io/InputStreamReader;

    .line 185
    .line 186
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    .line 187
    .line 188
    invoke-direct {v6, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_8
    new-instance v1, Ljava/io/BufferedReader;

    .line 199
    .line 200
    new-instance v5, Ljava/io/InputStreamReader;

    .line 201
    .line 202
    invoke-direct {v5, v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 203
    .line 204
    .line 205
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 206
    .line 207
    .line 208
    :goto_5
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->N2:Ljava/io/BufferedReader;

    .line 209
    .line 210
    :catch_3
    :cond_9
    :goto_6
    iget-boolean v3, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 211
    .line 212
    const-string v5, ""

    .line 213
    .line 214
    if-eqz v3, :cond_a

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_a
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-nez v3, :cond_b

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_b
    iget-object v6, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->h:Ljava/util/ArrayList;

    .line 225
    .line 226
    if-nez v6, :cond_c

    .line 227
    .line 228
    new-instance v6, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .line 232
    .line 233
    iput-object v6, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->h:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    const/16 v7, 0x80

    .line 243
    .line 244
    if-le v6, v7, :cond_e

    .line 245
    .line 246
    invoke-static {v6, v4, v3}, Lcom/mycompany/app/main/MainTxtView;->F0(IILjava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    move v8, v4

    .line 251
    :goto_7
    if-ge v7, v6, :cond_d

    .line 252
    .line 253
    iget-object v9, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->h:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    invoke-static {v6, v7, v3}, Lcom/mycompany/app/main/MainTxtView;->F0(IILjava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    move v14, v8

    .line 267
    move v8, v7

    .line 268
    move v7, v14

    .line 269
    goto :goto_7

    .line 270
    :cond_d
    if-ge v8, v6, :cond_9

    .line 271
    .line 272
    iget-object v6, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->h:Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_e
    iget-object v6, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->h:Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :catch_4
    :try_start_8
    iput-boolean v2, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->i:Z

    .line 289
    .line 290
    :goto_8
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->h:Ljava/util/ArrayList;

    .line 291
    .line 292
    if-eqz v1, :cond_f

    .line 293
    .line 294
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 295
    .line 296
    .line 297
    :catch_5
    :cond_f
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainTxtView;->b1(Z)V

    .line 298
    .line 299
    .line 300
    :cond_10
    :goto_9
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/main/MainTxtView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->k2:Lcom/mycompany/app/main/MainTxtView$LoadTask;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/main/MainTxtView;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/mycompany/app/main/MainTxtView;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->k2:Lcom/mycompany/app/main/MainTxtView$LoadTask;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->h:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/mycompany/app/main/MainTxtView;->b2:Lcom/mycompany/app/view/MyFadeImage;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->j2:Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v5, 0x8

    .line 38
    .line 39
    if-eqz v2, :cond_a

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_3

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->b2:Lcom/mycompany/app/view/MyFadeImage;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFadeImage;->d()V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 84
    .line 85
    if-nez v1, :cond_7

    .line 86
    .line 87
    new-instance v1, Lcom/mycompany/app/main/MainTxtAdapter;

    .line 88
    .line 89
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 90
    .line 91
    iget-object v5, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 92
    .line 93
    new-instance v6, Lcom/mycompany/app/main/MainTxtView$26;

    .line 94
    .line 95
    invoke-direct {v6, v0}, Lcom/mycompany/app/main/MainTxtView$26;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 102
    .line 103
    iput-boolean v4, v1, Lcom/mycompany/app/main/MainTxtAdapter;->g:Z

    .line 104
    .line 105
    iput-object v5, v1, Lcom/mycompany/app/main/MainTxtAdapter;->l:Lcom/mycompany/app/view/MyManagerLinear;

    .line 106
    .line 107
    iput-object v6, v1, Lcom/mycompany/app/main/MainTxtAdapter;->m:Lcom/mycompany/app/main/MainTxtAdapter$MainTxtListener;

    .line 108
    .line 109
    const/16 v2, 0x32

    .line 110
    .line 111
    iput v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->d:I

    .line 112
    .line 113
    const/16 v2, 0x1f4

    .line 114
    .line 115
    iput v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->e:I

    .line 116
    .line 117
    sget v2, Lcom/mycompany/app/pref/PrefRead;->m:I

    .line 118
    .line 119
    iput v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 120
    .line 121
    iput v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->j:I

    .line 122
    .line 123
    const/4 v2, -0x1

    .line 124
    iput v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->k:I

    .line 125
    .line 126
    sget-boolean v2, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 127
    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    sget-object v2, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_5

    .line 137
    .line 138
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->j3(Landroid/content/Context;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->w1(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    iput-object v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->h:Landroid/graphics/Typeface;

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    sget-boolean v2, Lcom/mycompany/app/pref/PrefRead;->p:Z

    .line 150
    .line 151
    if-eqz v2, :cond_6

    .line 152
    .line 153
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 154
    .line 155
    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    iput-object v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->h:Landroid/graphics/Typeface;

    .line 160
    .line 161
    :cond_6
    :goto_1
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 162
    .line 163
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 164
    .line 165
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    iput-object v2, v1, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 175
    .line 176
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 177
    .line 178
    .line 179
    :goto_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->k:Z

    .line 180
    .line 181
    if-eqz v1, :cond_b

    .line 182
    .line 183
    if-eqz v1, :cond_b

    .line 184
    .line 185
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->d2:Lcom/mycompany/app/view/MyFadeFrame;

    .line 186
    .line 187
    if-nez v1, :cond_b

    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 190
    .line 191
    if-nez v1, :cond_8

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 195
    .line 196
    if-nez v1, :cond_9

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$22;

    .line 200
    .line 201
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$22;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_a
    :goto_3
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->b2:Lcom/mycompany/app/view/MyFadeImage;

    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyFadeImage;->f()V

    .line 211
    .line 212
    .line 213
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 214
    .line 215
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 219
    .line 220
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 224
    .line 225
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->L1:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 229
    .line 230
    if-eqz v2, :cond_b

    .line 231
    .line 232
    iput-object v1, v2, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 233
    .line 234
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 235
    .line 236
    .line 237
    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 238
    .line 239
    if-nez v1, :cond_c

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_c
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$27;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$27;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    .line 249
    .line 250
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->c2:Lcom/mycompany/app/view/MyCoverView;

    .line 251
    .line 252
    if-eqz v1, :cond_d

    .line 253
    .line 254
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 255
    .line 256
    .line 257
    :cond_d
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainTxtView$LoadTask;->i:Z

    .line 258
    .line 259
    if-eqz v1, :cond_e

    .line 260
    .line 261
    sget v1, Lnet/kaki87/soul2/testing/R$string;->out_of_memory:I

    .line 262
    .line 263
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 264
    .line 265
    .line 266
    :cond_e
    :goto_6
    return-void
.end method
