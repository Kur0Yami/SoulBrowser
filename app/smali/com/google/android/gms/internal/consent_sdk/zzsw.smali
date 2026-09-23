.class final Lcom/google/android/gms/internal/consent_sdk/zzsw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Ljava/lang/Class;

.field public static final c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

.field public static final d:Z

.field public static final e:Z

.field public static final f:J

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    const-class v1, Ljava/lang/Class;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->i()Lsun/misc/Unsafe;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->a:Lsun/misc/Unsafe;

    .line 8
    .line 9
    sget v2, Lcom/google/android/gms/internal/consent_sdk/zzpc;->a:I

    .line 10
    .line 11
    const-class v2, Llibcore/io/Memory;

    .line 12
    .line 13
    sput-object v2, Lcom/google/android/gms/internal/consent_sdk/zzsw;->b:Ljava/lang/Class;

    .line 14
    .line 15
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->p(Ljava/lang/Class;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    invoke-static {v4}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->p(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    if-eqz v3, :cond_1

    .line 32
    .line 33
    new-instance v6, Lcom/google/android/gms/internal/consent_sdk/zzsu;

    .line 34
    .line 35
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/consent_sdk/zzsv;-><init>(Lsun/misc/Unsafe;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-eqz v5, :cond_2

    .line 40
    .line 41
    new-instance v6, Lcom/google/android/gms/internal/consent_sdk/zzst;

    .line 42
    .line 43
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/consent_sdk/zzsv;-><init>(Lsun/misc/Unsafe;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    sput-object v6, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    const-string v5, "logMissingMethod"

    .line 50
    .line 51
    const-string v7, "com.google.protobuf.UnsafeUtil"

    .line 52
    .line 53
    const-string v8, "platform method missing - proto runtime falling back to safer methods: "

    .line 54
    .line 55
    const-class v9, Lcom/google/android/gms/internal/consent_sdk/zzsw;

    .line 56
    .line 57
    const-string v10, "getLong"

    .line 58
    .line 59
    const-class v11, Ljava/lang/reflect/Field;

    .line 60
    .line 61
    const-string v12, "objectFieldOffset"

    .line 62
    .line 63
    const/4 v13, 0x1

    .line 64
    const/4 v14, 0x0

    .line 65
    const-class v15, Ljava/lang/Object;

    .line 66
    .line 67
    if-nez v6, :cond_3

    .line 68
    .line 69
    :goto_1
    move/from16 v16, v14

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iget-object v0, v6, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 73
    .line 74
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-array v6, v13, [Ljava/lang/Class;

    .line 79
    .line 80
    aput-object v11, v6, v14

    .line 81
    .line 82
    invoke-virtual {v0, v12, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    new-array v6, v3, [Ljava/lang/Class;

    .line 86
    .line 87
    aput-object v15, v6, v14

    .line 88
    .line 89
    aput-object v2, v6, v13

    .line 90
    .line 91
    invoke-virtual {v0, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->b()Ljava/lang/reflect/Field;

    .line 95
    .line 96
    .line 97
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move/from16 v16, v14

    .line 102
    .line 103
    move v14, v13

    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    move/from16 v16, v14

    .line 115
    .line 116
    sget-object v14, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v6, v14, v7, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    move/from16 v14, v16

    .line 130
    .line 131
    :goto_2
    sput-boolean v14, Lcom/google/android/gms/internal/consent_sdk/zzsw;->d:Z

    .line 132
    .line 133
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 134
    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    :goto_3
    move/from16 v0, v16

    .line 138
    .line 139
    goto/16 :goto_4

    .line 140
    .line 141
    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 142
    .line 143
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-array v6, v13, [Ljava/lang/Class;

    .line 148
    .line 149
    aput-object v11, v6, v16

    .line 150
    .line 151
    invoke-virtual {v0, v12, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    .line 153
    .line 154
    const-string v6, "arrayBaseOffset"

    .line 155
    .line 156
    new-array v11, v13, [Ljava/lang/Class;

    .line 157
    .line 158
    aput-object v1, v11, v16

    .line 159
    .line 160
    invoke-virtual {v0, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 161
    .line 162
    .line 163
    const-string v6, "arrayIndexScale"

    .line 164
    .line 165
    new-array v11, v13, [Ljava/lang/Class;

    .line 166
    .line 167
    aput-object v1, v11, v16

    .line 168
    .line 169
    invoke-virtual {v0, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 170
    .line 171
    .line 172
    const-string v1, "getInt"

    .line 173
    .line 174
    new-array v6, v3, [Ljava/lang/Class;

    .line 175
    .line 176
    aput-object v15, v6, v16

    .line 177
    .line 178
    aput-object v2, v6, v13

    .line 179
    .line 180
    invoke-virtual {v0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 181
    .line 182
    .line 183
    const-string v1, "putInt"

    .line 184
    .line 185
    const/4 v6, 0x3

    .line 186
    new-array v11, v6, [Ljava/lang/Class;

    .line 187
    .line 188
    aput-object v15, v11, v16

    .line 189
    .line 190
    aput-object v2, v11, v13

    .line 191
    .line 192
    aput-object v4, v11, v3

    .line 193
    .line 194
    invoke-virtual {v0, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 195
    .line 196
    .line 197
    new-array v1, v3, [Ljava/lang/Class;

    .line 198
    .line 199
    aput-object v15, v1, v16

    .line 200
    .line 201
    aput-object v2, v1, v13

    .line 202
    .line 203
    invoke-virtual {v0, v10, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 204
    .line 205
    .line 206
    const-string v1, "putLong"

    .line 207
    .line 208
    new-array v4, v6, [Ljava/lang/Class;

    .line 209
    .line 210
    aput-object v15, v4, v16

    .line 211
    .line 212
    aput-object v2, v4, v13

    .line 213
    .line 214
    aput-object v2, v4, v3

    .line 215
    .line 216
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 217
    .line 218
    .line 219
    const-string v1, "getObject"

    .line 220
    .line 221
    new-array v4, v3, [Ljava/lang/Class;

    .line 222
    .line 223
    aput-object v15, v4, v16

    .line 224
    .line 225
    aput-object v2, v4, v13

    .line 226
    .line 227
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 228
    .line 229
    .line 230
    const-string v1, "putObject"

    .line 231
    .line 232
    new-array v4, v6, [Ljava/lang/Class;

    .line 233
    .line 234
    aput-object v15, v4, v16

    .line 235
    .line 236
    aput-object v2, v4, v13

    .line 237
    .line 238
    aput-object v15, v4, v3

    .line 239
    .line 240
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    .line 242
    .line 243
    move v0, v13

    .line 244
    goto :goto_4

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v1, v2, v7, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_3

    .line 268
    .line 269
    :goto_4
    sput-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->e:Z

    .line 270
    .line 271
    const-class v0, [B

    .line 272
    .line 273
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->q(Ljava/lang/Class;)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    int-to-long v0, v0

    .line 278
    sput-wide v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->f:J

    .line 279
    .line 280
    const-class v0, [Z

    .line 281
    .line 282
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->q(Ljava/lang/Class;)I

    .line 283
    .line 284
    .line 285
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->a(Ljava/lang/Class;)V

    .line 286
    .line 287
    .line 288
    const-class v0, [I

    .line 289
    .line 290
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->q(Ljava/lang/Class;)I

    .line 291
    .line 292
    .line 293
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->a(Ljava/lang/Class;)V

    .line 294
    .line 295
    .line 296
    const-class v0, [J

    .line 297
    .line 298
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->q(Ljava/lang/Class;)I

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->a(Ljava/lang/Class;)V

    .line 302
    .line 303
    .line 304
    const-class v0, [F

    .line 305
    .line 306
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->q(Ljava/lang/Class;)I

    .line 307
    .line 308
    .line 309
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->a(Ljava/lang/Class;)V

    .line 310
    .line 311
    .line 312
    const-class v0, [D

    .line 313
    .line 314
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->q(Ljava/lang/Class;)I

    .line 315
    .line 316
    .line 317
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->a(Ljava/lang/Class;)V

    .line 318
    .line 319
    .line 320
    const-class v0, [Ljava/lang/Object;

    .line 321
    .line 322
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->q(Ljava/lang/Class;)I

    .line 323
    .line 324
    .line 325
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->a(Ljava/lang/Class;)V

    .line 326
    .line 327
    .line 328
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzsw;->b()Ljava/lang/reflect/Field;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    if-eqz v0, :cond_6

    .line 333
    .line 334
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 335
    .line 336
    if-eqz v1, :cond_6

    .line 337
    .line 338
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 339
    .line 340
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 341
    .line 342
    .line 343
    :cond_6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 348
    .line 349
    if-ne v0, v1, :cond_7

    .line 350
    .line 351
    goto :goto_5

    .line 352
    :cond_7
    move/from16 v13, v16

    .line 353
    .line 354
    :goto_5
    sput-boolean v13, Lcom/google/android/gms/internal/consent_sdk/zzsw;->g:Z

    .line 355
    .line 356
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static b()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/consent_sdk/zzpc;->a:I

    .line 2
    .line 3
    const-class v0, Ljava/nio/Buffer;

    .line 4
    .line 5
    const-string v1, "effectiveDirectAddress"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-object v1, v2

    .line 14
    :goto_0
    if-nez v1, :cond_1

    .line 15
    .line 16
    const-string v1, "address"

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    goto :goto_1

    .line 23
    :catchall_1
    move-object v0, v2

    .line 24
    :goto_1
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    if-ne v1, v3, :cond_0

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    return-object v2

    .line 36
    :cond_1
    return-object v1
.end method

.method public static c(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v1, -0x4

    .line 6
    .line 7
    and-long/2addr v1, p1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    long-to-int p1, p1

    .line 13
    not-int p1, p1

    .line 14
    and-int/lit8 p1, p1, 0x3

    .line 15
    .line 16
    shl-int/lit8 p1, p1, 0x3

    .line 17
    .line 18
    const/16 p2, 0xff

    .line 19
    .line 20
    shl-int v4, p2, p1

    .line 21
    .line 22
    not-int v4, v4

    .line 23
    and-int/2addr v3, v4

    .line 24
    and-int/2addr p2, p3

    .line 25
    shl-int p1, p2, p1

    .line 26
    .line 27
    or-int/2addr p1, v3

    .line 28
    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static d(Ljava/lang/Object;JB)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v1, -0x4

    .line 6
    .line 7
    and-long/2addr v1, p1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    long-to-int p1, p1

    .line 13
    and-int/lit8 p1, p1, 0x3

    .line 14
    .line 15
    shl-int/lit8 p1, p1, 0x3

    .line 16
    .line 17
    const/16 p2, 0xff

    .line 18
    .line 19
    shl-int v4, p2, p1

    .line 20
    .line 21
    not-int v4, v4

    .line 22
    and-int/2addr v3, v4

    .line 23
    and-int/2addr p2, p3

    .line 24
    shl-int p1, p2, p1

    .line 25
    .line 26
    or-int/2addr p1, v3

    .line 27
    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static e(JLjava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static f(JLjava/lang/Object;)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static g(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->a:Lsun/misc/Unsafe;

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

.method public static h(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

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

.method public static i()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzss;

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

.method public static j([BJB)V
    .locals 2

    .line 1
    sget-wide v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->f:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 5
    .line 6
    invoke-virtual {p1, p0, v0, v1, p3}, Lcom/google/android/gms/internal/consent_sdk/zzsv;->d(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static k(IJLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p3, p1, p2, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static l(Ljava/lang/Object;JJ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-wide v3, p1

    .line 7
    move-wide v5, p3

    .line 8
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static m(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static bridge synthetic n(JLjava/lang/Object;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v1, -0x4

    .line 6
    .line 7
    and-long/2addr v1, p0

    .line 8
    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    not-long p0, p0

    .line 13
    const-wide/16 v0, 0x3

    .line 14
    .line 15
    and-long/2addr p0, v0

    .line 16
    const/4 v0, 0x3

    .line 17
    shl-long/2addr p0, v0

    .line 18
    long-to-int p0, p0

    .line 19
    ushr-int p0, p2, p0

    .line 20
    .line 21
    and-int/lit16 p0, p0, 0xff

    .line 22
    .line 23
    int-to-byte p0, p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public static bridge synthetic o(JLjava/lang/Object;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    const-wide/16 v1, -0x4

    .line 6
    .line 7
    and-long/2addr v1, p0

    .line 8
    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const-wide/16 v0, 0x3

    .line 13
    .line 14
    and-long/2addr p0, v0

    .line 15
    const/4 v0, 0x3

    .line 16
    shl-long/2addr p0, v0

    .line 17
    long-to-int p0, p0

    .line 18
    ushr-int p0, p2, p0

    .line 19
    .line 20
    and-int/lit16 p0, p0, 0xff

    .line 21
    .line 22
    int-to-byte p0, p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static p(Ljava/lang/Class;)Z
    .locals 10

    .line 1
    const-class v0, [B

    .line 2
    .line 3
    sget v1, Lcom/google/android/gms/internal/consent_sdk/zzpc;->a:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/consent_sdk/zzsw;->b:Ljava/lang/Class;

    .line 7
    .line 8
    const-string v3, "peekLong"

    .line 9
    .line 10
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    new-array v6, v5, [Ljava/lang/Class;

    .line 14
    .line 15
    aput-object p0, v6, v1

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    aput-object v4, v6, v7

    .line 19
    .line 20
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    const-string v3, "pokeLong"

    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    new-array v8, v6, [Ljava/lang/Class;

    .line 27
    .line 28
    aput-object p0, v8, v1

    .line 29
    .line 30
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    aput-object v9, v8, v7

    .line 33
    .line 34
    aput-object v4, v8, v5

    .line 35
    .line 36
    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    const-string v3, "pokeInt"

    .line 40
    .line 41
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    new-array v9, v6, [Ljava/lang/Class;

    .line 44
    .line 45
    aput-object p0, v9, v1

    .line 46
    .line 47
    aput-object v8, v9, v7

    .line 48
    .line 49
    aput-object v4, v9, v5

    .line 50
    .line 51
    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    .line 53
    .line 54
    const-string v3, "peekInt"

    .line 55
    .line 56
    new-array v9, v5, [Ljava/lang/Class;

    .line 57
    .line 58
    aput-object p0, v9, v1

    .line 59
    .line 60
    aput-object v4, v9, v7

    .line 61
    .line 62
    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    .line 64
    .line 65
    const-string v3, "pokeByte"

    .line 66
    .line 67
    new-array v4, v5, [Ljava/lang/Class;

    .line 68
    .line 69
    aput-object p0, v4, v1

    .line 70
    .line 71
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    aput-object v9, v4, v7

    .line 74
    .line 75
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    const-string v3, "peekByte"

    .line 79
    .line 80
    new-array v4, v7, [Ljava/lang/Class;

    .line 81
    .line 82
    aput-object p0, v4, v1

    .line 83
    .line 84
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    .line 86
    .line 87
    const-string v3, "pokeByteArray"

    .line 88
    .line 89
    const/4 v4, 0x4

    .line 90
    new-array v9, v4, [Ljava/lang/Class;

    .line 91
    .line 92
    aput-object p0, v9, v1

    .line 93
    .line 94
    aput-object v0, v9, v7

    .line 95
    .line 96
    aput-object v8, v9, v5

    .line 97
    .line 98
    aput-object v8, v9, v6

    .line 99
    .line 100
    invoke-virtual {v2, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 101
    .line 102
    .line 103
    const-string v3, "peekByteArray"

    .line 104
    .line 105
    new-array v4, v4, [Ljava/lang/Class;

    .line 106
    .line 107
    aput-object p0, v4, v1

    .line 108
    .line 109
    aput-object v0, v4, v7

    .line 110
    .line 111
    aput-object v8, v4, v5

    .line 112
    .line 113
    aput-object v8, v4, v6

    .line 114
    .line 115
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .line 117
    .line 118
    return v7

    .line 119
    :catchall_0
    return v1
.end method

.method public static q(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzsw;->c:Lcom/google/android/gms/internal/consent_sdk/zzsv;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzsv;->a:Lsun/misc/Unsafe;

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
