.class Lorg/jsoup/helper/UrlConnectionExecutor;
.super Lorg/jsoup/helper/RequestExecutor;
.source "SourceFile"


# instance fields
.field public c:Ljava/net/HttpURLConnection;


# direct methods
.method public static c(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->proxy()Ljava/net/Proxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    div-int/lit8 v1, v1, 0x2

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 55
    .line 56
    .line 57
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    move-object v1, v0

    .line 62
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 63
    .line 64
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Request;->s:Ljavax/net/ssl/SSLContext;

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Request;->u:Lorg/jsoup/helper/RequestAuthenticator;

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    sget-object v2, Lorg/jsoup/helper/AuthenticationHandler;->c:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    .line 94
    .line 95
    invoke-interface {v2, v1}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->a(Lorg/jsoup/helper/RequestAuthenticator;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 110
    .line 111
    .line 112
    :cond_4
    sget-object v1, Lorg/jsoup/helper/CookieUtil;->a:Ljava/util/Map;

    .line 113
    .line 114
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->cookies()Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Ljava/util/Map$Entry;

    .line 142
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v5, "="

    .line 158
    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Request;->t:Ljava/net/CookieManager;

    .line 180
    .line 181
    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Base;->a:Ljava/net/URL;

    .line 182
    .line 183
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 184
    .line 185
    .line 186
    move-result-object v3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    sget-object v4, Lorg/jsoup/helper/CookieUtil;->a:Ljava/util/Map;

    .line 188
    .line 189
    invoke-virtual {v2, v3, v4}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    const/4 v3, 0x0

    .line 202
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    const-string v5, "Cookie2"

    .line 207
    .line 208
    const-string v6, "Cookie"

    .line 209
    .line 210
    if-eqz v4, :cond_9

    .line 211
    .line 212
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Ljava/util/Map$Entry;

    .line 217
    .line 218
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    check-cast v7, Ljava/util/List;

    .line 223
    .line 224
    if-eqz v7, :cond_6

    .line 225
    .line 226
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-nez v8, :cond_7

    .line 231
    .line 232
    goto :goto_3

    .line 233
    :cond_7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-eqz v6, :cond_8

    .line 244
    .line 245
    move-object v4, v3

    .line 246
    move-object v3, v1

    .line 247
    goto :goto_4

    .line 248
    :cond_8
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    if-eqz v4, :cond_6

    .line 253
    .line 254
    new-instance v3, Ljava/util/HashSet;

    .line 255
    .line 256
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 257
    .line 258
    .line 259
    move-object v4, v3

    .line 260
    :goto_4
    invoke-interface {v3, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 261
    .line 262
    .line 263
    move-object v3, v4

    .line 264
    goto :goto_3

    .line 265
    :cond_9
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    const-string v4, "; "

    .line 270
    .line 271
    if-lez v2, :cond_a

    .line 272
    .line 273
    invoke-static {v1, v4}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v0, v6, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_a
    if-eqz v3, :cond_b

    .line 281
    .line 282
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-lez v1, :cond_b

    .line 287
    .line 288
    invoke-static {v3, v4}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v0, v5, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_b
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->multiHeaders()Ljava/util/Map;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_d

    .line 312
    .line 313
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Ljava/util/Map$Entry;

    .line 318
    .line 319
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Ljava/util/List;

    .line 324
    .line 325
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_c

    .line 334
    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    check-cast v3, Ljava/lang/String;

    .line 340
    .line 341
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    check-cast v4, Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_d
    return-object v0

    .line 352
    :catch_0
    move-exception p0

    .line 353
    new-instance v0, Ljava/net/MalformedURLException;

    .line 354
    .line 355
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 363
    .line 364
    .line 365
    throw v0
.end method


# virtual methods
.method public final a()Lorg/jsoup/helper/HttpConnection$Response;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/RequestExecutor;->a:Lorg/jsoup/helper/HttpConnection$Request;

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Lorg/jsoup/helper/UrlConnectionExecutor;->c(Lorg/jsoup/helper/HttpConnection$Request;)Ljava/net/HttpURLConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iput-object v1, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/net/URLConnection;->getDoOutput()Z

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    :try_start_1
    iget-object v1, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    :try_start_2
    invoke-static {v0, v1}, Lorg/jsoup/helper/HttpConnection$Response;->g(Lorg/jsoup/helper/HttpConnection$Request;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception v1

    .line 45
    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 49
    :goto_1
    :try_start_6
    iget-object v1, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    goto :goto_4

    .line 57
    :cond_1
    :goto_2
    new-instance v1, Lorg/jsoup/helper/HttpConnection$Response;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Lorg/jsoup/helper/HttpConnection$Response;-><init>(Lorg/jsoup/helper/HttpConnection$Request;)V

    .line 60
    .line 61
    .line 62
    iput-object p0, v1, Lorg/jsoup/helper/HttpConnection$Response;->j:Lorg/jsoup/helper/UrlConnectionExecutor;

    .line 63
    .line 64
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Base;->b:Lorg/jsoup/Connection$Method;

    .line 75
    .line 76
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Base;->a:Ljava/net/URL;

    .line 83
    .line 84
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->f:I

    .line 91
    .line 92
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->g:Ljava/lang/String;

    .line 99
    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    const-string v0, ""

    .line 103
    .line 104
    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->g:Ljava/lang/String;

    .line 105
    .line 106
    :cond_2
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->l:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, v1, Lorg/jsoup/helper/HttpConnection$Response;->m:I

    .line 121
    .line 122
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 123
    .line 124
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 127
    .line 128
    .line 129
    const/4 v3, 0x0

    .line 130
    :cond_3
    :goto_3
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-nez v4, :cond_4

    .line 139
    .line 140
    if-nez v5, :cond_4

    .line 141
    .line 142
    iget-object v0, p0, Lorg/jsoup/helper/RequestExecutor;->b:Lorg/jsoup/helper/HttpConnection$Response;

    .line 143
    .line 144
    invoke-virtual {v1, v2, v0}, Lorg/jsoup/helper/HttpConnection$Response;->e(Ljava/util/LinkedHashMap;Lorg/jsoup/helper/HttpConnection$Response;)V

    .line 145
    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    if-eqz v4, :cond_3

    .line 151
    .line 152
    if-nez v5, :cond_5

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_5
    invoke-static {}, Lorg/jsoup/internal/Functions;->listFunction()Ljava/util/function/Function;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-static {v2, v4, v6}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :goto_4
    invoke-virtual {p0}, Lorg/jsoup/helper/UrlConnectionExecutor;->d()V

    .line 170
    .line 171
    .line 172
    throw v0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "Not yet executed"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/jsoup/helper/UrlConnectionExecutor;->c:Ljava/net/HttpURLConnection;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
