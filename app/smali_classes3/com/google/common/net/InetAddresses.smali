.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation build Lcom/google/common/annotations/J2ktIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$Scope;,
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/base/CharMatcher;

.field public static final b:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->j(C)Lcom/google/common/base/CharMatcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/common/net/InetAddresses;->a:Lcom/google/common/base/CharMatcher;

    .line 8
    .line 9
    const/16 v0, 0x3a

    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->j(C)Lcom/google/common/base/CharMatcher;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/common/net/InetAddresses;->b:Lcom/google/common/base/CharMatcher;

    .line 16
    .line 17
    const-string v0, "127.0.0.1"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/net/Inet4Address;

    .line 24
    .line 25
    const-string v0, "0.0.0.0"

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/net/Inet4Address;

    .line 32
    .line 33
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/common/net/InetAddresses$Scope;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    const/16 v6, 0x10

    .line 15
    .line 16
    const/16 v7, 0x3a

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, -0x1

    .line 21
    if-ge v2, v5, :cond_5

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/16 v11, 0x2e

    .line 28
    .line 29
    if-ne v5, v11, :cond_0

    .line 30
    .line 31
    move v3, v8

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    if-ne v5, v7, :cond_2

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    goto/16 :goto_8

    .line 38
    .line 39
    :cond_1
    move v4, v8

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/16 v11, 0x25

    .line 42
    .line 43
    if-ne v5, v11, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v5, v10, :cond_4

    .line 51
    .line 52
    goto/16 :goto_8

    .line 53
    .line 54
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    move v2, v10

    .line 58
    :goto_2
    if-eqz v4, :cond_1b

    .line 59
    .line 60
    const/4 v4, 0x2

    .line 61
    const/16 v5, 0x8

    .line 62
    .line 63
    if-eqz v3, :cond_7

    .line 64
    .line 65
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v3, v8

    .line 70
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->c(Ljava/lang/String;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-nez v3, :cond_6

    .line 83
    .line 84
    move-object v3, v9

    .line 85
    goto :goto_3

    .line 86
    :cond_6
    aget-byte v12, v3, v1

    .line 87
    .line 88
    and-int/lit16 v12, v12, 0xff

    .line 89
    .line 90
    shl-int/2addr v12, v5

    .line 91
    aget-byte v13, v3, v8

    .line 92
    .line 93
    and-int/lit16 v13, v13, 0xff

    .line 94
    .line 95
    or-int/2addr v12, v13

    .line 96
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    aget-byte v13, v3, v4

    .line 101
    .line 102
    and-int/lit16 v13, v13, 0xff

    .line 103
    .line 104
    shl-int/2addr v13, v5

    .line 105
    const/4 v14, 0x3

    .line 106
    aget-byte v3, v3, v14

    .line 107
    .line 108
    and-int/lit16 v3, v3, 0xff

    .line 109
    .line 110
    or-int/2addr v3, v13

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    new-instance v13, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v11, ":"

    .line 127
    .line 128
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    :goto_3
    if-nez v3, :cond_8

    .line 139
    .line 140
    goto/16 :goto_8

    .line 141
    .line 142
    :cond_7
    move-object v3, p0

    .line 143
    :cond_8
    if-eq v2, v10, :cond_9

    .line 144
    .line 145
    add-int/lit8 v11, v2, 0x1

    .line 146
    .line 147
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    iput-object v11, v0, Lcom/google/common/net/InetAddresses$Scope;->a:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    :cond_9
    sget-object v2, Lcom/google/common/net/InetAddresses;->b:Lcom/google/common/base/CharMatcher;

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->f(Ljava/lang/CharSequence;)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-lt v2, v4, :cond_1d

    .line 164
    .line 165
    if-le v2, v5, :cond_a

    .line 166
    .line 167
    goto/16 :goto_8

    .line 168
    .line 169
    :cond_a
    add-int/2addr v2, v8

    .line 170
    rsub-int/lit8 v11, v2, 0x8

    .line 171
    .line 172
    move v12, v1

    .line 173
    move v13, v12

    .line 174
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    sub-int/2addr v14, v8

    .line 179
    if-ge v12, v14, :cond_f

    .line 180
    .line 181
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-ne v14, v7, :cond_e

    .line 186
    .line 187
    add-int/lit8 v14, v12, 0x1

    .line 188
    .line 189
    invoke-virtual {v3, v14}, Ljava/lang/String;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    if-ne v14, v7, :cond_e

    .line 194
    .line 195
    if-eqz v13, :cond_b

    .line 196
    .line 197
    goto/16 :goto_8

    .line 198
    .line 199
    :cond_b
    add-int/lit8 v13, v11, 0x1

    .line 200
    .line 201
    if-nez v12, :cond_c

    .line 202
    .line 203
    add-int/lit8 v13, v11, 0x2

    .line 204
    .line 205
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    sub-int/2addr v11, v4

    .line 210
    if-ne v12, v11, :cond_d

    .line 211
    .line 212
    add-int/lit8 v13, v13, 0x1

    .line 213
    .line 214
    :cond_d
    move v11, v13

    .line 215
    move v13, v8

    .line 216
    :cond_e
    add-int/lit8 v12, v12, 0x1

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_f
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    if-ne v12, v7, :cond_10

    .line 224
    .line 225
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    if-eq v12, v7, :cond_10

    .line 230
    .line 231
    goto/16 :goto_8

    .line 232
    .line 233
    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    sub-int/2addr v12, v8

    .line 238
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    if-ne v12, v7, :cond_11

    .line 243
    .line 244
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    sub-int/2addr v12, v4

    .line 249
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    if-eq v4, v7, :cond_11

    .line 254
    .line 255
    goto/16 :goto_8

    .line 256
    .line 257
    :cond_11
    if-eqz v13, :cond_12

    .line 258
    .line 259
    if-gtz v11, :cond_12

    .line 260
    .line 261
    goto/16 :goto_8

    .line 262
    .line 263
    :cond_12
    if-nez v13, :cond_13

    .line 264
    .line 265
    if-eq v2, v5, :cond_13

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_13
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-ne v4, v7, :cond_14

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_14
    move v8, v1

    .line 280
    :goto_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-ge v8, v4, :cond_1a

    .line 285
    .line 286
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->indexOf(II)I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-ne v4, v10, :cond_15

    .line 291
    .line 292
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    :cond_15
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-ne v5, v7, :cond_16

    .line 301
    .line 302
    move v5, v1

    .line 303
    :goto_6
    if-ge v5, v11, :cond_18

    .line 304
    .line 305
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 306
    .line 307
    .line 308
    add-int/lit8 v5, v5, 0x1

    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_16
    sub-int v5, v4, v8

    .line 312
    .line 313
    if-lez v5, :cond_19

    .line 314
    .line 315
    const/4 v12, 0x4

    .line 316
    if-gt v5, v12, :cond_19

    .line 317
    .line 318
    move v5, v1

    .line 319
    :goto_7
    if-ge v8, v4, :cond_17

    .line 320
    .line 321
    shl-int/lit8 v5, v5, 0x4

    .line 322
    .line 323
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    .line 324
    .line 325
    .line 326
    move-result v12

    .line 327
    invoke-static {v12, v6}, Ljava/lang/Character;->digit(CI)I

    .line 328
    .line 329
    .line 330
    move-result v12

    .line 331
    or-int/2addr v5, v12

    .line 332
    add-int/lit8 v8, v8, 0x1

    .line 333
    .line 334
    goto :goto_7

    .line 335
    :cond_17
    int-to-short v5, v5

    .line 336
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 337
    .line 338
    .line 339
    :cond_18
    add-int/lit8 v8, v4, 0x1

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_19
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 343
    .line 344
    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    .line 345
    .line 346
    .line 347
    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_1a
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    goto :goto_8

    .line 353
    :cond_1b
    if-eqz v3, :cond_1d

    .line 354
    .line 355
    if-eq v2, v10, :cond_1c

    .line 356
    .line 357
    goto :goto_8

    .line 358
    :cond_1c
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->c(Ljava/lang/String;)[B

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    :catch_0
    :cond_1d
    :goto_8
    const-string v2, "\'"

    .line 363
    .line 364
    if-eqz v9, :cond_24

    .line 365
    .line 366
    iget-object p0, v0, Lcom/google/common/net/InetAddresses$Scope;->a:Ljava/lang/String;

    .line 367
    .line 368
    :try_start_1
    invoke-static {v9}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-nez p0, :cond_1e

    .line 373
    .line 374
    goto :goto_c

    .line 375
    :cond_1e
    instance-of v3, v0, Ljava/net/Inet6Address;

    .line 376
    .line 377
    const-string v4, "Unexpected state, scope should only appear for ipv6"

    .line 378
    .line 379
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->e(ZLjava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    check-cast v0, Ljava/net/Inet6Address;

    .line 383
    .line 384
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    move v4, v1

    .line 389
    :goto_9
    if-ge v1, v3, :cond_21

    .line 390
    .line 391
    const v5, 0xccccccc

    .line 392
    .line 393
    .line 394
    if-le v4, v5, :cond_1f

    .line 395
    .line 396
    :goto_a
    move v4, v10

    .line 397
    goto :goto_b

    .line 398
    :cond_1f
    mul-int/lit8 v4, v4, 0xa

    .line 399
    .line 400
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    const/16 v6, 0xa

    .line 405
    .line 406
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    if-gez v5, :cond_20

    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_20
    add-int/2addr v4, v5

    .line 414
    add-int/lit8 v1, v1, 0x1

    .line 415
    .line 416
    goto :goto_9

    .line 417
    :cond_21
    :goto_b
    if-eq v4, v10, :cond_22

    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {p0, v0, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    .line 428
    .line 429
    .line 430
    move-result-object v0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3

    .line 431
    goto :goto_c

    .line 432
    :cond_22
    :try_start_2
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    if-eqz v1, :cond_23

    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v2, v0, v1}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    :goto_c
    return-object v0

    .line 451
    :catch_1
    move-exception v0

    .line 452
    goto :goto_d

    .line 453
    :catch_2
    move-exception v0

    .line 454
    goto :goto_d

    .line 455
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 456
    .line 457
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 458
    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    const-string v3, "No such interface: \'"

    .line 465
    .line 466
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    .line 483
    :goto_d
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 484
    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    .line 490
    const-string v3, "No such interface: "

    .line 491
    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object p0

    .line 502
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    .line 504
    .line 505
    throw v1
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3

    .line 506
    :catch_3
    move-exception p0

    .line 507
    new-instance v0, Ljava/lang/AssertionError;

    .line 508
    .line 509
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 514
    .line 515
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 516
    .line 517
    const-string v1, "\' is not an IP string literal."

    .line 518
    .line 519
    invoke-static {v2, p0, v1}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object p0

    .line 523
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw v0
.end method

.method public static b(IILjava/lang/String;)B
    .locals 3

    .line 1
    sub-int v0, p1, p0

    .line 2
    .line 3
    if-lez v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-gt v0, v1, :cond_5

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-le v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x30

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    :goto_1
    if-ge p0, p1, :cond_3

    .line 28
    .line 29
    mul-int/lit8 v0, v0, 0xa

    .line 30
    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/16 v2, 0xa

    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ltz v1, :cond_2

    .line 42
    .line 43
    add-int/2addr v0, v1

    .line 44
    add-int/lit8 p0, p0, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_3
    const/16 p0, 0xff

    .line 54
    .line 55
    if-gt v0, p0, :cond_4

    .line 56
    .line 57
    int-to-byte p0, v0

    .line 58
    return p0

    .line 59
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 60
    .line 61
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 66
    .line 67
    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 6

    .line 1
    sget-object v0, Lcom/google/common/net/InetAddresses;->a:Lcom/google/common/base/CharMatcher;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->f(Ljava/lang/CharSequence;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-array v0, v1, [B

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v2, v1, :cond_2

    .line 18
    .line 19
    const/16 v4, 0x2e

    .line 20
    .line 21
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, -0x1

    .line 26
    if-ne v4, v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    :cond_1
    :try_start_0
    invoke-static {v3, v4, p0}, Lcom/google/common/net/InetAddresses;->b(IILjava/lang/String;)B

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    add-int/lit8 v3, v4, 0x1

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    :goto_1
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :cond_2
    return-object v0
.end method
