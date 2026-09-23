.class public final enum Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;


# static fields
.field public static final enum f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

.field public static final enum g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

.field public static final enum h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

.field public static final enum i:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

.field public static final enum j:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

.field public static final synthetic k:[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 79

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 2
    .line 3
    const-string v1, "NO_ERROR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 12
    .line 13
    const-string v3, "INCOMPATIBLE_INPUT"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 20
    .line 21
    const-string v5, "INCOMPATIBLE_OUTPUT"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 28
    .line 29
    const-string v7, "INCOMPATIBLE_TFLITE_VERSION"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 36
    .line 37
    const-string v9, "MISSING_OP"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 44
    .line 45
    const-string v11, "DATA_TYPE_ERROR"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    const/4 v13, 0x6

    .line 49
    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 53
    .line 54
    const-string v14, "TFLITE_INTERNAL_ERROR"

    .line 55
    .line 56
    const/4 v15, 0x7

    .line 57
    invoke-direct {v11, v14, v13, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    new-instance v14, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 61
    .line 62
    move/from16 v16, v2

    .line 63
    .line 64
    const-string v2, "TFLITE_UNKNOWN_ERROR"

    .line 65
    .line 66
    move/from16 v17, v4

    .line 67
    .line 68
    const/16 v4, 0x8

    .line 69
    .line 70
    invoke-direct {v14, v2, v15, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 74
    .line 75
    move/from16 v18, v6

    .line 76
    .line 77
    const-string v6, "MEDIAPIPE_ERROR"

    .line 78
    .line 79
    move/from16 v19, v8

    .line 80
    .line 81
    const/16 v8, 0x9

    .line 82
    .line 83
    invoke-direct {v2, v6, v4, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 84
    .line 85
    .line 86
    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 87
    .line 88
    move/from16 v20, v4

    .line 89
    .line 90
    const-string v4, "TIME_OUT_FETCHING_MODEL_METADATA"

    .line 91
    .line 92
    invoke-direct {v6, v4, v8, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 96
    .line 97
    move/from16 v21, v8

    .line 98
    .line 99
    const/16 v8, 0x64

    .line 100
    .line 101
    move/from16 v22, v10

    .line 102
    .line 103
    const-string v10, "MODEL_NOT_DOWNLOADED"

    .line 104
    .line 105
    move/from16 v23, v12

    .line 106
    .line 107
    const/16 v12, 0xa

    .line 108
    .line 109
    invoke-direct {v4, v10, v12, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 113
    .line 114
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 115
    .line 116
    const/16 v10, 0x65

    .line 117
    .line 118
    move/from16 v24, v12

    .line 119
    .line 120
    const-string v12, "URI_EXPIRED"

    .line 121
    .line 122
    move/from16 v25, v13

    .line 123
    .line 124
    const/16 v13, 0xb

    .line 125
    .line 126
    invoke-direct {v8, v12, v13, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 127
    .line 128
    .line 129
    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 130
    .line 131
    const/16 v12, 0x66

    .line 132
    .line 133
    move/from16 v26, v13

    .line 134
    .line 135
    const-string v13, "NO_NETWORK_CONNECTION"

    .line 136
    .line 137
    move/from16 v27, v15

    .line 138
    .line 139
    const/16 v15, 0xc

    .line 140
    .line 141
    invoke-direct {v10, v13, v15, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 142
    .line 143
    .line 144
    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 145
    .line 146
    const/16 v13, 0x67

    .line 147
    .line 148
    move/from16 v28, v15

    .line 149
    .line 150
    const-string v15, "METERED_NETWORK"

    .line 151
    .line 152
    move-object/from16 v29, v0

    .line 153
    .line 154
    const/16 v0, 0xd

    .line 155
    .line 156
    invoke-direct {v12, v15, v0, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    new-instance v13, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 160
    .line 161
    const/16 v15, 0x68

    .line 162
    .line 163
    move/from16 v30, v0

    .line 164
    .line 165
    const-string v0, "DOWNLOAD_FAILED"

    .line 166
    .line 167
    move-object/from16 v31, v1

    .line 168
    .line 169
    const/16 v1, 0xe

    .line 170
    .line 171
    invoke-direct {v13, v0, v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 175
    .line 176
    const/16 v15, 0x69

    .line 177
    .line 178
    move/from16 v32, v1

    .line 179
    .line 180
    const-string v1, "MODEL_INFO_DOWNLOAD_UNSUCCESSFUL_HTTP_STATUS"

    .line 181
    .line 182
    move-object/from16 v33, v2

    .line 183
    .line 184
    const/16 v2, 0xf

    .line 185
    .line 186
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 190
    .line 191
    const/16 v15, 0x6a

    .line 192
    .line 193
    move/from16 v34, v2

    .line 194
    .line 195
    const-string v2, "MODEL_INFO_DOWNLOAD_NO_HASH"

    .line 196
    .line 197
    move-object/from16 v35, v0

    .line 198
    .line 199
    const/16 v0, 0x10

    .line 200
    .line 201
    invoke-direct {v1, v2, v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 202
    .line 203
    .line 204
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 205
    .line 206
    const/16 v15, 0x6b

    .line 207
    .line 208
    move/from16 v36, v0

    .line 209
    .line 210
    const-string v0, "MODEL_INFO_DOWNLOAD_CONNECTION_FAILED"

    .line 211
    .line 212
    move-object/from16 v37, v1

    .line 213
    .line 214
    const/16 v1, 0x11

    .line 215
    .line 216
    invoke-direct {v2, v0, v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 217
    .line 218
    .line 219
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 220
    .line 221
    const/16 v15, 0x6c

    .line 222
    .line 223
    move/from16 v38, v1

    .line 224
    .line 225
    const-string v1, "NO_VALID_MODEL"

    .line 226
    .line 227
    move-object/from16 v39, v2

    .line 228
    .line 229
    const/16 v2, 0x12

    .line 230
    .line 231
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 232
    .line 233
    .line 234
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 235
    .line 236
    const/16 v15, 0x6d

    .line 237
    .line 238
    move/from16 v40, v2

    .line 239
    .line 240
    const-string v2, "LOCAL_MODEL_INVALID"

    .line 241
    .line 242
    move-object/from16 v41, v0

    .line 243
    .line 244
    const/16 v0, 0x13

    .line 245
    .line 246
    invoke-direct {v1, v2, v0, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 247
    .line 248
    .line 249
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 250
    .line 251
    const/16 v15, 0x6e

    .line 252
    .line 253
    move/from16 v42, v0

    .line 254
    .line 255
    const-string v0, "REMOTE_MODEL_INVALID"

    .line 256
    .line 257
    move-object/from16 v43, v1

    .line 258
    .line 259
    const/16 v1, 0x14

    .line 260
    .line 261
    invoke-direct {v2, v0, v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 262
    .line 263
    .line 264
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 265
    .line 266
    const/16 v15, 0x6f

    .line 267
    .line 268
    move/from16 v44, v1

    .line 269
    .line 270
    const-string v1, "REMOTE_MODEL_LOADER_ERROR"

    .line 271
    .line 272
    move-object/from16 v45, v2

    .line 273
    .line 274
    const/16 v2, 0x15

    .line 275
    .line 276
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 277
    .line 278
    .line 279
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 280
    .line 281
    const/16 v15, 0x16

    .line 282
    .line 283
    move/from16 v46, v2

    .line 284
    .line 285
    const/16 v2, 0x70

    .line 286
    .line 287
    move-object/from16 v47, v0

    .line 288
    .line 289
    const-string v0, "REMOTE_MODEL_LOADER_LOADS_NO_MODEL"

    .line 290
    .line 291
    invoke-direct {v1, v0, v15, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 295
    .line 296
    const/16 v2, 0x17

    .line 297
    .line 298
    const/16 v15, 0x71

    .line 299
    .line 300
    move-object/from16 v48, v1

    .line 301
    .line 302
    const-string v1, "SMART_REPLY_LANG_ID_DETECTAION_FAILURE"

    .line 303
    .line 304
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 305
    .line 306
    .line 307
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 308
    .line 309
    const/16 v2, 0x18

    .line 310
    .line 311
    const/16 v15, 0x72

    .line 312
    .line 313
    move-object/from16 v49, v0

    .line 314
    .line 315
    const-string v0, "MODEL_NOT_REGISTERED"

    .line 316
    .line 317
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 318
    .line 319
    .line 320
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 321
    .line 322
    const/16 v2, 0x19

    .line 323
    .line 324
    const/16 v15, 0x73

    .line 325
    .line 326
    move-object/from16 v50, v1

    .line 327
    .line 328
    const-string v1, "MODEL_TYPE_MISUSE"

    .line 329
    .line 330
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 331
    .line 332
    .line 333
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 334
    .line 335
    const/16 v2, 0x1a

    .line 336
    .line 337
    const/16 v15, 0x74

    .line 338
    .line 339
    move-object/from16 v51, v0

    .line 340
    .line 341
    const-string v0, "MODEL_HASH_MISMATCH"

    .line 342
    .line 343
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 344
    .line 345
    .line 346
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 347
    .line 348
    const/16 v2, 0x1b

    .line 349
    .line 350
    const/16 v15, 0xc9

    .line 351
    .line 352
    move-object/from16 v52, v1

    .line 353
    .line 354
    const-string v1, "OPTIONAL_MODULE_NOT_AVAILABLE"

    .line 355
    .line 356
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 357
    .line 358
    .line 359
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 360
    .line 361
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 362
    .line 363
    const/16 v2, 0x1c

    .line 364
    .line 365
    const/16 v15, 0xca

    .line 366
    .line 367
    move-object/from16 v53, v0

    .line 368
    .line 369
    const-string v0, "OPTIONAL_MODULE_INIT_ERROR"

    .line 370
    .line 371
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 372
    .line 373
    .line 374
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->i:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 375
    .line 376
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 377
    .line 378
    const/16 v2, 0x1d

    .line 379
    .line 380
    const/16 v15, 0xcb

    .line 381
    .line 382
    move-object/from16 v54, v1

    .line 383
    .line 384
    const-string v1, "OPTIONAL_MODULE_INFERENCE_ERROR"

    .line 385
    .line 386
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 387
    .line 388
    .line 389
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 390
    .line 391
    const/16 v2, 0x1e

    .line 392
    .line 393
    const/16 v15, 0xcc

    .line 394
    .line 395
    move-object/from16 v55, v0

    .line 396
    .line 397
    const-string v0, "OPTIONAL_MODULE_RELEASE_ERROR"

    .line 398
    .line 399
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 400
    .line 401
    .line 402
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 403
    .line 404
    const/16 v2, 0x1f

    .line 405
    .line 406
    const/16 v15, 0xcd

    .line 407
    .line 408
    move-object/from16 v56, v1

    .line 409
    .line 410
    const-string v1, "OPTIONAL_TFLITE_MODULE_INIT_ERROR"

    .line 411
    .line 412
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 413
    .line 414
    .line 415
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 416
    .line 417
    const/16 v2, 0x20

    .line 418
    .line 419
    const/16 v15, 0xce

    .line 420
    .line 421
    move-object/from16 v57, v0

    .line 422
    .line 423
    const-string v0, "NATIVE_LIBRARY_LOAD_ERROR"

    .line 424
    .line 425
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 426
    .line 427
    .line 428
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 429
    .line 430
    const/16 v2, 0x21

    .line 431
    .line 432
    const/16 v15, 0xcf

    .line 433
    .line 434
    move-object/from16 v58, v1

    .line 435
    .line 436
    const-string v1, "OPTIONAL_MODULE_CREATE_ERROR"

    .line 437
    .line 438
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 439
    .line 440
    .line 441
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 442
    .line 443
    const/16 v2, 0x22

    .line 444
    .line 445
    const/16 v15, 0x12d

    .line 446
    .line 447
    move-object/from16 v59, v0

    .line 448
    .line 449
    const-string v0, "CAMERAX_SOURCE_ERROR"

    .line 450
    .line 451
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 452
    .line 453
    .line 454
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 455
    .line 456
    const/16 v2, 0x23

    .line 457
    .line 458
    const/16 v15, 0x12e

    .line 459
    .line 460
    move-object/from16 v60, v1

    .line 461
    .line 462
    const-string v1, "CAMERA1_SOURCE_CANT_START_ERROR"

    .line 463
    .line 464
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 465
    .line 466
    .line 467
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 468
    .line 469
    const/16 v2, 0x24

    .line 470
    .line 471
    const/16 v15, 0x12f

    .line 472
    .line 473
    move-object/from16 v61, v0

    .line 474
    .line 475
    const-string v0, "CAMERA1_SOURCE_NO_SUITABLE_SIZE_ERROR"

    .line 476
    .line 477
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 478
    .line 479
    .line 480
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 481
    .line 482
    const/16 v2, 0x25

    .line 483
    .line 484
    const/16 v15, 0x130

    .line 485
    .line 486
    move-object/from16 v62, v1

    .line 487
    .line 488
    const-string v1, "CAMERA1_SOURCE_NO_SUITABLE_FPS_ERROR"

    .line 489
    .line 490
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 491
    .line 492
    .line 493
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 494
    .line 495
    const/16 v2, 0x26

    .line 496
    .line 497
    const/16 v15, 0x131

    .line 498
    .line 499
    move-object/from16 v63, v0

    .line 500
    .line 501
    const-string v0, "CAMERA1_SOURCE_NO_BYTE_SOURCE_FOUND_ERROR"

    .line 502
    .line 503
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 504
    .line 505
    .line 506
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 507
    .line 508
    const/16 v2, 0x27

    .line 509
    .line 510
    const/16 v15, 0x190

    .line 511
    .line 512
    move-object/from16 v64, v1

    .line 513
    .line 514
    const-string v1, "CODE_SCANNER_UNAVAILABLE"

    .line 515
    .line 516
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 517
    .line 518
    .line 519
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 520
    .line 521
    const/16 v2, 0x28

    .line 522
    .line 523
    const/16 v15, 0x191

    .line 524
    .line 525
    move-object/from16 v65, v0

    .line 526
    .line 527
    const-string v0, "CODE_SCANNER_CANCELLED"

    .line 528
    .line 529
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 530
    .line 531
    .line 532
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 533
    .line 534
    const/16 v2, 0x29

    .line 535
    .line 536
    const/16 v15, 0x192

    .line 537
    .line 538
    move-object/from16 v66, v1

    .line 539
    .line 540
    const-string v1, "CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED"

    .line 541
    .line 542
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 543
    .line 544
    .line 545
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 546
    .line 547
    const/16 v2, 0x2a

    .line 548
    .line 549
    const/16 v15, 0x193

    .line 550
    .line 551
    move-object/from16 v67, v0

    .line 552
    .line 553
    const-string v0, "CODE_SCANNER_APP_NAME_UNAVAILABLE"

    .line 554
    .line 555
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 556
    .line 557
    .line 558
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 559
    .line 560
    const/16 v2, 0x2b

    .line 561
    .line 562
    const/16 v15, 0x194

    .line 563
    .line 564
    move-object/from16 v68, v1

    .line 565
    .line 566
    const-string v1, "CODE_SCANNER_TASK_IN_PROGRESS"

    .line 567
    .line 568
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 569
    .line 570
    .line 571
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 572
    .line 573
    const/16 v2, 0x2c

    .line 574
    .line 575
    const/16 v15, 0x195

    .line 576
    .line 577
    move-object/from16 v69, v0

    .line 578
    .line 579
    const-string v0, "CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR"

    .line 580
    .line 581
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 582
    .line 583
    .line 584
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 585
    .line 586
    const/16 v2, 0x2d

    .line 587
    .line 588
    const/16 v15, 0x196

    .line 589
    .line 590
    move-object/from16 v70, v1

    .line 591
    .line 592
    const-string v1, "CODE_SCANNER_PIPELINE_INFERENCE_ERROR"

    .line 593
    .line 594
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 595
    .line 596
    .line 597
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 598
    .line 599
    const/16 v2, 0x2e

    .line 600
    .line 601
    const/16 v15, 0x197

    .line 602
    .line 603
    move-object/from16 v71, v0

    .line 604
    .line 605
    const-string v0, "CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD"

    .line 606
    .line 607
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 608
    .line 609
    .line 610
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 611
    .line 612
    const/16 v2, 0x2f

    .line 613
    .line 614
    const/16 v15, 0x1f4

    .line 615
    .line 616
    move-object/from16 v72, v1

    .line 617
    .line 618
    const-string v1, "LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE"

    .line 619
    .line 620
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 621
    .line 622
    .line 623
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 624
    .line 625
    const/16 v2, 0x30

    .line 626
    .line 627
    const/16 v15, 0x1f5

    .line 628
    .line 629
    move-object/from16 v73, v0

    .line 630
    .line 631
    const-string v0, "LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE"

    .line 632
    .line 633
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 634
    .line 635
    .line 636
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 637
    .line 638
    const/16 v2, 0x31

    .line 639
    .line 640
    const/16 v15, 0x258

    .line 641
    .line 642
    move-object/from16 v74, v1

    .line 643
    .line 644
    const-string v1, "PERMISSION_DENIED"

    .line 645
    .line 646
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 647
    .line 648
    .line 649
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 650
    .line 651
    const/16 v2, 0x32

    .line 652
    .line 653
    const/16 v15, 0x259

    .line 654
    .line 655
    move-object/from16 v75, v0

    .line 656
    .line 657
    const-string v0, "CANCELLED"

    .line 658
    .line 659
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 660
    .line 661
    .line 662
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 663
    .line 664
    const/16 v2, 0x33

    .line 665
    .line 666
    const/16 v15, 0x25a

    .line 667
    .line 668
    move-object/from16 v76, v1

    .line 669
    .line 670
    const-string v1, "GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD"

    .line 671
    .line 672
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 673
    .line 674
    .line 675
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 676
    .line 677
    const/16 v2, 0x34

    .line 678
    .line 679
    const/16 v15, 0x25b

    .line 680
    .line 681
    move-object/from16 v77, v0

    .line 682
    .line 683
    const-string v0, "LOW_MEMORY"

    .line 684
    .line 685
    invoke-direct {v1, v0, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 686
    .line 687
    .line 688
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 689
    .line 690
    const/16 v2, 0x35

    .line 691
    .line 692
    const/16 v15, 0x270f

    .line 693
    .line 694
    move-object/from16 v78, v1

    .line 695
    .line 696
    const-string v1, "UNKNOWN_ERROR"

    .line 697
    .line 698
    invoke-direct {v0, v1, v2, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(Ljava/lang/String;II)V

    .line 699
    .line 700
    .line 701
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->j:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 702
    .line 703
    const/16 v1, 0x36

    .line 704
    .line 705
    new-array v1, v1, [Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 706
    .line 707
    aput-object v29, v1, v16

    .line 708
    .line 709
    aput-object v31, v1, v17

    .line 710
    .line 711
    aput-object v3, v1, v18

    .line 712
    .line 713
    aput-object v5, v1, v19

    .line 714
    .line 715
    aput-object v7, v1, v22

    .line 716
    .line 717
    aput-object v9, v1, v23

    .line 718
    .line 719
    aput-object v11, v1, v25

    .line 720
    .line 721
    aput-object v14, v1, v27

    .line 722
    .line 723
    aput-object v33, v1, v20

    .line 724
    .line 725
    aput-object v6, v1, v21

    .line 726
    .line 727
    aput-object v4, v1, v24

    .line 728
    .line 729
    aput-object v8, v1, v26

    .line 730
    .line 731
    aput-object v10, v1, v28

    .line 732
    .line 733
    aput-object v12, v1, v30

    .line 734
    .line 735
    aput-object v13, v1, v32

    .line 736
    .line 737
    aput-object v35, v1, v34

    .line 738
    .line 739
    aput-object v37, v1, v36

    .line 740
    .line 741
    aput-object v39, v1, v38

    .line 742
    .line 743
    aput-object v41, v1, v40

    .line 744
    .line 745
    aput-object v43, v1, v42

    .line 746
    .line 747
    aput-object v45, v1, v44

    .line 748
    .line 749
    aput-object v47, v1, v46

    .line 750
    .line 751
    const/16 v2, 0x16

    .line 752
    .line 753
    aput-object v48, v1, v2

    .line 754
    .line 755
    const/16 v2, 0x17

    .line 756
    .line 757
    aput-object v49, v1, v2

    .line 758
    .line 759
    const/16 v2, 0x18

    .line 760
    .line 761
    aput-object v50, v1, v2

    .line 762
    .line 763
    const/16 v2, 0x19

    .line 764
    .line 765
    aput-object v51, v1, v2

    .line 766
    .line 767
    const/16 v2, 0x1a

    .line 768
    .line 769
    aput-object v52, v1, v2

    .line 770
    .line 771
    const/16 v2, 0x1b

    .line 772
    .line 773
    aput-object v53, v1, v2

    .line 774
    .line 775
    const/16 v2, 0x1c

    .line 776
    .line 777
    aput-object v54, v1, v2

    .line 778
    .line 779
    const/16 v2, 0x1d

    .line 780
    .line 781
    aput-object v55, v1, v2

    .line 782
    .line 783
    const/16 v2, 0x1e

    .line 784
    .line 785
    aput-object v56, v1, v2

    .line 786
    .line 787
    const/16 v2, 0x1f

    .line 788
    .line 789
    aput-object v57, v1, v2

    .line 790
    .line 791
    const/16 v2, 0x20

    .line 792
    .line 793
    aput-object v58, v1, v2

    .line 794
    .line 795
    const/16 v2, 0x21

    .line 796
    .line 797
    aput-object v59, v1, v2

    .line 798
    .line 799
    const/16 v2, 0x22

    .line 800
    .line 801
    aput-object v60, v1, v2

    .line 802
    .line 803
    const/16 v2, 0x23

    .line 804
    .line 805
    aput-object v61, v1, v2

    .line 806
    .line 807
    const/16 v2, 0x24

    .line 808
    .line 809
    aput-object v62, v1, v2

    .line 810
    .line 811
    const/16 v2, 0x25

    .line 812
    .line 813
    aput-object v63, v1, v2

    .line 814
    .line 815
    const/16 v2, 0x26

    .line 816
    .line 817
    aput-object v64, v1, v2

    .line 818
    .line 819
    const/16 v2, 0x27

    .line 820
    .line 821
    aput-object v65, v1, v2

    .line 822
    .line 823
    const/16 v2, 0x28

    .line 824
    .line 825
    aput-object v66, v1, v2

    .line 826
    .line 827
    const/16 v2, 0x29

    .line 828
    .line 829
    aput-object v67, v1, v2

    .line 830
    .line 831
    const/16 v2, 0x2a

    .line 832
    .line 833
    aput-object v68, v1, v2

    .line 834
    .line 835
    const/16 v2, 0x2b

    .line 836
    .line 837
    aput-object v69, v1, v2

    .line 838
    .line 839
    const/16 v2, 0x2c

    .line 840
    .line 841
    aput-object v70, v1, v2

    .line 842
    .line 843
    const/16 v2, 0x2d

    .line 844
    .line 845
    aput-object v71, v1, v2

    .line 846
    .line 847
    const/16 v2, 0x2e

    .line 848
    .line 849
    aput-object v72, v1, v2

    .line 850
    .line 851
    const/16 v2, 0x2f

    .line 852
    .line 853
    aput-object v73, v1, v2

    .line 854
    .line 855
    const/16 v2, 0x30

    .line 856
    .line 857
    aput-object v74, v1, v2

    .line 858
    .line 859
    const/16 v2, 0x31

    .line 860
    .line 861
    aput-object v75, v1, v2

    .line 862
    .line 863
    const/16 v2, 0x32

    .line 864
    .line 865
    aput-object v76, v1, v2

    .line 866
    .line 867
    const/16 v2, 0x33

    .line 868
    .line 869
    aput-object v77, v1, v2

    .line 870
    .line 871
    const/16 v2, 0x34

    .line 872
    .line 873
    aput-object v78, v1, v2

    .line 874
    .line 875
    const/16 v2, 0x35

    .line 876
    .line 877
    aput-object v0, v1, v2

    .line 878
    .line 879
    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->k:[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 880
    .line 881
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->k:[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->c:I

    return v0
.end method
