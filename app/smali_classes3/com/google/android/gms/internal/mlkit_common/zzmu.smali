.class public final enum Lcom/google/android/gms/internal/mlkit_common/zzmu;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzba;


# static fields
.field public static final synthetic f:[Lcom/google/android/gms/internal/mlkit_common/zzmu;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 79

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 2
    .line 3
    const-string v1, "NO_ERROR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 10
    .line 11
    const-string v3, "INCOMPATIBLE_INPUT"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 18
    .line 19
    const-string v5, "INCOMPATIBLE_OUTPUT"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 26
    .line 27
    const-string v7, "INCOMPATIBLE_TFLITE_VERSION"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 34
    .line 35
    const-string v9, "MISSING_OP"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 42
    .line 43
    const-string v11, "DATA_TYPE_ERROR"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    const/4 v13, 0x6

    .line 47
    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    new-instance v11, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 51
    .line 52
    const-string v14, "TFLITE_INTERNAL_ERROR"

    .line 53
    .line 54
    const/4 v15, 0x7

    .line 55
    invoke-direct {v11, v14, v13, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    new-instance v14, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 59
    .line 60
    move/from16 v16, v2

    .line 61
    .line 62
    const-string v2, "TFLITE_UNKNOWN_ERROR"

    .line 63
    .line 64
    move/from16 v17, v4

    .line 65
    .line 66
    const/16 v4, 0x8

    .line 67
    .line 68
    invoke-direct {v14, v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 72
    .line 73
    move/from16 v18, v6

    .line 74
    .line 75
    const-string v6, "MEDIAPIPE_ERROR"

    .line 76
    .line 77
    move/from16 v19, v8

    .line 78
    .line 79
    const/16 v8, 0x9

    .line 80
    .line 81
    invoke-direct {v2, v6, v4, v8}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 82
    .line 83
    .line 84
    new-instance v6, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 85
    .line 86
    move/from16 v20, v4

    .line 87
    .line 88
    const-string v4, "TIME_OUT_FETCHING_MODEL_METADATA"

    .line 89
    .line 90
    invoke-direct {v6, v4, v8, v12}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    new-instance v4, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 94
    .line 95
    move/from16 v21, v8

    .line 96
    .line 97
    const/16 v8, 0x64

    .line 98
    .line 99
    move/from16 v22, v10

    .line 100
    .line 101
    const-string v10, "MODEL_NOT_DOWNLOADED"

    .line 102
    .line 103
    move/from16 v23, v12

    .line 104
    .line 105
    const/16 v12, 0xa

    .line 106
    .line 107
    invoke-direct {v4, v10, v12, v8}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 108
    .line 109
    .line 110
    new-instance v8, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 111
    .line 112
    const/16 v10, 0x65

    .line 113
    .line 114
    move/from16 v24, v12

    .line 115
    .line 116
    const-string v12, "URI_EXPIRED"

    .line 117
    .line 118
    move/from16 v25, v13

    .line 119
    .line 120
    const/16 v13, 0xb

    .line 121
    .line 122
    invoke-direct {v8, v12, v13, v10}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    new-instance v10, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 126
    .line 127
    const/16 v12, 0x66

    .line 128
    .line 129
    move/from16 v26, v13

    .line 130
    .line 131
    const-string v13, "NO_NETWORK_CONNECTION"

    .line 132
    .line 133
    move/from16 v27, v15

    .line 134
    .line 135
    const/16 v15, 0xc

    .line 136
    .line 137
    invoke-direct {v10, v13, v15, v12}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 138
    .line 139
    .line 140
    new-instance v12, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 141
    .line 142
    const/16 v13, 0x67

    .line 143
    .line 144
    move/from16 v28, v15

    .line 145
    .line 146
    const-string v15, "METERED_NETWORK"

    .line 147
    .line 148
    move-object/from16 v29, v0

    .line 149
    .line 150
    const/16 v0, 0xd

    .line 151
    .line 152
    invoke-direct {v12, v15, v0, v13}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 153
    .line 154
    .line 155
    new-instance v13, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 156
    .line 157
    const/16 v15, 0x68

    .line 158
    .line 159
    move/from16 v30, v0

    .line 160
    .line 161
    const-string v0, "DOWNLOAD_FAILED"

    .line 162
    .line 163
    move-object/from16 v31, v1

    .line 164
    .line 165
    const/16 v1, 0xe

    .line 166
    .line 167
    invoke-direct {v13, v0, v1, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 168
    .line 169
    .line 170
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 171
    .line 172
    const/16 v15, 0x69

    .line 173
    .line 174
    move/from16 v32, v1

    .line 175
    .line 176
    const-string v1, "MODEL_INFO_DOWNLOAD_UNSUCCESSFUL_HTTP_STATUS"

    .line 177
    .line 178
    move-object/from16 v33, v2

    .line 179
    .line 180
    const/16 v2, 0xf

    .line 181
    .line 182
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 183
    .line 184
    .line 185
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 186
    .line 187
    const/16 v15, 0x6a

    .line 188
    .line 189
    move/from16 v34, v2

    .line 190
    .line 191
    const-string v2, "MODEL_INFO_DOWNLOAD_NO_HASH"

    .line 192
    .line 193
    move-object/from16 v35, v0

    .line 194
    .line 195
    const/16 v0, 0x10

    .line 196
    .line 197
    invoke-direct {v1, v2, v0, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 198
    .line 199
    .line 200
    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 201
    .line 202
    const/16 v15, 0x6b

    .line 203
    .line 204
    move/from16 v36, v0

    .line 205
    .line 206
    const-string v0, "MODEL_INFO_DOWNLOAD_CONNECTION_FAILED"

    .line 207
    .line 208
    move-object/from16 v37, v1

    .line 209
    .line 210
    const/16 v1, 0x11

    .line 211
    .line 212
    invoke-direct {v2, v0, v1, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 213
    .line 214
    .line 215
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 216
    .line 217
    const/16 v15, 0x6c

    .line 218
    .line 219
    move/from16 v38, v1

    .line 220
    .line 221
    const-string v1, "NO_VALID_MODEL"

    .line 222
    .line 223
    move-object/from16 v39, v2

    .line 224
    .line 225
    const/16 v2, 0x12

    .line 226
    .line 227
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 228
    .line 229
    .line 230
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 231
    .line 232
    const/16 v15, 0x6d

    .line 233
    .line 234
    move/from16 v40, v2

    .line 235
    .line 236
    const-string v2, "LOCAL_MODEL_INVALID"

    .line 237
    .line 238
    move-object/from16 v41, v0

    .line 239
    .line 240
    const/16 v0, 0x13

    .line 241
    .line 242
    invoke-direct {v1, v2, v0, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 243
    .line 244
    .line 245
    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 246
    .line 247
    const/16 v15, 0x6e

    .line 248
    .line 249
    move/from16 v42, v0

    .line 250
    .line 251
    const-string v0, "REMOTE_MODEL_INVALID"

    .line 252
    .line 253
    move-object/from16 v43, v1

    .line 254
    .line 255
    const/16 v1, 0x14

    .line 256
    .line 257
    invoke-direct {v2, v0, v1, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 258
    .line 259
    .line 260
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 261
    .line 262
    const/16 v15, 0x6f

    .line 263
    .line 264
    move/from16 v44, v1

    .line 265
    .line 266
    const-string v1, "REMOTE_MODEL_LOADER_ERROR"

    .line 267
    .line 268
    move-object/from16 v45, v2

    .line 269
    .line 270
    const/16 v2, 0x15

    .line 271
    .line 272
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 273
    .line 274
    .line 275
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 276
    .line 277
    const/16 v15, 0x16

    .line 278
    .line 279
    move/from16 v46, v2

    .line 280
    .line 281
    const/16 v2, 0x70

    .line 282
    .line 283
    move-object/from16 v47, v0

    .line 284
    .line 285
    const-string v0, "REMOTE_MODEL_LOADER_LOADS_NO_MODEL"

    .line 286
    .line 287
    invoke-direct {v1, v0, v15, v2}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 291
    .line 292
    const/16 v2, 0x17

    .line 293
    .line 294
    const/16 v15, 0x71

    .line 295
    .line 296
    move-object/from16 v48, v1

    .line 297
    .line 298
    const-string v1, "SMART_REPLY_LANG_ID_DETECTAION_FAILURE"

    .line 299
    .line 300
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 301
    .line 302
    .line 303
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 304
    .line 305
    const/16 v2, 0x18

    .line 306
    .line 307
    const/16 v15, 0x72

    .line 308
    .line 309
    move-object/from16 v49, v0

    .line 310
    .line 311
    const-string v0, "MODEL_NOT_REGISTERED"

    .line 312
    .line 313
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 314
    .line 315
    .line 316
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 317
    .line 318
    const/16 v2, 0x19

    .line 319
    .line 320
    const/16 v15, 0x73

    .line 321
    .line 322
    move-object/from16 v50, v1

    .line 323
    .line 324
    const-string v1, "MODEL_TYPE_MISUSE"

    .line 325
    .line 326
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 327
    .line 328
    .line 329
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 330
    .line 331
    const/16 v2, 0x1a

    .line 332
    .line 333
    const/16 v15, 0x74

    .line 334
    .line 335
    move-object/from16 v51, v0

    .line 336
    .line 337
    const-string v0, "MODEL_HASH_MISMATCH"

    .line 338
    .line 339
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 340
    .line 341
    .line 342
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 343
    .line 344
    const/16 v2, 0x1b

    .line 345
    .line 346
    const/16 v15, 0xc9

    .line 347
    .line 348
    move-object/from16 v52, v1

    .line 349
    .line 350
    const-string v1, "OPTIONAL_MODULE_NOT_AVAILABLE"

    .line 351
    .line 352
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 353
    .line 354
    .line 355
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 356
    .line 357
    const/16 v2, 0x1c

    .line 358
    .line 359
    const/16 v15, 0xca

    .line 360
    .line 361
    move-object/from16 v53, v0

    .line 362
    .line 363
    const-string v0, "OPTIONAL_MODULE_INIT_ERROR"

    .line 364
    .line 365
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 366
    .line 367
    .line 368
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 369
    .line 370
    const/16 v2, 0x1d

    .line 371
    .line 372
    const/16 v15, 0xcb

    .line 373
    .line 374
    move-object/from16 v54, v1

    .line 375
    .line 376
    const-string v1, "OPTIONAL_MODULE_INFERENCE_ERROR"

    .line 377
    .line 378
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 379
    .line 380
    .line 381
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 382
    .line 383
    const/16 v2, 0x1e

    .line 384
    .line 385
    const/16 v15, 0xcc

    .line 386
    .line 387
    move-object/from16 v55, v0

    .line 388
    .line 389
    const-string v0, "OPTIONAL_MODULE_RELEASE_ERROR"

    .line 390
    .line 391
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 392
    .line 393
    .line 394
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 395
    .line 396
    const/16 v2, 0x1f

    .line 397
    .line 398
    const/16 v15, 0xcd

    .line 399
    .line 400
    move-object/from16 v56, v1

    .line 401
    .line 402
    const-string v1, "OPTIONAL_TFLITE_MODULE_INIT_ERROR"

    .line 403
    .line 404
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 408
    .line 409
    const/16 v2, 0x20

    .line 410
    .line 411
    const/16 v15, 0xce

    .line 412
    .line 413
    move-object/from16 v57, v0

    .line 414
    .line 415
    const-string v0, "NATIVE_LIBRARY_LOAD_ERROR"

    .line 416
    .line 417
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 418
    .line 419
    .line 420
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 421
    .line 422
    const/16 v2, 0x21

    .line 423
    .line 424
    const/16 v15, 0xcf

    .line 425
    .line 426
    move-object/from16 v58, v1

    .line 427
    .line 428
    const-string v1, "OPTIONAL_MODULE_CREATE_ERROR"

    .line 429
    .line 430
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 431
    .line 432
    .line 433
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 434
    .line 435
    const/16 v2, 0x22

    .line 436
    .line 437
    const/16 v15, 0x12d

    .line 438
    .line 439
    move-object/from16 v59, v0

    .line 440
    .line 441
    const-string v0, "CAMERAX_SOURCE_ERROR"

    .line 442
    .line 443
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 444
    .line 445
    .line 446
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 447
    .line 448
    const/16 v2, 0x23

    .line 449
    .line 450
    const/16 v15, 0x12e

    .line 451
    .line 452
    move-object/from16 v60, v1

    .line 453
    .line 454
    const-string v1, "CAMERA1_SOURCE_CANT_START_ERROR"

    .line 455
    .line 456
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 457
    .line 458
    .line 459
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 460
    .line 461
    const/16 v2, 0x24

    .line 462
    .line 463
    const/16 v15, 0x12f

    .line 464
    .line 465
    move-object/from16 v61, v0

    .line 466
    .line 467
    const-string v0, "CAMERA1_SOURCE_NO_SUITABLE_SIZE_ERROR"

    .line 468
    .line 469
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 470
    .line 471
    .line 472
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 473
    .line 474
    const/16 v2, 0x25

    .line 475
    .line 476
    const/16 v15, 0x130

    .line 477
    .line 478
    move-object/from16 v62, v1

    .line 479
    .line 480
    const-string v1, "CAMERA1_SOURCE_NO_SUITABLE_FPS_ERROR"

    .line 481
    .line 482
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 483
    .line 484
    .line 485
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 486
    .line 487
    const/16 v2, 0x26

    .line 488
    .line 489
    const/16 v15, 0x131

    .line 490
    .line 491
    move-object/from16 v63, v0

    .line 492
    .line 493
    const-string v0, "CAMERA1_SOURCE_NO_BYTE_SOURCE_FOUND_ERROR"

    .line 494
    .line 495
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 496
    .line 497
    .line 498
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 499
    .line 500
    const/16 v2, 0x27

    .line 501
    .line 502
    const/16 v15, 0x190

    .line 503
    .line 504
    move-object/from16 v64, v1

    .line 505
    .line 506
    const-string v1, "CODE_SCANNER_UNAVAILABLE"

    .line 507
    .line 508
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 509
    .line 510
    .line 511
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 512
    .line 513
    const/16 v2, 0x28

    .line 514
    .line 515
    const/16 v15, 0x191

    .line 516
    .line 517
    move-object/from16 v65, v0

    .line 518
    .line 519
    const-string v0, "CODE_SCANNER_CANCELLED"

    .line 520
    .line 521
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 522
    .line 523
    .line 524
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 525
    .line 526
    const/16 v2, 0x29

    .line 527
    .line 528
    const/16 v15, 0x192

    .line 529
    .line 530
    move-object/from16 v66, v1

    .line 531
    .line 532
    const-string v1, "CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED"

    .line 533
    .line 534
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 535
    .line 536
    .line 537
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 538
    .line 539
    const/16 v2, 0x2a

    .line 540
    .line 541
    const/16 v15, 0x193

    .line 542
    .line 543
    move-object/from16 v67, v0

    .line 544
    .line 545
    const-string v0, "CODE_SCANNER_APP_NAME_UNAVAILABLE"

    .line 546
    .line 547
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 548
    .line 549
    .line 550
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 551
    .line 552
    const/16 v2, 0x2b

    .line 553
    .line 554
    const/16 v15, 0x194

    .line 555
    .line 556
    move-object/from16 v68, v1

    .line 557
    .line 558
    const-string v1, "CODE_SCANNER_TASK_IN_PROGRESS"

    .line 559
    .line 560
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 561
    .line 562
    .line 563
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 564
    .line 565
    const/16 v2, 0x2c

    .line 566
    .line 567
    const/16 v15, 0x195

    .line 568
    .line 569
    move-object/from16 v69, v0

    .line 570
    .line 571
    const-string v0, "CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR"

    .line 572
    .line 573
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 574
    .line 575
    .line 576
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 577
    .line 578
    const/16 v2, 0x2d

    .line 579
    .line 580
    const/16 v15, 0x196

    .line 581
    .line 582
    move-object/from16 v70, v1

    .line 583
    .line 584
    const-string v1, "CODE_SCANNER_PIPELINE_INFERENCE_ERROR"

    .line 585
    .line 586
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 587
    .line 588
    .line 589
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 590
    .line 591
    const/16 v2, 0x2e

    .line 592
    .line 593
    const/16 v15, 0x197

    .line 594
    .line 595
    move-object/from16 v71, v0

    .line 596
    .line 597
    const-string v0, "CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD"

    .line 598
    .line 599
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 600
    .line 601
    .line 602
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 603
    .line 604
    const/16 v2, 0x2f

    .line 605
    .line 606
    const/16 v15, 0x1f4

    .line 607
    .line 608
    move-object/from16 v72, v1

    .line 609
    .line 610
    const-string v1, "LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE"

    .line 611
    .line 612
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 613
    .line 614
    .line 615
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 616
    .line 617
    const/16 v2, 0x30

    .line 618
    .line 619
    const/16 v15, 0x1f5

    .line 620
    .line 621
    move-object/from16 v73, v0

    .line 622
    .line 623
    const-string v0, "LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE"

    .line 624
    .line 625
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 626
    .line 627
    .line 628
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 629
    .line 630
    const/16 v2, 0x31

    .line 631
    .line 632
    const/16 v15, 0x258

    .line 633
    .line 634
    move-object/from16 v74, v1

    .line 635
    .line 636
    const-string v1, "PERMISSION_DENIED"

    .line 637
    .line 638
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 639
    .line 640
    .line 641
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 642
    .line 643
    const/16 v2, 0x32

    .line 644
    .line 645
    const/16 v15, 0x259

    .line 646
    .line 647
    move-object/from16 v75, v0

    .line 648
    .line 649
    const-string v0, "CANCELLED"

    .line 650
    .line 651
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 652
    .line 653
    .line 654
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 655
    .line 656
    const/16 v2, 0x33

    .line 657
    .line 658
    const/16 v15, 0x25a

    .line 659
    .line 660
    move-object/from16 v76, v1

    .line 661
    .line 662
    const-string v1, "GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD"

    .line 663
    .line 664
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 665
    .line 666
    .line 667
    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 668
    .line 669
    const/16 v2, 0x34

    .line 670
    .line 671
    const/16 v15, 0x25b

    .line 672
    .line 673
    move-object/from16 v77, v0

    .line 674
    .line 675
    const-string v0, "LOW_MEMORY"

    .line 676
    .line 677
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 678
    .line 679
    .line 680
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 681
    .line 682
    const/16 v2, 0x35

    .line 683
    .line 684
    const/16 v15, 0x270f

    .line 685
    .line 686
    move-object/from16 v78, v1

    .line 687
    .line 688
    const-string v1, "UNKNOWN_ERROR"

    .line 689
    .line 690
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_common/zzmu;-><init>(Ljava/lang/String;II)V

    .line 691
    .line 692
    .line 693
    const/16 v1, 0x36

    .line 694
    .line 695
    new-array v1, v1, [Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 696
    .line 697
    aput-object v29, v1, v16

    .line 698
    .line 699
    aput-object v31, v1, v17

    .line 700
    .line 701
    aput-object v3, v1, v18

    .line 702
    .line 703
    aput-object v5, v1, v19

    .line 704
    .line 705
    aput-object v7, v1, v22

    .line 706
    .line 707
    aput-object v9, v1, v23

    .line 708
    .line 709
    aput-object v11, v1, v25

    .line 710
    .line 711
    aput-object v14, v1, v27

    .line 712
    .line 713
    aput-object v33, v1, v20

    .line 714
    .line 715
    aput-object v6, v1, v21

    .line 716
    .line 717
    aput-object v4, v1, v24

    .line 718
    .line 719
    aput-object v8, v1, v26

    .line 720
    .line 721
    aput-object v10, v1, v28

    .line 722
    .line 723
    aput-object v12, v1, v30

    .line 724
    .line 725
    aput-object v13, v1, v32

    .line 726
    .line 727
    aput-object v35, v1, v34

    .line 728
    .line 729
    aput-object v37, v1, v36

    .line 730
    .line 731
    aput-object v39, v1, v38

    .line 732
    .line 733
    aput-object v41, v1, v40

    .line 734
    .line 735
    aput-object v43, v1, v42

    .line 736
    .line 737
    aput-object v45, v1, v44

    .line 738
    .line 739
    aput-object v47, v1, v46

    .line 740
    .line 741
    const/16 v2, 0x16

    .line 742
    .line 743
    aput-object v48, v1, v2

    .line 744
    .line 745
    const/16 v2, 0x17

    .line 746
    .line 747
    aput-object v49, v1, v2

    .line 748
    .line 749
    const/16 v2, 0x18

    .line 750
    .line 751
    aput-object v50, v1, v2

    .line 752
    .line 753
    const/16 v2, 0x19

    .line 754
    .line 755
    aput-object v51, v1, v2

    .line 756
    .line 757
    const/16 v2, 0x1a

    .line 758
    .line 759
    aput-object v52, v1, v2

    .line 760
    .line 761
    const/16 v2, 0x1b

    .line 762
    .line 763
    aput-object v53, v1, v2

    .line 764
    .line 765
    const/16 v2, 0x1c

    .line 766
    .line 767
    aput-object v54, v1, v2

    .line 768
    .line 769
    const/16 v2, 0x1d

    .line 770
    .line 771
    aput-object v55, v1, v2

    .line 772
    .line 773
    const/16 v2, 0x1e

    .line 774
    .line 775
    aput-object v56, v1, v2

    .line 776
    .line 777
    const/16 v2, 0x1f

    .line 778
    .line 779
    aput-object v57, v1, v2

    .line 780
    .line 781
    const/16 v2, 0x20

    .line 782
    .line 783
    aput-object v58, v1, v2

    .line 784
    .line 785
    const/16 v2, 0x21

    .line 786
    .line 787
    aput-object v59, v1, v2

    .line 788
    .line 789
    const/16 v2, 0x22

    .line 790
    .line 791
    aput-object v60, v1, v2

    .line 792
    .line 793
    const/16 v2, 0x23

    .line 794
    .line 795
    aput-object v61, v1, v2

    .line 796
    .line 797
    const/16 v2, 0x24

    .line 798
    .line 799
    aput-object v62, v1, v2

    .line 800
    .line 801
    const/16 v2, 0x25

    .line 802
    .line 803
    aput-object v63, v1, v2

    .line 804
    .line 805
    const/16 v2, 0x26

    .line 806
    .line 807
    aput-object v64, v1, v2

    .line 808
    .line 809
    const/16 v2, 0x27

    .line 810
    .line 811
    aput-object v65, v1, v2

    .line 812
    .line 813
    const/16 v2, 0x28

    .line 814
    .line 815
    aput-object v66, v1, v2

    .line 816
    .line 817
    const/16 v2, 0x29

    .line 818
    .line 819
    aput-object v67, v1, v2

    .line 820
    .line 821
    const/16 v2, 0x2a

    .line 822
    .line 823
    aput-object v68, v1, v2

    .line 824
    .line 825
    const/16 v2, 0x2b

    .line 826
    .line 827
    aput-object v69, v1, v2

    .line 828
    .line 829
    const/16 v2, 0x2c

    .line 830
    .line 831
    aput-object v70, v1, v2

    .line 832
    .line 833
    const/16 v2, 0x2d

    .line 834
    .line 835
    aput-object v71, v1, v2

    .line 836
    .line 837
    const/16 v2, 0x2e

    .line 838
    .line 839
    aput-object v72, v1, v2

    .line 840
    .line 841
    const/16 v2, 0x2f

    .line 842
    .line 843
    aput-object v73, v1, v2

    .line 844
    .line 845
    const/16 v2, 0x30

    .line 846
    .line 847
    aput-object v74, v1, v2

    .line 848
    .line 849
    const/16 v2, 0x31

    .line 850
    .line 851
    aput-object v75, v1, v2

    .line 852
    .line 853
    const/16 v2, 0x32

    .line 854
    .line 855
    aput-object v76, v1, v2

    .line 856
    .line 857
    const/16 v2, 0x33

    .line 858
    .line 859
    aput-object v77, v1, v2

    .line 860
    .line 861
    const/16 v2, 0x34

    .line 862
    .line 863
    aput-object v78, v1, v2

    .line 864
    .line 865
    const/16 v2, 0x35

    .line 866
    .line 867
    aput-object v0, v1, v2

    .line 868
    .line 869
    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzmu;->f:[Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 870
    .line 871
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzmu;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_common/zzmu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzmu;->f:[Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_common/zzmu;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/mlkit_common/zzmu;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzmu;->c:I

    return v0
.end method
