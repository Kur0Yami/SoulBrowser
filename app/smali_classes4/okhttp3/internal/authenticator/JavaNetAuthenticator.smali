.class public final Lokhttp3/internal/authenticator/JavaNetAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lokhttp3/internal/authenticator/JavaNetAuthenticator;",
        "Lokhttp3/Authenticator;",
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
.field public final b:Lokhttp3/Dns;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "defaultDns"

    .line 2
    .line 3
    sget-object v1, Lokhttp3/Dns;->a:Lokhttp3/Dns;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->b:Lokhttp3/Dns;

    .line 12
    .line 13
    return-void
.end method

.method public static b(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lokhttp3/internal/authenticator/JavaNetAuthenticator$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    aget v0, v1, v0

    .line 16
    .line 17
    :goto_0
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object p0, p1, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p2, p0}, Lokhttp3/Dns;->a(Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/net/InetAddress;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "null cannot be cast to non-null type java.net.InetSocketAddress"

    .line 38
    .line 39
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast p0, Ljava/net/InetSocketAddress;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, "getAddress(...)"

    .line 49
    .line 50
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p0
.end method


# virtual methods
.method public final a(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 20

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    const-string v0, "response"

    .line 6
    .line 7
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v3, v2, Lokhttp3/Response;->j:Lokhttp3/Headers;

    .line 11
    .line 12
    iget v0, v2, Lokhttp3/Response;->h:I

    .line 13
    .line 14
    const/16 v4, 0x191

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const-string v6, "<this>"

    .line 18
    .line 19
    const/16 v7, 0x197

    .line 20
    .line 21
    if-eq v0, v4, :cond_1

    .line 22
    .line 23
    if-eq v0, v7, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_4

    .line 30
    :cond_0
    const-string v0, "Proxy-Authenticate"

    .line 31
    .line 32
    :goto_0
    move-object v4, v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v0, "WWW-Authenticate"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    sget-object v0, Lokhttp3/internal/http/HttpHeaders;->a:Lokio/ByteString;

    .line 38
    .line 39
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "headerName"

    .line 43
    .line 44
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v8, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    move v10, v5

    .line 57
    :goto_2
    if-ge v10, v9, :cond_3

    .line 58
    .line 59
    invoke-virtual {v3, v10}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v4, v0}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    new-instance v0, Lokio/Buffer;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v10}, Lokhttp3/Headers;->k(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v0, v11}, Lokio/Buffer;->S(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    invoke-static {v0, v8}, Lokhttp3/internal/http/HttpHeaders;->b(Lokio/Buffer;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v11, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 87
    .line 88
    sget-object v11, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform;

    .line 89
    .line 90
    const-string v12, "Unable to parse challenge"

    .line 91
    .line 92
    const/4 v13, 0x5

    .line 93
    invoke-virtual {v11, v13, v12, v0}, Lokhttp3/internal/platform/Platform;->j(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move-object v0, v8

    .line 100
    :goto_4
    iget-object v3, v2, Lokhttp3/Response;->c:Lokhttp3/Request;

    .line 101
    .line 102
    iget-object v4, v3, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 103
    .line 104
    iget v2, v2, Lokhttp3/Response;->h:I

    .line 105
    .line 106
    if-ne v2, v7, :cond_4

    .line 107
    .line 108
    const/4 v5, 0x1

    .line 109
    :cond_4
    if-eqz v1, :cond_5

    .line 110
    .line 111
    iget-object v2, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 115
    .line 116
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_d

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    check-cast v7, Lokhttp3/Challenge;

    .line 131
    .line 132
    const-string v8, "Basic"

    .line 133
    .line 134
    iget-object v9, v7, Lokhttp3/Challenge;->a:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v8, v9}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_7

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_7
    if-eqz v1, :cond_8

    .line 144
    .line 145
    iget-object v8, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    .line 146
    .line 147
    iget-object v8, v8, Lokhttp3/Address;->a:Lokhttp3/Dns;

    .line 148
    .line 149
    if-nez v8, :cond_9

    .line 150
    .line 151
    :cond_8
    sget-object v8, Lokhttp3/Dns;->a:Lokhttp3/Dns;

    .line 152
    .line 153
    :cond_9
    const-string v9, "realm"

    .line 154
    .line 155
    if-eqz v5, :cond_a

    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    const-string v11, "null cannot be cast to non-null type java.net.InetSocketAddress"

    .line 162
    .line 163
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    check-cast v10, Ljava/net/InetSocketAddress;

    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-static {v2, v4, v8}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->b(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    .line 180
    .line 181
    .line 182
    move-result v13

    .line 183
    iget-object v14, v4, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v8, v7, Lokhttp3/Challenge;->b:Ljava/util/Map;

    .line 186
    .line 187
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    move-object v15, v8

    .line 192
    check-cast v15, Ljava/lang/String;

    .line 193
    .line 194
    iget-object v8, v7, Lokhttp3/Challenge;->a:Ljava/lang/String;

    .line 195
    .line 196
    :try_start_1
    new-instance v9, Ljava/net/URL;

    .line 197
    .line 198
    iget-object v10, v4, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 199
    .line 200
    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .line 202
    .line 203
    sget-object v18, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 204
    .line 205
    move-object/from16 v16, v8

    .line 206
    .line 207
    move-object/from16 v17, v9

    .line 208
    .line 209
    invoke-static/range {v11 .. v18}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    goto :goto_7

    .line 214
    :catch_1
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    .line 216
    .line 217
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_a
    iget-object v10, v4, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v2, v4, v8}, Lokhttp3/internal/authenticator/JavaNetAuthenticator;->b(Ljava/net/Proxy;Lokhttp3/HttpUrl;Lokhttp3/Dns;)Ljava/net/InetAddress;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    move-object v11, v8

    .line 231
    move-object v8, v10

    .line 232
    iget v10, v4, Lokhttp3/HttpUrl;->e:I

    .line 233
    .line 234
    move-object v12, v11

    .line 235
    iget-object v11, v4, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v13, v7, Lokhttp3/Challenge;->b:Ljava/util/Map;

    .line 238
    .line 239
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    check-cast v9, Ljava/lang/String;

    .line 244
    .line 245
    iget-object v13, v7, Lokhttp3/Challenge;->a:Ljava/lang/String;

    .line 246
    .line 247
    :try_start_2
    new-instance v14, Ljava/net/URL;

    .line 248
    .line 249
    iget-object v15, v4, Lokhttp3/HttpUrl;->h:Ljava/lang/String;

    .line 250
    .line 251
    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3

    .line 252
    .line 253
    .line 254
    sget-object v15, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 255
    .line 256
    move-object/from16 v19, v12

    .line 257
    .line 258
    move-object v12, v9

    .line 259
    move-object/from16 v9, v19

    .line 260
    .line 261
    invoke-static/range {v8 .. v15}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    :goto_7
    if-eqz v8, :cond_6

    .line 266
    .line 267
    if-eqz v5, :cond_b

    .line 268
    .line 269
    const-string v0, "Proxy-Authorization"

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_b
    const-string v0, "Authorization"

    .line 273
    .line 274
    :goto_8
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const-string v2, "getUserName(...)"

    .line 279
    .line 280
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    const-string v4, "getPassword(...)"

    .line 288
    .line 289
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    new-instance v4, Ljava/lang/String;

    .line 293
    .line 294
    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    .line 295
    .line 296
    .line 297
    iget-object v2, v7, Lokhttp3/Challenge;->b:Ljava/util/Map;

    .line 298
    .line 299
    const-string v5, "charset"

    .line 300
    .line 301
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    check-cast v2, Ljava/lang/String;

    .line 306
    .line 307
    if-eqz v2, :cond_c

    .line 308
    .line 309
    :try_start_3
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    const-string v7, "forName(...)"

    .line 314
    .line 315
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 316
    .line 317
    .line 318
    goto :goto_9

    .line 319
    :catch_2
    :cond_c
    sget-object v2, Lkotlin/text/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 320
    .line 321
    :goto_9
    const-string v7, "username"

    .line 322
    .line 323
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    const-string v7, "password"

    .line 327
    .line 328
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    new-instance v7, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const/16 v1, 0x3a

    .line 343
    .line 344
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    sget-object v4, Lokio/ByteString;->h:Lokio/ByteString;

    .line 355
    .line 356
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    new-instance v4, Lokio/ByteString;

    .line 363
    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v2, "getBytes(...)"

    .line 369
    .line 370
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    invoke-direct {v4, v1}, Lokio/ByteString;-><init>([B)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4}, Lokio/ByteString;->a()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    const-string v2, "Basic "

    .line 381
    .line 382
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v3}, Lokhttp3/Request;->b()Lokhttp3/Request$Builder;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-virtual {v2, v0, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    new-instance v0, Lokhttp3/Request;

    .line 394
    .line 395
    invoke-direct {v0, v2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 396
    .line 397
    .line 398
    return-object v0

    .line 399
    :catch_3
    move-exception v0

    .line 400
    new-instance v1, Ljava/lang/RuntimeException;

    .line 401
    .line 402
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 403
    .line 404
    .line 405
    throw v1

    .line 406
    :cond_d
    const/4 v0, 0x0

    .line 407
    return-object v0
.end method
