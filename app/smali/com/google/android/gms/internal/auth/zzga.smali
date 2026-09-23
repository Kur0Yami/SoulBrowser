.class final Lcom/google/android/gms/internal/auth/zzga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzgi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/auth/zzgi<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final k:[I

.field public static final l:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/auth/zzfx;

.field public final f:[I

.field public final g:I

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/auth/zzfl;

.field public final j:Lcom/google/android/gms/internal/auth/zzgz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Lcom/google/android/gms/internal/auth/zzga;->k:[I

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzhj;->e()Lsun/misc/Unsafe;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfx;[IIILcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzga;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/auth/zzga;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/gms/internal/auth/zzga;->d:I

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/auth/zzga;->f:[I

    .line 13
    .line 14
    iput p7, p0, Lcom/google/android/gms/internal/auth/zzga;->g:I

    .line 15
    .line 16
    iput p8, p0, Lcom/google/android/gms/internal/auth/zzga;->h:I

    .line 17
    .line 18
    iput-object p9, p0, Lcom/google/android/gms/internal/auth/zzga;->i:Lcom/google/android/gms/internal/auth/zzfl;

    .line 19
    .line 20
    iput-object p10, p0, Lcom/google/android/gms/internal/auth/zzga;->j:Lcom/google/android/gms/internal/auth/zzgz;

    .line 21
    .line 22
    iput-object p5, p0, Lcom/google/android/gms/internal/auth/zzga;->e:Lcom/google/android/gms/internal/auth/zzfx;

    .line 23
    .line 24
    return-void
.end method

.method public static k(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzev;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzev;->g()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static n(Lcom/google/android/gms/internal/auth/zzfu;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;)Lcom/google/android/gms/internal/auth/zzga;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/auth/zzgh;

    .line 4
    .line 5
    if-eqz v1, :cond_37

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/auth/zzgh;

    .line 8
    .line 9
    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const v4, 0xd800

    .line 17
    .line 18
    .line 19
    if-lt v3, v4, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    :goto_0
    add-int/lit8 v6, v3, 0x1

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-lt v3, v4, :cond_1

    .line 29
    .line 30
    move v3, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v6, 0x1

    .line 33
    :cond_1
    add-int/lit8 v3, v6, 0x1

    .line 34
    .line 35
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-lt v6, v4, :cond_3

    .line 40
    .line 41
    and-int/lit16 v6, v6, 0x1fff

    .line 42
    .line 43
    const/16 v8, 0xd

    .line 44
    .line 45
    :goto_1
    add-int/lit8 v9, v3, 0x1

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-lt v3, v4, :cond_2

    .line 52
    .line 53
    and-int/lit16 v3, v3, 0x1fff

    .line 54
    .line 55
    shl-int/2addr v3, v8

    .line 56
    or-int/2addr v6, v3

    .line 57
    add-int/lit8 v8, v8, 0xd

    .line 58
    .line 59
    move v3, v9

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    shl-int/2addr v3, v8

    .line 62
    or-int/2addr v6, v3

    .line 63
    move v3, v9

    .line 64
    :cond_3
    if-nez v6, :cond_4

    .line 65
    .line 66
    sget-object v6, Lcom/google/android/gms/internal/auth/zzga;->k:[I

    .line 67
    .line 68
    move v8, v2

    .line 69
    move v9, v8

    .line 70
    move v10, v9

    .line 71
    move v11, v10

    .line 72
    move v12, v11

    .line 73
    move v15, v12

    .line 74
    move-object v14, v6

    .line 75
    move v6, v15

    .line 76
    goto/16 :goto_a

    .line 77
    .line 78
    :cond_4
    add-int/lit8 v6, v3, 0x1

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-lt v3, v4, :cond_6

    .line 85
    .line 86
    and-int/lit16 v3, v3, 0x1fff

    .line 87
    .line 88
    const/16 v8, 0xd

    .line 89
    .line 90
    :goto_2
    add-int/lit8 v9, v6, 0x1

    .line 91
    .line 92
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-lt v6, v4, :cond_5

    .line 97
    .line 98
    and-int/lit16 v6, v6, 0x1fff

    .line 99
    .line 100
    shl-int/2addr v6, v8

    .line 101
    or-int/2addr v3, v6

    .line 102
    add-int/lit8 v8, v8, 0xd

    .line 103
    .line 104
    move v6, v9

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    shl-int/2addr v6, v8

    .line 107
    or-int/2addr v3, v6

    .line 108
    move v6, v9

    .line 109
    :cond_6
    add-int/lit8 v8, v6, 0x1

    .line 110
    .line 111
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-lt v6, v4, :cond_8

    .line 116
    .line 117
    and-int/lit16 v6, v6, 0x1fff

    .line 118
    .line 119
    const/16 v9, 0xd

    .line 120
    .line 121
    :goto_3
    add-int/lit8 v10, v8, 0x1

    .line 122
    .line 123
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-lt v8, v4, :cond_7

    .line 128
    .line 129
    and-int/lit16 v8, v8, 0x1fff

    .line 130
    .line 131
    shl-int/2addr v8, v9

    .line 132
    or-int/2addr v6, v8

    .line 133
    add-int/lit8 v9, v9, 0xd

    .line 134
    .line 135
    move v8, v10

    .line 136
    goto :goto_3

    .line 137
    :cond_7
    shl-int/2addr v8, v9

    .line 138
    or-int/2addr v6, v8

    .line 139
    move v8, v10

    .line 140
    :cond_8
    add-int/lit8 v9, v8, 0x1

    .line 141
    .line 142
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-lt v8, v4, :cond_a

    .line 147
    .line 148
    and-int/lit16 v8, v8, 0x1fff

    .line 149
    .line 150
    const/16 v10, 0xd

    .line 151
    .line 152
    :goto_4
    add-int/lit8 v11, v9, 0x1

    .line 153
    .line 154
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    if-lt v9, v4, :cond_9

    .line 159
    .line 160
    and-int/lit16 v9, v9, 0x1fff

    .line 161
    .line 162
    shl-int/2addr v9, v10

    .line 163
    or-int/2addr v8, v9

    .line 164
    add-int/lit8 v10, v10, 0xd

    .line 165
    .line 166
    move v9, v11

    .line 167
    goto :goto_4

    .line 168
    :cond_9
    shl-int/2addr v9, v10

    .line 169
    or-int/2addr v8, v9

    .line 170
    move v9, v11

    .line 171
    :cond_a
    add-int/lit8 v10, v9, 0x1

    .line 172
    .line 173
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 174
    .line 175
    .line 176
    move-result v9

    .line 177
    if-lt v9, v4, :cond_c

    .line 178
    .line 179
    and-int/lit16 v9, v9, 0x1fff

    .line 180
    .line 181
    const/16 v11, 0xd

    .line 182
    .line 183
    :goto_5
    add-int/lit8 v12, v10, 0x1

    .line 184
    .line 185
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-lt v10, v4, :cond_b

    .line 190
    .line 191
    and-int/lit16 v10, v10, 0x1fff

    .line 192
    .line 193
    shl-int/2addr v10, v11

    .line 194
    or-int/2addr v9, v10

    .line 195
    add-int/lit8 v11, v11, 0xd

    .line 196
    .line 197
    move v10, v12

    .line 198
    goto :goto_5

    .line 199
    :cond_b
    shl-int/2addr v10, v11

    .line 200
    or-int/2addr v9, v10

    .line 201
    move v10, v12

    .line 202
    :cond_c
    add-int/lit8 v11, v10, 0x1

    .line 203
    .line 204
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    if-lt v10, v4, :cond_e

    .line 209
    .line 210
    and-int/lit16 v10, v10, 0x1fff

    .line 211
    .line 212
    const/16 v12, 0xd

    .line 213
    .line 214
    :goto_6
    add-int/lit8 v13, v11, 0x1

    .line 215
    .line 216
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    if-lt v11, v4, :cond_d

    .line 221
    .line 222
    and-int/lit16 v11, v11, 0x1fff

    .line 223
    .line 224
    shl-int/2addr v11, v12

    .line 225
    or-int/2addr v10, v11

    .line 226
    add-int/lit8 v12, v12, 0xd

    .line 227
    .line 228
    move v11, v13

    .line 229
    goto :goto_6

    .line 230
    :cond_d
    shl-int/2addr v11, v12

    .line 231
    or-int/2addr v10, v11

    .line 232
    move v11, v13

    .line 233
    :cond_e
    add-int/lit8 v12, v11, 0x1

    .line 234
    .line 235
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 236
    .line 237
    .line 238
    move-result v11

    .line 239
    if-lt v11, v4, :cond_10

    .line 240
    .line 241
    and-int/lit16 v11, v11, 0x1fff

    .line 242
    .line 243
    const/16 v13, 0xd

    .line 244
    .line 245
    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 246
    .line 247
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 248
    .line 249
    .line 250
    move-result v12

    .line 251
    if-lt v12, v4, :cond_f

    .line 252
    .line 253
    and-int/lit16 v12, v12, 0x1fff

    .line 254
    .line 255
    shl-int/2addr v12, v13

    .line 256
    or-int/2addr v11, v12

    .line 257
    add-int/lit8 v13, v13, 0xd

    .line 258
    .line 259
    move v12, v14

    .line 260
    goto :goto_7

    .line 261
    :cond_f
    shl-int/2addr v12, v13

    .line 262
    or-int/2addr v11, v12

    .line 263
    move v12, v14

    .line 264
    :cond_10
    add-int/lit8 v13, v12, 0x1

    .line 265
    .line 266
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    if-lt v12, v4, :cond_12

    .line 271
    .line 272
    and-int/lit16 v12, v12, 0x1fff

    .line 273
    .line 274
    const/16 v14, 0xd

    .line 275
    .line 276
    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 277
    .line 278
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    if-lt v13, v4, :cond_11

    .line 283
    .line 284
    and-int/lit16 v13, v13, 0x1fff

    .line 285
    .line 286
    shl-int/2addr v13, v14

    .line 287
    or-int/2addr v12, v13

    .line 288
    add-int/lit8 v14, v14, 0xd

    .line 289
    .line 290
    move v13, v15

    .line 291
    goto :goto_8

    .line 292
    :cond_11
    shl-int/2addr v13, v14

    .line 293
    or-int/2addr v12, v13

    .line 294
    move v13, v15

    .line 295
    :cond_12
    add-int/lit8 v14, v13, 0x1

    .line 296
    .line 297
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 298
    .line 299
    .line 300
    move-result v13

    .line 301
    if-lt v13, v4, :cond_14

    .line 302
    .line 303
    and-int/lit16 v13, v13, 0x1fff

    .line 304
    .line 305
    const/16 v15, 0xd

    .line 306
    .line 307
    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 308
    .line 309
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    if-lt v14, v4, :cond_13

    .line 314
    .line 315
    and-int/lit16 v14, v14, 0x1fff

    .line 316
    .line 317
    shl-int/2addr v14, v15

    .line 318
    or-int/2addr v13, v14

    .line 319
    add-int/lit8 v15, v15, 0xd

    .line 320
    .line 321
    move/from16 v14, v16

    .line 322
    .line 323
    goto :goto_9

    .line 324
    :cond_13
    shl-int/2addr v14, v15

    .line 325
    or-int/2addr v13, v14

    .line 326
    move/from16 v14, v16

    .line 327
    .line 328
    :cond_14
    add-int v15, v13, v11

    .line 329
    .line 330
    add-int/2addr v15, v12

    .line 331
    add-int v12, v3, v3

    .line 332
    .line 333
    add-int/2addr v12, v6

    .line 334
    new-array v6, v15, [I

    .line 335
    .line 336
    move-object v15, v6

    .line 337
    move v6, v3

    .line 338
    move v3, v14

    .line 339
    move-object v14, v15

    .line 340
    move v15, v11

    .line 341
    move v11, v8

    .line 342
    move v8, v15

    .line 343
    move v15, v12

    .line 344
    move v12, v9

    .line 345
    move v9, v15

    .line 346
    move v15, v13

    .line 347
    :goto_a
    sget-object v13, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 348
    .line 349
    iget-object v2, v0, Lcom/google/android/gms/internal/auth/zzgh;->b:[Ljava/lang/Object;

    .line 350
    .line 351
    iget-object v7, v0, Lcom/google/android/gms/internal/auth/zzgh;->a:Lcom/google/android/gms/internal/auth/zzfx;

    .line 352
    .line 353
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    add-int/2addr v8, v15

    .line 358
    add-int v5, v10, v10

    .line 359
    .line 360
    const/4 v4, 0x3

    .line 361
    mul-int/2addr v10, v4

    .line 362
    new-array v10, v10, [I

    .line 363
    .line 364
    new-array v5, v5, [Ljava/lang/Object;

    .line 365
    .line 366
    move-object/from16 v23, v2

    .line 367
    .line 368
    move/from16 v22, v8

    .line 369
    .line 370
    move/from16 v21, v15

    .line 371
    .line 372
    const/4 v4, 0x0

    .line 373
    const/16 v19, 0x0

    .line 374
    .line 375
    :goto_b
    const/16 v2, 0xc

    .line 376
    .line 377
    if-ge v3, v2, :cond_36

    .line 378
    .line 379
    add-int/lit8 v24, v3, 0x1

    .line 380
    .line 381
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    const v2, 0xd800

    .line 386
    .line 387
    .line 388
    if-lt v3, v2, :cond_16

    .line 389
    .line 390
    and-int/lit16 v3, v3, 0x1fff

    .line 391
    .line 392
    move/from16 v2, v24

    .line 393
    .line 394
    const/16 v24, 0xd

    .line 395
    .line 396
    :goto_c
    add-int/lit8 v26, v2, 0x1

    .line 397
    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    move/from16 v27, v3

    .line 403
    .line 404
    const v3, 0xd800

    .line 405
    .line 406
    .line 407
    if-lt v2, v3, :cond_15

    .line 408
    .line 409
    and-int/lit16 v2, v2, 0x1fff

    .line 410
    .line 411
    shl-int v2, v2, v24

    .line 412
    .line 413
    or-int v3, v27, v2

    .line 414
    .line 415
    add-int/lit8 v24, v24, 0xd

    .line 416
    .line 417
    move/from16 v2, v26

    .line 418
    .line 419
    goto :goto_c

    .line 420
    :cond_15
    shl-int v2, v2, v24

    .line 421
    .line 422
    or-int v3, v27, v2

    .line 423
    .line 424
    move/from16 v2, v26

    .line 425
    .line 426
    goto :goto_d

    .line 427
    :cond_16
    move/from16 v2, v24

    .line 428
    .line 429
    :goto_d
    add-int/lit8 v24, v2, 0x1

    .line 430
    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    move/from16 v26, v3

    .line 436
    .line 437
    const v3, 0xd800

    .line 438
    .line 439
    .line 440
    if-lt v2, v3, :cond_18

    .line 441
    .line 442
    and-int/lit16 v2, v2, 0x1fff

    .line 443
    .line 444
    move/from16 v3, v24

    .line 445
    .line 446
    const/16 v24, 0xd

    .line 447
    .line 448
    :goto_e
    add-int/lit8 v27, v3, 0x1

    .line 449
    .line 450
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    move/from16 v28, v2

    .line 455
    .line 456
    const v2, 0xd800

    .line 457
    .line 458
    .line 459
    if-lt v3, v2, :cond_17

    .line 460
    .line 461
    and-int/lit16 v2, v3, 0x1fff

    .line 462
    .line 463
    shl-int v2, v2, v24

    .line 464
    .line 465
    or-int v2, v28, v2

    .line 466
    .line 467
    add-int/lit8 v24, v24, 0xd

    .line 468
    .line 469
    move/from16 v3, v27

    .line 470
    .line 471
    goto :goto_e

    .line 472
    :cond_17
    shl-int v2, v3, v24

    .line 473
    .line 474
    or-int v2, v28, v2

    .line 475
    .line 476
    move/from16 v3, v27

    .line 477
    .line 478
    goto :goto_f

    .line 479
    :cond_18
    move/from16 v3, v24

    .line 480
    .line 481
    :goto_f
    move-object/from16 v24, v5

    .line 482
    .line 483
    and-int/lit16 v5, v2, 0x400

    .line 484
    .line 485
    if-eqz v5, :cond_19

    .line 486
    .line 487
    add-int/lit8 v5, v19, 0x1

    .line 488
    .line 489
    aput v4, v14, v19

    .line 490
    .line 491
    move/from16 v19, v5

    .line 492
    .line 493
    :cond_19
    and-int/lit16 v5, v2, 0xff

    .line 494
    .line 495
    move/from16 v27, v6

    .line 496
    .line 497
    const/16 v6, 0x33

    .line 498
    .line 499
    move/from16 v28, v8

    .line 500
    .line 501
    if-lt v5, v6, :cond_23

    .line 502
    .line 503
    add-int/lit8 v6, v3, 0x1

    .line 504
    .line 505
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    const v8, 0xd800

    .line 510
    .line 511
    .line 512
    if-lt v3, v8, :cond_1b

    .line 513
    .line 514
    and-int/lit16 v3, v3, 0x1fff

    .line 515
    .line 516
    const/16 v30, 0xd

    .line 517
    .line 518
    :goto_10
    add-int/lit8 v31, v6, 0x1

    .line 519
    .line 520
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 521
    .line 522
    .line 523
    move-result v6

    .line 524
    if-lt v6, v8, :cond_1a

    .line 525
    .line 526
    and-int/lit16 v6, v6, 0x1fff

    .line 527
    .line 528
    shl-int v6, v6, v30

    .line 529
    .line 530
    or-int/2addr v3, v6

    .line 531
    add-int/lit8 v30, v30, 0xd

    .line 532
    .line 533
    move/from16 v6, v31

    .line 534
    .line 535
    const v8, 0xd800

    .line 536
    .line 537
    .line 538
    goto :goto_10

    .line 539
    :cond_1a
    shl-int v6, v6, v30

    .line 540
    .line 541
    or-int/2addr v3, v6

    .line 542
    move/from16 v6, v31

    .line 543
    .line 544
    :cond_1b
    add-int/lit8 v8, v5, -0x33

    .line 545
    .line 546
    move/from16 v30, v3

    .line 547
    .line 548
    const/16 v3, 0x9

    .line 549
    .line 550
    if-eq v8, v3, :cond_1c

    .line 551
    .line 552
    const/16 v3, 0x11

    .line 553
    .line 554
    if-ne v8, v3, :cond_1d

    .line 555
    .line 556
    :cond_1c
    const/4 v3, 0x3

    .line 557
    const/4 v8, 0x1

    .line 558
    goto :goto_13

    .line 559
    :cond_1d
    const/16 v3, 0xc

    .line 560
    .line 561
    if-ne v8, v3, :cond_20

    .line 562
    .line 563
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zzc()I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    const/4 v8, 0x1

    .line 568
    if-eq v3, v8, :cond_1e

    .line 569
    .line 570
    and-int/lit16 v3, v2, 0x800

    .line 571
    .line 572
    if-eqz v3, :cond_1f

    .line 573
    .line 574
    :cond_1e
    const/4 v3, 0x3

    .line 575
    goto :goto_12

    .line 576
    :cond_1f
    :goto_11
    const/4 v3, 0x3

    .line 577
    goto :goto_14

    .line 578
    :goto_12
    invoke-static {v4, v3, v8}, Lcom/google/android/gms/internal/ads/a;->c(III)I

    .line 579
    .line 580
    .line 581
    move-result v17

    .line 582
    add-int/lit8 v20, v9, 0x1

    .line 583
    .line 584
    aget-object v9, v23, v9

    .line 585
    .line 586
    aput-object v9, v24, v17

    .line 587
    .line 588
    move/from16 v9, v20

    .line 589
    .line 590
    goto :goto_14

    .line 591
    :cond_20
    const/4 v8, 0x1

    .line 592
    goto :goto_11

    .line 593
    :goto_13
    invoke-static {v4, v3, v8}, Lcom/google/android/gms/internal/ads/a;->c(III)I

    .line 594
    .line 595
    .line 596
    move-result v25

    .line 597
    add-int/lit8 v3, v9, 0x1

    .line 598
    .line 599
    aget-object v8, v23, v9

    .line 600
    .line 601
    aput-object v8, v24, v25

    .line 602
    .line 603
    move v9, v3

    .line 604
    :goto_14
    add-int v3, v30, v30

    .line 605
    .line 606
    aget-object v8, v23, v3

    .line 607
    .line 608
    move/from16 v25, v3

    .line 609
    .line 610
    instance-of v3, v8, Ljava/lang/reflect/Field;

    .line 611
    .line 612
    if-eqz v3, :cond_21

    .line 613
    .line 614
    check-cast v8, Ljava/lang/reflect/Field;

    .line 615
    .line 616
    :goto_15
    move v3, v9

    .line 617
    goto :goto_16

    .line 618
    :cond_21
    check-cast v8, Ljava/lang/String;

    .line 619
    .line 620
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/auth/zzga;->w(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    aput-object v8, v23, v25

    .line 625
    .line 626
    goto :goto_15

    .line 627
    :goto_16
    invoke-virtual {v13, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 628
    .line 629
    .line 630
    move-result-wide v8

    .line 631
    long-to-int v8, v8

    .line 632
    add-int/lit8 v9, v25, 0x1

    .line 633
    .line 634
    move/from16 v25, v3

    .line 635
    .line 636
    aget-object v3, v23, v9

    .line 637
    .line 638
    move/from16 v29, v6

    .line 639
    .line 640
    instance-of v6, v3, Ljava/lang/reflect/Field;

    .line 641
    .line 642
    if-eqz v6, :cond_22

    .line 643
    .line 644
    check-cast v3, Ljava/lang/reflect/Field;

    .line 645
    .line 646
    :goto_17
    move v6, v8

    .line 647
    goto :goto_18

    .line 648
    :cond_22
    check-cast v3, Ljava/lang/String;

    .line 649
    .line 650
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/auth/zzga;->w(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 651
    .line 652
    .line 653
    move-result-object v3

    .line 654
    aput-object v3, v23, v9

    .line 655
    .line 656
    goto :goto_17

    .line 657
    :goto_18
    invoke-virtual {v13, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 658
    .line 659
    .line 660
    move-result-wide v8

    .line 661
    long-to-int v3, v8

    .line 662
    move v8, v6

    .line 663
    move-object/from16 v17, v10

    .line 664
    .line 665
    move v6, v11

    .line 666
    move/from16 v9, v25

    .line 667
    .line 668
    const v18, 0xd800

    .line 669
    .line 670
    .line 671
    move v10, v3

    .line 672
    const/4 v3, 0x0

    .line 673
    goto/16 :goto_26

    .line 674
    .line 675
    :cond_23
    add-int/lit8 v6, v9, 0x1

    .line 676
    .line 677
    aget-object v8, v23, v9

    .line 678
    .line 679
    check-cast v8, Ljava/lang/String;

    .line 680
    .line 681
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/auth/zzga;->w(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 682
    .line 683
    .line 684
    move-result-object v8

    .line 685
    move/from16 v30, v6

    .line 686
    .line 687
    const/16 v6, 0x9

    .line 688
    .line 689
    if-eq v5, v6, :cond_24

    .line 690
    .line 691
    const/16 v6, 0x11

    .line 692
    .line 693
    if-ne v5, v6, :cond_25

    .line 694
    .line 695
    :cond_24
    const/4 v6, 0x3

    .line 696
    const/4 v9, 0x1

    .line 697
    goto/16 :goto_1e

    .line 698
    .line 699
    :cond_25
    const/16 v6, 0x1b

    .line 700
    .line 701
    if-eq v5, v6, :cond_26

    .line 702
    .line 703
    const/16 v6, 0x31

    .line 704
    .line 705
    if-ne v5, v6, :cond_27

    .line 706
    .line 707
    :cond_26
    move/from16 v25, v9

    .line 708
    .line 709
    const/4 v6, 0x3

    .line 710
    const/4 v9, 0x1

    .line 711
    goto :goto_1d

    .line 712
    :cond_27
    const/16 v6, 0xc

    .line 713
    .line 714
    if-eq v5, v6, :cond_2b

    .line 715
    .line 716
    const/16 v6, 0x1e

    .line 717
    .line 718
    if-eq v5, v6, :cond_2b

    .line 719
    .line 720
    const/16 v6, 0x2c

    .line 721
    .line 722
    if-ne v5, v6, :cond_28

    .line 723
    .line 724
    goto :goto_1a

    .line 725
    :cond_28
    const/16 v6, 0x32

    .line 726
    .line 727
    if-ne v5, v6, :cond_2a

    .line 728
    .line 729
    add-int/lit8 v6, v21, 0x1

    .line 730
    .line 731
    aput v4, v14, v21

    .line 732
    .line 733
    div-int/lit8 v21, v4, 0x3

    .line 734
    .line 735
    add-int/lit8 v25, v9, 0x2

    .line 736
    .line 737
    aget-object v29, v23, v30

    .line 738
    .line 739
    add-int v21, v21, v21

    .line 740
    .line 741
    aput-object v29, v24, v21

    .line 742
    .line 743
    move/from16 v29, v6

    .line 744
    .line 745
    and-int/lit16 v6, v2, 0x800

    .line 746
    .line 747
    if-eqz v6, :cond_29

    .line 748
    .line 749
    add-int/lit8 v21, v21, 0x1

    .line 750
    .line 751
    add-int/lit8 v6, v9, 0x3

    .line 752
    .line 753
    aget-object v9, v23, v25

    .line 754
    .line 755
    aput-object v9, v24, v21

    .line 756
    .line 757
    move/from16 v20, v6

    .line 758
    .line 759
    move-object/from16 v17, v10

    .line 760
    .line 761
    :goto_19
    move/from16 v21, v29

    .line 762
    .line 763
    const/4 v6, 0x3

    .line 764
    goto :goto_20

    .line 765
    :cond_29
    move-object/from16 v17, v10

    .line 766
    .line 767
    move/from16 v20, v25

    .line 768
    .line 769
    goto :goto_19

    .line 770
    :cond_2a
    const/4 v6, 0x3

    .line 771
    const/4 v9, 0x1

    .line 772
    goto :goto_1f

    .line 773
    :cond_2b
    :goto_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzgh;->zzc()I

    .line 774
    .line 775
    .line 776
    move-result v6

    .line 777
    move/from16 v25, v9

    .line 778
    .line 779
    const/4 v9, 0x1

    .line 780
    if-eq v6, v9, :cond_2c

    .line 781
    .line 782
    and-int/lit16 v6, v2, 0x800

    .line 783
    .line 784
    if-eqz v6, :cond_2d

    .line 785
    .line 786
    :cond_2c
    const/4 v6, 0x3

    .line 787
    goto :goto_1b

    .line 788
    :cond_2d
    const/4 v6, 0x3

    .line 789
    goto :goto_1f

    .line 790
    :goto_1b
    invoke-static {v4, v6, v9}, Lcom/google/android/gms/internal/ads/a;->c(III)I

    .line 791
    .line 792
    .line 793
    move-result v17

    .line 794
    add-int/lit8 v20, v25, 0x2

    .line 795
    .line 796
    aget-object v25, v23, v30

    .line 797
    .line 798
    aput-object v25, v24, v17

    .line 799
    .line 800
    :goto_1c
    move-object/from16 v17, v10

    .line 801
    .line 802
    goto :goto_20

    .line 803
    :goto_1d
    invoke-static {v4, v6, v9}, Lcom/google/android/gms/internal/ads/a;->c(III)I

    .line 804
    .line 805
    .line 806
    move-result v17

    .line 807
    add-int/lit8 v20, v25, 0x2

    .line 808
    .line 809
    aget-object v25, v23, v30

    .line 810
    .line 811
    aput-object v25, v24, v17

    .line 812
    .line 813
    goto :goto_1c

    .line 814
    :goto_1e
    invoke-static {v4, v6, v9}, Lcom/google/android/gms/internal/ads/a;->c(III)I

    .line 815
    .line 816
    .line 817
    move-result v17

    .line 818
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 819
    .line 820
    .line 821
    move-result-object v20

    .line 822
    aput-object v20, v24, v17

    .line 823
    .line 824
    :goto_1f
    move-object/from16 v17, v10

    .line 825
    .line 826
    move/from16 v20, v30

    .line 827
    .line 828
    :goto_20
    invoke-virtual {v13, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 829
    .line 830
    .line 831
    move-result-wide v9

    .line 832
    long-to-int v8, v9

    .line 833
    and-int/lit16 v9, v2, 0x1000

    .line 834
    .line 835
    const v10, 0xfffff

    .line 836
    .line 837
    .line 838
    if-eqz v9, :cond_31

    .line 839
    .line 840
    const/16 v9, 0x11

    .line 841
    .line 842
    if-gt v5, v9, :cond_31

    .line 843
    .line 844
    add-int/lit8 v9, v3, 0x1

    .line 845
    .line 846
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 847
    .line 848
    .line 849
    move-result v3

    .line 850
    const v10, 0xd800

    .line 851
    .line 852
    .line 853
    if-lt v3, v10, :cond_2f

    .line 854
    .line 855
    and-int/lit16 v3, v3, 0x1fff

    .line 856
    .line 857
    const/16 v18, 0xd

    .line 858
    .line 859
    :goto_21
    add-int/lit8 v29, v9, 0x1

    .line 860
    .line 861
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 862
    .line 863
    .line 864
    move-result v9

    .line 865
    if-lt v9, v10, :cond_2e

    .line 866
    .line 867
    and-int/lit16 v9, v9, 0x1fff

    .line 868
    .line 869
    shl-int v9, v9, v18

    .line 870
    .line 871
    or-int/2addr v3, v9

    .line 872
    add-int/lit8 v18, v18, 0xd

    .line 873
    .line 874
    move/from16 v9, v29

    .line 875
    .line 876
    goto :goto_21

    .line 877
    :cond_2e
    shl-int v9, v9, v18

    .line 878
    .line 879
    or-int/2addr v3, v9

    .line 880
    goto :goto_22

    .line 881
    :cond_2f
    move/from16 v29, v9

    .line 882
    .line 883
    :goto_22
    add-int v9, v27, v27

    .line 884
    .line 885
    div-int/lit8 v18, v3, 0x20

    .line 886
    .line 887
    add-int v18, v18, v9

    .line 888
    .line 889
    aget-object v9, v23, v18

    .line 890
    .line 891
    instance-of v6, v9, Ljava/lang/reflect/Field;

    .line 892
    .line 893
    if-eqz v6, :cond_30

    .line 894
    .line 895
    check-cast v9, Ljava/lang/reflect/Field;

    .line 896
    .line 897
    :goto_23
    move v6, v11

    .line 898
    goto :goto_24

    .line 899
    :cond_30
    check-cast v9, Ljava/lang/String;

    .line 900
    .line 901
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/auth/zzga;->w(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 902
    .line 903
    .line 904
    move-result-object v9

    .line 905
    aput-object v9, v23, v18

    .line 906
    .line 907
    goto :goto_23

    .line 908
    :goto_24
    invoke-virtual {v13, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 909
    .line 910
    .line 911
    move-result-wide v10

    .line 912
    long-to-int v9, v10

    .line 913
    rem-int/lit8 v3, v3, 0x20

    .line 914
    .line 915
    move v10, v9

    .line 916
    const v18, 0xd800

    .line 917
    .line 918
    .line 919
    goto :goto_25

    .line 920
    :cond_31
    move v6, v11

    .line 921
    const v18, 0xd800

    .line 922
    .line 923
    .line 924
    move/from16 v29, v3

    .line 925
    .line 926
    const/4 v3, 0x0

    .line 927
    :goto_25
    const/16 v9, 0x12

    .line 928
    .line 929
    if-lt v5, v9, :cond_32

    .line 930
    .line 931
    const/16 v9, 0x31

    .line 932
    .line 933
    if-gt v5, v9, :cond_32

    .line 934
    .line 935
    add-int/lit8 v9, v22, 0x1

    .line 936
    .line 937
    aput v8, v14, v22

    .line 938
    .line 939
    move/from16 v22, v9

    .line 940
    .line 941
    :cond_32
    move/from16 v9, v20

    .line 942
    .line 943
    :goto_26
    add-int/lit8 v11, v4, 0x1

    .line 944
    .line 945
    aput v26, v17, v4

    .line 946
    .line 947
    add-int/lit8 v20, v4, 0x2

    .line 948
    .line 949
    move-object/from16 v26, v1

    .line 950
    .line 951
    and-int/lit16 v1, v2, 0x200

    .line 952
    .line 953
    if-eqz v1, :cond_33

    .line 954
    .line 955
    const/high16 v1, 0x20000000

    .line 956
    .line 957
    goto :goto_27

    .line 958
    :cond_33
    const/4 v1, 0x0

    .line 959
    :goto_27
    move/from16 v30, v1

    .line 960
    .line 961
    and-int/lit16 v1, v2, 0x100

    .line 962
    .line 963
    if-eqz v1, :cond_34

    .line 964
    .line 965
    const/high16 v1, 0x10000000

    .line 966
    .line 967
    goto :goto_28

    .line 968
    :cond_34
    const/4 v1, 0x0

    .line 969
    :goto_28
    and-int/lit16 v2, v2, 0x800

    .line 970
    .line 971
    if-eqz v2, :cond_35

    .line 972
    .line 973
    const/high16 v2, -0x80000000

    .line 974
    .line 975
    goto :goto_29

    .line 976
    :cond_35
    const/4 v2, 0x0

    .line 977
    :goto_29
    shl-int/lit8 v5, v5, 0x14

    .line 978
    .line 979
    or-int v1, v30, v1

    .line 980
    .line 981
    or-int/2addr v1, v2

    .line 982
    or-int/2addr v1, v5

    .line 983
    or-int/2addr v1, v8

    .line 984
    aput v1, v17, v11

    .line 985
    .line 986
    add-int/lit8 v4, v4, 0x3

    .line 987
    .line 988
    shl-int/lit8 v1, v3, 0x14

    .line 989
    .line 990
    or-int/2addr v1, v10

    .line 991
    aput v1, v17, v20

    .line 992
    .line 993
    move v11, v6

    .line 994
    move-object/from16 v10, v17

    .line 995
    .line 996
    move-object/from16 v5, v24

    .line 997
    .line 998
    move-object/from16 v1, v26

    .line 999
    .line 1000
    move/from16 v6, v27

    .line 1001
    .line 1002
    move/from16 v8, v28

    .line 1003
    .line 1004
    move/from16 v3, v29

    .line 1005
    .line 1006
    goto/16 :goto_b

    .line 1007
    .line 1008
    :cond_36
    move-object/from16 v24, v5

    .line 1009
    .line 1010
    move/from16 v28, v8

    .line 1011
    .line 1012
    move-object/from16 v17, v10

    .line 1013
    .line 1014
    move v6, v11

    .line 1015
    new-instance v8, Lcom/google/android/gms/internal/auth/zzga;

    .line 1016
    .line 1017
    iget-object v13, v0, Lcom/google/android/gms/internal/auth/zzgh;->a:Lcom/google/android/gms/internal/auth/zzfx;

    .line 1018
    .line 1019
    move-object/from16 v18, p2

    .line 1020
    .line 1021
    move-object/from16 v9, v17

    .line 1022
    .line 1023
    move-object/from16 v10, v24

    .line 1024
    .line 1025
    move/from16 v16, v28

    .line 1026
    .line 1027
    move-object/from16 v17, p1

    .line 1028
    .line 1029
    invoke-direct/range {v8 .. v18}, Lcom/google/android/gms/internal/auth/zzga;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfx;[IIILcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;)V

    .line 1030
    .line 1031
    .line 1032
    return-object v8

    .line 1033
    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/auth/zzgw;

    .line 1034
    .line 1035
    const/4 v0, 0x0

    .line 1036
    throw v0
.end method

.method public static o(Lcom/google/android/gms/internal/auth/zzev;J)I
    .locals 0

    .line 1
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static q(I)I
    .locals 0

    .line 1
    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, " for "

    .line 41
    .line 42
    const-string v3, " not found. Known fields are "

    .line 43
    .line 44
    const-string v4, "Field "

    .line 45
    .line 46
    invoke-static {v4, p1, v2, p0, v3}, Landroidx/work/impl/workers/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {v0, p2, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final b(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const v2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, v2

    .line 11
    int-to-long v3, v1

    .line 12
    invoke-virtual {v0, p3, v3, v4, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 p2, p2, 0x2

    .line 16
    .line 17
    iget-object p4, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 18
    .line 19
    aget p2, p4, p2

    .line 20
    .line 21
    and-int/2addr p2, v2

    .line 22
    int-to-long v0, p2

    .line 23
    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0xfffff

    .line 3
    .line 4
    .line 5
    move v2, v0

    .line 6
    move v4, v2

    .line 7
    move v3, v1

    .line 8
    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/auth/zzga;->g:I

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    if-ge v2, v5, :cond_f

    .line 12
    .line 13
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzga;->f:[I

    .line 14
    .line 15
    aget v5, v5, v2

    .line 16
    .line 17
    iget-object v7, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 18
    .line 19
    aget v8, v7, v5

    .line 20
    .line 21
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    add-int/lit8 v10, v5, 0x2

    .line 26
    .line 27
    aget v7, v7, v10

    .line 28
    .line 29
    and-int v10, v7, v1

    .line 30
    .line 31
    ushr-int/lit8 v7, v7, 0x14

    .line 32
    .line 33
    shl-int v7, v6, v7

    .line 34
    .line 35
    if-eq v10, v3, :cond_1

    .line 36
    .line 37
    if-eq v10, v1, :cond_0

    .line 38
    .line 39
    int-to-long v3, v10

    .line 40
    sget-object v11, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 41
    .line 42
    invoke-virtual {v11, p1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    :cond_0
    move v3, v10

    .line 47
    :cond_1
    const/high16 v10, 0x10000000

    .line 48
    .line 49
    and-int/2addr v10, v9

    .line 50
    if-eqz v10, :cond_4

    .line 51
    .line 52
    if-ne v3, v1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    and-int v10, v4, v7

    .line 60
    .line 61
    if-eqz v10, :cond_3

    .line 62
    .line 63
    move v10, v6

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move v10, v0

    .line 66
    :goto_1
    if-eqz v10, :cond_d

    .line 67
    .line 68
    :cond_4
    invoke-static {v9}, Lcom/google/android/gms/internal/auth/zzga;->q(I)I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    const/16 v11, 0x9

    .line 73
    .line 74
    if-eq v10, v11, :cond_a

    .line 75
    .line 76
    const/16 v11, 0x11

    .line 77
    .line 78
    if-eq v10, v11, :cond_a

    .line 79
    .line 80
    const/16 v6, 0x1b

    .line 81
    .line 82
    if-eq v10, v6, :cond_8

    .line 83
    .line 84
    const/16 v6, 0x3c

    .line 85
    .line 86
    if-eq v10, v6, :cond_7

    .line 87
    .line 88
    const/16 v6, 0x44

    .line 89
    .line 90
    if-eq v10, v6, :cond_7

    .line 91
    .line 92
    const/16 v6, 0x31

    .line 93
    .line 94
    if-eq v10, v6, :cond_8

    .line 95
    .line 96
    const/16 v6, 0x32

    .line 97
    .line 98
    if-eq v10, v6, :cond_5

    .line 99
    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_5
    and-int v6, v9, v1

    .line 103
    .line 104
    int-to-long v6, v6

    .line 105
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    check-cast v6, Lcom/google/android/gms/internal/auth/zzfr;

    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_6

    .line 116
    .line 117
    goto/16 :goto_5

    .line 118
    .line 119
    :cond_6
    div-int/lit8 v5, v5, 0x3

    .line 120
    .line 121
    iget-object p1, p0, Lcom/google/android/gms/internal/auth/zzga;->b:[Ljava/lang/Object;

    .line 122
    .line 123
    add-int/2addr v5, v5

    .line 124
    aget-object p1, p1, v5

    .line 125
    .line 126
    check-cast p1, Lcom/google/android/gms/internal/auth/zzfq;

    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    throw p1

    .line 130
    :cond_7
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_e

    .line 135
    .line 136
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    and-int v6, v9, v1

    .line 141
    .line 142
    int-to-long v6, v6

    .line 143
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/auth/zzgi;->c(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez v5, :cond_e

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_8
    and-int v6, v9, v1

    .line 155
    .line 156
    int-to-long v6, v6

    .line 157
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-nez v7, :cond_e

    .line 168
    .line 169
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    move v7, v0

    .line 174
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-ge v7, v8, :cond_e

    .line 179
    .line 180
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/auth/zzgi;->c(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-nez v8, :cond_9

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_a
    if-ne v3, v1, :cond_b

    .line 195
    .line 196
    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    goto :goto_3

    .line 201
    :cond_b
    and-int/2addr v7, v4

    .line 202
    if-eqz v7, :cond_c

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_c
    move v6, v0

    .line 206
    :goto_3
    if-eqz v6, :cond_e

    .line 207
    .line 208
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    and-int v6, v9, v1

    .line 213
    .line 214
    int-to-long v6, v6

    .line 215
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/auth/zzgi;->c(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-nez v5, :cond_e

    .line 224
    .line 225
    :cond_d
    :goto_4
    return v0

    .line 226
    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_f
    return v6
.end method

.method public final d(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const v5, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v6, v4, v5

    .line 16
    .line 17
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzga;->q(I)I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    int-to-long v6, v6

    .line 22
    packed-switch v4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    .line 28
    .line 29
    aget v4, v0, v4

    .line 30
    .line 31
    and-int/2addr v4, v5

    .line 32
    int-to-long v4, v4

    .line 33
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v8, v4, :cond_2

    .line 42
    .line 43
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzgk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzgk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    goto :goto_1

    .line 72
    :pswitch_2
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzgk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    :goto_1
    if-nez v4, :cond_0

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzgk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_2

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_2

    .line 115
    .line 116
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v6

    .line 124
    cmp-long v4, v4, v6

    .line 125
    .line 126
    if-nez v4, :cond_2

    .line 127
    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_2

    .line 135
    .line 136
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-ne v4, v5, :cond_2

    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_2

    .line 153
    .line 154
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v4

    .line 158
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v6

    .line 162
    cmp-long v4, v4, v6

    .line 163
    .line 164
    if-nez v4, :cond_2

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_2

    .line 173
    .line 174
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-ne v4, v5, :cond_2

    .line 183
    .line 184
    goto/16 :goto_2

    .line 185
    .line 186
    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_2

    .line 191
    .line 192
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-ne v4, v5, :cond_2

    .line 201
    .line 202
    goto/16 :goto_2

    .line 203
    .line 204
    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_2

    .line 209
    .line 210
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-ne v4, v5, :cond_2

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_2

    .line 227
    .line 228
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzgk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_2

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_2

    .line 249
    .line 250
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzgk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-eqz v4, :cond_2

    .line 263
    .line 264
    goto/16 :goto_2

    .line 265
    .line 266
    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-eqz v4, :cond_2

    .line 271
    .line 272
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzgk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_2

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_2

    .line 293
    .line 294
    sget-object v4, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 295
    .line 296
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhi;->f(JLjava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhi;->f(JLjava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-ne v5, v4, :cond_2

    .line 305
    .line 306
    goto/16 :goto_2

    .line 307
    .line 308
    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-eqz v4, :cond_2

    .line 313
    .line 314
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-ne v4, v5, :cond_2

    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-eqz v4, :cond_2

    .line 331
    .line 332
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 333
    .line 334
    .line 335
    move-result-wide v4

    .line 336
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 337
    .line 338
    .line 339
    move-result-wide v6

    .line 340
    cmp-long v4, v4, v6

    .line 341
    .line 342
    if-nez v4, :cond_2

    .line 343
    .line 344
    goto/16 :goto_2

    .line 345
    .line 346
    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    if-eqz v4, :cond_2

    .line 351
    .line 352
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-ne v4, v5, :cond_2

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    if-eqz v4, :cond_2

    .line 368
    .line 369
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v4

    .line 373
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 374
    .line 375
    .line 376
    move-result-wide v6

    .line 377
    cmp-long v4, v4, v6

    .line 378
    .line 379
    if-nez v4, :cond_2

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-eqz v4, :cond_2

    .line 387
    .line 388
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 389
    .line 390
    .line 391
    move-result-wide v4

    .line 392
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 393
    .line 394
    .line 395
    move-result-wide v6

    .line 396
    cmp-long v4, v4, v6

    .line 397
    .line 398
    if-nez v4, :cond_2

    .line 399
    .line 400
    goto :goto_2

    .line 401
    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-eqz v4, :cond_2

    .line 406
    .line 407
    sget-object v4, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 408
    .line 409
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhi;->b(JLjava/lang/Object;)F

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhi;->b(JLjava/lang/Object;)F

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 422
    .line 423
    .line 424
    move-result v4

    .line 425
    if-ne v5, v4, :cond_2

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/gms/internal/auth/zzga;->i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-eqz v4, :cond_2

    .line 433
    .line 434
    sget-object v4, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 435
    .line 436
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhi;->a(JLjava/lang/Object;)D

    .line 437
    .line 438
    .line 439
    move-result-wide v8

    .line 440
    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 441
    .line 442
    .line 443
    move-result-wide v8

    .line 444
    invoke-virtual {v4, v6, v7, p2}, Lcom/google/android/gms/internal/auth/zzhi;->a(JLjava/lang/Object;)D

    .line 445
    .line 446
    .line 447
    move-result-wide v4

    .line 448
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 449
    .line 450
    .line 451
    move-result-wide v4

    .line 452
    cmp-long v4, v8, v4

    .line 453
    .line 454
    if-nez v4, :cond_2

    .line 455
    .line 456
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x3

    .line 457
    .line 458
    goto/16 :goto_0

    .line 459
    .line 460
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->j:Lcom/google/android/gms/internal/auth/zzgz;

    .line 461
    .line 462
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 467
    .line 468
    .line 469
    move-result-object p2

    .line 470
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    if-nez p1, :cond_3

    .line 475
    .line 476
    :cond_2
    :goto_3
    return v2

    .line 477
    :cond_3
    const/4 p1, 0x1

    .line 478
    return p1

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lcom/google/android/gms/internal/auth/zzev;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzga;->q(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    int-to-long v6, v6

    .line 23
    const/16 v8, 0x4d5

    .line 24
    .line 25
    const/16 v9, 0x4cf

    .line 26
    .line 27
    const/16 v10, 0x25

    .line 28
    .line 29
    const/16 v11, 0x20

    .line 30
    .line 31
    packed-switch v4, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_6

    .line 35
    .line 36
    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    mul-int/lit8 v3, v3, 0x35

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_1
    add-int/2addr v4, v3

    .line 53
    move v3, v4

    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    mul-int/lit8 v3, v3, 0x35

    .line 63
    .line 64
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    :goto_2
    ushr-long v6, v4, v11

    .line 77
    .line 78
    xor-long/2addr v4, v6

    .line 79
    long-to-int v4, v4

    .line 80
    :goto_3
    add-int/2addr v3, v4

    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    mul-int/lit8 v3, v3, 0x35

    .line 90
    .line 91
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/zzga;->o(Lcom/google/android/gms/internal/auth/zzev;J)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    goto :goto_3

    .line 96
    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_2

    .line 101
    .line 102
    mul-int/lit8 v3, v3, 0x35

    .line 103
    .line 104
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Ljava/lang/Long;

    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    mul-int/lit8 v3, v3, 0x35

    .line 124
    .line 125
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/zzga;->o(Lcom/google/android/gms/internal/auth/zzev;J)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    goto :goto_3

    .line 130
    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_2

    .line 135
    .line 136
    mul-int/lit8 v3, v3, 0x35

    .line 137
    .line 138
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/zzga;->o(Lcom/google/android/gms/internal/auth/zzev;J)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    goto :goto_3

    .line 143
    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_2

    .line 148
    .line 149
    mul-int/lit8 v3, v3, 0x35

    .line 150
    .line 151
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/zzga;->o(Lcom/google/android/gms/internal/auth/zzev;J)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    goto :goto_3

    .line 156
    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_2

    .line 161
    .line 162
    mul-int/lit8 v3, v3, 0x35

    .line 163
    .line 164
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    goto :goto_1

    .line 173
    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_2

    .line 178
    .line 179
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    mul-int/lit8 v3, v3, 0x35

    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_2

    .line 196
    .line 197
    mul-int/lit8 v3, v3, 0x35

    .line 198
    .line 199
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    if-eqz v4, :cond_2

    .line 216
    .line 217
    mul-int/lit8 v3, v3, 0x35

    .line 218
    .line 219
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 230
    .line 231
    if-eqz v4, :cond_0

    .line 232
    .line 233
    :goto_4
    move v8, v9

    .line 234
    :cond_0
    add-int/2addr v8, v3

    .line 235
    move v3, v8

    .line 236
    goto/16 :goto_6

    .line 237
    .line 238
    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_2

    .line 243
    .line 244
    mul-int/lit8 v3, v3, 0x35

    .line 245
    .line 246
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/zzga;->o(Lcom/google/android/gms/internal/auth/zzev;J)I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    goto/16 :goto_3

    .line 251
    .line 252
    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_2

    .line 257
    .line 258
    mul-int/lit8 v3, v3, 0x35

    .line 259
    .line 260
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    check-cast v4, Ljava/lang/Long;

    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 267
    .line 268
    .line 269
    move-result-wide v4

    .line 270
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 271
    .line 272
    goto/16 :goto_2

    .line 273
    .line 274
    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_2

    .line 279
    .line 280
    mul-int/lit8 v3, v3, 0x35

    .line 281
    .line 282
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/auth/zzga;->o(Lcom/google/android/gms/internal/auth/zzev;J)I

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_2

    .line 293
    .line 294
    mul-int/lit8 v3, v3, 0x35

    .line 295
    .line 296
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    check-cast v4, Ljava/lang/Long;

    .line 301
    .line 302
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 303
    .line 304
    .line 305
    move-result-wide v4

    .line 306
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 307
    .line 308
    goto/16 :goto_2

    .line 309
    .line 310
    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-eqz v4, :cond_2

    .line 315
    .line 316
    mul-int/lit8 v3, v3, 0x35

    .line 317
    .line 318
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    check-cast v4, Ljava/lang/Long;

    .line 323
    .line 324
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 325
    .line 326
    .line 327
    move-result-wide v4

    .line 328
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 329
    .line 330
    goto/16 :goto_2

    .line 331
    .line 332
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    if-eqz v4, :cond_2

    .line 337
    .line 338
    mul-int/lit8 v3, v3, 0x35

    .line 339
    .line 340
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Ljava/lang/Float;

    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    goto/16 :goto_1

    .line 355
    .line 356
    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-eqz v4, :cond_2

    .line 361
    .line 362
    mul-int/lit8 v3, v3, 0x35

    .line 363
    .line 364
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    check-cast v4, Ljava/lang/Double;

    .line 369
    .line 370
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 371
    .line 372
    .line 373
    move-result-wide v4

    .line 374
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 375
    .line 376
    .line 377
    move-result-wide v4

    .line 378
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 379
    .line 380
    goto/16 :goto_2

    .line 381
    .line 382
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 383
    .line 384
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    goto/16 :goto_1

    .line 393
    .line 394
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 395
    .line 396
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    if-eqz v4, :cond_1

    .line 411
    .line 412
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    :cond_1
    :goto_5
    mul-int/lit8 v3, v3, 0x35

    .line 417
    .line 418
    add-int/2addr v3, v10

    .line 419
    goto/16 :goto_6

    .line 420
    .line 421
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 422
    .line 423
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 424
    .line 425
    .line 426
    move-result-wide v4

    .line 427
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 428
    .line 429
    goto/16 :goto_2

    .line 430
    .line 431
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 432
    .line 433
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    goto/16 :goto_3

    .line 438
    .line 439
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 440
    .line 441
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 442
    .line 443
    .line 444
    move-result-wide v4

    .line 445
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 446
    .line 447
    goto/16 :goto_2

    .line 448
    .line 449
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 450
    .line 451
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    goto/16 :goto_3

    .line 456
    .line 457
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 458
    .line 459
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    goto/16 :goto_3

    .line 464
    .line 465
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 466
    .line 467
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    goto/16 :goto_3

    .line 472
    .line 473
    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 474
    .line 475
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 480
    .line 481
    .line 482
    move-result v4

    .line 483
    goto/16 :goto_1

    .line 484
    .line 485
    :pswitch_1c
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    if-eqz v4, :cond_1

    .line 490
    .line 491
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 492
    .line 493
    .line 494
    move-result v10

    .line 495
    goto :goto_5

    .line 496
    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 497
    .line 498
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    check-cast v4, Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 505
    .line 506
    .line 507
    move-result v4

    .line 508
    goto/16 :goto_1

    .line 509
    .line 510
    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 511
    .line 512
    sget-object v4, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 513
    .line 514
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhi;->f(JLjava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    sget-object v5, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 519
    .line 520
    if-eqz v4, :cond_0

    .line 521
    .line 522
    goto/16 :goto_4

    .line 523
    .line 524
    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 525
    .line 526
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    goto/16 :goto_3

    .line 531
    .line 532
    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 533
    .line 534
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 535
    .line 536
    .line 537
    move-result-wide v4

    .line 538
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 539
    .line 540
    goto/16 :goto_2

    .line 541
    .line 542
    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 543
    .line 544
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    goto/16 :goto_3

    .line 549
    .line 550
    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 551
    .line 552
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 553
    .line 554
    .line 555
    move-result-wide v4

    .line 556
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 557
    .line 558
    goto/16 :goto_2

    .line 559
    .line 560
    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 561
    .line 562
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 563
    .line 564
    .line 565
    move-result-wide v4

    .line 566
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 567
    .line 568
    goto/16 :goto_2

    .line 569
    .line 570
    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 571
    .line 572
    sget-object v4, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 573
    .line 574
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhi;->b(JLjava/lang/Object;)F

    .line 575
    .line 576
    .line 577
    move-result v4

    .line 578
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 579
    .line 580
    .line 581
    move-result v4

    .line 582
    goto/16 :goto_1

    .line 583
    .line 584
    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 585
    .line 586
    sget-object v4, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 587
    .line 588
    invoke-virtual {v4, v6, v7, p1}, Lcom/google/android/gms/internal/auth/zzhi;->a(JLjava/lang/Object;)D

    .line 589
    .line 590
    .line 591
    move-result-wide v4

    .line 592
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 593
    .line 594
    .line 595
    move-result-wide v4

    .line 596
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 597
    .line 598
    goto/16 :goto_2

    .line 599
    .line 600
    :cond_2
    :goto_6
    add-int/lit8 v2, v2, 0x3

    .line 601
    .line 602
    goto/16 :goto_0

    .line 603
    .line 604
    :cond_3
    mul-int/lit8 v3, v3, 0x35

    .line 605
    .line 606
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->j:Lcom/google/android/gms/internal/auth/zzgz;

    .line 607
    .line 608
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/zzha;->hashCode()I

    .line 613
    .line 614
    .line 615
    move-result p1

    .line 616
    add-int/2addr p1, v3

    .line 617
    return p1

    .line 618
    nop

    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final f(Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->k(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/auth/zzev;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->f()V

    .line 17
    .line 18
    .line 19
    iput v1, v0, Lcom/google/android/gms/internal/auth/zzdq;->zza:I

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->d()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 25
    .line 26
    array-length v2, v0

    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, v2, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const v5, 0xfffff

    .line 35
    .line 36
    .line 37
    and-int/2addr v5, v4

    .line 38
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzga;->q(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    int-to-long v5, v5

    .line 43
    const/16 v7, 0x9

    .line 44
    .line 45
    if-eq v4, v7, :cond_3

    .line 46
    .line 47
    const/16 v7, 0x3c

    .line 48
    .line 49
    if-eq v4, v7, :cond_2

    .line 50
    .line 51
    const/16 v7, 0x44

    .line 52
    .line 53
    if-eq v4, v7, :cond_2

    .line 54
    .line 55
    packed-switch v4, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_0
    sget-object v4, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 60
    .line 61
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    if-eqz v7, :cond_4

    .line 66
    .line 67
    move-object v8, v7

    .line 68
    check-cast v8, Lcom/google/android/gms/internal/auth/zzfr;

    .line 69
    .line 70
    iput-boolean v1, v8, Lcom/google/android/gms/internal/auth/zzfr;->c:Z

    .line 71
    .line 72
    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzga;->i:Lcom/google/android/gms/internal/auth/zzfl;

    .line 77
    .line 78
    invoke-virtual {v4, v5, v6, p1}, Lcom/google/android/gms/internal/auth/zzfl;->a(JLjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    aget v4, v0, v3

    .line 83
    .line 84
    invoke-virtual {p0, v4, v3, p1}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    sget-object v7, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 95
    .line 96
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/auth/zzgi;->f(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    sget-object v7, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 115
    .line 116
    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/auth/zzgi;->f(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->j:Lcom/google/android/gms/internal/auth/zzgz;

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgz;->e(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdt;)V
    .locals 7

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move-object v6, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/zzga;->m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->k(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const v3, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int v4, v2, v3

    .line 24
    .line 25
    aget v5, v1, v0

    .line 26
    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzga;->q(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-long v8, v4

    .line 32
    packed-switch v2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_1
    move-object v7, p1

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_1
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v8, v9, p1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v0, 0x2

    .line 56
    .line 57
    aget v1, v1, v2

    .line 58
    .line 59
    and-int/2addr v1, v3

    .line 60
    int-to-long v1, v1

    .line 61
    invoke-static {v5, v1, v2, p1}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_3
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v8, v9, p1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v2, v0, 0x2

    .line 83
    .line 84
    aget v1, v1, v2

    .line 85
    .line 86
    and-int/2addr v1, v3

    .line 87
    int-to-long v1, v1

    .line 88
    invoke-static {v5, v1, v2, p1}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/auth/zzgk;->a:Ljava/lang/Class;

    .line 93
    .line 94
    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/zzfs;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzfr;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v8, v9, p1, v1}, Lcom/google/android/gms/internal/auth/zzhj;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->i:Lcom/google/android/gms/internal/auth/zzfl;

    .line 111
    .line 112
    invoke-virtual {v1, v8, v9, p1, p2}, Lcom/google/android/gms/internal/auth/zzfl;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->x(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_0

    .line 125
    .line 126
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->i(Ljava/lang/Object;JJ)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_0

    .line 142
    .line 143
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_0

    .line 159
    .line 160
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->i(Ljava/lang/Object;JJ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_0

    .line 177
    .line 178
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_0

    .line 195
    .line 196
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_1

    .line 207
    .line 208
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_0

    .line 213
    .line 214
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_0

    .line 231
    .line 232
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v8, v9, p1, v1}, Lcom/google/android/gms/internal/auth/zzhj;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_1

    .line 243
    .line 244
    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->x(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_1

    .line 248
    .line 249
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    .line 255
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-static {v8, v9, p1, v1}, Lcom/google/android/gms/internal/auth/zzhj;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_0

    .line 272
    .line 273
    sget-object v1, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 274
    .line 275
    invoke-virtual {v1, v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhi;->f(JLjava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    invoke-virtual {v1, p1, v8, v9, v2}, Lcom/google/android/gms/internal/auth/zzhi;->c(Ljava/lang/Object;JZ)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_0

    .line 292
    .line 293
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_0

    .line 310
    .line 311
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 312
    .line 313
    .line 314
    move-result-wide v1

    .line 315
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->i(Ljava/lang/Object;JJ)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_1

    .line 322
    .line 323
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_0

    .line 328
    .line 329
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_0

    .line 346
    .line 347
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 348
    .line 349
    .line 350
    move-result-wide v1

    .line 351
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->i(Ljava/lang/Object;JJ)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto/16 :goto_1

    .line 358
    .line 359
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_0

    .line 364
    .line 365
    invoke-static {v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 366
    .line 367
    .line 368
    move-result-wide v1

    .line 369
    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/auth/zzhj;->i(Ljava/lang/Object;JJ)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_1

    .line 376
    .line 377
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_0

    .line 382
    .line 383
    sget-object v1, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 384
    .line 385
    invoke-virtual {v1, v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhi;->b(JLjava/lang/Object;)F

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    invoke-virtual {v1, p1, v8, v9, v2}, Lcom/google/android/gms/internal/auth/zzhi;->e(Ljava/lang/Object;JF)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_0

    .line 402
    .line 403
    sget-object v6, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 404
    .line 405
    invoke-virtual {v6, v8, v9, p2}, Lcom/google/android/gms/internal/auth/zzhi;->a(JLjava/lang/Object;)D

    .line 406
    .line 407
    .line 408
    move-result-wide v10

    .line 409
    move-object v7, p1

    .line 410
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/auth/zzhi;->d(Ljava/lang/Object;JD)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    :goto_2
    add-int/lit8 v0, v0, 0x3

    .line 417
    .line 418
    move-object p1, v7

    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :cond_1
    move-object v7, p1

    .line 422
    sget-object p1, Lcom/google/android/gms/internal/auth/zzgk;->a:Ljava/lang/Class;

    .line 423
    .line 424
    iget-object p1, p0, Lcom/google/android/gms/internal/auth/zzga;->j:Lcom/google/android/gms/internal/auth/zzgz;

    .line 425
    .line 426
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    invoke-virtual {p1, v7, p2}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :cond_2
    move-object v7, p1

    .line 443
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 444
    .line 445
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p2

    .line 449
    const-string v0, "Mutating immutable message: "

    .line 450
    .line 451
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw p1

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final j(ILjava/lang/Object;)Z
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    cmp-long v4, v2, v4

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-nez v4, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    and-int v0, p1, v1

    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->q(I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-long v0, v0

    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 52
    .line 53
    .line 54
    move-result-wide p1

    .line 55
    cmp-long p1, p1, v2

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 70
    .line 71
    .line 72
    move-result-wide p1

    .line 73
    cmp-long p1, p1, v2

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/auth/zzef;->f:Lcom/google/android/gms/internal/auth/zzef;

    .line 104
    .line 105
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/auth/zzef;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_3

    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    instance-of p2, p1, Ljava/lang/String;

    .line 130
    .line 131
    if-eqz p2, :cond_0

    .line 132
    .line 133
    check-cast p1, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-nez p1, :cond_3

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/auth/zzef;

    .line 144
    .line 145
    if-eqz p2, :cond_1

    .line 146
    .line 147
    sget-object p2, Lcom/google/android/gms/internal/auth/zzef;->f:Lcom/google/android/gms/internal/auth/zzef;

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/zzef;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_3

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 163
    .line 164
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhi;->f(JLjava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    return p1

    .line 169
    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_3

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 177
    .line 178
    .line 179
    move-result-wide p1

    .line 180
    cmp-long p1, p1, v2

    .line 181
    .line 182
    if-eqz p1, :cond_3

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_3

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 193
    .line 194
    .line 195
    move-result-wide p1

    .line 196
    cmp-long p1, p1, v2

    .line 197
    .line 198
    if-eqz p1, :cond_3

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->b(JLjava/lang/Object;)J

    .line 202
    .line 203
    .line 204
    move-result-wide p1

    .line 205
    cmp-long p1, p1, v2

    .line 206
    .line 207
    if-eqz p1, :cond_3

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 211
    .line 212
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhi;->b(JLjava/lang/Object;)F

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_3

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    .line 224
    .line 225
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhi;->a(JLjava/lang/Object;)D

    .line 226
    .line 227
    .line 228
    move-result-wide p1

    .line 229
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 230
    .line 231
    .line 232
    move-result-wide p1

    .line 233
    cmp-long p1, p1, v2

    .line 234
    .line 235
    if-eqz p1, :cond_3

    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_2
    ushr-int/lit8 p1, v0, 0x14

    .line 239
    .line 240
    shl-int p1, v5, p1

    .line 241
    .line 242
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 243
    .line 244
    .line 245
    move-result p2

    .line 246
    and-int/2addr p1, p2

    .line 247
    if-eqz p1, :cond_3

    .line 248
    .line 249
    :goto_0
    return v5

    .line 250
    :cond_3
    const/4 p1, 0x0

    .line 251
    return p1

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final l(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 4
    .line 5
    aget p2, v0, p2

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p2, v0

    .line 11
    int-to-long v0, p2

    .line 12
    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public final m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzga;->k(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const v16, 0xfffff

    :goto_1
    iget-object v13, v0, Lcom/google/android/gms/internal/auth/zzga;->b:[Ljava/lang/Object;

    iget-object v12, v0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    const/16 v18, 0x0

    if-ge v4, v5, :cond_89

    add-int/lit8 v15, v4, 0x1

    .line 3
    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    .line 4
    invoke-static {v4, v3, v15, v6}, Lcom/google/android/gms/internal/auth/zzdu;->f(I[BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v15

    iget v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    :cond_0
    move/from16 v34, v15

    move v15, v4

    move/from16 v4, v34

    const/16 p3, 0x3

    ushr-int/lit8 v11, v15, 0x3

    iget v3, v0, Lcom/google/android/gms/internal/auth/zzga;->d:I

    move/from16 v20, v4

    iget v4, v0, Lcom/google/android/gms/internal/auth/zzga;->c:I

    if-le v11, v7, :cond_1

    div-int/lit8 v8, v8, 0x3

    if-lt v11, v4, :cond_2

    if-gt v11, v3, :cond_2

    .line 5
    invoke-virtual {v0, v11, v8}, Lcom/google/android/gms/internal/auth/zzga;->p(II)I

    move-result v3

    goto :goto_2

    :cond_1
    if-lt v11, v4, :cond_2

    if-gt v11, v3, :cond_2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v11, v3}, Lcom/google/android/gms/internal/auth/zzga;->p(II)I

    move-result v4

    move v3, v4

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    .line 7
    :goto_2
    sget-object v8, Lcom/google/android/gms/internal/auth/zzha;->e:Lcom/google/android/gms/internal/auth/zzha;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    move/from16 v0, p5

    move-object/from16 v29, v1

    move/from16 v21, v4

    move/from16 v28, v9

    move-object/from16 v22, v12

    move-object/from16 v17, v13

    move/from16 v24, v14

    move/from16 v3, v20

    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, p2

    move-object v12, v6

    move-object v14, v8

    move-object v8, v2

    goto/16 :goto_55

    :cond_3
    and-int/lit8 v7, v15, 0x7

    add-int/lit8 v17, v3, 0x1

    .line 8
    aget v4, v12, v17

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzga;->q(I)I

    move-result v5

    and-int v6, v4, v16

    move-object/from16 v22, v12

    move-object/from16 v17, v13

    int-to-long v12, v6

    const/high16 v23, 0x20000000

    const-wide/16 v25, 0x0

    const-string v6, ""

    move-wide/from16 v28, v12

    const/16 v12, 0x11

    const/16 v30, 0x1

    if-gt v5, v12, :cond_27

    add-int/lit8 v12, v3, 0x2

    .line 9
    aget v12, v22, v12

    ushr-int/lit8 v24, v12, 0x14

    shl-int v24, v30, v24

    and-int v12, v12, v16

    if-eq v12, v9, :cond_6

    move/from16 v13, v16

    if-eq v9, v13, :cond_4

    int-to-long v9, v9

    .line 10
    invoke-virtual {v1, v2, v9, v10, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    if-ne v12, v13, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    int-to-long v9, v12

    .line 11
    invoke-virtual {v1, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    :goto_3
    move v14, v9

    goto :goto_4

    :cond_6
    move v12, v9

    :goto_4
    packed-switch v5, :pswitch_data_0

    move/from16 v5, p3

    if-ne v7, v5, :cond_7

    .line 12
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/auth/zzga;->u(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    shl-int/lit8 v5, v11, 0x3

    or-int/lit8 v8, v5, 0x4

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v5

    .line 14
    check-cast v5, Lcom/google/android/gms/internal/auth/zzga;

    move/from16 v7, p4

    move-object/from16 v9, p6

    move v10, v3

    move-object v3, v5

    move/from16 v6, v20

    const/16 v21, -0x1

    move-object/from16 v5, p2

    .line 15
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/auth/zzga;->m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    move-object v13, v9

    move-object v9, v5

    iput-object v4, v13, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, v10, v2, v4}, Lcom/google/android/gms/internal/auth/zzga;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    or-int v14, v14, v24

    :goto_5
    move/from16 v5, p4

    move v4, v3

    :goto_6
    move-object v3, v9

    move v8, v10

    move v7, v11

    move v9, v12

    move-object v6, v13

    goto/16 :goto_0

    :cond_7
    move v10, v3

    const/16 v21, -0x1

    move-object/from16 v13, p2

    move/from16 v27, v14

    move/from16 v9, v20

    const/16 v19, 0x0

    move-object v14, v1

    move-object v1, v2

    move/from16 v20, v15

    move-object/from16 v15, p6

    goto/16 :goto_17

    :pswitch_0
    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v20

    const/16 v21, -0x1

    if-nez v7, :cond_8

    .line 17
    invoke-static {v9, v3, v13}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget-wide v3, v13, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    .line 18
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzej;->a(J)J

    move-result-wide v5

    move-wide/from16 v3, v28

    .line 19
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v34, v2

    move-object v2, v1

    move-object/from16 v1, v34

    or-int v14, v14, v24

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    move v4, v7

    goto :goto_6

    :cond_8
    move-object/from16 v34, v2

    move-object v2, v1

    move-object/from16 v1, v34

    :cond_9
    move/from16 v27, v14

    move/from16 v20, v15

    const/16 v19, 0x0

    move-object v14, v2

    move-object v15, v13

    move-object v13, v9

    :goto_7
    move v9, v3

    goto/16 :goto_17

    :pswitch_1
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v20

    move-wide/from16 v5, v28

    const/16 v21, -0x1

    if-nez v7, :cond_9

    .line 20
    invoke-static {v9, v3, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v4

    iget v3, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    and-int/lit8 v7, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1

    neg-int v7, v7

    xor-int/2addr v3, v7

    .line 21
    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    or-int v14, v14, v24

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v5, p4

    goto :goto_6

    :pswitch_2
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v20

    move-wide/from16 v5, v28

    const/16 v21, -0x1

    if-nez v7, :cond_9

    .line 22
    invoke-static {v9, v3, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    .line 23
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->s(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v17

    const/high16 v18, -0x80000000

    and-int v4, v4, v18

    if-eqz v4, :cond_c

    if-eqz v17, :cond_c

    .line 24
    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_a

    .line 25
    :cond_a
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/auth/zzev;

    iget-object v5, v4, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    if-ne v5, v8, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v5

    .line 26
    iput-object v5, v4, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_b
    int-to-long v6, v7

    .line 27
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v15, v4}, Lcom/google/android/gms/internal/auth/zzha;->b(ILjava/lang/Object;)V

    :goto_9
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_5

    .line 28
    :cond_c
    :goto_a
    invoke-virtual {v2, v1, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v14, v14, v24

    goto :goto_9

    :pswitch_3
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v20

    move-wide/from16 v5, v28

    const/4 v4, 0x2

    const/16 v21, -0x1

    if-ne v7, v4, :cond_9

    .line 29
    invoke-static {v9, v3, v13}, Lcom/google/android/gms/internal/auth/zzdu;->a([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v4

    iget-object v3, v13, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    .line 30
    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move v10, v3

    move/from16 v3, v20

    const/4 v4, 0x2

    const/16 v21, -0x1

    if-ne v7, v4, :cond_d

    move-object v4, v1

    .line 31
    invoke-virtual {v0, v10, v4}, Lcom/google/android/gms/internal/auth/zzga;->u(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    .line 32
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    move-object v6, v4

    move v4, v3

    move-object v3, v9

    move-object v9, v6

    move-object v6, v13

    move-object v13, v5

    move/from16 v5, p4

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v4

    move-object v2, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    .line 34
    invoke-virtual {v0, v10, v9, v3}, Lcom/google/android/gms/internal/auth/zzga;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    or-int v14, v14, v24

    move-object v3, v1

    move-object v2, v9

    move v8, v10

    move v7, v11

    move v9, v12

    move-object v1, v13

    goto/16 :goto_0

    :cond_d
    move-object/from16 v34, v9

    move-object v9, v1

    move-object/from16 v1, v34

    move-object/from16 v34, v13

    move-object v13, v2

    move-object/from16 v2, v34

    move/from16 v27, v14

    move/from16 v20, v15

    const/16 v19, 0x0

    :cond_e
    move-object v15, v2

    move-object v14, v13

    :goto_b
    move-object v13, v1

    move-object v1, v9

    goto/16 :goto_7

    :pswitch_5
    move-object v13, v1

    move-object v9, v2

    move v10, v3

    move/from16 v27, v14

    move/from16 v3, v20

    const/4 v5, 0x2

    const/16 v21, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v20, v15

    move-wide/from16 v14, v28

    if-ne v7, v5, :cond_22

    and-int v4, v4, v23

    if-eqz v4, :cond_1f

    .line 35
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v4, v2, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ltz v4, :cond_1e

    if-nez v4, :cond_f

    .line 36
    iput-object v6, v2, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    move v4, v3

    const/4 v7, 0x0

    goto/16 :goto_11

    .line 37
    :cond_f
    sget-object v5, Lcom/google/android/gms/internal/auth/zzhn;->a:Lcom/google/android/gms/internal/auth/zzhm;

    .line 38
    array-length v5, v1

    sub-int v6, v5, v3

    or-int v7, v3, v4

    sub-int/2addr v6, v4

    or-int/2addr v6, v7

    if-ltz v6, :cond_1d

    add-int v5, v3, v4

    .line 39
    new-array v4, v4, [C

    const/4 v6, 0x0

    :goto_c
    if-ge v3, v5, :cond_10

    .line 40
    aget-byte v7, v1, v3

    if-ltz v7, :cond_10

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    .line 41
    aput-char v7, v4, v6

    move v6, v8

    goto :goto_c

    :cond_10
    :goto_d
    if-ge v3, v5, :cond_1c

    add-int/lit8 v7, v3, 0x1

    .line 42
    aget-byte v8, v1, v3

    if-ltz v8, :cond_11

    add-int/lit8 v3, v6, 0x1

    int-to-char v8, v8

    .line 43
    aput-char v8, v4, v6

    move v6, v3

    move v3, v7

    :goto_e
    if-ge v3, v5, :cond_10

    .line 44
    aget-byte v7, v1, v3

    if-ltz v7, :cond_10

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v6, 0x1

    int-to-char v7, v7

    .line 45
    aput-char v7, v4, v6

    move v6, v8

    goto :goto_e

    :cond_11
    move/from16 v17, v3

    const/16 v3, -0x20

    if-ge v8, v3, :cond_14

    if-ge v7, v5, :cond_13

    add-int/lit8 v3, v17, 0x2

    .line 46
    aget-byte v7, v1, v7

    add-int/lit8 v17, v6, 0x1

    move/from16 p3, v3

    const/16 v3, -0x3e

    if-lt v8, v3, :cond_12

    .line 47
    invoke-static {v7}, Lcom/google/android/gms/internal/auth/zzhk;->a(B)Z

    move-result v3

    if-nez v3, :cond_12

    and-int/lit8 v3, v8, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v3, v7

    int-to-char v3, v3

    .line 48
    aput-char v3, v4, v6

    move/from16 v3, p3

    move/from16 v6, v17

    goto :goto_d

    .line 49
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 50
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_14
    const/16 v3, -0x10

    if-ge v8, v3, :cond_19

    add-int/lit8 v3, v5, -0x1

    if-ge v7, v3, :cond_18

    add-int/lit8 v3, v17, 0x2

    .line 51
    aget-byte v7, v1, v7

    add-int/lit8 v17, v17, 0x3

    aget-byte v3, v1, v3

    add-int/lit8 v18, v6, 0x1

    .line 52
    invoke-static {v7}, Lcom/google/android/gms/internal/auth/zzhk;->a(B)Z

    move-result v22

    if-nez v22, :cond_17

    move/from16 v22, v3

    const/16 v3, -0x60

    move/from16 v23, v5

    const/16 v5, -0x20

    if-ne v8, v5, :cond_15

    if-lt v7, v3, :cond_17

    move v8, v5

    :cond_15
    const/16 v5, -0x13

    if-ne v8, v5, :cond_16

    if-ge v7, v3, :cond_17

    move v8, v5

    :cond_16
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/auth/zzhk;->a(B)Z

    move-result v3

    if-nez v3, :cond_17

    and-int/lit8 v3, v8, 0xf

    and-int/lit8 v5, v7, 0x3f

    and-int/lit8 v7, v22, 0x3f

    shl-int/lit8 v3, v3, 0xc

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v3, v5

    or-int/2addr v3, v7

    int-to-char v3, v3

    .line 53
    aput-char v3, v4, v6

    move/from16 v3, v17

    move/from16 v6, v18

    :goto_f
    move/from16 v5, v23

    goto/16 :goto_d

    .line 54
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 55
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_19
    move/from16 v23, v5

    add-int/lit8 v5, v23, -0x2

    if-ge v7, v5, :cond_1b

    add-int/lit8 v3, v17, 0x2

    .line 56
    aget-byte v5, v1, v7

    add-int/lit8 v7, v17, 0x3

    aget-byte v3, v1, v3

    add-int/lit8 v17, v17, 0x4

    aget-byte v7, v1, v7

    .line 57
    invoke-static {v5}, Lcom/google/android/gms/internal/auth/zzhk;->a(B)Z

    move-result v18

    if-nez v18, :cond_1a

    shl-int/lit8 v18, v8, 0x1c

    add-int/lit8 v22, v5, 0x70

    add-int v22, v22, v18

    shr-int/lit8 v18, v22, 0x1e

    if-nez v18, :cond_1a

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzhk;->a(B)Z

    move-result v18

    if-nez v18, :cond_1a

    invoke-static {v7}, Lcom/google/android/gms/internal/auth/zzhk;->a(B)Z

    move-result v18

    if-nez v18, :cond_1a

    and-int/lit8 v8, v8, 0x7

    and-int/lit8 v5, v5, 0x3f

    and-int/lit8 v3, v3, 0x3f

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v8, v8, 0x12

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v5, v8

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v5

    or-int/2addr v3, v7

    ushr-int/lit8 v5, v3, 0xa

    const v7, 0xd7c0

    add-int/2addr v5, v7

    int-to-char v5, v5

    .line 58
    aput-char v5, v4, v6

    add-int/lit8 v5, v6, 0x1

    and-int/lit16 v3, v3, 0x3ff

    const v7, 0xdc00

    add-int/2addr v3, v7

    int-to-char v3, v3

    .line 59
    aput-char v3, v4, v5

    add-int/lit8 v6, v6, 0x2

    move/from16 v3, v17

    goto :goto_f

    .line 60
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 61
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_1c
    move/from16 v23, v5

    .line 62
    new-instance v3, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v3, v2, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    move/from16 v4, v23

    goto :goto_11

    :cond_1d
    const/4 v7, 0x0

    .line 63
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v3, v5, v30

    const/16 v31, 0x2

    aput-object v4, v5, v31

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_1f
    const/4 v7, 0x0

    .line 66
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v4, v2, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ltz v4, :cond_21

    if-nez v4, :cond_20

    .line 67
    iput-object v6, v2, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    :goto_10
    move v4, v3

    goto :goto_11

    :cond_20
    new-instance v5, Ljava/lang/String;

    .line 68
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v1, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v2, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_10

    .line 69
    :goto_11
    iget-object v3, v2, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    .line 70
    invoke-virtual {v13, v9, v14, v15, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_12
    or-int v14, v27, v24

    move/from16 v5, p4

    move-object v3, v1

    move-object v6, v2

    move-object v2, v9

    move v8, v10

    move v7, v11

    move v9, v12

    move-object v1, v13

    :goto_13
    move/from16 v15, v20

    goto/16 :goto_0

    .line 71
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_22
    move-object v15, v2

    move-object v14, v13

    const/16 v19, 0x0

    goto/16 :goto_b

    :pswitch_6
    move-object v13, v1

    move-object v9, v2

    move v10, v3

    move/from16 v27, v14

    move/from16 v3, v20

    const/16 v19, 0x0

    const/16 v21, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v20, v15

    move-wide/from16 v14, v28

    if-nez v7, :cond_e

    .line 72
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v4

    iget-wide v5, v2, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    cmp-long v3, v5, v25

    if-eqz v3, :cond_23

    move/from16 v3, v30

    goto :goto_14

    :cond_23
    move/from16 v3, v19

    .line 73
    :goto_14
    sget-object v5, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    invoke-virtual {v5, v9, v14, v15, v3}, Lcom/google/android/gms/internal/auth/zzhi;->c(Ljava/lang/Object;JZ)V

    goto :goto_12

    :pswitch_7
    move-object v13, v1

    move-object v9, v2

    move v10, v3

    move/from16 v27, v14

    move/from16 v3, v20

    const/4 v4, 0x5

    const/16 v19, 0x0

    const/16 v21, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v20, v15

    move-wide/from16 v14, v28

    if-ne v7, v4, :cond_e

    .line 74
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v4

    invoke-virtual {v13, v9, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v4, v3, 0x4

    goto :goto_12

    :pswitch_8
    move-object v13, v1

    move-object v9, v2

    move v10, v3

    move/from16 v27, v14

    move/from16 v3, v20

    move/from16 v4, v30

    const/16 v19, 0x0

    const/16 v21, -0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v20, v15

    move-wide/from16 v14, v28

    if-ne v7, v4, :cond_24

    .line 75
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v5

    move-object v4, v13

    move-object v13, v1

    move-object v1, v4

    move-wide/from16 v34, v14

    move-object v15, v2

    move-object v2, v9

    move v9, v3

    move-wide/from16 v3, v34

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v4, v9, 0x8

    or-int v14, v27, v24

    :goto_15
    move/from16 v5, p4

    :goto_16
    move v8, v10

    move v7, v11

    move v9, v12

    move-object v3, v13

    move-object v6, v15

    goto/16 :goto_13

    :cond_24
    move-object v15, v13

    move-object v13, v1

    move-object v1, v15

    move-object v15, v2

    move-object v2, v9

    move v9, v3

    :cond_25
    move-object v14, v1

    :cond_26
    move-object v1, v2

    goto/16 :goto_17

    :pswitch_9
    move-object/from16 v13, p2

    move v10, v3

    move/from16 v27, v14

    move/from16 v9, v20

    move-wide/from16 v3, v28

    const/16 v19, 0x0

    const/16 v21, -0x1

    move/from16 v20, v15

    move-object/from16 v15, p6

    if-nez v7, :cond_25

    .line 76
    invoke-static {v13, v9, v15}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    iget v6, v15, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    .line 77
    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v14, v27, v24

    move v4, v5

    move v8, v10

    move v7, v11

    move v9, v12

    move-object v3, v13

    move-object v6, v15

    move/from16 v15, v20

    const v16, 0xfffff

    move/from16 v5, p4

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v13, p2

    move v10, v3

    move/from16 v27, v14

    move/from16 v9, v20

    move-wide/from16 v3, v28

    const/16 v19, 0x0

    const/16 v21, -0x1

    move/from16 v20, v15

    move-object/from16 v15, p6

    if-nez v7, :cond_25

    .line 78
    invoke-static {v13, v9, v15}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget-wide v5, v15, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    .line 79
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v14, v1

    or-int v1, v27, v24

    move-object v3, v14

    move v14, v1

    move-object v1, v3

    move/from16 v5, p4

    move v4, v7

    goto :goto_16

    :pswitch_b
    move-object/from16 v13, p2

    move v10, v3

    move/from16 v27, v14

    move/from16 v9, v20

    move-wide/from16 v3, v28

    const/16 v19, 0x0

    const/16 v21, -0x1

    move-object v14, v1

    move/from16 v20, v15

    const/4 v1, 0x5

    move-object/from16 v15, p6

    if-ne v7, v1, :cond_26

    .line 80
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 81
    sget-object v5, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    invoke-virtual {v5, v2, v3, v4, v1}, Lcom/google/android/gms/internal/auth/zzhi;->e(Ljava/lang/Object;JF)V

    add-int/lit8 v4, v9, 0x4

    or-int v1, v27, v24

    move-object v3, v14

    move v14, v1

    move-object v1, v3

    goto/16 :goto_15

    :pswitch_c
    move-object/from16 v13, p2

    move v10, v3

    move/from16 v27, v14

    move/from16 v9, v20

    move-wide/from16 v3, v28

    const/16 v19, 0x0

    const/16 v21, -0x1

    move-object v14, v1

    move/from16 v20, v15

    move/from16 v1, v30

    move-object/from16 v15, p6

    if-ne v7, v1, :cond_26

    .line 82
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/auth/zzhj;->c:Lcom/google/android/gms/internal/auth/zzhi;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzhi;->d(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v4, v9, 0x8

    or-int v2, v27, v24

    move v3, v2

    move-object v2, v1

    move-object v1, v14

    move v14, v3

    goto/16 :goto_15

    :goto_17
    move/from16 v0, p5

    move v3, v9

    move/from16 v28, v12

    move-object v9, v13

    move-object/from16 v29, v14

    move-object v12, v15

    move/from16 v15, v20

    move/from16 v24, v27

    move-object v14, v8

    move-object v8, v1

    goto/16 :goto_55

    :cond_27
    move-object/from16 v13, p2

    move-object v12, v1

    move-object v1, v2

    move v10, v3

    move/from16 v24, v20

    move-wide/from16 v2, v28

    const/16 v19, 0x0

    const/16 v21, -0x1

    move/from16 v28, v9

    move/from16 v20, v15

    move-object/from16 v15, p6

    const/16 v9, 0x1b

    const/16 v29, 0xa

    if-ne v5, v9, :cond_2b

    const/4 v9, 0x2

    if-ne v7, v9, :cond_2a

    .line 84
    invoke-virtual {v12, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/auth/zzez;

    .line 85
    invoke-interface {v4}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result v5

    if-nez v5, :cond_29

    .line 86
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_28

    :goto_18
    move/from16 v5, v29

    goto :goto_19

    :cond_28
    add-int v29, v5, v5

    goto :goto_18

    .line 87
    :goto_19
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/auth/zzez;->f(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object v4

    .line 88
    invoke-virtual {v12, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_29
    move-object v6, v4

    .line 89
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v1

    move-object/from16 v9, p1

    move/from16 v5, p4

    move-object v3, v13

    move-object v7, v15

    move/from16 v2, v20

    move/from16 v4, v24

    .line 90
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzdu;->c(Lcom/google/android/gms/internal/auth/zzgi;I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v4

    move v15, v2

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move-object v2, v9

    move v8, v10

    move v7, v11

    move-object v1, v12

    move/from16 v9, v28

    goto/16 :goto_0

    :cond_2a
    move/from16 v15, v20

    move-object/from16 v9, p2

    move-object/from16 v13, p6

    move-object/from16 v29, v12

    move/from16 v12, v24

    move/from16 v24, v14

    move-object v14, v8

    move-object v8, v1

    move/from16 v1, p4

    goto/16 :goto_49

    :cond_2b
    move-object v9, v1

    move/from16 v15, v20

    move/from16 v20, v24

    const/16 v1, 0x31

    if-gt v5, v1, :cond_74

    move/from16 v24, v14

    int-to-long v13, v4

    sget-object v1, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 91
    invoke-virtual {v1, v9, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/auth/zzez;

    .line 92
    invoke-interface {v4}, Lcom/google/android/gms/internal/auth/zzez;->zzc()Z

    move-result v23

    if-nez v23, :cond_2d

    .line 93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_2c

    :goto_1a
    move-wide/from16 v32, v13

    move/from16 v13, v29

    goto :goto_1b

    :cond_2c
    add-int v29, v23, v23

    goto :goto_1a

    .line 94
    :goto_1b
    invoke-interface {v4, v13}, Lcom/google/android/gms/internal/auth/zzez;->f(I)Lcom/google/android/gms/internal/auth/zzez;

    move-result-object v4

    .line 95
    invoke-virtual {v1, v9, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1c
    move-object v13, v4

    goto :goto_1d

    :cond_2d
    move-wide/from16 v32, v13

    goto :goto_1c

    :goto_1d
    packed-switch v5, :pswitch_data_1

    const/4 v5, 0x3

    if-ne v7, v5, :cond_30

    .line 96
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v14

    and-int/lit8 v1, v15, -0x8

    or-int/lit8 v6, v1, 0x4

    .line 97
    invoke-interface {v14}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object v2

    .line 98
    move-object v1, v14

    check-cast v1, Lcom/google/android/gms/internal/auth/zzga;

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v4, v20

    .line 99
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzga;->m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v20

    move-object/from16 v34, v7

    move-object v7, v1

    move v1, v6

    move-object/from16 v6, v34

    iput-object v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    .line 100
    invoke-interface {v14, v2}, Lcom/google/android/gms/internal/auth/zzgi;->f(Ljava/lang/Object;)V

    iput-object v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    .line 101
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v20

    :goto_1e
    if-ge v2, v5, :cond_2f

    move/from16 v20, v4

    .line 102
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v4

    move/from16 v23, v1

    iget v1, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v1, :cond_2e

    .line 103
    invoke-interface {v14}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object v2

    move-object v1, v7

    move-object/from16 v29, v12

    move/from16 v12, v20

    move-object v7, v6

    move/from16 v6, v23

    .line 104
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzga;->m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v4

    move-object/from16 v34, v7

    move-object v7, v1

    move v1, v6

    move-object/from16 v6, v34

    iput-object v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    .line 105
    invoke-interface {v14, v2}, Lcom/google/android/gms/internal/auth/zzgi;->f(Ljava/lang/Object;)V

    iput-object v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    .line 106
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    move v4, v12

    move-object/from16 v12, v29

    goto :goto_1e

    :cond_2e
    move-object/from16 v29, v12

    move/from16 v12, v20

    goto :goto_1f

    :cond_2f
    move-object/from16 v29, v12

    move v12, v4

    :goto_1f
    move v4, v2

    move-object v9, v3

    move v1, v5

    move-object v13, v6

    move-object v14, v8

    goto/16 :goto_45

    :cond_30
    move-object/from16 v29, v12

    move-object/from16 v9, p2

    move/from16 v1, p4

    move-object/from16 v13, p6

    move-object v14, v8

    move/from16 v12, v20

    goto/16 :goto_44

    :pswitch_d
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v29, v12

    move/from16 v12, v20

    const/4 v4, 0x2

    if-ne v7, v4, :cond_34

    .line 107
    check-cast v13, Lcom/google/android/gms/internal/auth/zzfm;

    .line 108
    invoke-static {v3, v12, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v2, v1

    :goto_20
    if-ge v1, v2, :cond_31

    .line 109
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    move-object v14, v8

    iget-wide v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    .line 110
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/auth/zzej;->a(J)J

    move-result-wide v7

    invoke-virtual {v13, v7, v8}, Lcom/google/android/gms/internal/auth/zzfm;->c(J)V

    move-object v8, v14

    goto :goto_20

    :cond_31
    move-object v14, v8

    if-ne v1, v2, :cond_33

    :cond_32
    :goto_21
    move v4, v1

    move-object v9, v3

    move v1, v5

    move-object v13, v6

    goto/16 :goto_45

    .line 111
    :cond_33
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_34
    move-object v14, v8

    if-nez v7, :cond_35

    .line 112
    check-cast v13, Lcom/google/android/gms/internal/auth/zzfm;

    .line 113
    invoke-static {v3, v12, v6}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-wide v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    .line 114
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/auth/zzej;->a(J)J

    move-result-wide v7

    invoke-virtual {v13, v7, v8}, Lcom/google/android/gms/internal/auth/zzfm;->c(J)V

    :goto_22
    if-ge v1, v5, :cond_32

    .line 115
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v4, :cond_32

    .line 116
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget-wide v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/auth/zzej;->a(J)J

    move-result-wide v7

    .line 117
    invoke-virtual {v13, v7, v8}, Lcom/google/android/gms/internal/auth/zzfm;->c(J)V

    goto :goto_22

    :cond_35
    move-object v9, v3

    :goto_23
    move v1, v5

    move-object v13, v6

    goto/16 :goto_44

    :pswitch_e
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v14, v8

    move-object/from16 v29, v12

    move/from16 v12, v20

    const/4 v4, 0x2

    if-ne v7, v4, :cond_38

    .line 118
    check-cast v13, Lcom/google/android/gms/internal/auth/zzew;

    .line 119
    invoke-static {v3, v12, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v2, v1

    :goto_24
    if-ge v1, v2, :cond_36

    .line 120
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    and-int/lit8 v7, v4, 0x1

    const/16 v30, 0x1

    ushr-int/lit8 v4, v4, 0x1

    neg-int v7, v7

    xor-int/2addr v4, v7

    .line 121
    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/auth/zzew;->c(I)V

    goto :goto_24

    :cond_36
    if-ne v1, v2, :cond_37

    goto :goto_21

    .line 122
    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_38
    if-nez v7, :cond_35

    .line 123
    check-cast v13, Lcom/google/android/gms/internal/auth/zzew;

    .line 124
    invoke-static {v3, v12, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    and-int/lit8 v4, v2, 0x1

    const/16 v30, 0x1

    ushr-int/lit8 v2, v2, 0x1

    neg-int v4, v4

    xor-int/2addr v2, v4

    .line 125
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/auth/zzew;->c(I)V

    :goto_25
    if-ge v1, v5, :cond_32

    .line 126
    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v4, :cond_32

    .line 127
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    and-int/lit8 v4, v2, 0x1

    const/16 v30, 0x1

    ushr-int/lit8 v2, v2, 0x1

    neg-int v4, v4

    xor-int/2addr v2, v4

    .line 128
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/auth/zzew;->c(I)V

    goto :goto_25

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v14, v8

    move-object/from16 v29, v12

    move/from16 v12, v20

    const/4 v4, 0x2

    if-ne v7, v4, :cond_3b

    .line 129
    move-object v1, v13

    check-cast v1, Lcom/google/android/gms/internal/auth/zzew;

    .line 130
    invoke-static {v3, v12, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v4, v2

    :goto_26
    if-ge v2, v4, :cond_39

    .line 131
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v7, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    .line 132
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/auth/zzew;->c(I)V

    goto :goto_26

    :cond_39
    if-ne v2, v4, :cond_3a

    move v7, v2

    move v4, v12

    move-object v2, v13

    move v1, v15

    goto :goto_27

    .line 133
    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_3b
    if-nez v7, :cond_35

    move-object v2, v3

    move v4, v5

    move v3, v12

    move-object v5, v13

    move v1, v15

    .line 134
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->g(I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    move/from16 v34, v3

    move-object v3, v2

    move-object v2, v5

    move v5, v4

    move/from16 v4, v34

    .line 135
    :goto_27
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->s(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v8

    .line 136
    sget-object v12, Lcom/google/android/gms/internal/auth/zzgk;->a:Ljava/lang/Class;

    if-eqz v8, :cond_40

    .line 137
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v20, v18

    move/from16 v13, v19

    move v15, v13

    :goto_28
    if-ge v13, v12, :cond_3f

    .line 138
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v25, v7

    move-object/from16 v7, v23

    check-cast v7, Ljava/lang/Integer;

    move-object/from16 v23, v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 139
    invoke-interface/range {v23 .. v23}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v26

    if-eqz v26, :cond_3d

    if-eq v13, v15, :cond_3c

    .line 140
    invoke-interface {v2, v15, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    add-int/lit8 v15, v15, 0x1

    move/from16 v26, v13

    goto :goto_29

    .line 141
    :cond_3d
    iget-object v7, v0, Lcom/google/android/gms/internal/auth/zzga;->j:Lcom/google/android/gms/internal/auth/zzgz;

    if-nez v20, :cond_3e

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/auth/zzgz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v20

    :cond_3e
    move/from16 v26, v13

    move-object/from16 v13, v20

    int-to-long v8, v8

    .line 142
    invoke-virtual {v7, v11, v8, v9, v13}, Lcom/google/android/gms/internal/auth/zzgz;->d(IJLjava/lang/Object;)V

    move-object/from16 v20, v13

    :goto_29
    add-int/lit8 v13, v26, 0x1

    move-object/from16 v9, p1

    move-object/from16 v8, v23

    move/from16 v7, v25

    goto :goto_28

    :cond_3f
    move/from16 v25, v7

    if-eq v15, v12, :cond_41

    .line 143
    invoke-interface {v2, v15, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_2a

    :cond_40
    move/from16 v25, v7

    :cond_41
    :goto_2a
    move v15, v1

    move-object v9, v3

    move v12, v4

    move v1, v5

    move-object v13, v6

    move/from16 v4, v25

    goto/16 :goto_45

    :pswitch_10
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move v1, v15

    move/from16 v4, v20

    const/4 v9, 0x2

    if-ne v7, v9, :cond_49

    .line 144
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget v8, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ltz v8, :cond_48

    .line 145
    array-length v9, v3

    sub-int/2addr v9, v7

    if-gt v8, v9, :cond_47

    if-nez v8, :cond_42

    .line 146
    sget-object v8, Lcom/google/android/gms/internal/auth/zzef;->f:Lcom/google/android/gms/internal/auth/zzef;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 147
    :cond_42
    invoke-static {v3, v7, v8}, Lcom/google/android/gms/internal/auth/zzef;->r([BII)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/2addr v7, v8

    :goto_2c
    if-ge v7, v5, :cond_46

    .line 148
    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v8

    iget v9, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v1, v9, :cond_46

    .line 149
    invoke-static {v3, v8, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget v8, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ltz v8, :cond_45

    .line 150
    array-length v9, v3

    sub-int/2addr v9, v7

    if-gt v8, v9, :cond_44

    if-nez v8, :cond_43

    .line 151
    sget-object v8, Lcom/google/android/gms/internal/auth/zzef;->f:Lcom/google/android/gms/internal/auth/zzef;

    .line 152
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 153
    :cond_43
    invoke-static {v3, v7, v8}, Lcom/google/android/gms/internal/auth/zzef;->r([BII)Lcom/google/android/gms/internal/auth/zzef;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 154
    :cond_44
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 155
    :cond_45
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_46
    move v15, v1

    move-object v9, v3

    move v12, v4

    move v1, v5

    move-object v13, v6

    move v4, v7

    goto/16 :goto_45

    .line 156
    :cond_47
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 157
    :cond_48
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_49
    move v15, v1

    move-object v9, v3

    move v12, v4

    goto/16 :goto_23

    :pswitch_11
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move v1, v15

    move/from16 v4, v20

    const/4 v9, 0x2

    if-ne v7, v9, :cond_49

    move v15, v1

    .line 158
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v1

    move-object v7, v6

    move-object v6, v2

    move v2, v15

    .line 159
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzdu;->c(Lcom/google/android/gms/internal/auth/zzgi;I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    move-object v9, v3

    move v12, v4

    move-object v13, v7

    :goto_2d
    move v4, v1

    move v1, v5

    goto/16 :goto_45

    :pswitch_12
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move/from16 v4, v20

    const/4 v9, 0x2

    move-object/from16 v13, p6

    if-ne v7, v9, :cond_56

    const-wide/32 v7, 0x20000000

    and-long v7, v32, v7

    cmp-long v1, v7, v25

    if-nez v1, :cond_4f

    .line 160
    invoke-static {v3, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ltz v7, :cond_4e

    if-nez v7, :cond_4a

    .line 161
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 162
    :cond_4a
    new-instance v8, Ljava/lang/String;

    .line 163
    sget-object v9, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 164
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/2addr v1, v7

    :goto_2f
    if-ge v1, v5, :cond_4d

    .line 165
    invoke-static {v3, v1, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget v8, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v8, :cond_4d

    .line 166
    invoke-static {v3, v7, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ltz v7, :cond_4c

    if-nez v7, :cond_4b

    .line 167
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_4b
    new-instance v8, Ljava/lang/String;

    .line 168
    sget-object v9, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v7, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 169
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 170
    :cond_4c
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_4d
    move-object v9, v3

    move v12, v4

    goto :goto_2d

    .line 171
    :cond_4e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 172
    :cond_4f
    invoke-static {v3, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ltz v7, :cond_55

    if-nez v7, :cond_50

    .line 173
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_50
    add-int v8, v1, v7

    .line 174
    sget-object v9, Lcom/google/android/gms/internal/auth/zzhn;->a:Lcom/google/android/gms/internal/auth/zzhm;

    invoke-virtual {v9, v3, v1, v8}, Lcom/google/android/gms/internal/auth/zzhl;->b([BII)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 175
    new-instance v9, Ljava/lang/String;

    .line 176
    sget-object v12, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v7, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 177
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    move v1, v8

    :goto_31
    if-ge v1, v5, :cond_4d

    .line 178
    invoke-static {v3, v1, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget v8, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v8, :cond_4d

    .line 179
    invoke-static {v3, v7, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    iget v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ltz v7, :cond_53

    if-nez v7, :cond_51

    .line 180
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_51
    add-int v8, v1, v7

    .line 181
    sget-object v9, Lcom/google/android/gms/internal/auth/zzhn;->a:Lcom/google/android/gms/internal/auth/zzhm;

    invoke-virtual {v9, v3, v1, v8}, Lcom/google/android/gms/internal/auth/zzhl;->b([BII)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 182
    new-instance v9, Ljava/lang/String;

    .line 183
    sget-object v12, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v7, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 184
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 185
    :cond_52
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 186
    :cond_53
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 187
    :cond_54
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    .line 188
    :cond_55
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->b()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_56
    move-object v9, v3

    move v12, v4

    move v1, v5

    goto/16 :goto_44

    :pswitch_13
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move/from16 v4, v20

    const/4 v9, 0x2

    move-object/from16 v13, p6

    if-ne v7, v9, :cond_5b

    .line 189
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/auth/zzdv;

    .line 190
    invoke-static {v3, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v6, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v6, v2

    :goto_32
    if-ge v2, v6, :cond_58

    .line 191
    invoke-static {v3, v2, v13}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    cmp-long v7, v7, v25

    if-eqz v7, :cond_57

    const/4 v7, 0x1

    goto :goto_33

    :cond_57
    move/from16 v7, v19

    .line 192
    :goto_33
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/auth/zzdv;->c(Z)V

    goto :goto_32

    :cond_58
    if-ne v2, v6, :cond_5a

    :cond_59
    :goto_34
    move-object v9, v3

    move v12, v4

    move v1, v5

    move v4, v2

    goto/16 :goto_45

    .line 193
    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_5b
    if-nez v7, :cond_56

    .line 194
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/auth/zzdv;

    .line 195
    invoke-static {v3, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v6, v13, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    cmp-long v6, v6, v25

    if-eqz v6, :cond_5c

    const/4 v6, 0x1

    goto :goto_35

    :cond_5c
    move/from16 v6, v19

    .line 196
    :goto_35
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/auth/zzdv;->c(Z)V

    :goto_36
    if-ge v2, v5, :cond_59

    .line 197
    invoke-static {v3, v2, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v6

    iget v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v7, :cond_59

    .line 198
    invoke-static {v3, v6, v13}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget-wide v6, v13, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    cmp-long v6, v6, v25

    if-eqz v6, :cond_5d

    const/4 v6, 0x1

    goto :goto_37

    :cond_5d
    move/from16 v6, v19

    .line 199
    :goto_37
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/auth/zzdv;->c(Z)V

    goto :goto_36

    :pswitch_14
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move/from16 v4, v20

    const/4 v9, 0x2

    move-object/from16 v13, p6

    if-ne v7, v9, :cond_60

    .line 200
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/auth/zzew;

    .line 201
    invoke-static {v3, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v6, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v6, v2

    :goto_38
    if-ge v2, v6, :cond_5e

    .line 202
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/auth/zzew;->c(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_38

    :cond_5e
    if-ne v2, v6, :cond_5f

    goto :goto_34

    .line 203
    :cond_5f
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_60
    const/4 v1, 0x5

    if-ne v7, v1, :cond_56

    .line 204
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/auth/zzew;

    .line 205
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/zzew;->c(I)V

    add-int/lit8 v2, v4, 0x4

    :goto_39
    if-ge v2, v5, :cond_59

    .line 206
    invoke-static {v3, v2, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v6

    iget v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v7, :cond_59

    .line 207
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/zzew;->c(I)V

    add-int/lit8 v2, v6, 0x4

    goto :goto_39

    :pswitch_15
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move/from16 v4, v20

    const/4 v9, 0x2

    move-object/from16 v13, p6

    if-ne v7, v9, :cond_63

    .line 208
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/auth/zzfm;

    .line 209
    invoke-static {v3, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v6, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v6, v2

    :goto_3a
    if-ge v2, v6, :cond_61

    .line 210
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/auth/zzfm;->c(J)V

    add-int/lit8 v2, v2, 0x8

    goto :goto_3a

    :cond_61
    if-ne v2, v6, :cond_62

    goto/16 :goto_34

    .line 211
    :cond_62
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_63
    const/4 v1, 0x1

    if-ne v7, v1, :cond_56

    .line 212
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/auth/zzfm;

    .line 213
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/auth/zzfm;->c(J)V

    add-int/lit8 v2, v4, 0x8

    :goto_3b
    if-ge v2, v5, :cond_59

    .line 214
    invoke-static {v3, v2, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v6

    iget v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v7, :cond_59

    .line 215
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/auth/zzfm;->c(J)V

    add-int/lit8 v2, v6, 0x8

    goto :goto_3b

    :pswitch_16
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move/from16 v4, v20

    const/4 v9, 0x2

    move-object/from16 v13, p6

    if-ne v7, v9, :cond_66

    .line 216
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/auth/zzew;

    .line 217
    invoke-static {v3, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v6, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v6, v2

    :goto_3c
    if-ge v2, v6, :cond_64

    .line 218
    invoke-static {v3, v2, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    iget v7, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    .line 219
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/auth/zzew;->c(I)V

    goto :goto_3c

    :cond_64
    if-ne v2, v6, :cond_65

    goto/16 :goto_34

    .line 220
    :cond_65
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_66
    if-nez v7, :cond_56

    move v1, v5

    move-object v5, v2

    move-object v2, v3

    move v3, v4

    move v4, v1

    move-object v6, v13

    move v1, v15

    .line 221
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->g(I[BIILcom/google/android/gms/internal/auth/zzez;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v5

    move-object v9, v2

    move v12, v3

    move v1, v4

    move v4, v5

    goto/16 :goto_45

    :pswitch_17
    move-object/from16 v9, p2

    move/from16 v1, p4

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move/from16 v12, v20

    const/4 v4, 0x2

    move-object/from16 v13, p6

    if-ne v7, v4, :cond_6a

    .line 222
    check-cast v2, Lcom/google/android/gms/internal/auth/zzfm;

    .line 223
    invoke-static {v9, v12, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v4, v3

    :goto_3d
    if-ge v3, v4, :cond_67

    .line 224
    invoke-static {v9, v3, v13}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget-wide v5, v13, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    .line 225
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/auth/zzfm;->c(J)V

    goto :goto_3d

    :cond_67
    if-ne v3, v4, :cond_69

    :cond_68
    :goto_3e
    move v4, v3

    goto/16 :goto_45

    .line 226
    :cond_69
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_6a
    if-nez v7, :cond_71

    .line 227
    check-cast v2, Lcom/google/android/gms/internal/auth/zzfm;

    .line 228
    invoke-static {v9, v12, v13}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget-wide v4, v13, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    .line 229
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/auth/zzfm;->c(J)V

    :goto_3f
    if-ge v3, v1, :cond_68

    .line 230
    invoke-static {v9, v3, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v4

    iget v5, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v5, :cond_68

    .line 231
    invoke-static {v9, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget-wide v4, v13, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    .line 232
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/auth/zzfm;->c(J)V

    goto :goto_3f

    :pswitch_18
    move-object/from16 v9, p2

    move/from16 v1, p4

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move/from16 v12, v20

    const/4 v4, 0x2

    move-object/from16 v13, p6

    if-ne v7, v4, :cond_6d

    .line 233
    check-cast v2, Lcom/google/android/gms/internal/auth/zzer;

    .line 234
    invoke-static {v9, v12, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v4, v3

    :goto_40
    if-ge v3, v4, :cond_6b

    .line 235
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 236
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/auth/zzer;->c(F)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_40

    :cond_6b
    if-ne v3, v4, :cond_6c

    goto :goto_3e

    .line 237
    :cond_6c
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_6d
    const/4 v4, 0x5

    if-ne v7, v4, :cond_71

    .line 238
    check-cast v2, Lcom/google/android/gms/internal/auth/zzer;

    .line 239
    invoke-static {v9, v12}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 240
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/auth/zzer;->c(F)V

    add-int/lit8 v4, v12, 0x4

    :goto_41
    if-ge v4, v1, :cond_72

    .line 241
    invoke-static {v9, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v5, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v5, :cond_72

    .line 242
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 243
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/auth/zzer;->c(F)V

    add-int/lit8 v4, v3, 0x4

    goto :goto_41

    :pswitch_19
    move-object/from16 v9, p2

    move/from16 v1, p4

    move-object v14, v8

    move-object/from16 v29, v12

    move-object v2, v13

    move/from16 v12, v20

    const/4 v4, 0x2

    move-object/from16 v13, p6

    if-ne v7, v4, :cond_70

    .line 244
    check-cast v2, Lcom/google/android/gms/internal/auth/zzek;

    .line 245
    invoke-static {v9, v12, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v4, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    add-int/2addr v4, v3

    :goto_42
    if-ge v3, v4, :cond_6e

    .line 246
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 247
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/auth/zzek;->c(D)V

    add-int/lit8 v3, v3, 0x8

    goto :goto_42

    :cond_6e
    if-ne v3, v4, :cond_6f

    goto/16 :goto_3e

    .line 248
    :cond_6f
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v1

    throw v1

    :cond_70
    const/4 v4, 0x1

    if-ne v7, v4, :cond_71

    .line 249
    check-cast v2, Lcom/google/android/gms/internal/auth/zzek;

    .line 250
    invoke-static {v9, v12}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 251
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/auth/zzek;->c(D)V

    add-int/lit8 v4, v12, 0x8

    :goto_43
    if-ge v4, v1, :cond_72

    .line 252
    invoke-static {v9, v4, v13}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    iget v5, v13, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-ne v15, v5, :cond_72

    .line 253
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 254
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/auth/zzek;->c(D)V

    add-int/lit8 v4, v3, 0x8

    goto :goto_43

    :cond_71
    :goto_44
    move v4, v12

    :cond_72
    :goto_45
    if-eq v4, v12, :cond_73

    move-object/from16 v2, p1

    move v5, v1

    move-object v3, v9

    move v8, v10

    move v7, v11

    move-object v6, v13

    :goto_46
    move/from16 v14, v24

    move/from16 v9, v28

    move-object/from16 v1, v29

    goto/16 :goto_0

    :cond_73
    move-object/from16 v8, p1

    move/from16 v0, p5

    move v3, v4

    :goto_47
    move-object v12, v13

    goto/16 :goto_55

    :cond_74
    move-object/from16 v9, p2

    move/from16 v1, p4

    move-object/from16 v13, p6

    move-object/from16 v29, v12

    move/from16 v24, v14

    move/from16 v12, v20

    move-object v14, v8

    const/16 v8, 0x32

    if-ne v5, v8, :cond_78

    const/4 v8, 0x2

    if-ne v7, v8, :cond_77

    .line 255
    sget-object v1, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    const/4 v5, 0x3

    .line 256
    div-int/lit8 v4, v10, 0x3

    add-int/2addr v4, v4

    aget-object v4, v17, v4

    move-object/from16 v8, p1

    .line 257
    invoke-virtual {v1, v8, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 258
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/auth/zzfr;

    .line 259
    iget-boolean v6, v6, Lcom/google/android/gms/internal/auth/zzfr;->c:Z

    if-nez v6, :cond_76

    .line 260
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfr;->f:Lcom/google/android/gms/internal/auth/zzfr;

    .line 261
    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 262
    new-instance v6, Lcom/google/android/gms/internal/auth/zzfr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/auth/zzfr;-><init>()V

    goto :goto_48

    :cond_75
    new-instance v7, Lcom/google/android/gms/internal/auth/zzfr;

    .line 263
    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v6, 0x1

    iput-boolean v6, v7, Lcom/google/android/gms/internal/auth/zzfr;->c:Z

    move-object v6, v7

    .line 264
    :goto_48
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/auth/zzfs;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzfr;

    .line 265
    invoke-virtual {v1, v8, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 266
    :cond_76
    check-cast v4, Lcom/google/android/gms/internal/auth/zzfq;

    .line 267
    throw v18

    :cond_77
    move-object/from16 v8, p1

    :goto_49
    move/from16 v0, p5

    move v3, v12

    goto :goto_47

    :cond_78
    move-object/from16 v8, p1

    add-int/lit8 v20, v10, 0x2

    sget-object v1, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 268
    aget v20, v22, v20

    move/from16 v32, v4

    const v16, 0xfffff

    and-int v4, v20, v16

    move/from16 v20, v5

    int-to-long v4, v4

    packed-switch v20, :pswitch_data_2

    :cond_79
    move/from16 v20, v10

    move v10, v12

    move-object v12, v13

    goto/16 :goto_53

    :pswitch_1a
    const/4 v5, 0x3

    if-ne v7, v5, :cond_79

    .line 269
    invoke-virtual {v0, v11, v10, v8}, Lcom/google/android/gms/internal/auth/zzga;->v(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v1, v15, -0x8

    or-int/lit8 v6, v1, 0x4

    .line 270
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v1

    .line 271
    check-cast v1, Lcom/google/android/gms/internal/auth/zzga;

    move/from16 v5, p4

    move-object v3, v9

    move v4, v12

    move-object v7, v13

    .line 272
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzga;->m(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v1

    move-object v6, v7

    iput-object v2, v6, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    .line 273
    invoke-virtual {v0, v11, v10, v8, v2}, Lcom/google/android/gms/internal/auth/zzga;->b(IILjava/lang/Object;Ljava/lang/Object;)V

    move v4, v1

    :goto_4a
    move/from16 v20, v10

    move v10, v12

    move-object v12, v6

    goto/16 :goto_54

    :pswitch_1b
    move-object v6, v13

    if-nez v7, :cond_7a

    .line 274
    invoke-static {v9, v12, v6}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    move-object/from16 v20, v14

    iget-wide v13, v6, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    .line 275
    invoke-static {v13, v14}, Lcom/google/android/gms/internal/auth/zzej;->a(J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v8, v2, v3, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 276
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4b
    move v4, v7

    move-object/from16 v14, v20

    goto :goto_4a

    :cond_7a
    :goto_4c
    move/from16 v20, v10

    move v10, v12

    move-object v12, v6

    goto/16 :goto_53

    :pswitch_1c
    move-object v6, v13

    move-object/from16 v20, v14

    if-nez v7, :cond_7b

    .line 277
    invoke-static {v9, v12, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget v13, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    and-int/lit8 v14, v13, 0x1

    const/16 v30, 0x1

    ushr-int/lit8 v13, v13, 0x1

    neg-int v14, v14

    xor-int/2addr v13, v14

    .line 278
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v8, v2, v3, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 279
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :cond_7b
    move-object/from16 v14, v20

    goto :goto_4c

    :pswitch_1d
    move-object v6, v13

    move-object/from16 v20, v14

    if-nez v7, :cond_7b

    .line 280
    invoke-static {v9, v12, v6}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget v13, v6, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    .line 281
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->s(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v14

    if-eqz v14, :cond_7c

    .line 282
    invoke-interface {v14}, Lcom/google/android/gms/internal/auth/zzey;->zza()Z

    move-result v14

    if-eqz v14, :cond_7d

    :cond_7c
    move-object/from16 v14, v20

    goto :goto_4d

    .line 283
    :cond_7d
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/auth/zzev;

    iget-object v2, v1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    move-object/from16 v14, v20

    if-ne v2, v14, :cond_7e

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v2

    .line 284
    iput-object v2, v1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_7e
    int-to-long v3, v13

    .line 285
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v15, v1}, Lcom/google/android/gms/internal/auth/zzha;->b(ILjava/lang/Object;)V

    goto :goto_4e

    .line 286
    :goto_4d
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v8, v2, v3, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 287
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4e
    move v4, v7

    goto/16 :goto_4a

    :pswitch_1e
    move-object v6, v13

    const/4 v13, 0x2

    if-ne v7, v13, :cond_7a

    .line 288
    invoke-static {v9, v12, v6}, Lcom/google/android/gms/internal/auth/zzdu;->a([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget-object v13, v6, Lcom/google/android/gms/internal/auth/zzdt;->c:Ljava/lang/Object;

    .line 289
    invoke-virtual {v1, v8, v2, v3, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 290
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4e

    :pswitch_1f
    move-object v6, v13

    const/4 v13, 0x2

    if-ne v7, v13, :cond_7f

    .line 291
    invoke-virtual {v0, v11, v10, v8}, Lcom/google/android/gms/internal/auth/zzga;->v(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    move-result-object v2

    move/from16 v5, p4

    move-object v3, v9

    move v4, v12

    .line 293
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgi;[BIILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v2

    move-object v12, v6

    .line 294
    invoke-virtual {v0, v11, v10, v8, v1}, Lcom/google/android/gms/internal/auth/zzga;->b(IILjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v20, v10

    move v10, v4

    move v4, v2

    goto/16 :goto_54

    :cond_7f
    move v4, v12

    move-object v12, v6

    move/from16 v20, v10

    move v10, v4

    goto/16 :goto_53

    :pswitch_20
    move/from16 v20, v10

    move v10, v12

    move-object v12, v13

    const/4 v13, 0x2

    if-ne v7, v13, :cond_84

    .line 295
    invoke-static {v9, v10, v12}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v7

    iget v13, v12, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    if-nez v13, :cond_80

    .line 296
    invoke-virtual {v1, v8, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_50

    :cond_80
    and-int v6, v32, v23

    if-eqz v6, :cond_82

    add-int v6, v7, v13

    .line 297
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhn;->a:Lcom/google/android/gms/internal/auth/zzhm;

    invoke-virtual {v0, v9, v7, v6}, Lcom/google/android/gms/internal/auth/zzhl;->b([BII)Z

    move-result v0

    if-eqz v0, :cond_81

    goto :goto_4f

    .line 298
    :cond_81
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->a()Lcom/google/android/gms/internal/auth/zzfb;

    move-result-object v0

    throw v0

    .line 299
    :cond_82
    :goto_4f
    new-instance v0, Ljava/lang/String;

    .line 300
    sget-object v6, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v9, v7, v13, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 301
    invoke-virtual {v1, v8, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v7, v13

    .line 302
    :goto_50
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v4, v7

    goto/16 :goto_54

    :pswitch_21
    move/from16 v20, v10

    move v10, v12

    move-object v12, v13

    if-nez v7, :cond_84

    .line 303
    invoke-static {v9, v10, v12}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v0

    iget-wide v6, v12, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    cmp-long v6, v6, v25

    if-eqz v6, :cond_83

    const/16 v30, 0x1

    goto :goto_51

    :cond_83
    move/from16 v30, v19

    .line 304
    :goto_51
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v8, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 305
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_52
    move v4, v0

    goto/16 :goto_54

    :pswitch_22
    move/from16 v20, v10

    move v10, v12

    move-object v12, v13

    const/4 v0, 0x5

    if-ne v7, v0, :cond_84

    .line 306
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v8, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v10, 0x4

    .line 307
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_52

    :pswitch_23
    move/from16 v20, v10

    move v10, v12

    move-object v12, v13

    const/4 v6, 0x1

    if-ne v7, v6, :cond_84

    .line 308
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v8, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v10, 0x8

    .line 309
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_52

    :pswitch_24
    move/from16 v20, v10

    move v10, v12

    move-object v12, v13

    if-nez v7, :cond_84

    .line 310
    invoke-static {v9, v10, v12}, Lcom/google/android/gms/internal/auth/zzdu;->e([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v0

    iget v6, v12, Lcom/google/android/gms/internal/auth/zzdt;->a:I

    .line 311
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v8, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 312
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_52

    :pswitch_25
    move/from16 v20, v10

    move v10, v12

    move-object v12, v13

    if-nez v7, :cond_84

    .line 313
    invoke-static {v9, v10, v12}, Lcom/google/android/gms/internal/auth/zzdu;->h([BILcom/google/android/gms/internal/auth/zzdt;)I

    move-result v0

    iget-wide v6, v12, Lcom/google/android/gms/internal/auth/zzdt;->b:J

    .line 314
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v8, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 315
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_52

    :pswitch_26
    move/from16 v20, v10

    move v10, v12

    move-object v12, v13

    const/4 v0, 0x5

    if-ne v7, v0, :cond_84

    .line 316
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/auth/zzdu;->b([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 317
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v8, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v10, 0x4

    .line 318
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_52

    :pswitch_27
    move/from16 v20, v10

    move v10, v12

    move-object v12, v13

    const/4 v6, 0x1

    if-ne v7, v6, :cond_84

    .line 319
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/auth/zzdu;->j([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 320
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v8, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v10, 0x8

    .line 321
    invoke-virtual {v1, v8, v4, v5, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_52

    :cond_84
    :goto_53
    move v4, v10

    :goto_54
    if-eq v4, v10, :cond_85

    move-object/from16 v0, p0

    move/from16 v5, p4

    move-object v2, v8

    move-object v3, v9

    move v7, v11

    move-object v6, v12

    move/from16 v8, v20

    goto/16 :goto_46

    :cond_85
    move/from16 v0, p5

    move v3, v4

    move/from16 v10, v20

    :goto_55
    if-ne v15, v0, :cond_87

    if-nez v0, :cond_86

    goto :goto_57

    :cond_86
    move/from16 v5, p4

    move v4, v3

    move/from16 v14, v24

    move/from16 v9, v28

    :goto_56
    const v13, 0xfffff

    goto :goto_58

    .line 322
    :cond_87
    :goto_57
    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/auth/zzev;

    iget-object v2, v1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    if-ne v2, v14, :cond_88

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v2

    .line 323
    iput-object v2, v1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_88
    move/from16 v4, p4

    move-object v5, v2

    move-object v2, v9

    move-object v6, v12

    move v1, v15

    .line 324
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzdu;->d(I[BIILcom/google/android/gms/internal/auth/zzha;Lcom/google/android/gms/internal/auth/zzdt;)I

    move-result v3

    move v15, v1

    move-object/from16 v0, p0

    move-object/from16 v6, p6

    move v5, v4

    move-object v2, v8

    move v8, v10

    move v7, v11

    move/from16 v14, v24

    move/from16 v9, v28

    move-object/from16 v1, v29

    const v16, 0xfffff

    move v4, v3

    move-object/from16 v3, p2

    goto/16 :goto_1

    :cond_89
    move/from16 v0, p5

    move-object/from16 v29, v1

    move-object v8, v2

    move/from16 v28, v9

    move-object/from16 v22, v12

    move-object/from16 v17, v13

    move/from16 v24, v14

    goto :goto_56

    :goto_58
    if-eq v9, v13, :cond_8a

    int-to-long v1, v9

    move-object/from16 v12, v29

    .line 325
    invoke-virtual {v12, v8, v1, v2, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8a
    move-object/from16 v1, p0

    iget v2, v1, Lcom/google/android/gms/internal/auth/zzga;->g:I

    :goto_59
    iget v3, v1, Lcom/google/android/gms/internal/auth/zzga;->h:I

    if-ge v2, v3, :cond_8d

    iget-object v3, v1, Lcom/google/android/gms/internal/auth/zzga;->f:[I

    .line 326
    aget v3, v3, v2

    .line 327
    aget v6, v22, v3

    .line 328
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    move-result v6

    const v16, 0xfffff

    and-int v6, v6, v16

    int-to-long v6, v6

    .line 329
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/auth/zzhj;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8b

    goto :goto_5a

    .line 330
    :cond_8b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/auth/zzga;->s(I)Lcom/google/android/gms/internal/auth/zzey;

    move-result-object v7

    if-nez v7, :cond_8c

    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 331
    :cond_8c
    check-cast v6, Lcom/google/android/gms/internal/auth/zzfr;

    const/4 v5, 0x3

    .line 332
    div-int/2addr v3, v5

    add-int/2addr v3, v3

    aget-object v0, v17, v3

    .line 333
    check-cast v0, Lcom/google/android/gms/internal/auth/zzfq;

    .line 334
    throw v18

    :cond_8d
    const-string v2, "Failed to parse the message."

    if-nez v0, :cond_8f

    if-ne v4, v5, :cond_8e

    goto :goto_5b

    .line 335
    :cond_8e
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    .line 336
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 337
    throw v0

    :cond_8f
    if-gt v4, v5, :cond_90

    if-ne v15, v0, :cond_90

    :goto_5b
    return v4

    .line 338
    :cond_90
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    .line 339
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 340
    throw v0

    :cond_91
    move-object v1, v0

    move-object v8, v2

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 342
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mutating immutable message: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final p(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    div-int/lit8 v1, v1, 0x3

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    add-int/2addr v1, v2

    .line 8
    :goto_0
    if-gt p2, v1, :cond_2

    .line 9
    .line 10
    add-int v3, v1, p2

    .line 11
    .line 12
    ushr-int/lit8 v3, v3, 0x1

    .line 13
    .line 14
    mul-int/lit8 v4, v3, 0x3

    .line 15
    .line 16
    aget v5, v0, v4

    .line 17
    .line 18
    if-ne p1, v5, :cond_0

    .line 19
    .line 20
    return v4

    .line 21
    :cond_0
    if-ge p1, v5, :cond_1

    .line 22
    .line 23
    add-int/lit8 v1, v3, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    add-int/lit8 p2, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v2
.end method

.method public final r(I)I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    return p1
.end method

.method public final s(I)Lcom/google/android/gms/internal/auth/zzey;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    add-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->b:[Ljava/lang/Object;

    .line 7
    .line 8
    aget-object p1, v0, p1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/gms/internal/auth/zzey;

    .line 11
    .line 12
    return-object p1
.end method

.method public final t(I)Lcom/google/android/gms/internal/auth/zzgi;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v1, v0, p1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/auth/zzgi;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/auth/zzgf;->c:Lcom/google/android/gms/internal/auth/zzgf;

    .line 14
    .line 15
    add-int/lit8 v2, p1, 0x1

    .line 16
    .line 17
    aget-object v2, v0, v2

    .line 18
    .line 19
    check-cast v2, Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/auth/zzgf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    aput-object v1, v0, p1

    .line 26
    .line 27
    return-object v1
.end method

.method public final u(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    int-to-long v1, v1

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->k(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/auth/zzgi;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method public final v(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const v1, 0xfffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p2, v1

    .line 26
    int-to-long v1, p2

    .line 27
    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->k(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/auth/zzgi;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p2
.end method

.method public final x(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 17
    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->j(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzga;->k(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {p3, v4, v0}, Lcom/google/android/gms/internal/auth/zzgi;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p2, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->z(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->k(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {p3, v4, p1}, Lcom/google/android/gms/internal/auth/zzgi;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p2, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object p1, v4

    .line 80
    :cond_3
    invoke-interface {p3, p1, v0}, Lcom/google/android/gms/internal/auth/zzgi;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 87
    .line 88
    aget p1, v0, p1

    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v1, "Source subfield "

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " is present but null: "

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p2
.end method

.method public final y(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {p0, v1, p1, p3}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzga;->r(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    sget-object v4, Lcom/google/android/gms/internal/auth/zzga;->l:Lsun/misc/Unsafe;

    .line 21
    .line 22
    int-to-long v5, v2

    .line 23
    invoke-virtual {v4, p3, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzga;->t(I)Lcom/google/android/gms/internal/auth/zzgi;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/auth/zzga;->l(IILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_2

    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/gms/internal/auth/zzga;->k(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-nez v7, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4, p2, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-interface {p3, v7, v2}, Lcom/google/android/gms/internal/auth/zzgi;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p2, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    add-int/lit8 p1, p1, 0x2

    .line 60
    .line 61
    aget p1, v0, p1

    .line 62
    .line 63
    and-int/2addr p1, v3

    .line 64
    int-to-long v2, p1

    .line 65
    invoke-static {v1, v2, v3, p2}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {v4, p2, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lcom/google/android/gms/internal/auth/zzga;->k(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    invoke-interface {p3}, Lcom/google/android/gms/internal/auth/zzgi;->zzd()Lcom/google/android/gms/internal/auth/zzev;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {p3, v0, p1}, Lcom/google/android/gms/internal/auth/zzgi;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p2, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object p1, v0

    .line 90
    :cond_3
    invoke-interface {p3, p1, v2}, Lcom/google/android/gms/internal/auth/zzgi;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    aget p1, v0, p1

    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "Source subfield "

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p1, " is present but null: "

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p2
.end method

.method public final z(ILjava/lang/Object;)V
    .locals 4

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, p1

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long v2, v0, v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->a(JLjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    shl-int p1, v3, p1

    .line 28
    .line 29
    or-int/2addr p1, v2

    .line 30
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzhj;->h(IJLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/auth/zzev;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzga;->e:Lcom/google/android/gms/internal/auth/zzfx;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/auth/zzev;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->b()Lcom/google/android/gms/internal/auth/zzev;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
