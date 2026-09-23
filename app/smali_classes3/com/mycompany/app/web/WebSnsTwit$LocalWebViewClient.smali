.class Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebSnsTwit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalWebViewClient"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebSnsTwit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSnsTwit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebSnsTwit;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebSnsTwit;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebSnsTwit;->f:Z

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebSnsTwit;->a(Lcom/mycompany/app/web/WebSnsTwit;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebSnsTwit;->p:Z

    .line 15
    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p1, Lcom/mycompany/app/web/WebSnsTwit;->q:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebSnsTwit;->p:Z

    .line 35
    .line 36
    iput-object p2, p1, Lcom/mycompany/app/web/WebSnsTwit;->q:Ljava/lang/String;

    .line 37
    .line 38
    iget-object p2, p1, Lcom/mycompany/app/web/WebSnsTwit;->d:Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebSnsTwit$3;

    .line 44
    .line 45
    invoke-direct {v0, p1}, Lcom/mycompany/app/web/WebSnsTwit$3;-><init>(Lcom/mycompany/app/web/WebSnsTwit;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebSnsTwit;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p3, 0x1

    .line 9
    iput-boolean p3, p1, Lcom/mycompany/app/web/WebSnsTwit;->f:Z

    .line 10
    .line 11
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebSnsTwit;->a(Lcom/mycompany/app/web/WebSnsTwit;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebSnsTwit;

    .line 3
    .line 4
    iput-object v0, v1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 5
    .line 6
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->D(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v1, Lcom/mycompany/app/web/WebSnsTwit;->d:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebSnsTwit$4;

    .line 15
    .line 16
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebSnsTwit$4;-><init>(Lcom/mycompany/app/web/WebSnsTwit;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :goto_0
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebSnsTwit;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_a

    .line 9
    .line 10
    :cond_0
    if-eqz p2, :cond_13

    .line 11
    .line 12
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto/16 :goto_a

    .line 19
    .line 20
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p1, v0}, Lcom/mycompany/app/web/WebSnsTwit;->a(Lcom/mycompany/app/web/WebSnsTwit;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p1, Lcom/mycompany/app/web/WebSnsTwit;->m:Z

    .line 32
    .line 33
    if-nez v2, :cond_13

    .line 34
    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    goto/16 :goto_a

    .line 42
    .line 43
    :cond_2
    iget-object v2, p1, Lcom/mycompany/app/web/WebSnsTwit;->h:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_13

    .line 50
    .line 51
    iget-object v2, p1, Lcom/mycompany/app/web/WebSnsTwit;->i:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_13

    .line 58
    .line 59
    iget-object v2, p1, Lcom/mycompany/app/web/WebSnsTwit;->j:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_13

    .line 66
    .line 67
    iget-object v2, p1, Lcom/mycompany/app/web/WebSnsTwit;->k:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    goto/16 :goto_a

    .line 76
    .line 77
    :cond_3
    iget-object v2, p1, Lcom/mycompany/app/web/WebSnsTwit;->h:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_4

    .line 84
    .line 85
    goto/16 :goto_a

    .line 86
    .line 87
    :cond_4
    iget-object v2, p1, Lcom/mycompany/app/web/WebSnsTwit;->i:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_5

    .line 94
    .line 95
    iget-object v2, p1, Lcom/mycompany/app/web/WebSnsTwit;->j:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    goto/16 :goto_a

    .line 104
    .line 105
    :cond_5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-nez v2, :cond_6

    .line 110
    .line 111
    goto/16 :goto_a

    .line 112
    .line 113
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    if-nez v3, :cond_7

    .line 118
    .line 119
    goto/16 :goto_a

    .line 120
    .line 121
    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    :cond_8
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_13

    .line 130
    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/lang/String;

    .line 136
    .line 137
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_9

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_9
    iget-object v5, p1, Lcom/mycompany/app/web/WebSnsTwit;->k:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_8

    .line 157
    .line 158
    const/4 v2, 0x1

    .line 159
    iput-boolean v2, p1, Lcom/mycompany/app/web/WebSnsTwit;->m:Z

    .line 160
    .line 161
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    :try_start_0
    iget-object v3, p1, Lcom/mycompany/app/web/WebSnsTwit;->b:Landroid/content/Context;

    .line 166
    .line 167
    iget-object v4, p1, Lcom/mycompany/app/web/WebSnsTwit;->g:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v3, v0, v4, p2}, Lcom/mycompany/app/main/MainUtil;->Y3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    .line 170
    .line 171
    .line 172
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 173
    if-nez p2, :cond_a

    .line 174
    .line 175
    :goto_1
    move-object p2, v1

    .line 176
    goto/16 :goto_9

    .line 177
    .line 178
    :cond_a
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 179
    .line 180
    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 181
    .line 182
    .line 183
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    .line 184
    .line 185
    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    .line 187
    .line 188
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 191
    .line 192
    .line 193
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    if-eqz v5, :cond_c

    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_b

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const/16 v5, 0xa

    .line 214
    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :catch_0
    move-object v4, v1

    .line 220
    goto :goto_8

    .line 221
    :catch_1
    move-object v4, v1

    .line 222
    goto :goto_7

    .line 223
    :catch_2
    move-object v3, v1

    .line 224
    :goto_3
    move-object v4, v3

    .line 225
    goto :goto_8

    .line 226
    :catch_3
    move-object v3, v1

    .line 227
    :goto_4
    move-object v4, v3

    .line 228
    goto :goto_7

    .line 229
    :catch_4
    move-object v0, v1

    .line 230
    :goto_5
    move-object v3, v0

    .line 231
    goto :goto_3

    .line 232
    :catch_5
    move-object v0, v1

    .line 233
    :goto_6
    move-object v3, v0

    .line 234
    goto :goto_4

    .line 235
    :catch_6
    move-object p2, v1

    .line 236
    move-object v0, p2

    .line 237
    goto :goto_5

    .line 238
    :catch_7
    move-object p2, v1

    .line 239
    move-object v0, p2

    .line 240
    goto :goto_6

    .line 241
    :catch_8
    :goto_7
    iget-object v5, p1, Lcom/mycompany/app/web/WebSnsTwit;->b:Landroid/content/Context;

    .line 242
    .line 243
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->D6(Landroid/content/Context;)V

    .line 244
    .line 245
    .line 246
    :catch_9
    :cond_c
    :goto_8
    if-eqz v3, :cond_d

    .line 247
    .line 248
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 249
    .line 250
    .line 251
    :catch_a
    :cond_d
    if-eqz v0, :cond_e

    .line 252
    .line 253
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    .line 254
    .line 255
    .line 256
    :catch_b
    :cond_e
    if-eqz p2, :cond_f

    .line 257
    .line 258
    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    .line 259
    .line 260
    .line 261
    :catch_c
    :cond_f
    if-nez v4, :cond_10

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    :goto_9
    iget-object v0, p1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 269
    .line 270
    if-nez v0, :cond_11

    .line 271
    .line 272
    goto :goto_a

    .line 273
    :cond_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_12

    .line 278
    .line 279
    iget-object p1, p1, Lcom/mycompany/app/web/WebSnsTwit;->c:Lcom/mycompany/app/web/WebSnsTask$SnsTaskListener;

    .line 280
    .line 281
    if-eqz p1, :cond_13

    .line 282
    .line 283
    check-cast p1, Lcom/mycompany/app/web/WebSnsLoad$9;

    .line 284
    .line 285
    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebSnsLoad$9;->a(Ljava/util/List;)V

    .line 286
    .line 287
    .line 288
    goto :goto_a

    .line 289
    :cond_12
    iput-object p2, p1, Lcom/mycompany/app/web/WebSnsTwit;->n:Ljava/lang/String;

    .line 290
    .line 291
    iget-object p1, p1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    .line 292
    .line 293
    const-string p2, "(function(){var val=null;var ele=document.querySelector(\"meta[property=\'og:image\']\");if(ele){val=ele.content;}android.onTwitImage(val);})();"

    .line 294
    .line 295
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 296
    .line 297
    .line 298
    new-instance v1, Landroid/webkit/WebResourceResponse;

    .line 299
    .line 300
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 301
    .line 302
    const-string p2, ""

    .line 303
    .line 304
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 309
    .line 310
    .line 311
    const-string p2, "text/plain"

    .line 312
    .line 313
    const-string v0, "UTF-8"

    .line 314
    .line 315
    invoke-direct {v1, p2, v0, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 316
    .line 317
    .line 318
    :cond_13
    :goto_a
    return-object v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 5
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebSnsTwit;

    iget-object v0, p1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    .line 6
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebSnsTwit;->a(Lcom/mycompany/app/web/WebSnsTwit;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebSnsTwit$LocalWebViewClient;->a:Lcom/mycompany/app/web/WebSnsTwit;

    iget-object v0, p1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v1

    .line 3
    :cond_1
    invoke-static {p1, p2}, Lcom/mycompany/app/web/WebSnsTwit;->a(Lcom/mycompany/app/web/WebSnsTwit;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/mycompany/app/web/WebSnsTwit;->e:Lcom/mycompany/app/view/MyWebSafe;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
