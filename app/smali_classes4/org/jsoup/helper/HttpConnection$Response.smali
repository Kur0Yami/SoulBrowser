.class public Lorg/jsoup/helper/HttpConnection$Response;
.super Lorg/jsoup/helper/HttpConnection$Base;
.source "SourceFile"

# interfaces
.implements Lorg/jsoup/Connection$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jsoup/helper/HttpConnection$Base<",
        "Lorg/jsoup/Connection$Response;",
        ">;",
        "Lorg/jsoup/Connection$Response;"
    }
.end annotation


# static fields
.field public static final r:Ljava/util/regex/Pattern;


# instance fields
.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/nio/ByteBuffer;

.field public i:Lorg/jsoup/internal/ControllableInputStream;

.field public j:Lorg/jsoup/helper/UrlConnectionExecutor;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Z

.field public o:Z

.field public p:I

.field public final q:Lorg/jsoup/helper/HttpConnection$Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(\\w+)/\\w*\\+?xml.*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jsoup/helper/HttpConnection$Response;->r:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/helper/HttpConnection$Request;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/helper/HttpConnection$Base;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->g:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->n:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->o:Z

    .line 12
    .line 13
    iput v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->p:I

    .line 14
    .line 15
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->q:Lorg/jsoup/helper/HttpConnection$Request;

    .line 16
    .line 17
    return-void
.end method

