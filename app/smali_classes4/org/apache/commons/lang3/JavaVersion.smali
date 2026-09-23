.class public final enum Lorg/apache/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum B:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum C:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum D:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum E:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum F:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum G:Lorg/apache/commons/lang3/JavaVersion;

.field public static final synthetic H:[Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum g:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum h:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum i:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum j:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum k:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum l:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum m:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum n:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum o:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum p:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum q:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum r:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum s:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum t:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum u:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum v:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum w:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum x:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum y:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum z:Lorg/apache/commons/lang3/JavaVersion;


# instance fields
.field public final c:F

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 57

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 2
    .line 3
    const-string v1, "0.9"

    .line 4
    .line 5
    const-string v2, "JAVA_0_9"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->g:Lorg/apache/commons/lang3/JavaVersion;

    .line 14
    .line 15
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    .line 16
    .line 17
    const v2, 0x3f8ccccd    # 1.1f

    .line 18
    .line 19
    .line 20
    const-string v5, "1.1"

    .line 21
    .line 22
    const-string v6, "JAVA_1_1"

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    invoke-direct {v1, v6, v7, v2, v5}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->h:Lorg/apache/commons/lang3/JavaVersion;

    .line 29
    .line 30
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    .line 31
    .line 32
    const v5, 0x3f99999a    # 1.2f

    .line 33
    .line 34
    .line 35
    const-string v6, "1.2"

    .line 36
    .line 37
    const-string v8, "JAVA_1_2"

    .line 38
    .line 39
    const/4 v9, 0x2

    .line 40
    invoke-direct {v2, v8, v9, v5, v6}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->i:Lorg/apache/commons/lang3/JavaVersion;

    .line 44
    .line 45
    new-instance v5, Lorg/apache/commons/lang3/JavaVersion;

    .line 46
    .line 47
    const v6, 0x3fa66666    # 1.3f

    .line 48
    .line 49
    .line 50
    const-string v8, "1.3"

    .line 51
    .line 52
    const-string v10, "JAVA_1_3"

    .line 53
    .line 54
    const/4 v11, 0x3

    .line 55
    invoke-direct {v5, v10, v11, v6, v8}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v5, Lorg/apache/commons/lang3/JavaVersion;->j:Lorg/apache/commons/lang3/JavaVersion;

    .line 59
    .line 60
    new-instance v6, Lorg/apache/commons/lang3/JavaVersion;

    .line 61
    .line 62
    const v8, 0x3fb33333    # 1.4f

    .line 63
    .line 64
    .line 65
    const-string v10, "1.4"

    .line 66
    .line 67
    const-string v12, "JAVA_1_4"

    .line 68
    .line 69
    const/4 v13, 0x4

    .line 70
    invoke-direct {v6, v12, v13, v8, v10}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput-object v6, Lorg/apache/commons/lang3/JavaVersion;->k:Lorg/apache/commons/lang3/JavaVersion;

    .line 74
    .line 75
    new-instance v8, Lorg/apache/commons/lang3/JavaVersion;

    .line 76
    .line 77
    const-string v10, "1.5"

    .line 78
    .line 79
    const-string v12, "JAVA_1_5"

    .line 80
    .line 81
    const/4 v14, 0x5

    .line 82
    invoke-direct {v8, v12, v14, v4, v10}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v8, Lorg/apache/commons/lang3/JavaVersion;->l:Lorg/apache/commons/lang3/JavaVersion;

    .line 86
    .line 87
    new-instance v4, Lorg/apache/commons/lang3/JavaVersion;

    .line 88
    .line 89
    const v10, 0x3fcccccd    # 1.6f

    .line 90
    .line 91
    .line 92
    const-string v12, "1.6"

    .line 93
    .line 94
    const-string v15, "JAVA_1_6"

    .line 95
    .line 96
    move/from16 v16, v3

    .line 97
    .line 98
    const/4 v3, 0x6

    .line 99
    invoke-direct {v4, v15, v3, v10, v12}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sput-object v4, Lorg/apache/commons/lang3/JavaVersion;->m:Lorg/apache/commons/lang3/JavaVersion;

    .line 103
    .line 104
    new-instance v10, Lorg/apache/commons/lang3/JavaVersion;

    .line 105
    .line 106
    const v12, 0x3fd9999a    # 1.7f

    .line 107
    .line 108
    .line 109
    const-string v15, "1.7"

    .line 110
    .line 111
    move/from16 v17, v7

    .line 112
    .line 113
    const-string v7, "JAVA_1_7"

    .line 114
    .line 115
    move/from16 v18, v9

    .line 116
    .line 117
    const/4 v9, 0x7

    .line 118
    invoke-direct {v10, v7, v9, v12, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v10, Lorg/apache/commons/lang3/JavaVersion;->n:Lorg/apache/commons/lang3/JavaVersion;

    .line 122
    .line 123
    new-instance v7, Lorg/apache/commons/lang3/JavaVersion;

    .line 124
    .line 125
    const v12, 0x3fe66666    # 1.8f

    .line 126
    .line 127
    .line 128
    const-string v15, "1.8"

    .line 129
    .line 130
    move/from16 v19, v9

    .line 131
    .line 132
    const-string v9, "JAVA_1_8"

    .line 133
    .line 134
    move/from16 v20, v11

    .line 135
    .line 136
    const/16 v11, 0x8

    .line 137
    .line 138
    invoke-direct {v7, v9, v11, v12, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sput-object v7, Lorg/apache/commons/lang3/JavaVersion;->o:Lorg/apache/commons/lang3/JavaVersion;

    .line 142
    .line 143
    new-instance v9, Lorg/apache/commons/lang3/JavaVersion;

    .line 144
    .line 145
    const-string v12, "JAVA_1_9"

    .line 146
    .line 147
    const/16 v15, 0x9

    .line 148
    .line 149
    move/from16 v21, v11

    .line 150
    .line 151
    const/high16 v11, 0x41100000    # 9.0f

    .line 152
    .line 153
    move/from16 v22, v13

    .line 154
    .line 155
    const-string v13, "9"

    .line 156
    .line 157
    invoke-direct {v9, v12, v15, v11, v13}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v12, Lorg/apache/commons/lang3/JavaVersion;

    .line 161
    .line 162
    move/from16 v23, v14

    .line 163
    .line 164
    const-string v14, "JAVA_9"

    .line 165
    .line 166
    move/from16 v24, v15

    .line 167
    .line 168
    const/16 v15, 0xa

    .line 169
    .line 170
    invoke-direct {v12, v14, v15, v11, v13}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v12, Lorg/apache/commons/lang3/JavaVersion;->p:Lorg/apache/commons/lang3/JavaVersion;

    .line 174
    .line 175
    new-instance v11, Lorg/apache/commons/lang3/JavaVersion;

    .line 176
    .line 177
    const/high16 v13, 0x41200000    # 10.0f

    .line 178
    .line 179
    const-string v14, "10"

    .line 180
    .line 181
    move/from16 v25, v15

    .line 182
    .line 183
    const-string v15, "JAVA_10"

    .line 184
    .line 185
    const/16 v3, 0xb

    .line 186
    .line 187
    invoke-direct {v11, v15, v3, v13, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sput-object v11, Lorg/apache/commons/lang3/JavaVersion;->q:Lorg/apache/commons/lang3/JavaVersion;

    .line 191
    .line 192
    new-instance v13, Lorg/apache/commons/lang3/JavaVersion;

    .line 193
    .line 194
    const/high16 v14, 0x41300000    # 11.0f

    .line 195
    .line 196
    const-string v15, "11"

    .line 197
    .line 198
    move/from16 v27, v3

    .line 199
    .line 200
    const-string v3, "JAVA_11"

    .line 201
    .line 202
    move-object/from16 v28, v0

    .line 203
    .line 204
    const/16 v0, 0xc

    .line 205
    .line 206
    invoke-direct {v13, v3, v0, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sput-object v13, Lorg/apache/commons/lang3/JavaVersion;->r:Lorg/apache/commons/lang3/JavaVersion;

    .line 210
    .line 211
    new-instance v3, Lorg/apache/commons/lang3/JavaVersion;

    .line 212
    .line 213
    const/high16 v14, 0x41400000    # 12.0f

    .line 214
    .line 215
    const-string v15, "12"

    .line 216
    .line 217
    move/from16 v29, v0

    .line 218
    .line 219
    const-string v0, "JAVA_12"

    .line 220
    .line 221
    move-object/from16 v30, v1

    .line 222
    .line 223
    const/16 v1, 0xd

    .line 224
    .line 225
    invoke-direct {v3, v0, v1, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sput-object v3, Lorg/apache/commons/lang3/JavaVersion;->s:Lorg/apache/commons/lang3/JavaVersion;

    .line 229
    .line 230
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 231
    .line 232
    const/high16 v14, 0x41500000    # 13.0f

    .line 233
    .line 234
    const-string v15, "13"

    .line 235
    .line 236
    move/from16 v31, v1

    .line 237
    .line 238
    const-string v1, "JAVA_13"

    .line 239
    .line 240
    move-object/from16 v32, v2

    .line 241
    .line 242
    const/16 v2, 0xe

    .line 243
    .line 244
    invoke-direct {v0, v1, v2, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->t:Lorg/apache/commons/lang3/JavaVersion;

    .line 248
    .line 249
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    .line 250
    .line 251
    const/high16 v14, 0x41600000    # 14.0f

    .line 252
    .line 253
    const-string v15, "14"

    .line 254
    .line 255
    move/from16 v33, v2

    .line 256
    .line 257
    const-string v2, "JAVA_14"

    .line 258
    .line 259
    move-object/from16 v34, v0

    .line 260
    .line 261
    const/16 v0, 0xf

    .line 262
    .line 263
    invoke-direct {v1, v2, v0, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->u:Lorg/apache/commons/lang3/JavaVersion;

    .line 267
    .line 268
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    .line 269
    .line 270
    const/high16 v14, 0x41700000    # 15.0f

    .line 271
    .line 272
    const-string v15, "15"

    .line 273
    .line 274
    move/from16 v35, v0

    .line 275
    .line 276
    const-string v0, "JAVA_15"

    .line 277
    .line 278
    move-object/from16 v36, v1

    .line 279
    .line 280
    const/16 v1, 0x10

    .line 281
    .line 282
    invoke-direct {v2, v0, v1, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->v:Lorg/apache/commons/lang3/JavaVersion;

    .line 286
    .line 287
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 288
    .line 289
    const/high16 v14, 0x41800000    # 16.0f

    .line 290
    .line 291
    const-string v15, "16"

    .line 292
    .line 293
    move/from16 v37, v1

    .line 294
    .line 295
    const-string v1, "JAVA_16"

    .line 296
    .line 297
    move-object/from16 v38, v2

    .line 298
    .line 299
    const/16 v2, 0x11

    .line 300
    .line 301
    invoke-direct {v0, v1, v2, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->w:Lorg/apache/commons/lang3/JavaVersion;

    .line 305
    .line 306
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    .line 307
    .line 308
    const/high16 v14, 0x41880000    # 17.0f

    .line 309
    .line 310
    const-string v15, "17"

    .line 311
    .line 312
    move/from16 v39, v2

    .line 313
    .line 314
    const-string v2, "JAVA_17"

    .line 315
    .line 316
    move-object/from16 v40, v0

    .line 317
    .line 318
    const/16 v0, 0x12

    .line 319
    .line 320
    invoke-direct {v1, v2, v0, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->x:Lorg/apache/commons/lang3/JavaVersion;

    .line 324
    .line 325
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    .line 326
    .line 327
    const/high16 v14, 0x41900000    # 18.0f

    .line 328
    .line 329
    const-string v15, "18"

    .line 330
    .line 331
    move/from16 v41, v0

    .line 332
    .line 333
    const-string v0, "JAVA_18"

    .line 334
    .line 335
    move-object/from16 v42, v1

    .line 336
    .line 337
    const/16 v1, 0x13

    .line 338
    .line 339
    invoke-direct {v2, v0, v1, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->y:Lorg/apache/commons/lang3/JavaVersion;

    .line 343
    .line 344
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 345
    .line 346
    const/high16 v14, 0x41980000    # 19.0f

    .line 347
    .line 348
    const-string v15, "19"

    .line 349
    .line 350
    move/from16 v43, v1

    .line 351
    .line 352
    const-string v1, "JAVA_19"

    .line 353
    .line 354
    move-object/from16 v44, v2

    .line 355
    .line 356
    const/16 v2, 0x14

    .line 357
    .line 358
    invoke-direct {v0, v1, v2, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 359
    .line 360
    .line 361
    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->z:Lorg/apache/commons/lang3/JavaVersion;

    .line 362
    .line 363
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    .line 364
    .line 365
    const/high16 v14, 0x41a00000    # 20.0f

    .line 366
    .line 367
    const-string v15, "20"

    .line 368
    .line 369
    move/from16 v45, v2

    .line 370
    .line 371
    const-string v2, "JAVA_20"

    .line 372
    .line 373
    move-object/from16 v46, v0

    .line 374
    .line 375
    const/16 v0, 0x15

    .line 376
    .line 377
    invoke-direct {v1, v2, v0, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 378
    .line 379
    .line 380
    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->A:Lorg/apache/commons/lang3/JavaVersion;

    .line 381
    .line 382
    new-instance v2, Lorg/apache/commons/lang3/JavaVersion;

    .line 383
    .line 384
    const/high16 v14, 0x41a80000    # 21.0f

    .line 385
    .line 386
    const-string v15, "21"

    .line 387
    .line 388
    move/from16 v47, v0

    .line 389
    .line 390
    const-string v0, "JAVA_21"

    .line 391
    .line 392
    move-object/from16 v48, v1

    .line 393
    .line 394
    const/16 v1, 0x16

    .line 395
    .line 396
    invoke-direct {v2, v0, v1, v14, v15}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 397
    .line 398
    .line 399
    sput-object v2, Lorg/apache/commons/lang3/JavaVersion;->B:Lorg/apache/commons/lang3/JavaVersion;

    .line 400
    .line 401
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 402
    .line 403
    const/high16 v1, 0x41b00000    # 22.0f

    .line 404
    .line 405
    const-string v14, "22"

    .line 406
    .line 407
    const-string v15, "JAVA_22"

    .line 408
    .line 409
    move-object/from16 v49, v2

    .line 410
    .line 411
    const/16 v2, 0x17

    .line 412
    .line 413
    invoke-direct {v0, v15, v2, v1, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 414
    .line 415
    .line 416
    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->C:Lorg/apache/commons/lang3/JavaVersion;

    .line 417
    .line 418
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    .line 419
    .line 420
    const/high16 v2, 0x41b80000    # 23.0f

    .line 421
    .line 422
    const-string v14, "23"

    .line 423
    .line 424
    const-string v15, "JAVA_23"

    .line 425
    .line 426
    move-object/from16 v50, v0

    .line 427
    .line 428
    const/16 v0, 0x18

    .line 429
    .line 430
    invoke-direct {v1, v15, v0, v2, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 431
    .line 432
    .line 433
    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->D:Lorg/apache/commons/lang3/JavaVersion;

    .line 434
    .line 435
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 436
    .line 437
    const/high16 v2, 0x41c00000    # 24.0f

    .line 438
    .line 439
    const-string v14, "24"

    .line 440
    .line 441
    const-string v15, "JAVA_24"

    .line 442
    .line 443
    move-object/from16 v51, v1

    .line 444
    .line 445
    const/16 v1, 0x19

    .line 446
    .line 447
    invoke-direct {v0, v15, v1, v2, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 448
    .line 449
    .line 450
    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->E:Lorg/apache/commons/lang3/JavaVersion;

    .line 451
    .line 452
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    .line 453
    .line 454
    const/high16 v2, 0x41c80000    # 25.0f

    .line 455
    .line 456
    const-string v14, "25"

    .line 457
    .line 458
    const-string v15, "JAVA_25"

    .line 459
    .line 460
    move-object/from16 v52, v0

    .line 461
    .line 462
    const/16 v0, 0x1a

    .line 463
    .line 464
    invoke-direct {v1, v15, v0, v2, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->F:Lorg/apache/commons/lang3/JavaVersion;

    .line 468
    .line 469
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 470
    .line 471
    const/high16 v2, 0x41d00000    # 26.0f

    .line 472
    .line 473
    const-string v14, "26"

    .line 474
    .line 475
    const-string v15, "JAVA_26"

    .line 476
    .line 477
    move-object/from16 v53, v1

    .line 478
    .line 479
    const/16 v1, 0x1b

    .line 480
    .line 481
    invoke-direct {v0, v15, v1, v2, v14}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 482
    .line 483
    .line 484
    new-instance v1, Lorg/apache/commons/lang3/JavaVersion;

    .line 485
    .line 486
    new-instance v2, Lorg/apache/commons/lang3/g;

    .line 487
    .line 488
    const/4 v14, 0x6

    .line 489
    invoke-direct {v2, v14}, Lorg/apache/commons/lang3/g;-><init>(I)V

    .line 490
    .line 491
    .line 492
    const-string v15, "java.specification.version"

    .line 493
    .line 494
    invoke-static {v15, v2}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-static {v2}, Lorg/apache/commons/lang3/JavaVersion;->a(Ljava/lang/String;)F

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    const/16 v54, 0x0

    .line 503
    .line 504
    cmpl-float v26, v2, v54

    .line 505
    .line 506
    const/high16 v55, 0x42c60000    # 99.0f

    .line 507
    .line 508
    if-lez v26, :cond_0

    .line 509
    .line 510
    :goto_0
    move-object/from16 v56, v0

    .line 511
    .line 512
    goto :goto_1

    .line 513
    :cond_0
    move/from16 v2, v55

    .line 514
    .line 515
    goto :goto_0

    .line 516
    :goto_1
    new-instance v0, Lorg/apache/commons/lang3/g;

    .line 517
    .line 518
    invoke-direct {v0, v14}, Lorg/apache/commons/lang3/g;-><init>(I)V

    .line 519
    .line 520
    .line 521
    invoke-static {v15, v0}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-static {v0}, Lorg/apache/commons/lang3/JavaVersion;->a(Ljava/lang/String;)F

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    cmpl-float v14, v0, v54

    .line 530
    .line 531
    if-lez v14, :cond_1

    .line 532
    .line 533
    move/from16 v55, v0

    .line 534
    .line 535
    :cond_1
    invoke-static/range {v55 .. v55}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    const-string v14, "JAVA_RECENT"

    .line 540
    .line 541
    const/16 v15, 0x1c

    .line 542
    .line 543
    invoke-direct {v1, v14, v15, v2, v0}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    .line 544
    .line 545
    .line 546
    sput-object v1, Lorg/apache/commons/lang3/JavaVersion;->G:Lorg/apache/commons/lang3/JavaVersion;

    .line 547
    .line 548
    const/16 v0, 0x1d

    .line 549
    .line 550
    new-array v0, v0, [Lorg/apache/commons/lang3/JavaVersion;

    .line 551
    .line 552
    aput-object v28, v0, v16

    .line 553
    .line 554
    aput-object v30, v0, v17

    .line 555
    .line 556
    aput-object v32, v0, v18

    .line 557
    .line 558
    aput-object v5, v0, v20

    .line 559
    .line 560
    aput-object v6, v0, v22

    .line 561
    .line 562
    aput-object v8, v0, v23

    .line 563
    .line 564
    const/16 v26, 0x6

    .line 565
    .line 566
    aput-object v4, v0, v26

    .line 567
    .line 568
    aput-object v10, v0, v19

    .line 569
    .line 570
    aput-object v7, v0, v21

    .line 571
    .line 572
    aput-object v9, v0, v24

    .line 573
    .line 574
    aput-object v12, v0, v25

    .line 575
    .line 576
    aput-object v11, v0, v27

    .line 577
    .line 578
    aput-object v13, v0, v29

    .line 579
    .line 580
    aput-object v3, v0, v31

    .line 581
    .line 582
    aput-object v34, v0, v33

    .line 583
    .line 584
    aput-object v36, v0, v35

    .line 585
    .line 586
    aput-object v38, v0, v37

    .line 587
    .line 588
    aput-object v40, v0, v39

    .line 589
    .line 590
    aput-object v42, v0, v41

    .line 591
    .line 592
    aput-object v44, v0, v43

    .line 593
    .line 594
    aput-object v46, v0, v45

    .line 595
    .line 596
    aput-object v48, v0, v47

    .line 597
    .line 598
    const/16 v2, 0x16

    .line 599
    .line 600
    aput-object v49, v0, v2

    .line 601
    .line 602
    const/16 v2, 0x17

    .line 603
    .line 604
    aput-object v50, v0, v2

    .line 605
    .line 606
    const/16 v2, 0x18

    .line 607
    .line 608
    aput-object v51, v0, v2

    .line 609
    .line 610
    const/16 v2, 0x19

    .line 611
    .line 612
    aput-object v52, v0, v2

    .line 613
    .line 614
    const/16 v2, 0x1a

    .line 615
    .line 616
    aput-object v53, v0, v2

    .line 617
    .line 618
    const/16 v2, 0x1b

    .line 619
    .line 620
    aput-object v56, v0, v2

    .line 621
    .line 622
    const/16 v2, 0x1c

    .line 623
    .line 624
    aput-object v1, v0, v2

    .line 625
    .line 626
    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->H:[Lorg/apache/commons/lang3/JavaVersion;

    .line 627
    .line 628
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/apache/commons/lang3/JavaVersion;->c:F

    .line 5
    .line 6
    iput-object p4, p0, Lorg/apache/commons/lang3/JavaVersion;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/lang/String;)F
    .locals 3

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    return v1

    .line 17
    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/RegExUtils;->a:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    array-length v0, p0

    .line 24
    const/4 v2, 0x2

    .line 25
    if-lt v0, v2, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    aget-object v2, p0, v2

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x2e

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    aget-object p0, p0, v2

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    :try_start_1
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 54
    .line 55
    .line 56
    move-result p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    return p0

    .line 58
    :catch_1
    :cond_1
    return v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/lang3/JavaVersion;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/lang3/JavaVersion;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/JavaVersion;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->H:[Lorg/apache/commons/lang3/JavaVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/lang3/JavaVersion;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/JavaVersion;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
