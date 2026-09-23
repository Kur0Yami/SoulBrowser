.class final Lcom/google/android/gms/internal/drive/zznd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zznd$zza;,
        Lcom/google/android/gms/internal/drive/zznd$zzb;,
        Lcom/google/android/gms/internal/drive/zznd$zzc;,
        Lcom/google/android/gms/internal/drive/zznd$zzd;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lsun/misc/Unsafe;

.field public static final c:Ljava/lang/Class;

.field public static final d:Lcom/google/android/gms/internal/drive/zznd$zzd;

.field public static final e:Z

.field public static final f:Z

.field public static final g:J

.field public static final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    const-class v0, Lcom/google/android/gms/internal/drive/zznd;

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
    sput-object v0, Lcom/google/android/gms/internal/drive/zznd;->a:Ljava/util/logging/Logger;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->g()Lsun/misc/Unsafe;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/internal/drive/zznd;->b:Lsun/misc/Unsafe;

    .line 18
    .line 19
    sget-object v1, Lcom/google/android/gms/internal/drive/zzix;->a:Ljava/lang/Class;

    .line 20
    .line 21
    sput-object v1, Lcom/google/android/gms/internal/drive/zznd;->c:Ljava/lang/Class;

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zznd;->l(Ljava/lang/Class;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zznd;->l(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    new-instance v5, Lcom/google/android/gms/internal/drive/zznd$zzb;

    .line 48
    .line 49
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/drive/zznd$zzd;-><init>(Lsun/misc/Unsafe;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-eqz v4, :cond_3

    .line 54
    .line 55
    new-instance v5, Lcom/google/android/gms/internal/drive/zznd$zza;

    .line 56
    .line 57
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/drive/zznd$zzd;-><init>(Lsun/misc/Unsafe;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-instance v5, Lcom/google/android/gms/internal/drive/zznd$zzc;

    .line 62
    .line 63
    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/drive/zznd$zzd;-><init>(Lsun/misc/Unsafe;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    sput-object v5, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 67
    .line 68
    const-string v2, "copyMemory"

    .line 69
    .line 70
    const-string v6, "platform method missing - proto runtime falling back to safer methods: "

    .line 71
    .line 72
    const-string v7, "com.google.protobuf.UnsafeUtil"

    .line 73
    .line 74
    const-string v8, "putLong"

    .line 75
    .line 76
    const-string v9, "putInt"

    .line 77
    .line 78
    const-string v10, "getInt"

    .line 79
    .line 80
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 81
    .line 82
    const-string v12, "putByte"

    .line 83
    .line 84
    const-string v13, "getByte"

    .line 85
    .line 86
    const-class v14, Ljava/lang/reflect/Field;

    .line 87
    .line 88
    const-string v15, "objectFieldOffset"

    .line 89
    .line 90
    const-class v16, Ljava/lang/Object;

    .line 91
    .line 92
    const-string v4, "getLong"

    .line 93
    .line 94
    const/16 v18, 0x0

    .line 95
    .line 96
    const/4 v5, 0x1

    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    move-object/from16 v20, v1

    .line 100
    .line 101
    :goto_1
    move-object/from16 v22, v3

    .line 102
    .line 103
    :goto_2
    move/from16 v0, v18

    .line 104
    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    move-object/from16 v20, v1

    .line 112
    .line 113
    :try_start_1
    new-array v1, v5, [Ljava/lang/Class;

    .line 114
    .line 115
    aput-object v14, v1, v18

    .line 116
    .line 117
    invoke-virtual {v0, v15, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 118
    .line 119
    .line 120
    move/from16 v21, v5

    .line 121
    .line 122
    const/4 v1, 0x2

    .line 123
    new-array v5, v1, [Ljava/lang/Class;

    .line 124
    .line 125
    aput-object v16, v5, v18

    .line 126
    .line 127
    aput-object v20, v5, v21

    .line 128
    .line 129
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->h()Ljava/lang/reflect/Field;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-nez v1, :cond_5

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->a()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    move-object/from16 v22, v3

    .line 146
    .line 147
    move/from16 v0, v21

    .line 148
    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :cond_6
    move/from16 v1, v21

    .line 152
    .line 153
    new-array v5, v1, [Ljava/lang/Class;

    .line 154
    .line 155
    aput-object v20, v5, v18

    .line 156
    .line 157
    invoke-virtual {v0, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    move/from16 v21, v1

    .line 161
    .line 162
    const/4 v5, 0x2

    .line 163
    new-array v1, v5, [Ljava/lang/Class;

    .line 164
    .line 165
    aput-object v20, v1, v18

    .line 166
    .line 167
    aput-object v11, v1, v21

    .line 168
    .line 169
    invoke-virtual {v0, v12, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 170
    .line 171
    .line 172
    move/from16 v1, v21

    .line 173
    .line 174
    new-array v5, v1, [Ljava/lang/Class;

    .line 175
    .line 176
    aput-object v20, v5, v18

    .line 177
    .line 178
    invoke-virtual {v0, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    .line 180
    .line 181
    move/from16 v21, v1

    .line 182
    .line 183
    const/4 v5, 0x2

    .line 184
    new-array v1, v5, [Ljava/lang/Class;

    .line 185
    .line 186
    aput-object v20, v1, v18

    .line 187
    .line 188
    aput-object v3, v1, v21

    .line 189
    .line 190
    invoke-virtual {v0, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 191
    .line 192
    .line 193
    move/from16 v1, v21

    .line 194
    .line 195
    new-array v5, v1, [Ljava/lang/Class;

    .line 196
    .line 197
    aput-object v20, v5, v18

    .line 198
    .line 199
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 200
    .line 201
    .line 202
    move/from16 v21, v1

    .line 203
    .line 204
    const/4 v5, 0x2

    .line 205
    new-array v1, v5, [Ljava/lang/Class;

    .line 206
    .line 207
    aput-object v20, v1, v18

    .line 208
    .line 209
    aput-object v20, v1, v21

    .line 210
    .line 211
    invoke-virtual {v0, v8, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 212
    .line 213
    .line 214
    const/4 v1, 0x3

    .line 215
    new-array v5, v1, [Ljava/lang/Class;

    .line 216
    .line 217
    aput-object v20, v5, v18

    .line 218
    .line 219
    aput-object v20, v5, v21

    .line 220
    .line 221
    const/16 v19, 0x2

    .line 222
    .line 223
    aput-object v20, v5, v19

    .line 224
    .line 225
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 226
    .line 227
    .line 228
    const/4 v1, 0x5

    .line 229
    new-array v1, v1, [Ljava/lang/Class;

    .line 230
    .line 231
    aput-object v16, v1, v18

    .line 232
    .line 233
    aput-object v20, v1, v21

    .line 234
    .line 235
    aput-object v16, v1, v19

    .line 236
    .line 237
    const/16 v17, 0x3

    .line 238
    .line 239
    aput-object v20, v1, v17

    .line 240
    .line 241
    const/4 v5, 0x4

    .line 242
    aput-object v20, v1, v5

    .line 243
    .line 244
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .line 246
    .line 247
    move-object/from16 v22, v3

    .line 248
    .line 249
    const/4 v0, 0x1

    .line 250
    goto :goto_4

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    goto :goto_3

    .line 253
    :catchall_1
    move-exception v0

    .line 254
    move-object/from16 v20, v1

    .line 255
    .line 256
    :goto_3
    sget-object v1, Lcom/google/android/gms/internal/drive/zznd;->a:Ljava/util/logging/Logger;

    .line 257
    .line 258
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 259
    .line 260
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    add-int/lit8 v5, v5, 0x47

    .line 269
    .line 270
    move-object/from16 v22, v3

    .line 271
    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const-string v3, "supportsUnsafeByteBufferOperations"

    .line 288
    .line 289
    invoke-virtual {v1, v2, v7, v3, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_2

    .line 293
    .line 294
    :goto_4
    sput-boolean v0, Lcom/google/android/gms/internal/drive/zznd;->e:Z

    .line 295
    .line 296
    const-class v0, Ljava/lang/Class;

    .line 297
    .line 298
    sget-object v1, Lcom/google/android/gms/internal/drive/zznd;->b:Lsun/misc/Unsafe;

    .line 299
    .line 300
    if-nez v1, :cond_7

    .line 301
    .line 302
    move/from16 v1, v18

    .line 303
    .line 304
    :goto_5
    const/16 v21, 0x1

    .line 305
    .line 306
    goto/16 :goto_7

    .line 307
    .line 308
    :cond_7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 312
    const/4 v2, 0x1

    .line 313
    :try_start_3
    new-array v3, v2, [Ljava/lang/Class;

    .line 314
    .line 315
    aput-object v14, v3, v18

    .line 316
    .line 317
    invoke-virtual {v1, v15, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 318
    .line 319
    .line 320
    const-string v3, "arrayBaseOffset"

    .line 321
    .line 322
    new-array v5, v2, [Ljava/lang/Class;

    .line 323
    .line 324
    aput-object v0, v5, v18

    .line 325
    .line 326
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 327
    .line 328
    .line 329
    const-string v3, "arrayIndexScale"

    .line 330
    .line 331
    new-array v5, v2, [Ljava/lang/Class;

    .line 332
    .line 333
    aput-object v0, v5, v18

    .line 334
    .line 335
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 336
    .line 337
    .line 338
    const/4 v5, 0x2

    .line 339
    new-array v0, v5, [Ljava/lang/Class;

    .line 340
    .line 341
    aput-object v16, v0, v18

    .line 342
    .line 343
    aput-object v20, v0, v2

    .line 344
    .line 345
    invoke-virtual {v1, v10, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 346
    .line 347
    .line 348
    const/4 v3, 0x3

    .line 349
    new-array v0, v3, [Ljava/lang/Class;

    .line 350
    .line 351
    aput-object v16, v0, v18

    .line 352
    .line 353
    aput-object v20, v0, v2

    .line 354
    .line 355
    const/4 v5, 0x2

    .line 356
    aput-object v22, v0, v5

    .line 357
    .line 358
    invoke-virtual {v1, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 359
    .line 360
    .line 361
    new-array v0, v5, [Ljava/lang/Class;

    .line 362
    .line 363
    aput-object v16, v0, v18

    .line 364
    .line 365
    aput-object v20, v0, v2

    .line 366
    .line 367
    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 368
    .line 369
    .line 370
    const/4 v3, 0x3

    .line 371
    new-array v0, v3, [Ljava/lang/Class;

    .line 372
    .line 373
    aput-object v16, v0, v18

    .line 374
    .line 375
    aput-object v20, v0, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 376
    .line 377
    const/4 v5, 0x2

    .line 378
    :try_start_4
    aput-object v20, v0, v5

    .line 379
    .line 380
    invoke-virtual {v1, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 381
    .line 382
    .line 383
    const-string v0, "getObject"

    .line 384
    .line 385
    new-array v2, v5, [Ljava/lang/Class;

    .line 386
    .line 387
    aput-object v16, v2, v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 388
    .line 389
    const/16 v21, 0x1

    .line 390
    .line 391
    :try_start_5
    aput-object v20, v2, v21

    .line 392
    .line 393
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 394
    .line 395
    .line 396
    const-string v0, "putObject"

    .line 397
    .line 398
    const/4 v3, 0x3

    .line 399
    new-array v2, v3, [Ljava/lang/Class;

    .line 400
    .line 401
    aput-object v16, v2, v18

    .line 402
    .line 403
    aput-object v20, v2, v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 404
    .line 405
    const/4 v5, 0x2

    .line 406
    :try_start_6
    aput-object v16, v2, v5

    .line 407
    .line 408
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 409
    .line 410
    .line 411
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->a()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-eqz v0, :cond_8

    .line 416
    .line 417
    const/4 v1, 0x1

    .line 418
    goto :goto_5

    .line 419
    :cond_8
    new-array v0, v5, [Ljava/lang/Class;

    .line 420
    .line 421
    aput-object v16, v0, v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 422
    .line 423
    const/16 v21, 0x1

    .line 424
    .line 425
    :try_start_7
    aput-object v20, v0, v21

    .line 426
    .line 427
    invoke-virtual {v1, v13, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 428
    .line 429
    .line 430
    const/4 v3, 0x3

    .line 431
    new-array v0, v3, [Ljava/lang/Class;

    .line 432
    .line 433
    aput-object v16, v0, v18

    .line 434
    .line 435
    aput-object v20, v0, v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 436
    .line 437
    const/4 v5, 0x2

    .line 438
    :try_start_8
    aput-object v11, v0, v5

    .line 439
    .line 440
    invoke-virtual {v1, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 441
    .line 442
    .line 443
    const-string v0, "getBoolean"

    .line 444
    .line 445
    new-array v2, v5, [Ljava/lang/Class;

    .line 446
    .line 447
    aput-object v16, v2, v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 448
    .line 449
    const/16 v21, 0x1

    .line 450
    .line 451
    :try_start_9
    aput-object v20, v2, v21

    .line 452
    .line 453
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 454
    .line 455
    .line 456
    const-string v0, "putBoolean"

    .line 457
    .line 458
    const/4 v3, 0x3

    .line 459
    new-array v2, v3, [Ljava/lang/Class;

    .line 460
    .line 461
    aput-object v16, v2, v18

    .line 462
    .line 463
    aput-object v20, v2, v21
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 464
    .line 465
    :try_start_a
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 466
    .line 467
    const/4 v5, 0x2

    .line 468
    aput-object v3, v2, v5

    .line 469
    .line 470
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 471
    .line 472
    .line 473
    const-string v0, "getFloat"

    .line 474
    .line 475
    new-array v2, v5, [Ljava/lang/Class;

    .line 476
    .line 477
    aput-object v16, v2, v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 478
    .line 479
    const/16 v21, 0x1

    .line 480
    .line 481
    :try_start_b
    aput-object v20, v2, v21

    .line 482
    .line 483
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 484
    .line 485
    .line 486
    const-string v0, "putFloat"

    .line 487
    .line 488
    const/4 v3, 0x3

    .line 489
    new-array v2, v3, [Ljava/lang/Class;

    .line 490
    .line 491
    aput-object v16, v2, v18

    .line 492
    .line 493
    aput-object v20, v2, v21
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 494
    .line 495
    :try_start_c
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 496
    .line 497
    const/4 v5, 0x2

    .line 498
    aput-object v3, v2, v5

    .line 499
    .line 500
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 501
    .line 502
    .line 503
    const-string v0, "getDouble"

    .line 504
    .line 505
    new-array v2, v5, [Ljava/lang/Class;

    .line 506
    .line 507
    aput-object v16, v2, v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 508
    .line 509
    const/16 v21, 0x1

    .line 510
    .line 511
    :try_start_d
    aput-object v20, v2, v21

    .line 512
    .line 513
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 514
    .line 515
    .line 516
    const-string v0, "putDouble"

    .line 517
    .line 518
    const/4 v3, 0x3

    .line 519
    new-array v2, v3, [Ljava/lang/Class;

    .line 520
    .line 521
    aput-object v16, v2, v18

    .line 522
    .line 523
    aput-object v20, v2, v21

    .line 524
    .line 525
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 526
    .line 527
    const/16 v19, 0x2

    .line 528
    .line 529
    aput-object v3, v2, v19

    .line 530
    .line 531
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 532
    .line 533
    .line 534
    move/from16 v1, v21

    .line 535
    .line 536
    goto :goto_7

    .line 537
    :catchall_2
    move-exception v0

    .line 538
    goto :goto_6

    .line 539
    :catchall_3
    move-exception v0

    .line 540
    const/16 v21, 0x1

    .line 541
    .line 542
    goto :goto_6

    .line 543
    :catchall_4
    move-exception v0

    .line 544
    move/from16 v21, v2

    .line 545
    .line 546
    :goto_6
    sget-object v1, Lcom/google/android/gms/internal/drive/zznd;->a:Ljava/util/logging/Logger;

    .line 547
    .line 548
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 549
    .line 550
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    add-int/lit8 v3, v3, 0x47

    .line 559
    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    const-string v3, "supportsUnsafeArrayOperations"

    .line 576
    .line 577
    invoke-virtual {v1, v2, v7, v3, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    move/from16 v1, v18

    .line 581
    .line 582
    :goto_7
    sput-boolean v1, Lcom/google/android/gms/internal/drive/zznd;->f:Z

    .line 583
    .line 584
    const-class v0, [B

    .line 585
    .line 586
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->j(Ljava/lang/Class;)I

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    int-to-long v0, v0

    .line 591
    sput-wide v0, Lcom/google/android/gms/internal/drive/zznd;->g:J

    .line 592
    .line 593
    const-class v0, [Z

    .line 594
    .line 595
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->j(Ljava/lang/Class;)I

    .line 596
    .line 597
    .line 598
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->k(Ljava/lang/Class;)V

    .line 599
    .line 600
    .line 601
    const-class v0, [I

    .line 602
    .line 603
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->j(Ljava/lang/Class;)I

    .line 604
    .line 605
    .line 606
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->k(Ljava/lang/Class;)V

    .line 607
    .line 608
    .line 609
    const-class v0, [J

    .line 610
    .line 611
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->j(Ljava/lang/Class;)I

    .line 612
    .line 613
    .line 614
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->k(Ljava/lang/Class;)V

    .line 615
    .line 616
    .line 617
    const-class v0, [F

    .line 618
    .line 619
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->j(Ljava/lang/Class;)I

    .line 620
    .line 621
    .line 622
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->k(Ljava/lang/Class;)V

    .line 623
    .line 624
    .line 625
    const-class v0, [D

    .line 626
    .line 627
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->j(Ljava/lang/Class;)I

    .line 628
    .line 629
    .line 630
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->k(Ljava/lang/Class;)V

    .line 631
    .line 632
    .line 633
    const-class v0, [Ljava/lang/Object;

    .line 634
    .line 635
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->j(Ljava/lang/Class;)I

    .line 636
    .line 637
    .line 638
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zznd;->k(Ljava/lang/Class;)V

    .line 639
    .line 640
    .line 641
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->h()Ljava/lang/reflect/Field;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    if-eqz v0, :cond_a

    .line 646
    .line 647
    sget-object v1, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 648
    .line 649
    if-nez v1, :cond_9

    .line 650
    .line 651
    goto :goto_8

    .line 652
    :cond_9
    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zznd$zzd;->a:Lsun/misc/Unsafe;

    .line 653
    .line 654
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 655
    .line 656
    .line 657
    :cond_a
    :goto_8
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 662
    .line 663
    if-ne v0, v1, :cond_b

    .line 664
    .line 665
    move/from16 v18, v21

    .line 666
    .line 667
    :cond_b
    sput-boolean v18, Lcom/google/android/gms/internal/drive/zznd;->h:Z

    .line 668
    .line 669
    return-void
.end method

.method public static a([BJ)B
    .locals 2

    .line 1
    sget-wide v0, Lcom/google/android/gms/internal/drive/zznd;->g:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/drive/zznd$zzd;->l(JLjava/lang/Object;)B

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static b(IJLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zznd$zzd;->a(IJLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zznd$zzd;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static d(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 5
    .line 6
    invoke-virtual {v2, v0, v1, p0}, Lcom/google/android/gms/internal/drive/zznd$zzd;->g(JLjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    long-to-int p1, p1

    .line 11
    not-int p1, p1

    .line 12
    and-int/lit8 p1, p1, 0x3

    .line 13
    .line 14
    shl-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    const/16 p2, 0xff

    .line 17
    .line 18
    shl-int v3, p2, p1

    .line 19
    .line 20
    not-int v3, v3

    .line 21
    and-int/2addr v2, v3

    .line 22
    and-int/2addr p2, p3

    .line 23
    shl-int p1, p2, p1

    .line 24
    .line 25
    or-int/2addr p1, v2

    .line 26
    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/drive/zznd;->b(IJLjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static e([BJB)V
    .locals 2

    .line 1
    sget-wide v0, Lcom/google/android/gms/internal/drive/zznd;->g:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 5
    .line 6
    invoke-virtual {p1, p0, v0, v1, p3}, Lcom/google/android/gms/internal/drive/zznd$zzd;->f(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static f(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 5
    .line 6
    invoke-virtual {v2, v0, v1, p0}, Lcom/google/android/gms/internal/drive/zznd$zzd;->g(JLjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    long-to-int p1, p1

    .line 11
    and-int/lit8 p1, p1, 0x3

    .line 12
    .line 13
    shl-int/lit8 p1, p1, 0x3

    .line 14
    .line 15
    const/16 p2, 0xff

    .line 16
    .line 17
    shl-int v3, p2, p1

    .line 18
    .line 19
    not-int v3, v3

    .line 20
    and-int/2addr v2, v3

    .line 21
    and-int/2addr p2, p3

    .line 22
    shl-int p1, p2, p1

    .line 23
    .line 24
    or-int/2addr p1, v2

    .line 25
    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/internal/drive/zznd;->b(IJLjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static g()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/drive/zzne;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :catchall_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public static h()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Ljava/nio/Buffer;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "effectiveDirectAddress"

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-object v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string v0, "address"

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    goto :goto_1

    .line 28
    :catchall_1
    move-object v0, v2

    .line 29
    :goto_1
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    return-object v2
.end method

.method public static i(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->b:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0
.end method

.method public static j(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zznd;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zznd$zzd;->a:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public static k(Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zznd;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zznd$zzd;->a:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/Class;)Z
    .locals 10

    .line 1
    const-class v0, [B

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/drive/zznd;->c:Ljava/lang/Class;

    .line 12
    .line 13
    const-string v3, "peekLong"

    .line 14
    .line 15
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    new-array v6, v5, [Ljava/lang/Class;

    .line 19
    .line 20
    aput-object p0, v6, v2

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    aput-object v4, v6, v7

    .line 24
    .line 25
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    const-string v3, "pokeLong"

    .line 29
    .line 30
    const/4 v6, 0x3

    .line 31
    new-array v8, v6, [Ljava/lang/Class;

    .line 32
    .line 33
    aput-object p0, v8, v2

    .line 34
    .line 35
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    aput-object v9, v8, v7

    .line 38
    .line 39
    aput-object v4, v8, v5

    .line 40
    .line 41
    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    const-string v3, "pokeInt"

    .line 45
    .line 46
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    new-array v9, v6, [Ljava/lang/Class;

    .line 49
    .line 50
    aput-object p0, v9, v2

    .line 51
    .line 52
    aput-object v8, v9, v7

    .line 53
    .line 54
    aput-object v4, v9, v5

    .line 55
    .line 56
    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    const-string v3, "peekInt"

    .line 60
    .line 61
    new-array v9, v5, [Ljava/lang/Class;

    .line 62
    .line 63
    aput-object p0, v9, v2

    .line 64
    .line 65
    aput-object v4, v9, v7

    .line 66
    .line 67
    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    const-string v3, "pokeByte"

    .line 71
    .line 72
    new-array v4, v5, [Ljava/lang/Class;

    .line 73
    .line 74
    aput-object p0, v4, v2

    .line 75
    .line 76
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 77
    .line 78
    aput-object v9, v4, v7

    .line 79
    .line 80
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    .line 82
    .line 83
    const-string v3, "peekByte"

    .line 84
    .line 85
    new-array v4, v7, [Ljava/lang/Class;

    .line 86
    .line 87
    aput-object p0, v4, v2

    .line 88
    .line 89
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    const-string v3, "pokeByteArray"

    .line 93
    .line 94
    const/4 v4, 0x4

    .line 95
    new-array v9, v4, [Ljava/lang/Class;

    .line 96
    .line 97
    aput-object p0, v9, v2

    .line 98
    .line 99
    aput-object v0, v9, v7

    .line 100
    .line 101
    aput-object v8, v9, v5

    .line 102
    .line 103
    aput-object v8, v9, v6

    .line 104
    .line 105
    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    .line 107
    .line 108
    const-string v3, "peekByteArray"

    .line 109
    .line 110
    new-array v4, v4, [Ljava/lang/Class;

    .line 111
    .line 112
    aput-object p0, v4, v2

    .line 113
    .line 114
    aput-object v0, v4, v7

    .line 115
    .line 116
    aput-object v8, v4, v5

    .line 117
    .line 118
    aput-object v8, v4, v6

    .line 119
    .line 120
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    return v7

    .line 124
    :catchall_0
    return v2
.end method

.method public static m(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/drive/zznd$zzd;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static n(JLjava/lang/Object;)B
    .locals 3

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 5
    .line 6
    invoke-virtual {v2, v0, v1, p2}, Lcom/google/android/gms/internal/drive/zznd$zzd;->g(JLjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    not-long p0, p0

    .line 11
    const-wide/16 v0, 0x3

    .line 12
    .line 13
    and-long/2addr p0, v0

    .line 14
    const/4 v0, 0x3

    .line 15
    shl-long/2addr p0, v0

    .line 16
    long-to-int p0, p0

    .line 17
    ushr-int p0, p2, p0

    .line 18
    .line 19
    int-to-byte p0, p0

    .line 20
    return p0
.end method

.method public static o(JLjava/lang/Object;)B
    .locals 3

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/drive/zznd;->d:Lcom/google/android/gms/internal/drive/zznd$zzd;

    .line 5
    .line 6
    invoke-virtual {v2, v0, v1, p2}, Lcom/google/android/gms/internal/drive/zznd$zzd;->g(JLjava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    const-wide/16 v0, 0x3

    .line 11
    .line 12
    and-long/2addr p0, v0

    .line 13
    const/4 v0, 0x3

    .line 14
    shl-long/2addr p0, v0

    .line 15
    long-to-int p0, p0

    .line 16
    ushr-int p0, p2, p0

    .line 17
    .line 18
    int-to-byte p0, p0

    .line 19
    return p0
.end method