.method public static b(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 14

    .line 1
    const-string v0, "Content-Encoding"

    .line 2
    .line 3
    const-string v1, "Location"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Request;->w:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v4, "Multiple threads were detected trying to execute the same request concurrently. Make sure to use Connection#newRequest() and do not share an executing request between threads."

    .line 12
    .line 13
    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "req"

    .line 17
    .line 18
    invoke-static {p0, v3}, Lorg/jsoup/helper/Validate;->notNullParam(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "URL must be specified to connect"

    .line 26
    .line 27
    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "http"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    const-string v4, "https"

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    .line 52
    .line 53
    const-string p1, "Only http & https protocols supported"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lorg/jsoup/Connection$Method;->hasBody()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iget-object v4, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Ljava/lang/Object;

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x1

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    move v4, v6

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move v4, v5

    .line 76
    :goto_1
    if-nez v3, :cond_3

    .line 77
    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v8, "Cannot set a request body for HTTP method "

    .line 81
    .line 82
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v4, v7}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    const-string v8, "Content-Type"

    .line 108
    .line 109
    const/4 v9, 0x0

    .line 110
    if-nez v7, :cond_7

    .line 111
    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    if-eqz v4, :cond_7

    .line 115
    .line 116
    :cond_4
    new-instance v3, Lorg/jsoup/helper/UrlBuilder;

    .line 117
    .line 118
    invoke-interface {p0}, Lorg/jsoup/Connection$Base;->url()Ljava/net/URL;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-direct {v3, v4}, Lorg/jsoup/helper/UrlBuilder;-><init>(Ljava/net/URL;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-eqz v7, :cond_6

    .line 138
    .line 139
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    check-cast v7, Lorg/jsoup/Connection$KeyVal;

    .line 144
    .line 145
    invoke-interface {v7}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    .line 146
    .line 147
    .line 148
    move-result v10

    .line 149
    const-string v11, "InputStream data not supported in URL query string."

    .line 150
    .line 151
    invoke-static {v10, v11}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v10, v3, Lorg/jsoup/helper/UrlBuilder;->b:Ljava/lang/StringBuilder;

    .line 155
    .line 156
    if-nez v10, :cond_5

    .line 157
    .line 158
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    iput-object v10, v3, Lorg/jsoup/helper/UrlBuilder;->b:Ljava/lang/StringBuilder;

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    const/16 v11, 0x26

    .line 166
    .line 167
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :goto_3
    iget-object v10, v3, Lorg/jsoup/helper/UrlBuilder;->b:Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-interface {v7}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    sget-object v12, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 177
    .line 178
    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    invoke-static {v11, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const/16 v11, 0x3d

    .line 190
    .line 191
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-interface {v7}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    invoke-static {v7, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_6
    invoke-virtual {v3}, Lorg/jsoup/helper/UrlBuilder;->b()Ljava/net/URL;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-interface {p0, v3}, Lorg/jsoup/Connection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 215
    .line 216
    .line 217
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_5

    .line 225
    .line 226
    :cond_7
    if-eqz v3, :cond_c

    .line 227
    .line 228
    invoke-virtual {p0, v8}, Lorg/jsoup/helper/HttpConnection$Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    const-string v4, "multipart/form-data; boundary="

    .line 233
    .line 234
    if-eqz v3, :cond_8

    .line 235
    .line 236
    const-string v7, "multipart/form-data"

    .line 237
    .line 238
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-eqz v7, :cond_b

    .line 243
    .line 244
    const-string v7, "boundary"

    .line 245
    .line 246
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-nez v3, :cond_b

    .line 251
    .line 252
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->c()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {p0, v8, v4}, Lorg/jsoup/helper/HttpConnection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 269
    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_8
    sget-object v3, Lorg/jsoup/helper/HttpConnection;->CONTENT_ENCODING:Ljava/lang/String;

    .line 273
    .line 274
    invoke-interface {p0}, Lorg/jsoup/Connection$Request;->data()Ljava/util/Collection;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v7

    .line 286
    if-eqz v7, :cond_a

    .line 287
    .line 288
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v7

    .line 292
    check-cast v7, Lorg/jsoup/Connection$KeyVal;

    .line 293
    .line 294
    invoke-interface {v7}, Lorg/jsoup/Connection$KeyVal;->hasInputStream()Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-eqz v7, :cond_9

    .line 299
    .line 300
    invoke-static {}, Lorg/jsoup/helper/DataUtil;->c()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    invoke-virtual {p0, v8, v4}, Lorg/jsoup/helper/HttpConnection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    const-string v4, "application/x-www-form-urlencoded; charset="

    .line 323
    .line 324
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->postDataCharset()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v4

    .line 331
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    invoke-virtual {p0, v8, v3}, Lorg/jsoup/helper/HttpConnection$Request;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 339
    .line 340
    .line 341
    :cond_b
    move-object v3, v9

    .line 342
    :goto_4
    iput-object v3, p0, Lorg/jsoup/helper/HttpConnection$Request;->l:Ljava/lang/String;

    .line 343
    .line 344
    :cond_c
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 345
    .line 346
    .line 347
    move-result-wide v3

    .line 348
    sget-object v7, Lorg/jsoup/helper/RequestDispatch;->a:Ljava/lang/reflect/Constructor;

    .line 349
    .line 350
    const-string v7, "jsoup.useHttpClient"

    .line 351
    .line 352
    const-string v10, "true"

    .line 353
    .line 354
    invoke-static {v7, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    if-eqz v10, :cond_d

    .line 367
    .line 368
    move v7, v5

    .line 369
    :cond_d
    if-eqz v7, :cond_e

    .line 370
    .line 371
    sget-object v7, Lorg/jsoup/helper/RequestDispatch;->a:Ljava/lang/reflect/Constructor;

    .line 372
    .line 373
    if-eqz v7, :cond_e

    .line 374
    .line 375
    const/4 v10, 0x2

    .line 376
    :try_start_0
    new-array v10, v10, [Ljava/lang/Object;

    .line 377
    .line 378
    aput-object p0, v10, v5

    .line 379
    .line 380
    aput-object p1, v10, v6

    .line 381
    .line 382
    invoke-virtual {v7, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    check-cast v7, Lorg/jsoup/helper/RequestExecutor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :catch_0
    new-instance v7, Lorg/jsoup/helper/UrlConnectionExecutor;

    .line 390
    .line 391
    invoke-direct {v7, p0, p1}, Lorg/jsoup/helper/RequestExecutor;-><init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_e
    new-instance v7, Lorg/jsoup/helper/UrlConnectionExecutor;

    .line 396
    .line 397
    invoke-direct {v7, p0, p1}, Lorg/jsoup/helper/RequestExecutor;-><init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V

    .line 398
    .line 399
    .line 400
    :goto_6
    :try_start_1
    invoke-virtual {v7}, Lorg/jsoup/helper/RequestExecutor;->a()Lorg/jsoup/helper/HttpConnection$Response;

    .line 401
    .line 402
    .line 403
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeader(Ljava/lang/String;)Z

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    if-eqz v10, :cond_12

    .line 409
    .line 410
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->followRedirects()Z

    .line 411
    .line 412
    .line 413
    move-result v10

    .line 414
    if-eqz v10, :cond_12

    .line 415
    .line 416
    iget v0, p1, Lorg/jsoup/helper/HttpConnection$Response;->f:I

    .line 417
    .line 418
    const/16 v3, 0x133

    .line 419
    .line 420
    if-eq v0, v3, :cond_f

    .line 421
    .line 422
    sget-object v0, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    .line 423
    .line 424
    invoke-virtual {p0, v0}, Lorg/jsoup/helper/HttpConnection$Request;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0, v9}, Lorg/jsoup/helper/HttpConnection$Request;->requestBody(Ljava/lang/String;)Lorg/jsoup/Connection$Request;

    .line 435
    .line 436
    .line 437
    invoke-virtual {p0, v8}, Lorg/jsoup/helper/HttpConnection$Request;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 438
    .line 439
    .line 440
    goto :goto_7

    .line 441
    :catchall_0
    move-exception p1

    .line 442
    goto/16 :goto_d

    .line 443
    .line 444
    :catch_1
    move-exception v0

    .line 445
    move-object v9, p1

    .line 446
    goto/16 :goto_c

    .line 447
    .line 448
    :cond_f
    :goto_7
    invoke-virtual {p1, v1}, Lorg/jsoup/helper/HttpConnection$Response;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    const-string v1, "http:/"

    .line 456
    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    if-eqz v1, :cond_10

    .line 462
    .line 463
    const/4 v1, 0x6

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    const/16 v4, 0x2f

    .line 469
    .line 470
    if-eq v3, v4, :cond_10

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    :cond_10
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-static {v1, v0}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {p0, v0}, Lorg/jsoup/helper/HttpConnection$Request;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    .line 485
    .line 486
    .line 487
    invoke-static {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->b(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)Lorg/jsoup/helper/HttpConnection$Response;

    .line 488
    .line 489
    .line 490
    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    .line 493
    .line 494
    iget-object p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->u:Lorg/jsoup/helper/RequestAuthenticator;

    .line 495
    .line 496
    if-eqz p0, :cond_11

    .line 497
    .line 498
    sget-object p0, Lorg/jsoup/helper/AuthenticationHandler;->c:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    .line 499
    .line 500
    invoke-interface {p0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->remove()V

    .line 501
    .line 502
    .line 503
    :cond_11
    return-object p1

    .line 504
    :cond_12
    :try_start_3
    iget v1, p1, Lorg/jsoup/helper/HttpConnection$Response;->f:I

    .line 505
    .line 506
    const/16 v8, 0xc8

    .line 507
    .line 508
    if-lt v1, v8, :cond_13

    .line 509
    .line 510
    const/16 v8, 0x190

    .line 511
    .line 512
    if-lt v1, v8, :cond_14

    .line 513
    .line 514
    :cond_13
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreHttpErrors()Z

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    if-eqz v1, :cond_1d

    .line 519
    .line 520
    :cond_14
    invoke-virtual {p1}, Lorg/jsoup/helper/HttpConnection$Response;->contentType()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    sget-object v8, Lorg/jsoup/helper/HttpConnection$Response;->r:Ljava/util/regex/Pattern;

    .line 525
    .line 526
    if-eqz v1, :cond_16

    .line 527
    .line 528
    :try_start_4
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->ignoreContentType()Z

    .line 529
    .line 530
    .line 531
    move-result v9

    .line 532
    if-nez v9, :cond_16

    .line 533
    .line 534
    const-string v9, "text/"

    .line 535
    .line 536
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 537
    .line 538
    .line 539
    move-result v9

    .line 540
    if-nez v9, :cond_16

    .line 541
    .line 542
    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 543
    .line 544
    .line 545
    move-result-object v9

    .line 546
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 547
    .line 548
    .line 549
    move-result v9

    .line 550
    if-eqz v9, :cond_15

    .line 551
    .line 552
    goto :goto_8

    .line 553
    :cond_15
    new-instance v0, Lorg/jsoup/UnsupportedMimeTypeException;

    .line 554
    .line 555
    const-string v3, "Unhandled content type. Must be text/*, */xml, or */*+xml"

    .line 556
    .line 557
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    invoke-direct {v0, v3, v1, v4}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    throw v0

    .line 569
    :cond_16
    :goto_8
    if-eqz v1, :cond_17

    .line 570
    .line 571
    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 576
    .line 577
    .line 578
    move-result v1

    .line 579
    if-eqz v1, :cond_17

    .line 580
    .line 581
    iget-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Request;->p:Z

    .line 582
    .line 583
    if-nez v1, :cond_17

    .line 584
    .line 585
    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    invoke-virtual {p0, v1}, Lorg/jsoup/helper/HttpConnection$Request;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/HttpConnection$Request;

    .line 590
    .line 591
    .line 592
    :cond_17
    iget-object v1, p1, Lorg/jsoup/helper/HttpConnection$Response;->l:Ljava/lang/String;

    .line 593
    .line 594
    invoke-static {v1}, Lorg/jsoup/helper/DataUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    iput-object v1, p1, Lorg/jsoup/helper/HttpConnection$Response;->k:Ljava/lang/String;

    .line 599
    .line 600
    iget v1, p1, Lorg/jsoup/helper/HttpConnection$Response;->m:I

    .line 601
    .line 602
    if-eqz v1, :cond_1a

    .line 603
    .line 604
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->method()Lorg/jsoup/Connection$Method;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    sget-object v8, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    .line 609
    .line 610
    if-eq v1, v8, :cond_1a

    .line 611
    .line 612
    invoke-virtual {v7}, Lorg/jsoup/helper/RequestExecutor;->b()Ljava/io/InputStream;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    const-string v5, "gzip"

    .line 617
    .line 618
    invoke-virtual {p1, v0, v5}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 619
    .line 620
    .line 621
    move-result v5

    .line 622
    if-eqz v5, :cond_18

    .line 623
    .line 624
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 625
    .line 626
    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 627
    .line 628
    .line 629
    :goto_9
    move-object v1, v0

    .line 630
    goto :goto_a

    .line 631
    :cond_18
    const-string v5, "deflate"

    .line 632
    .line 633
    invoke-virtual {p1, v0, v5}, Lorg/jsoup/helper/HttpConnection$Response;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-eqz v0, :cond_19

    .line 638
    .line 639
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    .line 640
    .line 641
    new-instance v5, Ljava/util/zip/Inflater;

    .line 642
    .line 643
    invoke-direct {v5, v6}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 644
    .line 645
    .line 646
    invoke-direct {v0, v1, v5}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 647
    .line 648
    .line 649
    goto :goto_9

    .line 650
    :cond_19
    :goto_a
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    .line 651
    .line 652
    .line 653
    move-result v0

    .line 654
    const/16 v5, 0x2000

    .line 655
    .line 656
    invoke-static {v1, v5, v0}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;II)Lorg/jsoup/internal/ControllableInputStream;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->timeout()I

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    int-to-long v7, v1

    .line 665
    invoke-virtual {v0, v3, v4, v7, v8}, Lorg/jsoup/internal/ControllableInputStream;->timeout(JJ)Lorg/jsoup/internal/ControllableInputStream;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    iput-object v0, p1, Lorg/jsoup/helper/HttpConnection$Response;->i:Lorg/jsoup/internal/ControllableInputStream;

    .line 670
    .line 671
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Request;->v:Lorg/jsoup/Progress;

    .line 672
    .line 673
    if-eqz v1, :cond_1b

    .line 674
    .line 675
    iget v3, p1, Lorg/jsoup/helper/HttpConnection$Response;->m:I

    .line 676
    .line 677
    invoke-virtual {v0, v3, v1, p1}, Lorg/jsoup/internal/ControllableInputStream;->onProgress(ILorg/jsoup/Progress;Ljava/lang/Object;)Lorg/jsoup/internal/ControllableInputStream;

    .line 678
    .line 679
    .line 680
    goto :goto_b

    .line 681
    :cond_1a
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    iput-object v0, p1, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 686
    .line 687
    :cond_1b
    :goto_b
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 688
    .line 689
    .line 690
    iget-object p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->u:Lorg/jsoup/helper/RequestAuthenticator;

    .line 691
    .line 692
    if-eqz p0, :cond_1c

    .line 693
    .line 694
    sget-object p0, Lorg/jsoup/helper/AuthenticationHandler;->c:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    .line 695
    .line 696
    invoke-interface {p0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->remove()V

    .line 697
    .line 698
    .line 699
    :cond_1c
    iput-boolean v6, p1, Lorg/jsoup/helper/HttpConnection$Response;->n:Z

    .line 700
    .line 701
    return-object p1

    .line 702
    :cond_1d
    :try_start_5
    new-instance v0, Lorg/jsoup/HttpStatusException;

    .line 703
    .line 704
    const-string v1, "HTTP error fetching URL"

    .line 705
    .line 706
    iget v3, p1, Lorg/jsoup/helper/HttpConnection$Response;->f:I

    .line 707
    .line 708
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->url()Ljava/net/URL;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    invoke-direct {v0, v1, v3, v4}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 717
    .line 718
    .line 719
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 720
    :catch_2
    move-exception v0

    .line 721
    :goto_c
    if-eqz v9, :cond_1e

    .line 722
    .line 723
    :try_start_6
    invoke-virtual {v9}, Lorg/jsoup/helper/HttpConnection$Response;->f()V

    .line 724
    .line 725
    .line 726
    :cond_1e
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 727
    :goto_d
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 728
    .line 729
    .line 730
    iget-object p0, p0, Lorg/jsoup/helper/HttpConnection$Request;->u:Lorg/jsoup/helper/RequestAuthenticator;

    .line 731
    .line 732
    if-eqz p0, :cond_1f

    .line 733
    .line 734
    sget-object p0, Lorg/jsoup/helper/AuthenticationHandler;->c:Lorg/jsoup/helper/AuthenticationHandler$AuthShim;

    .line 735
    .line 736
    invoke-interface {p0}, Lorg/jsoup/helper/AuthenticationHandler$AuthShim;->remove()V

    .line 737
    .line 738
    .line 739
    :cond_1f
    throw p1
.end method

.method public static c(Lorg/jsoup/helper/HttpConnection$Request;Ljava/io/BufferedWriter;Ljava/io/OutputStream;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->data()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Request;->l:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/16 v3, 0x2000

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-string v5, "--"

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lorg/jsoup/Connection$KeyVal;

    .line 30
    .line 31
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v5, "\r\n"

    .line 38
    .line 39
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v6, "Content-Disposition: form-data; name=\""

    .line 43
    .line 44
    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    sget-object v7, Lorg/jsoup/helper/HttpConnection;->CONTENT_ENCODING:Ljava/lang/String;

    .line 52
    .line 53
    const-string v7, "\""

    .line 54
    .line 55
    const-string v8, "%22"

    .line 56
    .line 57
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {p1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->inputStream()Ljava/io/InputStream;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const-string v9, "\r\n\r\n"

    .line 72
    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    const-string v10, "; filename=\""

    .line 76
    .line 77
    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    invoke-virtual {v10, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v7, "\"\r\nContent-Type: "

    .line 92
    .line 93
    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->contentType()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_0
    const-string v0, "application/octet-stream"

    .line 104
    .line 105
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lorg/jsoup/helper/DataUtil;->a:Ljava/util/regex/Pattern;

    .line 115
    .line 116
    new-array v0, v3, [B

    .line 117
    .line 118
    :goto_2
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eq v7, v2, :cond_1

    .line 123
    .line 124
    invoke-virtual {p2, v0, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_2
    invoke-virtual {p1, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {v0}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_3
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :cond_4
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Request;->k:Ljava/lang/Object;

    .line 158
    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    instance-of p0, v1, Ljava/lang/String;

    .line 162
    .line 163
    if-eqz p0, :cond_5

    .line 164
    .line 165
    check-cast v1, Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_5
    instance-of p0, v1, Ljava/io/InputStream;

    .line 172
    .line 173
    if-eqz p0, :cond_7

    .line 174
    .line 175
    check-cast v1, Ljava/io/InputStream;

    .line 176
    .line 177
    sget-object p0, Lorg/jsoup/helper/DataUtil;->a:Ljava/util/regex/Pattern;

    .line 178
    .line 179
    new-array p0, v3, [B

    .line 180
    .line 181
    :goto_4
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eq p1, v2, :cond_6

    .line 186
    .line 187
    invoke-virtual {p2, p0, v4, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_6
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 196
    .line 197
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 198
    .line 199
    .line 200
    throw p0

    .line 201
    :cond_8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    const/4 v0, 0x1

    .line 206
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_a

    .line 211
    .line 212
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Lorg/jsoup/Connection$KeyVal;

    .line 217
    .line 218
    if-nez v0, :cond_9

    .line 219
    .line 220
    const/16 v2, 0x26

    .line 221
    .line 222
    invoke-virtual {p1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_9
    move v0, v4

    .line 227
    :goto_6
    invoke-interface {v1}, Lorg/jsoup/Connection$KeyVal;->key()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->postDataCharset()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const/16 v2, 0x3d

    .line 243
    .line 244
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v1}, Lorg/jsoup/Connection$KeyVal;->value()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->postDataCharset()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_a
    return-void
.end method

.method public static g(Lorg/jsoup/helper/HttpConnection$Request;Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Request;->postDataCharset()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-static {p0, v1, p1}, Lorg/jsoup/helper/HttpConnection$Response;->c(Lorg/jsoup/helper/HttpConnection$Request;Ljava/io/BufferedWriter;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_2
    move-exception p1

    .line 33
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catchall_3
    move-exception p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    throw p0
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public body()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->readFully()Lorg/jsoup/Connection$Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->k:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Ljava/io/UncheckedIOException;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 40
    .line 41
    .line 42
    throw v1
.end method

.method public bodyAsBytes()[B
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->readFully()Lorg/jsoup/Connection$Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    array-length v3, v0

    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    new-array v3, v2, [B

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/io/UncheckedIOException;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method public bodyStream()Ljava/io/BufferedInputStream;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->n:Z

    .line 2
    .line 3
    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 15
    .line 16
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v1, v2, v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x2000

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->o:Z

    .line 39
    .line 40
    const-string v1, "Request has already been read"

    .line 41
    .line 42
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->i:Lorg/jsoup/internal/ControllableInputStream;

    .line 46
    .line 47
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->o:Z

    .line 52
    .line 53
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->i:Lorg/jsoup/internal/ControllableInputStream;

    .line 54
    .line 55
    invoke-virtual {v0}, Lorg/jsoup/internal/ControllableInputStream;->inputStream()Ljava/io/BufferedInputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0
.end method

.method public bufferUp()Lorg/jsoup/Connection$Response;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->readFully()Lorg/jsoup/Connection$Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-object p0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/io/UncheckedIOException;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    .line 9
    .line 10
    .line 11
    throw v1
.end method

.method public charset()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->k:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic charset(Ljava/lang/String;)Lorg/jsoup/Connection$Response;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/HttpConnection$Response;->charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;

    move-result-object p1

    return-object p1
.end method

.method public charset(Ljava/lang/String;)Lorg/jsoup/helper/HttpConnection$Response;
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->k:Ljava/lang/String;

    return-object p0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic cookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method

.method public cookies()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->d:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lorg/jsoup/internal/ControllableInputStream;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->n:Z

    .line 2
    .line 3
    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->i:Lorg/jsoup/internal/ControllableInputStream;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-direct {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v3}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;I)Lorg/jsoup/internal/ControllableInputStream;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-boolean v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->o:Z

    .line 37
    .line 38
    :cond_0
    iget-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->o:Z

    .line 39
    .line 40
    const-string v2, "Input stream already read and parsed, cannot re-read."

    .line 41
    .line 42
    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->o:Z

    .line 50
    .line 51
    return-object v0
.end method

.method public final e(Ljava/util/LinkedHashMap;Lorg/jsoup/helper/HttpConnection$Response;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_d

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/util/Map$Entry;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 52
    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_2
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v5, v4}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_3

    .line 68
    .line 69
    goto/16 :goto_7

    .line 70
    .line 71
    :cond_3
    sget-object v5, Lorg/jsoup/helper/HttpConnection;->c:Ljava/nio/charset/Charset;

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    array-length v6, v5

    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x3

    .line 80
    if-lt v6, v8, :cond_4

    .line 81
    .line 82
    aget-byte v6, v5, v7

    .line 83
    .line 84
    and-int/lit16 v6, v6, 0xff

    .line 85
    .line 86
    const/16 v9, 0xef

    .line 87
    .line 88
    if-ne v6, v9, :cond_4

    .line 89
    .line 90
    aget-byte v6, v5, v2

    .line 91
    .line 92
    and-int/lit16 v6, v6, 0xff

    .line 93
    .line 94
    const/16 v9, 0xbb

    .line 95
    .line 96
    if-ne v6, v9, :cond_4

    .line 97
    .line 98
    const/4 v6, 0x2

    .line 99
    aget-byte v6, v5, v6

    .line 100
    .line 101
    and-int/lit16 v6, v6, 0xff

    .line 102
    .line 103
    const/16 v9, 0xbf

    .line 104
    .line 105
    if-ne v6, v9, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    move v8, v7

    .line 109
    :goto_2
    array-length v6, v5

    .line 110
    move v9, v7

    .line 111
    :goto_3
    if-ge v8, v6, :cond_a

    .line 112
    .line 113
    aget-byte v10, v5, v8

    .line 114
    .line 115
    and-int/lit16 v11, v10, 0x80

    .line 116
    .line 117
    if-nez v11, :cond_5

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_5
    and-int/lit16 v9, v10, 0xe0

    .line 121
    .line 122
    const/16 v11, 0xc0

    .line 123
    .line 124
    if-ne v9, v11, :cond_6

    .line 125
    .line 126
    add-int/lit8 v9, v8, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_6
    and-int/lit16 v9, v10, 0xf0

    .line 130
    .line 131
    const/16 v12, 0xe0

    .line 132
    .line 133
    if-ne v9, v12, :cond_7

    .line 134
    .line 135
    add-int/lit8 v9, v8, 0x2

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_7
    and-int/lit16 v9, v10, 0xf8

    .line 139
    .line 140
    const/16 v10, 0xf0

    .line 141
    .line 142
    if-ne v9, v10, :cond_b

    .line 143
    .line 144
    add-int/lit8 v9, v8, 0x3

    .line 145
    .line 146
    :goto_4
    array-length v10, v5

    .line 147
    if-lt v9, v10, :cond_8

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_8
    if-ge v8, v9, :cond_9

    .line 151
    .line 152
    add-int/lit8 v8, v8, 0x1

    .line 153
    .line 154
    aget-byte v10, v5, v8

    .line 155
    .line 156
    and-int/2addr v10, v11

    .line 157
    const/16 v12, 0x80

    .line 158
    .line 159
    if-eq v10, v12, :cond_8

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_9
    move v9, v2

    .line 163
    :goto_5
    add-int/2addr v8, v2

    .line 164
    goto :goto_3

    .line 165
    :cond_a
    move v7, v9

    .line 166
    :cond_b
    :goto_6
    if-eqz v7, :cond_c

    .line 167
    .line 168
    new-instance v4, Ljava/lang/String;

    .line 169
    .line 170
    sget-object v6, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 171
    .line 172
    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 173
    .line 174
    .line 175
    :cond_c
    :goto_7
    invoke-virtual {p0, v3, v4}, Lorg/jsoup/helper/HttpConnection$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 176
    .line 177
    .line 178
    goto/16 :goto_1

    .line 179
    .line 180
    :cond_d
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->a:Ljava/net/URL;

    .line 181
    .line 182
    sget-object v1, Lorg/jsoup/helper/CookieUtil;->a:Ljava/util/Map;

    .line 183
    .line 184
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->q:Lorg/jsoup/helper/HttpConnection$Request;

    .line 185
    .line 186
    iget-object v1, v1, Lorg/jsoup/helper/HttpConnection$Request;->t:Ljava/net/CookieManager;

    .line 187
    .line 188
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 189
    .line 190
    .line 191
    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    invoke-virtual {v1, v0, p1}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_11

    .line 208
    .line 209
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Ljava/lang/String;

    .line 220
    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Ljava/util/List;

    .line 226
    .line 227
    const-string v3, "Set-Cookie"

    .line 228
    .line 229
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_e

    .line 234
    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_e

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Ljava/lang/String;

    .line 250
    .line 251
    if-nez v1, :cond_f

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_f
    new-instance v3, Lorg/jsoup/parser/CharacterReader;

    .line 255
    .line 256
    invoke-direct {v3, v1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const/16 v1, 0x3d

    .line 260
    .line 261
    invoke-virtual {v3, v1}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v3}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 270
    .line 271
    .line 272
    const/16 v4, 0x3b

    .line 273
    .line 274
    invoke-virtual {v3, v4}, Lorg/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    if-nez v5, :cond_10

    .line 287
    .line 288
    invoke-virtual {p0, v1, v4}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 289
    .line 290
    .line 291
    :cond_10
    invoke-virtual {v3}, Lorg/jsoup/parser/CharacterReader;->close()V

    .line 292
    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_11
    if-eqz p2, :cond_15

    .line 296
    .line 297
    invoke-virtual {p2}, Lorg/jsoup/helper/HttpConnection$Response;->cookies()Ljava/util/Map;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    :cond_12
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_13

    .line 314
    .line 315
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    check-cast v0, Ljava/util/Map$Entry;

    .line 320
    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    check-cast v1, Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {p0, v1}, Lorg/jsoup/helper/HttpConnection$Response;->hasCookie(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_12

    .line 332
    .line 333
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    check-cast v1, Ljava/lang/String;

    .line 338
    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    check-cast v0, Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {p0, v1, v0}, Lorg/jsoup/helper/HttpConnection$Response;->cookie(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 346
    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_13
    invoke-virtual {p2}, Lorg/jsoup/helper/HttpConnection$Response;->f()V

    .line 350
    .line 351
    .line 352
    iget p1, p2, Lorg/jsoup/helper/HttpConnection$Response;->p:I

    .line 353
    .line 354
    add-int/2addr p1, v2

    .line 355
    iput p1, p0, Lorg/jsoup/helper/HttpConnection$Response;->p:I

    .line 356
    .line 357
    const/16 v0, 0x14

    .line 358
    .line 359
    if-ge p1, v0, :cond_14

    .line 360
    .line 361
    goto :goto_a

    .line 362
    :cond_14
    new-instance p1, Ljava/io/IOException;

    .line 363
    .line 364
    invoke-virtual {p2}, Lorg/jsoup/helper/HttpConnection$Response;->url()Ljava/net/URL;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    const-string v1, "Too many redirects occurred trying to load URL "

    .line 371
    .line 372
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p2

    .line 382
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw p1

    .line 386
    :cond_15
    :goto_a
    return-void

    .line 387
    :catch_0
    move-exception p1

    .line 388
    new-instance p2, Ljava/net/MalformedURLException;

    .line 389
    .line 390
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-direct {p2, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 398
    .line 399
    .line 400
    throw p2
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->i:Lorg/jsoup/internal/ControllableInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lorg/jsoup/internal/ControllableInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->i:Lorg/jsoup/internal/ControllableInputStream;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->i:Lorg/jsoup/internal/ControllableInputStream;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->j:Lorg/jsoup/helper/UrlConnectionExecutor;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/jsoup/helper/UrlConnectionExecutor;->d()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public bridge synthetic hasCookie(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasCookie(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic hasHeader(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeader(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->hasHeaderWithValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/HttpConnection$Base;->header(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method

.method public bridge synthetic headers(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headers()Ljava/util/Map;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->headers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->method(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method

.method public method()Lorg/jsoup/Connection$Method;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->b:Lorg/jsoup/Connection$Method;

    return-object v0
.end method

.method public multiHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Base;->c:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public parse()Lorg/jsoup/nodes/Document;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->d()Lorg/jsoup/internal/ControllableInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->k:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Base;->a:Ljava/net/URL;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->q:Lorg/jsoup/helper/HttpConnection$Request;

    .line 14
    .line 15
    invoke-virtual {v3}, Lorg/jsoup/helper/HttpConnection$Request;->parser()Lorg/jsoup/parser/Parser;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v0, v1, v2, v4}, Lorg/jsoup/helper/DataUtil;->f(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lorg/jsoup/helper/HttpConnection;

    .line 24
    .line 25
    invoke-direct {v1, v3, p0}, Lorg/jsoup/helper/HttpConnection;-><init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->connection(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->k:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->f()V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public readBody()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->readFully()Lorg/jsoup/Connection$Response;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->body()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public readFully()Lorg/jsoup/Connection$Response;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->n:Z

    .line 2
    .line 3
    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before getting response body"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->i:Lorg/jsoup/internal/ControllableInputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->o:Z

    .line 17
    .line 18
    const-string v1, "Request has already been read (with .parse())"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :try_start_0
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->i:Lorg/jsoup/internal/ControllableInputStream;

    .line 25
    .line 26
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->q:Lorg/jsoup/helper/HttpConnection$Request;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/jsoup/helper/HttpConnection$Request;->maxBodySize()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {v1, v2}, Lorg/jsoup/helper/DataUtil;->readToByteBuffer(Ljava/io/InputStream;I)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lorg/jsoup/helper/HttpConnection$Response;->h:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->o:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->f()V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    iput-boolean v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->o:Z

    .line 46
    .line 47
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->f()V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_0
    return-object p0
.end method

.method public bridge synthetic removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeCookie(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public bridge synthetic removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->removeHeader(Ljava/lang/String;)Lorg/jsoup/Connection$Base;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public statusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public statusMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public streamParser()Lorg/jsoup/parser/StreamParser;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/helper/HttpConnection$Response;->d()Lorg/jsoup/internal/ControllableInputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jsoup/helper/HttpConnection$Base;->a:Ljava/net/URL;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lorg/jsoup/helper/HttpConnection$Response;->k:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, p0, Lorg/jsoup/helper/HttpConnection$Response;->q:Lorg/jsoup/helper/HttpConnection$Request;

    .line 14
    .line 15
    invoke-virtual {v3}, Lorg/jsoup/helper/HttpConnection$Request;->parser()Lorg/jsoup/parser/Parser;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v0, v2, v1, v4}, Lorg/jsoup/helper/DataUtil;->a(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/DataUtil$CharsetDoc;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v4, Lorg/jsoup/parser/StreamParser;

    .line 24
    .line 25
    invoke-virtual {v3}, Lorg/jsoup/helper/HttpConnection$Request;->parser()Lorg/jsoup/parser/Parser;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-direct {v4, v5}, Lorg/jsoup/parser/StreamParser;-><init>(Lorg/jsoup/parser/Parser;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Ljava/io/BufferedReader;

    .line 33
    .line 34
    new-instance v6, Ljava/io/InputStreamReader;

    .line 35
    .line 36
    iget-object v2, v2, Lorg/jsoup/helper/DataUtil$CharsetDoc;->a:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    invoke-direct {v6, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v5, v1}, Lorg/jsoup/parser/StreamParser;->parse(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/parser/StreamParser;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lorg/jsoup/parser/StreamParser;->document()Lorg/jsoup/nodes/Document;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Lorg/jsoup/helper/HttpConnection;

    .line 52
    .line 53
    invoke-direct {v1, v3, p0}, Lorg/jsoup/helper/HttpConnection;-><init>(Lorg/jsoup/helper/HttpConnection$Request;Lorg/jsoup/helper/HttpConnection$Response;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->connection(Lorg/jsoup/Connection;)Lorg/jsoup/nodes/Document;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lorg/jsoup/helper/HttpConnection$Response;->k:Ljava/lang/String;

    .line 64
    .line 65
    return-object v4
.end method

.method public bridge synthetic url()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/helper/HttpConnection$Base;->url()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/jsoup/helper/HttpConnection$Base;->url(Ljava/net/URL;)Lorg/jsoup/Connection$Base;

    return-object p0
.end method
