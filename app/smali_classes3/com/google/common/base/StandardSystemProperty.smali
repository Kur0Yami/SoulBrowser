.class public final enum Lcom/google/common/base/StandardSystemProperty;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/StandardSystemProperty;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Lcom/google/common/base/StandardSystemProperty;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 53

    .line 1
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    .line 2
    .line 3
    const-string v1, "java.version"

    .line 4
    .line 5
    const-string v2, "JAVA_VERSION"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    .line 12
    .line 13
    const-string v2, "java.vendor"

    .line 14
    .line 15
    const-string v4, "JAVA_VENDOR"

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-direct {v1, v4, v5, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/google/common/base/StandardSystemProperty;

    .line 22
    .line 23
    const-string v4, "java.vendor.url"

    .line 24
    .line 25
    const-string v6, "JAVA_VENDOR_URL"

    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    invoke-direct {v2, v6, v7, v4}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lcom/google/common/base/StandardSystemProperty;

    .line 32
    .line 33
    const-string v6, "java.home"

    .line 34
    .line 35
    const-string v8, "JAVA_HOME"

    .line 36
    .line 37
    const/4 v9, 0x3

    .line 38
    invoke-direct {v4, v8, v9, v6}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v6, Lcom/google/common/base/StandardSystemProperty;

    .line 42
    .line 43
    const-string v8, "java.vm.specification.version"

    .line 44
    .line 45
    const-string v10, "JAVA_VM_SPECIFICATION_VERSION"

    .line 46
    .line 47
    const/4 v11, 0x4

    .line 48
    invoke-direct {v6, v10, v11, v8}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v8, Lcom/google/common/base/StandardSystemProperty;

    .line 52
    .line 53
    const-string v10, "java.vm.specification.vendor"

    .line 54
    .line 55
    const-string v12, "JAVA_VM_SPECIFICATION_VENDOR"

    .line 56
    .line 57
    const/4 v13, 0x5

    .line 58
    invoke-direct {v8, v12, v13, v10}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v10, Lcom/google/common/base/StandardSystemProperty;

    .line 62
    .line 63
    const-string v12, "java.vm.specification.name"

    .line 64
    .line 65
    const-string v14, "JAVA_VM_SPECIFICATION_NAME"

    .line 66
    .line 67
    const/4 v15, 0x6

    .line 68
    invoke-direct {v10, v14, v15, v12}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v12, Lcom/google/common/base/StandardSystemProperty;

    .line 72
    .line 73
    const-string v14, "java.vm.version"

    .line 74
    .line 75
    move/from16 v16, v3

    .line 76
    .line 77
    const-string v3, "JAVA_VM_VERSION"

    .line 78
    .line 79
    move/from16 v17, v5

    .line 80
    .line 81
    const/4 v5, 0x7

    .line 82
    invoke-direct {v12, v3, v5, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Lcom/google/common/base/StandardSystemProperty;

    .line 86
    .line 87
    const-string v14, "java.vm.vendor"

    .line 88
    .line 89
    move/from16 v18, v5

    .line 90
    .line 91
    const-string v5, "JAVA_VM_VENDOR"

    .line 92
    .line 93
    move/from16 v19, v7

    .line 94
    .line 95
    const/16 v7, 0x8

    .line 96
    .line 97
    invoke-direct {v3, v5, v7, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v5, Lcom/google/common/base/StandardSystemProperty;

    .line 101
    .line 102
    const-string v14, "java.vm.name"

    .line 103
    .line 104
    move/from16 v20, v7

    .line 105
    .line 106
    const-string v7, "JAVA_VM_NAME"

    .line 107
    .line 108
    move/from16 v21, v9

    .line 109
    .line 110
    const/16 v9, 0x9

    .line 111
    .line 112
    invoke-direct {v5, v7, v9, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v7, Lcom/google/common/base/StandardSystemProperty;

    .line 116
    .line 117
    const-string v14, "java.specification.version"

    .line 118
    .line 119
    move/from16 v22, v9

    .line 120
    .line 121
    const-string v9, "JAVA_SPECIFICATION_VERSION"

    .line 122
    .line 123
    move/from16 v23, v11

    .line 124
    .line 125
    const/16 v11, 0xa

    .line 126
    .line 127
    invoke-direct {v7, v9, v11, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v9, Lcom/google/common/base/StandardSystemProperty;

    .line 131
    .line 132
    const-string v14, "java.specification.vendor"

    .line 133
    .line 134
    move/from16 v24, v11

    .line 135
    .line 136
    const-string v11, "JAVA_SPECIFICATION_VENDOR"

    .line 137
    .line 138
    move/from16 v25, v13

    .line 139
    .line 140
    const/16 v13, 0xb

    .line 141
    .line 142
    invoke-direct {v9, v11, v13, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v11, Lcom/google/common/base/StandardSystemProperty;

    .line 146
    .line 147
    const-string v14, "java.specification.name"

    .line 148
    .line 149
    move/from16 v26, v13

    .line 150
    .line 151
    const-string v13, "JAVA_SPECIFICATION_NAME"

    .line 152
    .line 153
    move/from16 v27, v15

    .line 154
    .line 155
    const/16 v15, 0xc

    .line 156
    .line 157
    invoke-direct {v11, v13, v15, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    new-instance v13, Lcom/google/common/base/StandardSystemProperty;

    .line 161
    .line 162
    const-string v14, "java.class.version"

    .line 163
    .line 164
    move/from16 v28, v15

    .line 165
    .line 166
    const-string v15, "JAVA_CLASS_VERSION"

    .line 167
    .line 168
    move-object/from16 v29, v0

    .line 169
    .line 170
    const/16 v0, 0xd

    .line 171
    .line 172
    invoke-direct {v13, v15, v0, v14}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v14, Lcom/google/common/base/StandardSystemProperty;

    .line 176
    .line 177
    const-string v15, "java.class.path"

    .line 178
    .line 179
    move/from16 v30, v0

    .line 180
    .line 181
    const-string v0, "JAVA_CLASS_PATH"

    .line 182
    .line 183
    move-object/from16 v31, v1

    .line 184
    .line 185
    const/16 v1, 0xe

    .line 186
    .line 187
    invoke-direct {v14, v0, v1, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    .line 191
    .line 192
    const-string v15, "java.library.path"

    .line 193
    .line 194
    move/from16 v32, v1

    .line 195
    .line 196
    const-string v1, "JAVA_LIBRARY_PATH"

    .line 197
    .line 198
    move-object/from16 v33, v2

    .line 199
    .line 200
    const/16 v2, 0xf

    .line 201
    .line 202
    invoke-direct {v0, v1, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    .line 206
    .line 207
    const-string v15, "java.io.tmpdir"

    .line 208
    .line 209
    move/from16 v34, v2

    .line 210
    .line 211
    const-string v2, "JAVA_IO_TMPDIR"

    .line 212
    .line 213
    move-object/from16 v35, v0

    .line 214
    .line 215
    const/16 v0, 0x10

    .line 216
    .line 217
    invoke-direct {v1, v2, v0, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v2, Lcom/google/common/base/StandardSystemProperty;

    .line 221
    .line 222
    const-string v15, "java.compiler"

    .line 223
    .line 224
    move/from16 v36, v0

    .line 225
    .line 226
    const-string v0, "JAVA_COMPILER"

    .line 227
    .line 228
    move-object/from16 v37, v1

    .line 229
    .line 230
    const/16 v1, 0x11

    .line 231
    .line 232
    invoke-direct {v2, v0, v1, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    .line 236
    .line 237
    const-string v15, "java.ext.dirs"

    .line 238
    .line 239
    move/from16 v38, v1

    .line 240
    .line 241
    const-string v1, "JAVA_EXT_DIRS"

    .line 242
    .line 243
    move-object/from16 v39, v2

    .line 244
    .line 245
    const/16 v2, 0x12

    .line 246
    .line 247
    invoke-direct {v0, v1, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    .line 251
    .line 252
    const-string v15, "os.name"

    .line 253
    .line 254
    move/from16 v40, v2

    .line 255
    .line 256
    const-string v2, "OS_NAME"

    .line 257
    .line 258
    move-object/from16 v41, v0

    .line 259
    .line 260
    const/16 v0, 0x13

    .line 261
    .line 262
    invoke-direct {v1, v2, v0, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    new-instance v2, Lcom/google/common/base/StandardSystemProperty;

    .line 266
    .line 267
    const-string v15, "os.arch"

    .line 268
    .line 269
    move/from16 v42, v0

    .line 270
    .line 271
    const-string v0, "OS_ARCH"

    .line 272
    .line 273
    move-object/from16 v43, v1

    .line 274
    .line 275
    const/16 v1, 0x14

    .line 276
    .line 277
    invoke-direct {v2, v0, v1, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    .line 281
    .line 282
    const-string v15, "os.version"

    .line 283
    .line 284
    move/from16 v44, v1

    .line 285
    .line 286
    const-string v1, "OS_VERSION"

    .line 287
    .line 288
    move-object/from16 v45, v2

    .line 289
    .line 290
    const/16 v2, 0x15

    .line 291
    .line 292
    invoke-direct {v0, v1, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    .line 296
    .line 297
    const/16 v15, 0x16

    .line 298
    .line 299
    move/from16 v46, v2

    .line 300
    .line 301
    const-string v2, "file.separator"

    .line 302
    .line 303
    move-object/from16 v47, v0

    .line 304
    .line 305
    const-string v0, "FILE_SEPARATOR"

    .line 306
    .line 307
    invoke-direct {v1, v0, v15, v2}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    .line 311
    .line 312
    const/16 v2, 0x17

    .line 313
    .line 314
    const-string v15, "path.separator"

    .line 315
    .line 316
    move-object/from16 v48, v1

    .line 317
    .line 318
    const-string v1, "PATH_SEPARATOR"

    .line 319
    .line 320
    invoke-direct {v0, v1, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    .line 324
    .line 325
    const/16 v2, 0x18

    .line 326
    .line 327
    const-string v15, "line.separator"

    .line 328
    .line 329
    move-object/from16 v49, v0

    .line 330
    .line 331
    const-string v0, "LINE_SEPARATOR"

    .line 332
    .line 333
    invoke-direct {v1, v0, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    .line 335
    .line 336
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    .line 337
    .line 338
    const/16 v2, 0x19

    .line 339
    .line 340
    const-string v15, "user.name"

    .line 341
    .line 342
    move-object/from16 v50, v1

    .line 343
    .line 344
    const-string v1, "USER_NAME"

    .line 345
    .line 346
    invoke-direct {v0, v1, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    new-instance v1, Lcom/google/common/base/StandardSystemProperty;

    .line 350
    .line 351
    const/16 v2, 0x1a

    .line 352
    .line 353
    const-string v15, "user.home"

    .line 354
    .line 355
    move-object/from16 v51, v0

    .line 356
    .line 357
    const-string v0, "USER_HOME"

    .line 358
    .line 359
    invoke-direct {v1, v0, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    .line 363
    .line 364
    const/16 v2, 0x1b

    .line 365
    .line 366
    const-string v15, "user.dir"

    .line 367
    .line 368
    move-object/from16 v52, v1

    .line 369
    .line 370
    const-string v1, "USER_DIR"

    .line 371
    .line 372
    invoke-direct {v0, v1, v2, v15}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 373
    .line 374
    .line 375
    const/16 v1, 0x1c

    .line 376
    .line 377
    new-array v1, v1, [Lcom/google/common/base/StandardSystemProperty;

    .line 378
    .line 379
    aput-object v29, v1, v16

    .line 380
    .line 381
    aput-object v31, v1, v17

    .line 382
    .line 383
    aput-object v33, v1, v19

    .line 384
    .line 385
    aput-object v4, v1, v21

    .line 386
    .line 387
    aput-object v6, v1, v23

    .line 388
    .line 389
    aput-object v8, v1, v25

    .line 390
    .line 391
    aput-object v10, v1, v27

    .line 392
    .line 393
    aput-object v12, v1, v18

    .line 394
    .line 395
    aput-object v3, v1, v20

    .line 396
    .line 397
    aput-object v5, v1, v22

    .line 398
    .line 399
    aput-object v7, v1, v24

    .line 400
    .line 401
    aput-object v9, v1, v26

    .line 402
    .line 403
    aput-object v11, v1, v28

    .line 404
    .line 405
    aput-object v13, v1, v30

    .line 406
    .line 407
    aput-object v14, v1, v32

    .line 408
    .line 409
    aput-object v35, v1, v34

    .line 410
    .line 411
    aput-object v37, v1, v36

    .line 412
    .line 413
    aput-object v39, v1, v38

    .line 414
    .line 415
    aput-object v41, v1, v40

    .line 416
    .line 417
    aput-object v43, v1, v42

    .line 418
    .line 419
    aput-object v45, v1, v44

    .line 420
    .line 421
    aput-object v47, v1, v46

    .line 422
    .line 423
    const/16 v2, 0x16

    .line 424
    .line 425
    aput-object v48, v1, v2

    .line 426
    .line 427
    const/16 v2, 0x17

    .line 428
    .line 429
    aput-object v49, v1, v2

    .line 430
    .line 431
    const/16 v2, 0x18

    .line 432
    .line 433
    aput-object v50, v1, v2

    .line 434
    .line 435
    const/16 v2, 0x19

    .line 436
    .line 437
    aput-object v51, v1, v2

    .line 438
    .line 439
    const/16 v2, 0x1a

    .line 440
    .line 441
    aput-object v52, v1, v2

    .line 442
    .line 443
    const/16 v2, 0x1b

    .line 444
    .line 445
    aput-object v0, v1, v2

    .line 446
    .line 447
    sput-object v1, Lcom/google/common/base/StandardSystemProperty;->f:[Lcom/google/common/base/StandardSystemProperty;

    .line 448
    .line 449
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/common/base/StandardSystemProperty;->c:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/StandardSystemProperty;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/base/StandardSystemProperty;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/common/base/StandardSystemProperty;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/common/base/StandardSystemProperty;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/base/StandardSystemProperty;->f:[Lcom/google/common/base/StandardSystemProperty;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/common/base/StandardSystemProperty;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/common/base/StandardSystemProperty;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/common/base/StandardSystemProperty;->c:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "="

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
