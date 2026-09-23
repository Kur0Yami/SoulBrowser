.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/RetryAndFollowUpInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lokhttp3/internal/http/RetryAndFollowUpInterceptor;",
        "Lokhttp3/Interceptor;",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 10
    .line 11
    return-void
.end method

.method public static d(Lokhttp3/Response;I)I
    .locals 1

    .line 1
    const-string v0, "Retry-After"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    new-instance p1, Lkotlin/text/Regex;

    .line 11
    .line 12
    const-string v0, "\\d+"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "valueOf(...)"

    .line 28
    .line 29
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_1
    const p0, 0x7fffffff

    .line 38
    .line 39
    .line 40
    return p0
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "chain"

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 11
    .line 12
    iget-object v14, v2, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    .line 13
    .line 14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/16 v16, 0x0

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    move-object v15, v0

    .line 23
    move/from16 v18, v4

    .line 24
    .line 25
    move v0, v5

    .line 26
    move-object/from16 v17, v16

    .line 27
    .line 28
    :goto_0
    const-string v6, "request"

    .line 29
    .line 30
    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v6, "chain"

    .line 34
    .line 35
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v6, v14, Lokhttp3/internal/connection/RealCall;->o:Lokhttp3/internal/connection/Exchange;

    .line 39
    .line 40
    if-nez v6, :cond_d

    .line 41
    .line 42
    monitor-enter v14

    .line 43
    :try_start_0
    iget-boolean v6, v14, Lokhttp3/internal/connection/RealCall;->q:Z

    .line 44
    .line 45
    if-nez v6, :cond_c

    .line 46
    .line 47
    iget-boolean v6, v14, Lokhttp3/internal/connection/RealCall;->p:Z

    .line 48
    .line 49
    if-nez v6, :cond_b

    .line 50
    .line 51
    iget-boolean v6, v14, Lokhttp3/internal/connection/RealCall;->s:Z

    .line 52
    .line 53
    if-nez v6, :cond_b

    .line 54
    .line 55
    iget-boolean v6, v14, Lokhttp3/internal/connection/RealCall;->r:Z

    .line 56
    .line 57
    if-nez v6, :cond_b

    .line 58
    .line 59
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 60
    .line 61
    monitor-exit v14

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    move-object v6, v3

    .line 65
    new-instance v3, Lokhttp3/internal/connection/RealRoutePlanner;

    .line 66
    .line 67
    iget-object v0, v14, Lokhttp3/internal/connection/RealCall;->c:Lokhttp3/OkHttpClient;

    .line 68
    .line 69
    move v7, v4

    .line 70
    iget-object v4, v0, Lokhttp3/OkHttpClient;->z:Lokhttp3/internal/concurrent/TaskRunner;

    .line 71
    .line 72
    move v8, v5

    .line 73
    iget-object v5, v14, Lokhttp3/internal/connection/RealCall;->g:Lokhttp3/internal/connection/RealConnectionPool;

    .line 74
    .line 75
    move-object v9, v6

    .line 76
    iget v6, v0, Lokhttp3/OkHttpClient;->w:I

    .line 77
    .line 78
    move v10, v7

    .line 79
    iget v7, v0, Lokhttp3/OkHttpClient;->x:I

    .line 80
    .line 81
    move v11, v8

    .line 82
    iget v8, v2, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    .line 83
    .line 84
    move-object v12, v9

    .line 85
    iget v9, v2, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    .line 86
    .line 87
    move v13, v10

    .line 88
    iget-boolean v10, v0, Lokhttp3/OkHttpClient;->e:Z

    .line 89
    .line 90
    move/from16 v19, v11

    .line 91
    .line 92
    iget-boolean v11, v0, Lokhttp3/OkHttpClient;->f:Z

    .line 93
    .line 94
    iget-object v13, v15, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 95
    .line 96
    move-object/from16 v20, v3

    .line 97
    .line 98
    const-string v3, "url"

    .line 99
    .line 100
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v13, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 104
    .line 105
    move-object/from16 v21, v4

    .line 106
    .line 107
    const-string v4, "https"

    .line 108
    .line 109
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_1

    .line 114
    .line 115
    iget-object v3, v0, Lokhttp3/OkHttpClient;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 116
    .line 117
    if-eqz v3, :cond_0

    .line 118
    .line 119
    iget-object v4, v0, Lokhttp3/OkHttpClient;->s:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 120
    .line 121
    move-object/from16 v22, v3

    .line 122
    .line 123
    iget-object v3, v0, Lokhttp3/OkHttpClient;->t:Lokhttp3/CertificatePinner;

    .line 124
    .line 125
    move-object/from16 v29, v3

    .line 126
    .line 127
    move-object/from16 v28, v4

    .line 128
    .line 129
    move-object/from16 v27, v22

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string v2, "CLEARTEXT-only client"

    .line 135
    .line 136
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_1
    move-object/from16 v27, v16

    .line 141
    .line 142
    move-object/from16 v28, v27

    .line 143
    .line 144
    move-object/from16 v29, v28

    .line 145
    .line 146
    :goto_1
    new-instance v22, Lokhttp3/Address;

    .line 147
    .line 148
    iget-object v3, v13, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 149
    .line 150
    iget v4, v13, Lokhttp3/HttpUrl;->e:I

    .line 151
    .line 152
    iget-object v13, v0, Lokhttp3/OkHttpClient;->k:Lokhttp3/Dns;

    .line 153
    .line 154
    move-object/from16 v23, v3

    .line 155
    .line 156
    iget-object v3, v0, Lokhttp3/OkHttpClient;->n:Ljavax/net/SocketFactory;

    .line 157
    .line 158
    move-object/from16 v26, v3

    .line 159
    .line 160
    iget-object v3, v0, Lokhttp3/OkHttpClient;->m:Lokhttp3/Authenticator;

    .line 161
    .line 162
    move-object/from16 v30, v3

    .line 163
    .line 164
    iget-object v3, v0, Lokhttp3/OkHttpClient;->r:Ljava/util/List;

    .line 165
    .line 166
    move-object/from16 v31, v3

    .line 167
    .line 168
    iget-object v3, v0, Lokhttp3/OkHttpClient;->q:Ljava/util/List;

    .line 169
    .line 170
    iget-object v0, v0, Lokhttp3/OkHttpClient;->l:Ljava/net/ProxySelector;

    .line 171
    .line 172
    move-object/from16 v33, v0

    .line 173
    .line 174
    move-object/from16 v32, v3

    .line 175
    .line 176
    move/from16 v24, v4

    .line 177
    .line 178
    move-object/from16 v25, v13

    .line 179
    .line 180
    invoke-direct/range {v22 .. v33}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Lokhttp3/internal/tls/OkHostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, v14, Lokhttp3/internal/connection/RealCall;->c:Lokhttp3/OkHttpClient;

    .line 184
    .line 185
    iget-object v13, v0, Lokhttp3/OkHttpClient;->y:Lokhttp3/internal/connection/RouteDatabase;

    .line 186
    .line 187
    move-object/from16 v34, v12

    .line 188
    .line 189
    move-object/from16 v3, v20

    .line 190
    .line 191
    move-object/from16 v4, v21

    .line 192
    .line 193
    move-object/from16 v12, v22

    .line 194
    .line 195
    invoke-direct/range {v3 .. v15}, Lokhttp3/internal/connection/RealRoutePlanner;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIZZLokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v14, Lokhttp3/internal/connection/RealCall;->c:Lokhttp3/OkHttpClient;

    .line 199
    .line 200
    iget-boolean v4, v0, Lokhttp3/OkHttpClient;->f:Z

    .line 201
    .line 202
    if-eqz v4, :cond_2

    .line 203
    .line 204
    new-instance v4, Lokhttp3/internal/connection/FastFallbackExchangeFinder;

    .line 205
    .line 206
    iget-object v0, v0, Lokhttp3/OkHttpClient;->z:Lokhttp3/internal/concurrent/TaskRunner;

    .line 207
    .line 208
    invoke-direct {v4, v3, v0}, Lokhttp3/internal/connection/FastFallbackExchangeFinder;-><init>(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_2
    new-instance v4, Lokhttp3/internal/connection/SequentialExchangeFinder;

    .line 213
    .line 214
    invoke-direct {v4, v3}, Lokhttp3/internal/connection/SequentialExchangeFinder;-><init>(Lokhttp3/internal/connection/RealRoutePlanner;)V

    .line 215
    .line 216
    .line 217
    :goto_2
    iput-object v4, v14, Lokhttp3/internal/connection/RealCall;->l:Lokhttp3/internal/connection/ExchangeFinder;

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_3
    move-object/from16 v34, v3

    .line 221
    .line 222
    :goto_3
    :try_start_1
    iget-boolean v0, v14, Lokhttp3/internal/connection/RealCall;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 223
    .line 224
    if-nez v0, :cond_a

    .line 225
    .line 226
    :try_start_2
    invoke-virtual {v2, v15}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 227
    .line 228
    .line 229
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 230
    :try_start_3
    invoke-virtual {v0}, Lokhttp3/Response;->b()Lokhttp3/Response$Builder;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v3, "request"

    .line 235
    .line 236
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iput-object v15, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 240
    .line 241
    if-eqz v17, :cond_4

    .line 242
    .line 243
    :try_start_4
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/UnreadableResponseBodyKt;->a(Lokhttp3/Response;)Lokhttp3/Response;

    .line 244
    .line 245
    .line 246
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 247
    goto :goto_4

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    const/4 v4, 0x1

    .line 250
    goto/16 :goto_8

    .line 251
    .line 252
    :cond_4
    move-object/from16 v3, v16

    .line 253
    .line 254
    :goto_4
    :try_start_5
    iput-object v3, v0, Lokhttp3/Response$Builder;->k:Lokhttp3/Response;

    .line 255
    .line 256
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iget-object v3, v14, Lokhttp3/internal/connection/RealCall;->o:Lokhttp3/internal/connection/Exchange;

    .line 261
    .line 262
    invoke-virtual {v1, v0, v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->b(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;

    .line 263
    .line 264
    .line 265
    move-result-object v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 266
    if-nez v15, :cond_5

    .line 267
    .line 268
    :try_start_6
    iget-object v2, v14, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 269
    .line 270
    invoke-virtual {v2, v14, v0}, Lokhttp3/EventListener;->f(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 271
    .line 272
    .line 273
    const/4 v7, 0x0

    .line 274
    invoke-virtual {v14, v7}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    .line 275
    .line 276
    .line 277
    return-object v0

    .line 278
    :catchall_1
    move-exception v0

    .line 279
    const/4 v7, 0x0

    .line 280
    :goto_5
    move v4, v7

    .line 281
    goto/16 :goto_8

    .line 282
    .line 283
    :cond_5
    const/4 v7, 0x0

    .line 284
    :try_start_7
    iget-object v3, v15, Lokhttp3/Request;->d:Lokhttp3/RequestBody;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 285
    .line 286
    if-eqz v3, :cond_6

    .line 287
    .line 288
    :try_start_8
    invoke-virtual {v3}, Lokhttp3/RequestBody;->c()Z

    .line 289
    .line 290
    .line 291
    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 292
    if-eqz v3, :cond_6

    .line 293
    .line 294
    :try_start_9
    iget-object v2, v14, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 295
    .line 296
    invoke-virtual {v2, v14, v0}, Lokhttp3/EventListener;->f(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 297
    .line 298
    .line 299
    invoke-virtual {v14, v7}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    .line 300
    .line 301
    .line 302
    return-object v0

    .line 303
    :catchall_2
    move-exception v0

    .line 304
    goto :goto_5

    .line 305
    :cond_6
    :try_start_a
    iget-object v3, v0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 306
    .line 307
    invoke-static {v3}, Lokhttp3/internal/_UtilCommonKt;->a(Ljava/io/Closeable;)V

    .line 308
    .line 309
    .line 310
    add-int/lit8 v3, v18, 0x1

    .line 311
    .line 312
    const/16 v4, 0x14

    .line 313
    .line 314
    if-gt v3, v4, :cond_7

    .line 315
    .line 316
    iget-object v4, v14, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 317
    .line 318
    invoke-virtual {v4, v14, v0}, Lokhttp3/EventListener;->f(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 319
    .line 320
    .line 321
    const/4 v8, 0x1

    .line 322
    invoke-virtual {v14, v8}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    .line 323
    .line 324
    .line 325
    move-object/from16 v17, v0

    .line 326
    .line 327
    move/from16 v18, v3

    .line 328
    .line 329
    move v4, v7

    .line 330
    move v0, v8

    .line 331
    move v5, v0

    .line 332
    move-object/from16 v3, v34

    .line 333
    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :catchall_3
    move-exception v0

    .line 337
    const/4 v8, 0x1

    .line 338
    :goto_6
    move v4, v8

    .line 339
    goto/16 :goto_8

    .line 340
    .line 341
    :cond_7
    const/4 v8, 0x1

    .line 342
    :try_start_b
    iget-object v2, v14, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 343
    .line 344
    invoke-virtual {v2, v14, v0}, Lokhttp3/EventListener;->f(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V

    .line 345
    .line 346
    .line 347
    new-instance v0, Ljava/net/ProtocolException;

    .line 348
    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    const-string v4, "Too many follow-up requests: "

    .line 355
    .line 356
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v0

    .line 370
    :catchall_4
    move-exception v0

    .line 371
    goto :goto_6

    .line 372
    :catch_0
    move-exception v0

    .line 373
    const/4 v7, 0x0

    .line 374
    const/4 v8, 0x1

    .line 375
    invoke-virtual {v1, v0, v14, v15}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->c(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    iget-object v4, v14, Lokhttp3/internal/connection/RealCall;->h:Lokhttp3/EventListener$Companion$NONE$1;

    .line 380
    .line 381
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    const-string v4, "call"

    .line 385
    .line 386
    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    const-string v4, "exception"

    .line 390
    .line 391
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    if-nez v3, :cond_9

    .line 395
    .line 396
    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 397
    .line 398
    const-string v2, "<this>"

    .line 399
    .line 400
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    const-string v2, "suppressed"

    .line 404
    .line 405
    move-object/from16 v6, v34

    .line 406
    .line 407
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    if-eqz v3, :cond_8

    .line 419
    .line 420
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    check-cast v3, Ljava/lang/Exception;

    .line 425
    .line 426
    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 427
    .line 428
    .line 429
    goto :goto_7

    .line 430
    :cond_8
    throw v0

    .line 431
    :cond_9
    move-object/from16 v6, v34

    .line 432
    .line 433
    invoke-static {v6, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 437
    invoke-virtual {v14, v8}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    .line 438
    .line 439
    .line 440
    move v0, v7

    .line 441
    move v4, v0

    .line 442
    move v5, v8

    .line 443
    goto/16 :goto_0

    .line 444
    .line 445
    :cond_a
    const/4 v8, 0x1

    .line 446
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    .line 447
    .line 448
    const-string v2, "Canceled"

    .line 449
    .line 450
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 454
    :goto_8
    invoke-virtual {v14, v4}, Lokhttp3/internal/connection/RealCall;->d(Z)V

    .line 455
    .line 456
    .line 457
    throw v0

    .line 458
    :catchall_5
    move-exception v0

    .line 459
    goto :goto_9

    .line 460
    :cond_b
    :try_start_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 461
    .line 462
    const-string v2, "Check failed."

    .line 463
    .line 464
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw v0

    .line 468
    :cond_c
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    .line 469
    .line 470
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 471
    .line 472
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 476
    :goto_9
    monitor-exit v14

    .line 477
    throw v0

    .line 478
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 479
    .line 480
    const-string v2, "Check failed."

    .line 481
    .line 482
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    throw v0
.end method

.method public final b(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Request;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->g:Lokhttp3/Route;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    iget v2, p1, Lokhttp3/Response;->h:I

    .line 13
    .line 14
    iget-object v3, p1, Lokhttp3/Response;->c:Lokhttp3/Request;

    .line 15
    .line 16
    iget-object v4, v3, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x1

    .line 20
    const/16 v7, 0x134

    .line 21
    .line 22
    const/16 v8, 0x133

    .line 23
    .line 24
    if-eq v2, v8, :cond_e

    .line 25
    .line 26
    if-eq v2, v7, :cond_e

    .line 27
    .line 28
    const/16 v9, 0x191

    .line 29
    .line 30
    if-eq v2, v9, :cond_d

    .line 31
    .line 32
    const/16 v9, 0x1a5

    .line 33
    .line 34
    if-eq v2, v9, :cond_a

    .line 35
    .line 36
    const/16 p2, 0x1f7

    .line 37
    .line 38
    if-eq v2, p2, :cond_8

    .line 39
    .line 40
    const/16 p2, 0x197

    .line 41
    .line 42
    if-eq v2, p2, :cond_6

    .line 43
    .line 44
    const/16 p2, 0x198

    .line 45
    .line 46
    if-eq v2, p2, :cond_1

    .line 47
    .line 48
    packed-switch v2, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 54
    .line 55
    iget-boolean v1, v1, Lokhttp3/OkHttpClient;->e:Z

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_2
    iget-object v1, v3, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1}, Lokhttp3/RequestBody;->c()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_3
    iget-object v1, p1, Lokhttp3/Response;->o:Lokhttp3/Response;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    iget v1, v1, Lokhttp3/Response;->h:I

    .line 78
    .line 79
    if-ne v1, p2, :cond_4

    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_4
    invoke-static {p1, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->d(Lokhttp3/Response;I)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-lez p2, :cond_5

    .line 88
    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :cond_5
    iget-object p1, p1, Lokhttp3/Response;->c:Lokhttp3/Request;

    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 104
    .line 105
    if-ne p2, v0, :cond_7

    .line 106
    .line 107
    iget-object p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 108
    .line 109
    iget-object p2, p2, Lokhttp3/OkHttpClient;->m:Lokhttp3/Authenticator;

    .line 110
    .line 111
    invoke-interface {p2, v1, p1}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    .line 117
    .line 118
    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 119
    .line 120
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_8
    iget-object v1, p1, Lokhttp3/Response;->o:Lokhttp3/Response;

    .line 125
    .line 126
    if-eqz v1, :cond_9

    .line 127
    .line 128
    iget v1, v1, Lokhttp3/Response;->h:I

    .line 129
    .line 130
    if-ne v1, p2, :cond_9

    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_9
    const p2, 0x7fffffff

    .line 135
    .line 136
    .line 137
    invoke-static {p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->d(Lokhttp3/Response;I)I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-nez p2, :cond_13

    .line 142
    .line 143
    iget-object p1, p1, Lokhttp3/Response;->c:Lokhttp3/Request;

    .line 144
    .line 145
    return-object p1

    .line 146
    :cond_a
    iget-object v1, v3, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 147
    .line 148
    if-eqz v1, :cond_b

    .line 149
    .line 150
    invoke-virtual {v1}, Lokhttp3/RequestBody;->c()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_b

    .line 155
    .line 156
    goto/16 :goto_3

    .line 157
    .line 158
    :cond_b
    if-eqz p2, :cond_13

    .line 159
    .line 160
    iget-object v1, p2, Lokhttp3/internal/connection/Exchange;->c:Lokhttp3/internal/connection/ExchangeFinder;

    .line 161
    .line 162
    invoke-interface {v1}, Lokhttp3/internal/connection/ExchangeFinder;->b()Lokhttp3/internal/connection/RoutePlanner;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-interface {v1}, Lokhttp3/internal/connection/RoutePlanner;->b()Lokhttp3/Address;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v1, v1, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 171
    .line 172
    iget-object v1, v1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v2, p2, Lokhttp3/internal/connection/Exchange;->d:Lokhttp3/internal/http/ExchangeCodec;

    .line 175
    .line 176
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec;->i()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-interface {v2}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->getRoute()Lokhttp3/Route;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget-object v2, v2, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 185
    .line 186
    iget-object v2, v2, Lokhttp3/Address;->h:Lokhttp3/HttpUrl;

    .line 187
    .line 188
    iget-object v2, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_c

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_c
    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    monitor-enter p2

    .line 202
    :try_start_0
    iput-boolean v6, p2, Lokhttp3/internal/connection/RealConnection;->o:Z

    .line 203
    .line 204
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .line 206
    monitor-exit p2

    .line 207
    iget-object p1, p1, Lokhttp3/Response;->c:Lokhttp3/Request;

    .line 208
    .line 209
    return-object p1

    .line 210
    :catchall_0
    move-exception p1

    .line 211
    monitor-exit p2

    .line 212
    throw p1

    .line 213
    :cond_d
    iget-object p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 214
    .line 215
    iget-object p2, p2, Lokhttp3/OkHttpClient;->g:Lokhttp3/Authenticator;

    .line 216
    .line 217
    invoke-interface {p2, v1, p1}, Lokhttp3/Authenticator;->a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    return-object p1

    .line 222
    :cond_e
    :pswitch_0
    const-string p2, "PROPFIND"

    .line 223
    .line 224
    const-string v1, "method"

    .line 225
    .line 226
    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 227
    .line 228
    iget-boolean v3, v2, Lokhttp3/OkHttpClient;->h:Z

    .line 229
    .line 230
    if-nez v3, :cond_f

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_f
    const-string v3, "Location"

    .line 234
    .line 235
    invoke-static {v3, p1}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    iget-object v9, p1, Lokhttp3/Response;->c:Lokhttp3/Request;

    .line 240
    .line 241
    if-nez v3, :cond_10

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_10
    iget-object v10, v9, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 245
    .line 246
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 247
    .line 248
    .line 249
    const-string v11, "link"

    .line 250
    .line 251
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string v11, "link"

    .line 255
    .line 256
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    :try_start_1
    new-instance v11, Lokhttp3/HttpUrl$Builder;

    .line 260
    .line 261
    invoke-direct {v11}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v11, v10, v3}, Lokhttp3/HttpUrl$Builder;->b(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_1

    .line 268
    :catch_0
    move-object v11, v0

    .line 269
    :goto_1
    if-eqz v11, :cond_11

    .line 270
    .line 271
    invoke-virtual {v11}, Lokhttp3/HttpUrl$Builder;->a()Lokhttp3/HttpUrl;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    goto :goto_2

    .line 276
    :cond_11
    move-object v3, v0

    .line 277
    :goto_2
    if-nez v3, :cond_12

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_12
    iget-object v10, v3, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 281
    .line 282
    iget-object v11, v9, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 283
    .line 284
    iget-object v11, v11, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v10

    .line 290
    if-nez v10, :cond_14

    .line 291
    .line 292
    iget-boolean v2, v2, Lokhttp3/OkHttpClient;->i:Z

    .line 293
    .line 294
    if-nez v2, :cond_14

    .line 295
    .line 296
    :cond_13
    :goto_3
    return-object v0

    .line 297
    :cond_14
    invoke-virtual {v9}, Lokhttp3/Request;->b()Lokhttp3/Request$Builder;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-static {v4}, Lokhttp3/internal/http/HttpMethod;->a(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v10

    .line 305
    if-eqz v10, :cond_19

    .line 306
    .line 307
    iget p1, p1, Lokhttp3/Response;->h:I

    .line 308
    .line 309
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    if-nez v10, :cond_15

    .line 317
    .line 318
    if-eq p1, v7, :cond_15

    .line 319
    .line 320
    if-ne p1, v8, :cond_16

    .line 321
    .line 322
    :cond_15
    move v5, v6

    .line 323
    :cond_16
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p2

    .line 330
    if-nez p2, :cond_17

    .line 331
    .line 332
    if-eq p1, v7, :cond_17

    .line 333
    .line 334
    if-eq p1, v8, :cond_17

    .line 335
    .line 336
    const-string p1, "GET"

    .line 337
    .line 338
    invoke-virtual {v2, p1, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 339
    .line 340
    .line 341
    goto :goto_4

    .line 342
    :cond_17
    if-eqz v5, :cond_18

    .line 343
    .line 344
    iget-object v0, v9, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 345
    .line 346
    :cond_18
    invoke-virtual {v2, v4, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 347
    .line 348
    .line 349
    :goto_4
    if-nez v5, :cond_19

    .line 350
    .line 351
    const-string p1, "Transfer-Encoding"

    .line 352
    .line 353
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string p1, "Content-Length"

    .line 357
    .line 358
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string p1, "Content-Type"

    .line 362
    .line 363
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_19
    iget-object p1, v9, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 367
    .line 368
    invoke-static {p1, v3}, Lokhttp3/internal/_UtilJvmKt;->a(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    if-nez p1, :cond_1a

    .line 373
    .line 374
    const-string p1, "Authorization"

    .line 375
    .line 376
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :cond_1a
    const-string p1, "url"

    .line 380
    .line 381
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iput-object v3, v2, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 385
    .line 386
    new-instance p1, Lokhttp3/Request;

    .line 387
    .line 388
    invoke-direct {p1, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 389
    .line 390
    .line 391
    return-object p1

    .line 392
    nop

    .line 393
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/io/IOException;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->a:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    iget-boolean v1, v1, Lokhttp3/OkHttpClient;->e:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object p3, p3, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p3}, Lokhttp3/RequestBody;->c()Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-nez p3, :cond_8

    .line 21
    .line 22
    :cond_1
    instance-of p3, p1, Ljava/io/FileNotFoundException;

    .line 23
    .line 24
    if-eqz p3, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    instance-of p3, p1, Ljava/net/ProtocolException;

    .line 28
    .line 29
    if-eqz p3, :cond_3

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    instance-of p3, p1, Ljava/io/InterruptedIOException;

    .line 33
    .line 34
    if-eqz p3, :cond_4

    .line 35
    .line 36
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    .line 37
    .line 38
    if-eqz p1, :cond_8

    .line 39
    .line 40
    if-eqz v0, :cond_8

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    instance-of p3, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 44
    .line 45
    if-eqz p3, :cond_5

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    instance-of p3, p3, Ljava/security/cert/CertificateException;

    .line 52
    .line 53
    if-eqz p3, :cond_5

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_5
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 57
    .line 58
    if-eqz p1, :cond_6

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_6
    :goto_0
    iget-object p1, p2, Lokhttp3/internal/connection/RealCall;->v:Lokhttp3/internal/connection/Exchange;

    .line 62
    .line 63
    if-eqz p1, :cond_8

    .line 64
    .line 65
    iget-boolean p1, p1, Lokhttp3/internal/connection/Exchange;->e:Z

    .line 66
    .line 67
    const/4 p3, 0x1

    .line 68
    if-ne p1, p3, :cond_8

    .line 69
    .line 70
    iget-object p1, p2, Lokhttp3/internal/connection/RealCall;->l:Lokhttp3/internal/connection/ExchangeFinder;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Lokhttp3/internal/connection/ExchangeFinder;->b()Lokhttp3/internal/connection/RoutePlanner;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object p2, p2, Lokhttp3/internal/connection/RealCall;->v:Lokhttp3/internal/connection/Exchange;

    .line 80
    .line 81
    if-eqz p2, :cond_7

    .line 82
    .line 83
    invoke-virtual {p2}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    goto :goto_1

    .line 88
    :cond_7
    const/4 p2, 0x0

    .line 89
    :goto_1
    invoke-interface {p1, p2}, Lokhttp3/internal/connection/RoutePlanner;->a(Lokhttp3/internal/connection/RealConnection;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_8

    .line 94
    .line 95
    return p3

    .line 96
    :cond_8
    :goto_2
    const/4 p1, 0x0

    .line 97
    return p1
.end method
