.class public final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Reader$Companion;,
        Lokhttp3/internal/http2/Http2Reader$ContinuationSource;,
        Lokhttp3/internal/http2/Http2Reader$Handler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Reader;",
        "Ljava/io/Closeable;",
        "ContinuationSource",
        "Handler",
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


# static fields
.field public static final h:Ljava/util/logging/Logger;


# instance fields
.field public final c:Lokio/BufferedSource;

.field public final f:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field public final g:Lokhttp3/internal/http2/Hpack$Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lokhttp3/internal/http2/Http2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getLogger(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->h:Ljava/util/logging/Logger;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 1

    .line 1
    const-string v0, "source"

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
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/BufferedSource;

    .line 10
    .line 11
    new-instance v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->f:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 17
    .line 18
    new-instance p1, Lokhttp3/internal/http2/Hpack$Reader;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(Lokhttp3/internal/http2/Http2Reader$ContinuationSource;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->g:Lokhttp3/internal/http2/Hpack$Reader;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(ZLokhttp3/internal/http2/Http2Connection$ReaderRunnable;)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->h:Ljava/util/logging/Logger;

    .line 6
    .line 7
    iget-object v3, v1, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/BufferedSource;

    .line 8
    .line 9
    const-string v4, "handler"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v4, 0x9

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_0
    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->D0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lokhttp3/internal/_UtilCommonKt;->k(Lokio/BufferedSource;)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/16 v5, 0x4000

    .line 25
    .line 26
    if-gt v4, v5, :cond_32

    .line 27
    .line 28
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    and-int/lit16 v7, v7, 0xff

    .line 33
    .line 34
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    and-int/lit16 v9, v8, 0xff

    .line 39
    .line 40
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    const v11, 0x7fffffff

    .line 45
    .line 46
    .line 47
    and-int v12, v10, v11

    .line 48
    .line 49
    const/16 v13, 0x8

    .line 50
    .line 51
    const/4 v14, 0x1

    .line 52
    if-eq v7, v13, :cond_0

    .line 53
    .line 54
    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 55
    .line 56
    invoke-virtual {v2, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    if-eqz v15, :cond_0

    .line 61
    .line 62
    invoke-static {v14, v12, v4, v7, v9}, Lokhttp3/internal/http2/Http2;->b(ZIIII)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v15

    .line 66
    invoke-virtual {v2, v15}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    const/4 v15, 0x4

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    if-ne v7, v15, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 76
    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "Expected a SETTINGS frame but was "

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v7}, Lokhttp3/internal/http2/Http2;->a(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_2
    :goto_0
    const/16 v16, 0x0

    .line 100
    .line 101
    move/from16 v17, v11

    .line 102
    .line 103
    const/4 v11, 0x6

    .line 104
    const/4 v5, 0x5

    .line 105
    packed-switch v7, :pswitch_data_0

    .line 106
    .line 107
    .line 108
    int-to-long v4, v4

    .line 109
    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 110
    .line 111
    .line 112
    return v14

    .line 113
    :pswitch_0
    const-string v5, "TYPE_WINDOW_UPDATE length !=4: "

    .line 114
    .line 115
    if-ne v4, v15, :cond_7

    .line 116
    .line 117
    :try_start_1
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    const-wide/32 v5, 0x7fffffff

    .line 122
    .line 123
    .line 124
    int-to-long v7, v3

    .line 125
    and-long/2addr v5, v7

    .line 126
    const-wide/16 v7, 0x0

    .line 127
    .line 128
    cmp-long v3, v5, v7

    .line 129
    .line 130
    if-eqz v3, :cond_6

    .line 131
    .line 132
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 133
    .line 134
    invoke-virtual {v2, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_3

    .line 139
    .line 140
    invoke-static {v12, v4, v5, v6, v14}, Lokhttp3/internal/http2/Http2;->c(IIJZ)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    if-nez v12, :cond_4

    .line 148
    .line 149
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 150
    .line 151
    monitor-enter v2

    .line 152
    :try_start_2
    iget-wide v3, v2, Lokhttp3/internal/http2/Http2Connection;->y:J

    .line 153
    .line 154
    add-long/2addr v3, v5

    .line 155
    iput-wide v3, v2, Lokhttp3/internal/http2/Http2Connection;->y:J

    .line 156
    .line 157
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 158
    .line 159
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .line 167
    monitor-exit v2

    .line 168
    return v14

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    monitor-exit v2

    .line 171
    throw v0

    .line 172
    :cond_4
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 173
    .line 174
    invoke-virtual {v0, v12}, Lokhttp3/internal/http2/Http2Connection;->b(I)Lokhttp3/internal/http2/Http2Stream;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    if-eqz v2, :cond_24

    .line 179
    .line 180
    monitor-enter v2

    .line 181
    :try_start_3
    iget-wide v7, v2, Lokhttp3/internal/http2/Http2Stream;->i:J

    .line 182
    .line 183
    add-long/2addr v7, v5

    .line 184
    iput-wide v7, v2, Lokhttp3/internal/http2/Http2Stream;->i:J

    .line 185
    .line 186
    if-lez v3, :cond_5

    .line 187
    .line 188
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 189
    .line 190
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 194
    .line 195
    .line 196
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    .line 198
    monitor-exit v2

    .line 199
    return v14

    .line 200
    :catchall_1
    move-exception v0

    .line 201
    monitor-exit v2

    .line 202
    throw v0

    .line 203
    :cond_6
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    .line 204
    .line 205
    const-string v3, "windowSizeIncrement was 0"

    .line 206
    .line 207
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    goto :goto_1

    .line 213
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 214
    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 231
    :goto_1
    invoke-static {v14, v12, v4, v13, v9}, Lokhttp3/internal/http2/Http2;->b(ZIIII)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v0

    .line 239
    :pswitch_1
    if-lt v4, v13, :cond_d

    .line 240
    .line 241
    if-nez v12, :cond_c

    .line 242
    .line 243
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    sub-int/2addr v4, v13

    .line 252
    sget-object v7, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode$Companion;

    .line 253
    .line 254
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    array-length v8, v7

    .line 262
    :goto_2
    if-ge v6, v8, :cond_9

    .line 263
    .line 264
    aget-object v9, v7, v6

    .line 265
    .line 266
    iget v10, v9, Lokhttp3/internal/http2/ErrorCode;->c:I

    .line 267
    .line 268
    if-ne v10, v5, :cond_8

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_9
    move-object/from16 v9, v16

    .line 275
    .line 276
    :goto_3
    if-eqz v9, :cond_b

    .line 277
    .line 278
    sget-object v5, Lokio/ByteString;->h:Lokio/ByteString;

    .line 279
    .line 280
    if-lez v4, :cond_a

    .line 281
    .line 282
    int-to-long v4, v4

    .line 283
    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->r(J)Lokio/ByteString;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    :cond_a
    invoke-virtual {v0, v2, v9, v5}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->b(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V

    .line 288
    .line 289
    .line 290
    return v14

    .line 291
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 292
    .line 293
    const-string v2, "TYPE_GOAWAY unexpected error code: "

    .line 294
    .line 295
    invoke-static {v5, v2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    throw v0

    .line 303
    :cond_c
    new-instance v0, Ljava/io/IOException;

    .line 304
    .line 305
    const-string v2, "TYPE_GOAWAY streamId != 0"

    .line 306
    .line 307
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw v0

    .line 311
    :cond_d
    new-instance v0, Ljava/io/IOException;

    .line 312
    .line 313
    const-string v2, "TYPE_GOAWAY length < 8: "

    .line 314
    .line 315
    invoke-static {v4, v2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :pswitch_2
    if-ne v4, v13, :cond_10

    .line 324
    .line 325
    if-nez v12, :cond_f

    .line 326
    .line 327
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    and-int/lit8 v4, v8, 0x1

    .line 336
    .line 337
    if-eqz v4, :cond_e

    .line 338
    .line 339
    move v6, v14

    .line 340
    :cond_e
    invoke-virtual {v0, v2, v3, v6}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->d(IIZ)V

    .line 341
    .line 342
    .line 343
    return v14

    .line 344
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 345
    .line 346
    const-string v2, "TYPE_PING streamId != 0"

    .line 347
    .line 348
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0

    .line 352
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 353
    .line 354
    const-string v2, "TYPE_PING length != 8: "

    .line 355
    .line 356
    invoke-static {v4, v2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw v0

    .line 364
    :pswitch_3
    if-eqz v12, :cond_12

    .line 365
    .line 366
    and-int/lit8 v2, v8, 0x8

    .line 367
    .line 368
    if-eqz v2, :cond_11

    .line 369
    .line 370
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    and-int/lit16 v6, v2, 0xff

    .line 375
    .line 376
    :cond_11
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    and-int v2, v2, v17

    .line 381
    .line 382
    sub-int/2addr v4, v15

    .line 383
    invoke-static {v4, v9, v6}, Lokhttp3/internal/http2/Http2Reader$Companion;->a(III)I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    invoke-virtual {v1, v3, v6, v9, v12}, Lokhttp3/internal/http2/Http2Reader;->b(IIII)Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->e(ILjava/util/List;)V

    .line 392
    .line 393
    .line 394
    return v14

    .line 395
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 396
    .line 397
    const-string v2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 398
    .line 399
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw v0

    .line 403
    :pswitch_4
    if-nez v12, :cond_20

    .line 404
    .line 405
    and-int/lit8 v2, v8, 0x1

    .line 406
    .line 407
    if-eqz v2, :cond_14

    .line 408
    .line 409
    if-nez v4, :cond_13

    .line 410
    .line 411
    goto/16 :goto_8

    .line 412
    .line 413
    :cond_13
    new-instance v0, Ljava/io/IOException;

    .line 414
    .line 415
    const-string v2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 416
    .line 417
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    throw v0

    .line 421
    :cond_14
    rem-int/lit8 v2, v4, 0x6

    .line 422
    .line 423
    if-nez v2, :cond_1f

    .line 424
    .line 425
    new-instance v2, Lokhttp3/internal/http2/Settings;

    .line 426
    .line 427
    invoke-direct {v2}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-static {v6, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-static {v4, v11}, Lkotlin/ranges/RangesKt;->d(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getFirst()I

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getStep()I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    if-lez v4, :cond_15

    .line 451
    .line 452
    if-le v6, v7, :cond_16

    .line 453
    .line 454
    :cond_15
    if-gez v4, :cond_1e

    .line 455
    .line 456
    if-gt v7, v6, :cond_1e

    .line 457
    .line 458
    :cond_16
    :goto_4
    invoke-interface {v3}, Lokio/BufferedSource;->readShort()S

    .line 459
    .line 460
    .line 461
    move-result v8

    .line 462
    sget-object v9, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 463
    .line 464
    const v9, 0xffff

    .line 465
    .line 466
    .line 467
    and-int/2addr v8, v9

    .line 468
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 469
    .line 470
    .line 471
    move-result v9

    .line 472
    const/4 v10, 0x2

    .line 473
    if-eq v8, v10, :cond_1b

    .line 474
    .line 475
    if-eq v8, v15, :cond_19

    .line 476
    .line 477
    if-eq v8, v5, :cond_17

    .line 478
    .line 479
    const/16 v10, 0x4000

    .line 480
    .line 481
    goto :goto_5

    .line 482
    :cond_17
    const/16 v10, 0x4000

    .line 483
    .line 484
    if-lt v9, v10, :cond_18

    .line 485
    .line 486
    const v12, 0xffffff

    .line 487
    .line 488
    .line 489
    if-gt v9, v12, :cond_18

    .line 490
    .line 491
    goto :goto_5

    .line 492
    :cond_18
    new-instance v0, Ljava/io/IOException;

    .line 493
    .line 494
    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    .line 495
    .line 496
    invoke-static {v9, v2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    throw v0

    .line 504
    :cond_19
    const/16 v10, 0x4000

    .line 505
    .line 506
    if-ltz v9, :cond_1a

    .line 507
    .line 508
    goto :goto_5

    .line 509
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    .line 510
    .line 511
    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 512
    .line 513
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v0

    .line 517
    :cond_1b
    const/16 v10, 0x4000

    .line 518
    .line 519
    if-eqz v9, :cond_1d

    .line 520
    .line 521
    if-ne v9, v14, :cond_1c

    .line 522
    .line 523
    goto :goto_5

    .line 524
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    .line 525
    .line 526
    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 527
    .line 528
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    throw v0

    .line 532
    :cond_1d
    :goto_5
    invoke-virtual {v2, v8, v9}, Lokhttp3/internal/http2/Settings;->c(II)V

    .line 533
    .line 534
    .line 535
    if-eq v6, v7, :cond_1e

    .line 536
    .line 537
    add-int/2addr v6, v4

    .line 538
    goto :goto_4

    .line 539
    :cond_1e
    const-string v3, "settings"

    .line 540
    .line 541
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 545
    .line 546
    iget-object v4, v3, Lokhttp3/internal/http2/Http2Connection;->l:Lokhttp3/internal/concurrent/TaskQueue;

    .line 547
    .line 548
    new-instance v5, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    iget-object v3, v3, Lokhttp3/internal/http2/Http2Connection;->g:Ljava/lang/String;

    .line 554
    .line 555
    const-string v6, " applyAndAckSettings"

    .line 556
    .line 557
    invoke-static {v5, v3, v6}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    new-instance v5, Lokhttp3/internal/http2/g;

    .line 562
    .line 563
    invoke-direct {v5, v14, v0, v2}, Lokhttp3/internal/http2/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    invoke-static {v4, v3, v5, v11}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 567
    .line 568
    .line 569
    return v14

    .line 570
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    .line 571
    .line 572
    const-string v2, "TYPE_SETTINGS length % 6 != 0: "

    .line 573
    .line 574
    invoke-static {v4, v2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    throw v0

    .line 582
    :cond_20
    new-instance v0, Ljava/io/IOException;

    .line 583
    .line 584
    const-string v2, "TYPE_SETTINGS streamId != 0"

    .line 585
    .line 586
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    throw v0

    .line 590
    :pswitch_5
    if-ne v4, v15, :cond_27

    .line 591
    .line 592
    if-eqz v12, :cond_26

    .line 593
    .line 594
    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->f:Lokhttp3/internal/http2/ErrorCode$Companion;

    .line 599
    .line 600
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    .line 602
    .line 603
    invoke-static {}, Lokhttp3/internal/http2/ErrorCode;->values()[Lokhttp3/internal/http2/ErrorCode;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    array-length v4, v3

    .line 608
    move v5, v6

    .line 609
    :goto_6
    if-ge v5, v4, :cond_22

    .line 610
    .line 611
    aget-object v7, v3, v5

    .line 612
    .line 613
    iget v8, v7, Lokhttp3/internal/http2/ErrorCode;->c:I

    .line 614
    .line 615
    if-ne v8, v2, :cond_21

    .line 616
    .line 617
    goto :goto_7

    .line 618
    :cond_21
    add-int/lit8 v5, v5, 0x1

    .line 619
    .line 620
    goto :goto_6

    .line 621
    :cond_22
    move-object/from16 v7, v16

    .line 622
    .line 623
    :goto_7
    if-eqz v7, :cond_25

    .line 624
    .line 625
    const-string v2, "errorCode"

    .line 626
    .line 627
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 631
    .line 632
    sget-object v3, Lokhttp3/internal/http2/Http2Connection;->D:Lokhttp3/internal/http2/Settings;

    .line 633
    .line 634
    if-eqz v12, :cond_23

    .line 635
    .line 636
    and-int/lit8 v3, v10, 0x1

    .line 637
    .line 638
    if-nez v3, :cond_23

    .line 639
    .line 640
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->m:Lokhttp3/internal/concurrent/TaskQueue;

    .line 644
    .line 645
    new-instance v3, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .line 649
    .line 650
    iget-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->g:Ljava/lang/String;

    .line 651
    .line 652
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    const/16 v4, 0x5b

    .line 656
    .line 657
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    const-string v4, "] onReset"

    .line 664
    .line 665
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    new-instance v4, Lokhttp3/internal/http2/d;

    .line 673
    .line 674
    invoke-direct {v4, v0, v12, v7, v6}, Lokhttp3/internal/http2/d;-><init>(Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;I)V

    .line 675
    .line 676
    .line 677
    invoke-static {v2, v3, v4, v11}, Lokhttp3/internal/concurrent/TaskQueue;->c(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    .line 678
    .line 679
    .line 680
    return v14

    .line 681
    :cond_23
    invoke-virtual {v0, v12}, Lokhttp3/internal/http2/Http2Connection;->e(I)Lokhttp3/internal/http2/Http2Stream;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    if-eqz v0, :cond_24

    .line 686
    .line 687
    invoke-virtual {v0, v7}, Lokhttp3/internal/http2/Http2Stream;->l(Lokhttp3/internal/http2/ErrorCode;)V

    .line 688
    .line 689
    .line 690
    :cond_24
    :goto_8
    return v14

    .line 691
    :cond_25
    new-instance v0, Ljava/io/IOException;

    .line 692
    .line 693
    const-string v3, "TYPE_RST_STREAM unexpected error code: "

    .line 694
    .line 695
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    throw v0

    .line 703
    :cond_26
    new-instance v0, Ljava/io/IOException;

    .line 704
    .line 705
    const-string v2, "TYPE_RST_STREAM streamId == 0"

    .line 706
    .line 707
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    throw v0

    .line 711
    :cond_27
    new-instance v0, Ljava/io/IOException;

    .line 712
    .line 713
    const-string v2, "TYPE_RST_STREAM length: "

    .line 714
    .line 715
    const-string v3, " != 4"

    .line 716
    .line 717
    invoke-static {v4, v2, v3}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    throw v0

    .line 725
    :pswitch_6
    if-ne v4, v5, :cond_29

    .line 726
    .line 727
    if-eqz v12, :cond_28

    .line 728
    .line 729
    invoke-virtual {v1, v0, v12}, Lokhttp3/internal/http2/Http2Reader;->d(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;I)V

    .line 730
    .line 731
    .line 732
    return v14

    .line 733
    :cond_28
    new-instance v0, Ljava/io/IOException;

    .line 734
    .line 735
    const-string v2, "TYPE_PRIORITY streamId == 0"

    .line 736
    .line 737
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    throw v0

    .line 741
    :cond_29
    new-instance v0, Ljava/io/IOException;

    .line 742
    .line 743
    const-string v2, "TYPE_PRIORITY length: "

    .line 744
    .line 745
    const-string v3, " != 5"

    .line 746
    .line 747
    invoke-static {v4, v2, v3}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    throw v0

    .line 755
    :pswitch_7
    if-eqz v12, :cond_2d

    .line 756
    .line 757
    and-int/lit8 v2, v8, 0x1

    .line 758
    .line 759
    if-eqz v2, :cond_2a

    .line 760
    .line 761
    move v2, v14

    .line 762
    goto :goto_9

    .line 763
    :cond_2a
    move v2, v6

    .line 764
    :goto_9
    and-int/lit8 v5, v8, 0x8

    .line 765
    .line 766
    if-eqz v5, :cond_2b

    .line 767
    .line 768
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 769
    .line 770
    .line 771
    move-result v3

    .line 772
    and-int/lit16 v6, v3, 0xff

    .line 773
    .line 774
    :cond_2b
    and-int/lit8 v3, v8, 0x20

    .line 775
    .line 776
    if-eqz v3, :cond_2c

    .line 777
    .line 778
    invoke-virtual {v1, v0, v12}, Lokhttp3/internal/http2/Http2Reader;->d(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;I)V

    .line 779
    .line 780
    .line 781
    add-int/lit8 v4, v4, -0x5

    .line 782
    .line 783
    :cond_2c
    invoke-static {v4, v9, v6}, Lokhttp3/internal/http2/Http2Reader$Companion;->a(III)I

    .line 784
    .line 785
    .line 786
    move-result v3

    .line 787
    invoke-virtual {v1, v3, v6, v9, v12}, Lokhttp3/internal/http2/Http2Reader;->b(IIII)Ljava/util/List;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    invoke-virtual {v0, v12, v3, v2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c(ILjava/util/List;Z)V

    .line 792
    .line 793
    .line 794
    return v14

    .line 795
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    .line 796
    .line 797
    const-string v2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 798
    .line 799
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    throw v0

    .line 803
    :pswitch_8
    if-eqz v12, :cond_31

    .line 804
    .line 805
    and-int/lit8 v2, v8, 0x1

    .line 806
    .line 807
    if-eqz v2, :cond_2e

    .line 808
    .line 809
    move v2, v14

    .line 810
    goto :goto_a

    .line 811
    :cond_2e
    move v2, v6

    .line 812
    :goto_a
    and-int/lit8 v5, v8, 0x20

    .line 813
    .line 814
    if-nez v5, :cond_30

    .line 815
    .line 816
    and-int/lit8 v5, v8, 0x8

    .line 817
    .line 818
    if-eqz v5, :cond_2f

    .line 819
    .line 820
    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    .line 821
    .line 822
    .line 823
    move-result v5

    .line 824
    and-int/lit16 v6, v5, 0xff

    .line 825
    .line 826
    :cond_2f
    invoke-static {v4, v9, v6}, Lokhttp3/internal/http2/Http2Reader$Companion;->a(III)I

    .line 827
    .line 828
    .line 829
    move-result v4

    .line 830
    invoke-virtual {v0, v2, v12, v3, v4}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a(ZILokio/BufferedSource;I)V

    .line 831
    .line 832
    .line 833
    int-to-long v4, v6

    .line 834
    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 835
    .line 836
    .line 837
    return v14

    .line 838
    :cond_30
    new-instance v0, Ljava/io/IOException;

    .line 839
    .line 840
    const-string v2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 841
    .line 842
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    throw v0

    .line 846
    :cond_31
    new-instance v0, Ljava/io/IOException;

    .line 847
    .line 848
    const-string v2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 849
    .line 850
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    throw v0

    .line 854
    :cond_32
    new-instance v0, Ljava/io/IOException;

    .line 855
    .line 856
    const-string v2, "FRAME_SIZE_ERROR: "

    .line 857
    .line 858
    invoke-static {v4, v2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v2

    .line 862
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    throw v0

    .line 866
    :catch_1
    return v6

    .line 867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(IIII)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->f:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 2
    .line 3
    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->i:I

    .line 4
    .line 5
    iput p1, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->f:I

    .line 6
    .line 7
    iput p2, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->j:I

    .line 8
    .line 9
    iput p3, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->g:I

    .line 10
    .line 11
    iput p4, v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->h:I

    .line 12
    .line 13
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->g:Lokhttp3/internal/http2/Hpack$Reader;

    .line 14
    .line 15
    iget-object p2, p1, Lokhttp3/internal/http2/Hpack$Reader;->c:Lokio/RealBufferedSource;

    .line 16
    .line 17
    iget-object p3, p1, Lokhttp3/internal/http2/Hpack$Reader;->b:Ljava/util/ArrayList;

    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lokio/RealBufferedSource;->D()Z

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-nez p4, :cond_c

    .line 24
    .line 25
    invoke-virtual {p2}, Lokio/RealBufferedSource;->readByte()B

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    sget-object v0, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 30
    .line 31
    and-int/lit16 v0, p4, 0xff

    .line 32
    .line 33
    const/16 v1, 0x80

    .line 34
    .line 35
    if-eq v0, v1, :cond_b

    .line 36
    .line 37
    and-int/lit16 v2, p4, 0x80

    .line 38
    .line 39
    if-ne v2, v1, :cond_3

    .line 40
    .line 41
    const/16 p4, 0x7f

    .line 42
    .line 43
    invoke-virtual {p1, v0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->e(II)I

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    add-int/lit8 v0, p4, -0x1

    .line 48
    .line 49
    if-ltz v0, :cond_1

    .line 50
    .line 51
    sget-object v1, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 52
    .line 53
    array-length v2, v1

    .line 54
    add-int/lit8 v2, v2, -0x1

    .line 55
    .line 56
    if-gt v0, v2, :cond_1

    .line 57
    .line 58
    aget-object p4, v1, v0

    .line 59
    .line 60
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    sget-object v1, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 65
    .line 66
    array-length v1, v1

    .line 67
    sub-int/2addr v0, v1

    .line 68
    iget v1, p1, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    add-int/2addr v1, v0

    .line 73
    if-ltz v1, :cond_2

    .line 74
    .line 75
    iget-object v0, p1, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 76
    .line 77
    array-length v2, v0

    .line 78
    if-ge v1, v2, :cond_2

    .line 79
    .line 80
    aget-object p4, v0, v1

    .line 81
    .line 82
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 90
    .line 91
    const-string p2, "Header index too large "

    .line 92
    .line 93
    invoke-static {p4, p2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_3
    const/16 v1, 0x40

    .line 102
    .line 103
    if-ne v0, v1, :cond_4

    .line 104
    .line 105
    sget-object p4, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 106
    .line 107
    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 108
    .line 109
    .line 110
    move-result-object p4

    .line 111
    invoke-static {p4}, Lokhttp3/internal/http2/Hpack;->a(Lokio/ByteString;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 119
    .line 120
    invoke-direct {v1, p4, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v1}, Lokhttp3/internal/http2/Hpack$Reader;->c(Lokhttp3/internal/http2/Header;)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_4
    and-int/lit8 v2, p4, 0x40

    .line 128
    .line 129
    if-ne v2, v1, :cond_5

    .line 130
    .line 131
    const/16 p4, 0x3f

    .line 132
    .line 133
    invoke-virtual {p1, v0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->e(II)I

    .line 134
    .line 135
    .line 136
    move-result p4

    .line 137
    add-int/lit8 p4, p4, -0x1

    .line 138
    .line 139
    invoke-virtual {p1, p4}, Lokhttp3/internal/http2/Hpack$Reader;->b(I)Lokio/ByteString;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 148
    .line 149
    invoke-direct {v1, p4, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Lokhttp3/internal/http2/Hpack$Reader;->c(Lokhttp3/internal/http2/Header;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_5
    and-int/lit8 p4, p4, 0x20

    .line 158
    .line 159
    const/16 v1, 0x20

    .line 160
    .line 161
    if-ne p4, v1, :cond_8

    .line 162
    .line 163
    const/16 p4, 0x1f

    .line 164
    .line 165
    invoke-virtual {p1, v0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->e(II)I

    .line 166
    .line 167
    .line 168
    move-result p4

    .line 169
    iput p4, p1, Lokhttp3/internal/http2/Hpack$Reader;->a:I

    .line 170
    .line 171
    if-ltz p4, :cond_7

    .line 172
    .line 173
    const/16 v0, 0x1000

    .line 174
    .line 175
    if-gt p4, v0, :cond_7

    .line 176
    .line 177
    iget v0, p1, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 178
    .line 179
    if-ge p4, v0, :cond_0

    .line 180
    .line 181
    if-nez p4, :cond_6

    .line 182
    .line 183
    iget-object p4, p1, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 184
    .line 185
    const/4 v0, 0x0

    .line 186
    invoke-static {p4, v0}, Lkotlin/collections/ArraysKt;->t([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    .line 187
    .line 188
    .line 189
    iget-object p4, p1, Lokhttp3/internal/http2/Hpack$Reader;->d:[Lokhttp3/internal/http2/Header;

    .line 190
    .line 191
    array-length p4, p4

    .line 192
    add-int/lit8 p4, p4, -0x1

    .line 193
    .line 194
    iput p4, p1, Lokhttp3/internal/http2/Hpack$Reader;->e:I

    .line 195
    .line 196
    const/4 p4, 0x0

    .line 197
    iput p4, p1, Lokhttp3/internal/http2/Hpack$Reader;->f:I

    .line 198
    .line 199
    iput p4, p1, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_6
    sub-int/2addr v0, p4

    .line 204
    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Hpack$Reader;->a(I)I

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_7
    new-instance p2, Ljava/io/IOException;

    .line 210
    .line 211
    new-instance p3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string p4, "Invalid dynamic table size update "

    .line 214
    .line 215
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget p1, p1, Lokhttp3/internal/http2/Hpack$Reader;->a:I

    .line 219
    .line 220
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p2

    .line 231
    :cond_8
    const/16 p4, 0x10

    .line 232
    .line 233
    if-eq v0, p4, :cond_a

    .line 234
    .line 235
    if-nez v0, :cond_9

    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_9
    const/16 p4, 0xf

    .line 239
    .line 240
    invoke-virtual {p1, v0, p4}, Lokhttp3/internal/http2/Hpack$Reader;->e(II)I

    .line 241
    .line 242
    .line 243
    move-result p4

    .line 244
    add-int/lit8 p4, p4, -0x1

    .line 245
    .line 246
    invoke-virtual {p1, p4}, Lokhttp3/internal/http2/Hpack$Reader;->b(I)Lokio/ByteString;

    .line 247
    .line 248
    .line 249
    move-result-object p4

    .line 250
    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 255
    .line 256
    invoke-direct {v1, p4, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_a
    :goto_1
    sget-object p4, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    .line 265
    .line 266
    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 267
    .line 268
    .line 269
    move-result-object p4

    .line 270
    invoke-static {p4}, Lokhttp3/internal/http2/Hpack;->a(Lokio/ByteString;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Lokhttp3/internal/http2/Hpack$Reader;->d()Lokio/ByteString;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 278
    .line 279
    invoke-direct {v1, p4, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 288
    .line 289
    const-string p2, "index == 0"

    .line 290
    .line 291
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw p1

    .line 295
    :cond_c
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 300
    .line 301
    .line 302
    return-object p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->c:Lokio/BufferedSource;

    .line 2
    .line 3
    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lokio/BufferedSource;->readByte()B

    .line 7
    .line 8
    .line 9
    sget-object p1, Lokhttp3/internal/_UtilCommonKt;->a:[B

    .line 10
    .line 11
    return-void
.end method
