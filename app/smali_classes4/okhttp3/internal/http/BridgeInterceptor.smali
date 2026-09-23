.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/internal/http/BridgeInterceptor;",
        "Lokhttp3/Interceptor;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBridgeInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n1878#2,3:126\n*S KotlinDebug\n*F\n+ 1 BridgeInterceptor.kt\nokhttp3/internal/http/BridgeInterceptor\n*L\n119#1:126,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/CookieJar;


# direct methods
.method public constructor <init>(Lokhttp3/CookieJar;)V
    .locals 1

    .line 1
    const-string v0, "cookieJar"

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
    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->a:Lokhttp3/CookieJar;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/Response;
    .locals 14

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    .line 7
    .line 8
    invoke-virtual {v0}, Lokhttp3/Request;->b()Lokhttp3/Request$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 13
    .line 14
    iget-object v3, v0, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 15
    .line 16
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    const-string v6, "Content-Type"

    .line 19
    .line 20
    const-string v7, "Content-Length"

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {v3}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    if-eqz v8, :cond_0

    .line 29
    .line 30
    iget-object v8, v8, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v6, v8}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v3}, Lokhttp3/RequestBody;->a()J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    cmp-long v3, v8, v4

    .line 40
    .line 41
    const-string v10, "Transfer-Encoding"

    .line 42
    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v7, v3}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v10}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v3, "chunked"

    .line 57
    .line 58
    invoke-virtual {v1, v10, v3}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v7}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    const-string v3, "Host"

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const/4 v9, 0x0

    .line 71
    if-nez v8, :cond_3

    .line 72
    .line 73
    invoke-static {v2, v9}, Lokhttp3/internal/_UtilJvmKt;->g(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v1, v3, v8}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    const-string v3, "Connection"

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    if-nez v8, :cond_4

    .line 87
    .line 88
    const-string v8, "Keep-Alive"

    .line 89
    .line 90
    invoke-virtual {v1, v3, v8}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    const-string v3, "Accept-Encoding"

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    const-string v10, "gzip"

    .line 100
    .line 101
    if-nez v8, :cond_5

    .line 102
    .line 103
    const-string v8, "Range"

    .line 104
    .line 105
    invoke-virtual {v0, v8}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    if-nez v8, :cond_5

    .line 110
    .line 111
    invoke-virtual {v1, v3, v10}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    move v3, v9

    .line 117
    :goto_1
    iget-object v8, p0, Lokhttp3/internal/http/BridgeInterceptor;->a:Lokhttp3/CookieJar;

    .line 118
    .line 119
    invoke-interface {v8, v2}, Lokhttp3/CookieJar;->b(Lokhttp3/HttpUrl;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-nez v11, :cond_9

    .line 128
    .line 129
    new-instance v11, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-eqz v12, :cond_8

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    add-int/lit8 v13, v9, 0x1

    .line 149
    .line 150
    if-gez v9, :cond_6

    .line 151
    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 153
    .line 154
    .line 155
    :cond_6
    check-cast v12, Lokhttp3/Cookie;

    .line 156
    .line 157
    if-lez v9, :cond_7

    .line 158
    .line 159
    const-string v9, "; "

    .line 160
    .line 161
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :cond_7
    iget-object v9, v12, Lokhttp3/Cookie;->a:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const/16 v9, 0x3d

    .line 170
    .line 171
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-object v9, v12, Lokhttp3/Cookie;->b:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    move v9, v13

    .line 180
    goto :goto_2

    .line 181
    :cond_8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    const-string v9, "Cookie"

    .line 186
    .line 187
    invoke-virtual {v1, v9, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_9
    const-string v2, "User-Agent"

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-nez v0, :cond_a

    .line 197
    .line 198
    const-string v0, "okhttp/5.3.2"

    .line 199
    .line 200
    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_a
    new-instance v0, Lokhttp3/Request;

    .line 204
    .line 205
    invoke-direct {v0, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object v1, p1, Lokhttp3/Response;->j:Lokhttp3/Headers;

    .line 213
    .line 214
    iget-object v2, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 215
    .line 216
    invoke-static {v8, v2, v1}, Lokhttp3/internal/http/HttpHeaders;->d(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lokhttp3/Response;->b()Lokhttp3/Response$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    const-string v8, "request"

    .line 224
    .line 225
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iput-object v0, v2, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 229
    .line 230
    if-eqz v3, :cond_b

    .line 231
    .line 232
    const-string v0, "Content-Encoding"

    .line 233
    .line 234
    invoke-static {v0, p1}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v10, v3}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_b

    .line 243
    .line 244
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->a(Lokhttp3/Response;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_b

    .line 249
    .line 250
    iget-object v3, p1, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 251
    .line 252
    if-eqz v3, :cond_b

    .line 253
    .line 254
    new-instance v8, Lokio/GzipSource;

    .line 255
    .line 256
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->d()Lokio/BufferedSource;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-direct {v8, v3}, Lokio/GzipSource;-><init>(Lokio/BufferedSource;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Lokhttp3/Headers;->g()Lokhttp3/Headers$Builder;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v1, v0}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v7}, Lokhttp3/Headers$Builder;->c(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v1, "headers"

    .line 278
    .line 279
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0}, Lokhttp3/Headers;->g()Lokhttp3/Headers$Builder;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    iput-object v0, v2, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 287
    .line 288
    invoke-static {v6, p1}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    new-instance v0, Lokhttp3/internal/http/RealResponseBody;

    .line 293
    .line 294
    invoke-static {v8}, Lokio/Okio;->b(Lokio/Source;)Lokio/RealBufferedSource;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-direct {v0, p1, v4, v5, v1}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/RealBufferedSource;)V

    .line 299
    .line 300
    .line 301
    const-string p1, "body"

    .line 302
    .line 303
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iput-object v0, v2, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 307
    .line 308
    :cond_b
    invoke-virtual {v2}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    return-object p1
.end method
