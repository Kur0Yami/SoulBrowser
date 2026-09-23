.class public Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterface$ExifTag;,
        Landroidx/exifinterface/media/ExifInterface$ExifAttribute;,
        Landroidx/exifinterface/media/ExifInterface$Rational;,
        Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroidx/exifinterface/media/ExifInterface$IfdType;,
        Landroidx/exifinterface/media/ExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field public static final A:[B

.field public static final B:[B

.field public static final C:[B

.field public static final D:[B

.field public static final E:[B

.field public static final F:[B

.field public static final G:[Ljava/lang/String;

.field public static final H:[I

.field public static final I:[B

.field public static final J:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final K:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final L:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final M:[Ljava/util/HashMap;

.field public static final N:[Ljava/util/HashMap;

.field public static final O:Ljava/util/Set;

.field public static final P:Ljava/util/HashMap;

.field public static final Q:Ljava/nio/charset/Charset;

.field public static final R:[B

.field public static final S:[B

.field public static final o:Z

.field public static final p:Ljava/util/List;

.field public static final q:Ljava/util/List;

.field public static final r:[I

.field public static final s:[I

.field public static final t:[B

.field public static final u:[B

.field public static final v:[B

.field public static final w:[B

.field public static final x:[B

.field public static final y:[B

.field public static final z:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/FileDescriptor;

.field public final c:Landroid/content/res/AssetManager$AssetInputStream;

.field public d:I

.field public final e:Z

.field public final f:[Ljava/util/HashMap;

.field public final g:Ljava/util/HashSet;

.field public h:Ljava/nio/ByteOrder;

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 127

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "ExifInterface"

    .line 7
    .line 8
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sput-boolean v2, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x6

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/16 v6, 0x8

    .line 25
    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    const/4 v8, 0x4

    .line 31
    new-array v9, v8, [Ljava/lang/Integer;

    .line 32
    .line 33
    const/4 v10, 0x0

    .line 34
    aput-object v3, v9, v10

    .line 35
    .line 36
    aput-object v5, v9, v2

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    aput-object v1, v9, v5

    .line 40
    .line 41
    aput-object v7, v9, v0

    .line 42
    .line 43
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    sput-object v9, Landroidx/exifinterface/media/ExifInterface;->p:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const/4 v11, 0x7

    .line 54
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    const/4 v14, 0x5

    .line 63
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v15

    .line 67
    move/from16 v16, v10

    .line 68
    .line 69
    new-array v10, v8, [Ljava/lang/Integer;

    .line 70
    .line 71
    aput-object v9, v10, v16

    .line 72
    .line 73
    aput-object v12, v10, v2

    .line 74
    .line 75
    aput-object v13, v10, v5

    .line 76
    .line 77
    aput-object v15, v10, v0

    .line 78
    .line 79
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->q:Ljava/util/List;

    .line 84
    .line 85
    filled-new-array {v6, v6, v6}, [I

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->r:[I

    .line 90
    .line 91
    filled-new-array {v6}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->s:[I

    .line 96
    .line 97
    new-array v10, v0, [B

    .line 98
    .line 99
    fill-array-data v10, :array_0

    .line 100
    .line 101
    .line 102
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->t:[B

    .line 103
    .line 104
    new-array v10, v8, [B

    .line 105
    .line 106
    fill-array-data v10, :array_1

    .line 107
    .line 108
    .line 109
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->u:[B

    .line 110
    .line 111
    new-array v10, v8, [B

    .line 112
    .line 113
    fill-array-data v10, :array_2

    .line 114
    .line 115
    .line 116
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->v:[B

    .line 117
    .line 118
    new-array v10, v8, [B

    .line 119
    .line 120
    fill-array-data v10, :array_3

    .line 121
    .line 122
    .line 123
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->w:[B

    .line 124
    .line 125
    new-array v10, v8, [B

    .line 126
    .line 127
    fill-array-data v10, :array_4

    .line 128
    .line 129
    .line 130
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->x:[B

    .line 131
    .line 132
    new-array v10, v8, [B

    .line 133
    .line 134
    fill-array-data v10, :array_5

    .line 135
    .line 136
    .line 137
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->y:[B

    .line 138
    .line 139
    new-array v10, v4, [B

    .line 140
    .line 141
    fill-array-data v10, :array_6

    .line 142
    .line 143
    .line 144
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->z:[B

    .line 145
    .line 146
    const/16 v10, 0xa

    .line 147
    .line 148
    new-array v13, v10, [B

    .line 149
    .line 150
    fill-array-data v13, :array_7

    .line 151
    .line 152
    .line 153
    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->A:[B

    .line 154
    .line 155
    new-array v13, v6, [B

    .line 156
    .line 157
    fill-array-data v13, :array_8

    .line 158
    .line 159
    .line 160
    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->B:[B

    .line 161
    .line 162
    const-string v13, "XML:com.adobe.xmp\u0000\u0000\u0000\u0000\u0000"

    .line 163
    .line 164
    move/from16 v17, v10

    .line 165
    .line 166
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 167
    .line 168
    invoke-virtual {v13, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->C:[B

    .line 173
    .line 174
    new-array v10, v8, [B

    .line 175
    .line 176
    fill-array-data v10, :array_9

    .line 177
    .line 178
    .line 179
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->D:[B

    .line 180
    .line 181
    new-array v10, v8, [B

    .line 182
    .line 183
    fill-array-data v10, :array_a

    .line 184
    .line 185
    .line 186
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->E:[B

    .line 187
    .line 188
    new-array v10, v8, [B

    .line 189
    .line 190
    fill-array-data v10, :array_b

    .line 191
    .line 192
    .line 193
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->F:[B

    .line 194
    .line 195
    const-string v10, "VP8X"

    .line 196
    .line 197
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 202
    .line 203
    .line 204
    const-string v10, "VP8L"

    .line 205
    .line 206
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 211
    .line 212
    .line 213
    const-string v10, "VP8 "

    .line 214
    .line 215
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 216
    .line 217
    .line 218
    move-result-object v13

    .line 219
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 220
    .line 221
    .line 222
    const-string v10, "ANIM"

    .line 223
    .line 224
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 229
    .line 230
    .line 231
    const-string v10, "ANMF"

    .line 232
    .line 233
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 238
    .line 239
    .line 240
    const-string v30, "DOUBLE"

    .line 241
    .line 242
    const-string v31, "IFD"

    .line 243
    .line 244
    const-string v18, ""

    .line 245
    .line 246
    const-string v19, "BYTE"

    .line 247
    .line 248
    const-string v20, "STRING"

    .line 249
    .line 250
    const-string v21, "USHORT"

    .line 251
    .line 252
    const-string v22, "ULONG"

    .line 253
    .line 254
    const-string v23, "URATIONAL"

    .line 255
    .line 256
    const-string v24, "SBYTE"

    .line 257
    .line 258
    const-string v25, "UNDEFINED"

    .line 259
    .line 260
    const-string v26, "SSHORT"

    .line 261
    .line 262
    const-string v27, "SLONG"

    .line 263
    .line 264
    const-string v28, "SRATIONAL"

    .line 265
    .line 266
    const-string v29, "SINGLE"

    .line 267
    .line 268
    filled-new-array/range {v18 .. v31}, [Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->G:[Ljava/lang/String;

    .line 273
    .line 274
    const/16 v10, 0xe

    .line 275
    .line 276
    new-array v13, v10, [I

    .line 277
    .line 278
    fill-array-data v13, :array_c

    .line 279
    .line 280
    .line 281
    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->H:[I

    .line 282
    .line 283
    new-array v13, v6, [B

    .line 284
    .line 285
    fill-array-data v13, :array_d

    .line 286
    .line 287
    .line 288
    sput-object v13, Landroidx/exifinterface/media/ExifInterface;->I:[B

    .line 289
    .line 290
    new-instance v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 291
    .line 292
    move/from16 v18, v10

    .line 293
    .line 294
    const-string v10, "NewSubfileType"

    .line 295
    .line 296
    move/from16 v19, v6

    .line 297
    .line 298
    const/16 v6, 0xfe

    .line 299
    .line 300
    invoke-direct {v13, v10, v6, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 301
    .line 302
    .line 303
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 304
    .line 305
    const-string v2, "SubfileType"

    .line 306
    .line 307
    const/16 v11, 0xff

    .line 308
    .line 309
    invoke-direct {v6, v2, v11, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 310
    .line 311
    .line 312
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 313
    .line 314
    const-string v4, "ImageWidth"

    .line 315
    .line 316
    const/16 v14, 0x100

    .line 317
    .line 318
    invoke-direct {v11, v4, v14, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 319
    .line 320
    .line 321
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 322
    .line 323
    const-string v14, "ImageLength"

    .line 324
    .line 325
    const/16 v5, 0x101

    .line 326
    .line 327
    invoke-direct {v4, v14, v5, v0, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 328
    .line 329
    .line 330
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 331
    .line 332
    const-string v5, "BitsPerSample"

    .line 333
    .line 334
    const/16 v8, 0x102

    .line 335
    .line 336
    invoke-direct {v14, v5, v8, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 337
    .line 338
    .line 339
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 340
    .line 341
    move-object/from16 v31, v4

    .line 342
    .line 343
    const-string v4, "Compression"

    .line 344
    .line 345
    move-object/from16 v32, v6

    .line 346
    .line 347
    const/16 v6, 0x103

    .line 348
    .line 349
    invoke-direct {v8, v4, v6, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 350
    .line 351
    .line 352
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 353
    .line 354
    move-object/from16 v34, v8

    .line 355
    .line 356
    const-string v8, "PhotometricInterpretation"

    .line 357
    .line 358
    move-object/from16 v35, v11

    .line 359
    .line 360
    const/16 v11, 0x106

    .line 361
    .line 362
    invoke-direct {v6, v8, v11, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 363
    .line 364
    .line 365
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 366
    .line 367
    const-string v0, "ImageDescription"

    .line 368
    .line 369
    move-object/from16 v38, v6

    .line 370
    .line 371
    const/16 v6, 0x10e

    .line 372
    .line 373
    move-object/from16 v39, v13

    .line 374
    .line 375
    const/4 v13, 0x2

    .line 376
    invoke-direct {v11, v0, v6, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 377
    .line 378
    .line 379
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 380
    .line 381
    move-object/from16 v41, v11

    .line 382
    .line 383
    const-string v11, "Make"

    .line 384
    .line 385
    move-object/from16 v42, v14

    .line 386
    .line 387
    const/16 v14, 0x10f

    .line 388
    .line 389
    invoke-direct {v6, v11, v14, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 390
    .line 391
    .line 392
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 393
    .line 394
    move-object/from16 v44, v6

    .line 395
    .line 396
    const/16 v6, 0x110

    .line 397
    .line 398
    move-object/from16 v45, v7

    .line 399
    .line 400
    const-string v7, "Model"

    .line 401
    .line 402
    invoke-direct {v14, v7, v6, v13}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 403
    .line 404
    .line 405
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 406
    .line 407
    const-string v13, "StripOffsets"

    .line 408
    .line 409
    move-object/from16 v46, v14

    .line 410
    .line 411
    const/16 v14, 0x111

    .line 412
    .line 413
    move-object/from16 v48, v1

    .line 414
    .line 415
    move-object/from16 v47, v12

    .line 416
    .line 417
    const/4 v1, 0x4

    .line 418
    const/4 v12, 0x3

    .line 419
    invoke-direct {v6, v13, v14, v12, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 420
    .line 421
    .line 422
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 423
    .line 424
    const-string v14, "Orientation"

    .line 425
    .line 426
    move-object/from16 v49, v6

    .line 427
    .line 428
    const/16 v6, 0x112

    .line 429
    .line 430
    invoke-direct {v1, v14, v6, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 431
    .line 432
    .line 433
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 434
    .line 435
    const-string v14, "SamplesPerPixel"

    .line 436
    .line 437
    move-object/from16 v50, v1

    .line 438
    .line 439
    const/16 v1, 0x115

    .line 440
    .line 441
    invoke-direct {v6, v14, v1, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 442
    .line 443
    .line 444
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 445
    .line 446
    const-string v14, "RowsPerStrip"

    .line 447
    .line 448
    move-object/from16 v51, v6

    .line 449
    .line 450
    const/16 v6, 0x116

    .line 451
    .line 452
    move-object/from16 v52, v9

    .line 453
    .line 454
    const/4 v9, 0x4

    .line 455
    invoke-direct {v1, v14, v6, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 456
    .line 457
    .line 458
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 459
    .line 460
    const-string v14, "StripByteCounts"

    .line 461
    .line 462
    move-object/from16 v53, v1

    .line 463
    .line 464
    const/16 v1, 0x117

    .line 465
    .line 466
    invoke-direct {v6, v14, v1, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 467
    .line 468
    .line 469
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 470
    .line 471
    const-string v9, "XResolution"

    .line 472
    .line 473
    const/16 v12, 0x11a

    .line 474
    .line 475
    const/4 v14, 0x5

    .line 476
    invoke-direct {v1, v9, v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 477
    .line 478
    .line 479
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 480
    .line 481
    const-string v12, "YResolution"

    .line 482
    .line 483
    move-object/from16 v54, v1

    .line 484
    .line 485
    const/16 v1, 0x11b

    .line 486
    .line 487
    invoke-direct {v9, v12, v1, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 488
    .line 489
    .line 490
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 491
    .line 492
    const-string v12, "PlanarConfiguration"

    .line 493
    .line 494
    const/16 v14, 0x11c

    .line 495
    .line 496
    move-object/from16 v55, v6

    .line 497
    .line 498
    const/4 v6, 0x3

    .line 499
    invoke-direct {v1, v12, v14, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 500
    .line 501
    .line 502
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 503
    .line 504
    const-string v14, "ResolutionUnit"

    .line 505
    .line 506
    move-object/from16 v56, v1

    .line 507
    .line 508
    const/16 v1, 0x128

    .line 509
    .line 510
    invoke-direct {v12, v14, v1, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 511
    .line 512
    .line 513
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 514
    .line 515
    const-string v14, "TransferFunction"

    .line 516
    .line 517
    move-object/from16 v57, v9

    .line 518
    .line 519
    const/16 v9, 0x12d

    .line 520
    .line 521
    invoke-direct {v1, v14, v9, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 522
    .line 523
    .line 524
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 525
    .line 526
    const-string v9, "Software"

    .line 527
    .line 528
    const/16 v14, 0x131

    .line 529
    .line 530
    move-object/from16 v58, v1

    .line 531
    .line 532
    const/4 v1, 0x2

    .line 533
    invoke-direct {v6, v9, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 534
    .line 535
    .line 536
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 537
    .line 538
    const-string v14, "DateTime"

    .line 539
    .line 540
    move-object/from16 v59, v6

    .line 541
    .line 542
    const/16 v6, 0x132

    .line 543
    .line 544
    invoke-direct {v9, v14, v6, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 545
    .line 546
    .line 547
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 548
    .line 549
    const-string v14, "Artist"

    .line 550
    .line 551
    move-object/from16 v60, v9

    .line 552
    .line 553
    const/16 v9, 0x13b

    .line 554
    .line 555
    invoke-direct {v6, v14, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 556
    .line 557
    .line 558
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 559
    .line 560
    const-string v9, "WhitePoint"

    .line 561
    .line 562
    const/16 v14, 0x13e

    .line 563
    .line 564
    move-object/from16 v61, v6

    .line 565
    .line 566
    const/4 v6, 0x5

    .line 567
    invoke-direct {v1, v9, v14, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 568
    .line 569
    .line 570
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 571
    .line 572
    const-string v14, "PrimaryChromaticities"

    .line 573
    .line 574
    move-object/from16 v62, v1

    .line 575
    .line 576
    const/16 v1, 0x13f

    .line 577
    .line 578
    invoke-direct {v9, v14, v1, v6}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 579
    .line 580
    .line 581
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 582
    .line 583
    const-string v6, "SubIFDPointer"

    .line 584
    .line 585
    const/16 v14, 0x14a

    .line 586
    .line 587
    move-object/from16 v63, v9

    .line 588
    .line 589
    const/4 v9, 0x4

    .line 590
    invoke-direct {v1, v6, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 591
    .line 592
    .line 593
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 594
    .line 595
    move-object/from16 v64, v1

    .line 596
    .line 597
    const-string v1, "JPEGInterchangeFormat"

    .line 598
    .line 599
    move-object/from16 v65, v12

    .line 600
    .line 601
    const/16 v12, 0x201

    .line 602
    .line 603
    invoke-direct {v14, v1, v12, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 604
    .line 605
    .line 606
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 607
    .line 608
    const-string v12, "JPEGInterchangeFormatLength"

    .line 609
    .line 610
    move-object/from16 v66, v14

    .line 611
    .line 612
    const/16 v14, 0x202

    .line 613
    .line 614
    invoke-direct {v1, v12, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 615
    .line 616
    .line 617
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 618
    .line 619
    const-string v12, "YCbCrCoefficients"

    .line 620
    .line 621
    const/16 v14, 0x211

    .line 622
    .line 623
    move-object/from16 v67, v1

    .line 624
    .line 625
    const/4 v1, 0x5

    .line 626
    invoke-direct {v9, v12, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 627
    .line 628
    .line 629
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 630
    .line 631
    const-string v12, "YCbCrSubSampling"

    .line 632
    .line 633
    const/16 v14, 0x212

    .line 634
    .line 635
    move-object/from16 v68, v9

    .line 636
    .line 637
    const/4 v9, 0x3

    .line 638
    invoke-direct {v1, v12, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 639
    .line 640
    .line 641
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 642
    .line 643
    const-string v14, "YCbCrPositioning"

    .line 644
    .line 645
    move-object/from16 v69, v1

    .line 646
    .line 647
    const/16 v1, 0x213

    .line 648
    .line 649
    invoke-direct {v12, v14, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 650
    .line 651
    .line 652
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 653
    .line 654
    const-string v9, "ReferenceBlackWhite"

    .line 655
    .line 656
    const/16 v14, 0x214

    .line 657
    .line 658
    move-object/from16 v70, v12

    .line 659
    .line 660
    const/4 v12, 0x5

    .line 661
    invoke-direct {v1, v9, v14, v12}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 662
    .line 663
    .line 664
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 665
    .line 666
    const-string v12, "Copyright"

    .line 667
    .line 668
    const v14, 0x8298

    .line 669
    .line 670
    .line 671
    move-object/from16 v71, v1

    .line 672
    .line 673
    const/4 v1, 0x2

    .line 674
    invoke-direct {v9, v12, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 675
    .line 676
    .line 677
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 678
    .line 679
    const-string v12, "ExifIFDPointer"

    .line 680
    .line 681
    const v14, 0x8769

    .line 682
    .line 683
    .line 684
    move-object/from16 v72, v9

    .line 685
    .line 686
    const/4 v9, 0x4

    .line 687
    invoke-direct {v1, v12, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 688
    .line 689
    .line 690
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 691
    .line 692
    move-object/from16 v73, v1

    .line 693
    .line 694
    const-string v1, "GPSInfoIFDPointer"

    .line 695
    .line 696
    move-object/from16 v74, v3

    .line 697
    .line 698
    const v3, 0x8825

    .line 699
    .line 700
    .line 701
    invoke-direct {v14, v1, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 702
    .line 703
    .line 704
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 705
    .line 706
    move-object/from16 v75, v14

    .line 707
    .line 708
    const-string v14, "SensorTopBorder"

    .line 709
    .line 710
    invoke-direct {v3, v14, v9, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 711
    .line 712
    .line 713
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 714
    .line 715
    move-object/from16 v76, v3

    .line 716
    .line 717
    const-string v3, "SensorLeftBorder"

    .line 718
    .line 719
    move-object/from16 v77, v15

    .line 720
    .line 721
    const/4 v15, 0x5

    .line 722
    invoke-direct {v14, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 723
    .line 724
    .line 725
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 726
    .line 727
    const-string v15, "SensorBottomBorder"

    .line 728
    .line 729
    move-object/from16 v78, v14

    .line 730
    .line 731
    const/4 v14, 0x6

    .line 732
    invoke-direct {v3, v15, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 733
    .line 734
    .line 735
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 736
    .line 737
    const-string v15, "SensorRightBorder"

    .line 738
    .line 739
    move-object/from16 v79, v3

    .line 740
    .line 741
    const/4 v3, 0x7

    .line 742
    invoke-direct {v14, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 743
    .line 744
    .line 745
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 746
    .line 747
    const-string v15, "ISO"

    .line 748
    .line 749
    const/16 v3, 0x17

    .line 750
    .line 751
    move-object/from16 v80, v14

    .line 752
    .line 753
    const/4 v14, 0x3

    .line 754
    invoke-direct {v9, v15, v3, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 755
    .line 756
    .line 757
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 758
    .line 759
    const-string v15, "JpgFromRaw"

    .line 760
    .line 761
    move/from16 v81, v3

    .line 762
    .line 763
    const/16 v3, 0x2e

    .line 764
    .line 765
    move-object/from16 v82, v9

    .line 766
    .line 767
    const/4 v9, 0x7

    .line 768
    invoke-direct {v14, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 769
    .line 770
    .line 771
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 772
    .line 773
    const-string v9, "Xmp"

    .line 774
    .line 775
    const/16 v15, 0x2bc

    .line 776
    .line 777
    move-object/from16 v83, v14

    .line 778
    .line 779
    const/4 v14, 0x1

    .line 780
    invoke-direct {v3, v9, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 781
    .line 782
    .line 783
    const/16 v9, 0x2a

    .line 784
    .line 785
    new-array v9, v9, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 786
    .line 787
    aput-object v39, v9, v16

    .line 788
    .line 789
    aput-object v32, v9, v14

    .line 790
    .line 791
    const/16 v27, 0x2

    .line 792
    .line 793
    aput-object v35, v9, v27

    .line 794
    .line 795
    const/16 v37, 0x3

    .line 796
    .line 797
    aput-object v31, v9, v37

    .line 798
    .line 799
    const/16 v29, 0x4

    .line 800
    .line 801
    aput-object v42, v9, v29

    .line 802
    .line 803
    const/16 v25, 0x5

    .line 804
    .line 805
    aput-object v34, v9, v25

    .line 806
    .line 807
    const/16 v24, 0x6

    .line 808
    .line 809
    aput-object v38, v9, v24

    .line 810
    .line 811
    const/16 v22, 0x7

    .line 812
    .line 813
    aput-object v41, v9, v22

    .line 814
    .line 815
    aput-object v44, v9, v19

    .line 816
    .line 817
    const/16 v14, 0x9

    .line 818
    .line 819
    aput-object v46, v9, v14

    .line 820
    .line 821
    aput-object v49, v9, v17

    .line 822
    .line 823
    const/16 v15, 0xb

    .line 824
    .line 825
    aput-object v50, v9, v15

    .line 826
    .line 827
    move/from16 v31, v15

    .line 828
    .line 829
    const/16 v15, 0xc

    .line 830
    .line 831
    aput-object v51, v9, v15

    .line 832
    .line 833
    move/from16 v32, v15

    .line 834
    .line 835
    const/16 v15, 0xd

    .line 836
    .line 837
    aput-object v53, v9, v15

    .line 838
    .line 839
    aput-object v55, v9, v18

    .line 840
    .line 841
    move/from16 v34, v15

    .line 842
    .line 843
    const/16 v15, 0xf

    .line 844
    .line 845
    aput-object v54, v9, v15

    .line 846
    .line 847
    move/from16 v35, v15

    .line 848
    .line 849
    const/16 v15, 0x10

    .line 850
    .line 851
    aput-object v57, v9, v15

    .line 852
    .line 853
    move/from16 v38, v15

    .line 854
    .line 855
    const/16 v15, 0x11

    .line 856
    .line 857
    aput-object v56, v9, v15

    .line 858
    .line 859
    move/from16 v39, v15

    .line 860
    .line 861
    const/16 v15, 0x12

    .line 862
    .line 863
    aput-object v65, v9, v15

    .line 864
    .line 865
    const/16 v41, 0x13

    .line 866
    .line 867
    aput-object v58, v9, v41

    .line 868
    .line 869
    const/16 v41, 0x14

    .line 870
    .line 871
    aput-object v59, v9, v41

    .line 872
    .line 873
    const/16 v41, 0x15

    .line 874
    .line 875
    aput-object v60, v9, v41

    .line 876
    .line 877
    const/16 v41, 0x16

    .line 878
    .line 879
    aput-object v61, v9, v41

    .line 880
    .line 881
    aput-object v62, v9, v81

    .line 882
    .line 883
    const/16 v41, 0x18

    .line 884
    .line 885
    aput-object v63, v9, v41

    .line 886
    .line 887
    const/16 v41, 0x19

    .line 888
    .line 889
    aput-object v64, v9, v41

    .line 890
    .line 891
    move/from16 v41, v15

    .line 892
    .line 893
    const/16 v15, 0x1a

    .line 894
    .line 895
    aput-object v66, v9, v15

    .line 896
    .line 897
    const/16 v42, 0x1b

    .line 898
    .line 899
    aput-object v67, v9, v42

    .line 900
    .line 901
    const/16 v42, 0x1c

    .line 902
    .line 903
    aput-object v68, v9, v42

    .line 904
    .line 905
    const/16 v42, 0x1d

    .line 906
    .line 907
    aput-object v69, v9, v42

    .line 908
    .line 909
    const/16 v42, 0x1e

    .line 910
    .line 911
    aput-object v70, v9, v42

    .line 912
    .line 913
    const/16 v42, 0x1f

    .line 914
    .line 915
    aput-object v71, v9, v42

    .line 916
    .line 917
    const/16 v42, 0x20

    .line 918
    .line 919
    aput-object v72, v9, v42

    .line 920
    .line 921
    const/16 v42, 0x21

    .line 922
    .line 923
    aput-object v73, v9, v42

    .line 924
    .line 925
    const/16 v42, 0x22

    .line 926
    .line 927
    aput-object v75, v9, v42

    .line 928
    .line 929
    const/16 v42, 0x23

    .line 930
    .line 931
    aput-object v76, v9, v42

    .line 932
    .line 933
    const/16 v42, 0x24

    .line 934
    .line 935
    aput-object v78, v9, v42

    .line 936
    .line 937
    const/16 v42, 0x25

    .line 938
    .line 939
    aput-object v79, v9, v42

    .line 940
    .line 941
    const/16 v42, 0x26

    .line 942
    .line 943
    aput-object v80, v9, v42

    .line 944
    .line 945
    const/16 v42, 0x27

    .line 946
    .line 947
    aput-object v82, v9, v42

    .line 948
    .line 949
    const/16 v42, 0x28

    .line 950
    .line 951
    aput-object v83, v9, v42

    .line 952
    .line 953
    const/16 v42, 0x29

    .line 954
    .line 955
    aput-object v3, v9, v42

    .line 956
    .line 957
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 958
    .line 959
    move/from16 v42, v15

    .line 960
    .line 961
    const-string v15, "ExposureTime"

    .line 962
    .line 963
    move/from16 v44, v14

    .line 964
    .line 965
    const v14, 0x829a

    .line 966
    .line 967
    .line 968
    move-object/from16 v46, v9

    .line 969
    .line 970
    const/4 v9, 0x5

    .line 971
    invoke-direct {v3, v15, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 972
    .line 973
    .line 974
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 975
    .line 976
    const-string v15, "FNumber"

    .line 977
    .line 978
    move-object/from16 v49, v3

    .line 979
    .line 980
    const v3, 0x829d

    .line 981
    .line 982
    .line 983
    invoke-direct {v14, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 984
    .line 985
    .line 986
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 987
    .line 988
    const-string v9, "ExposureProgram"

    .line 989
    .line 990
    const v15, 0x8822

    .line 991
    .line 992
    .line 993
    move-object/from16 v50, v14

    .line 994
    .line 995
    const/4 v14, 0x3

    .line 996
    invoke-direct {v3, v9, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 997
    .line 998
    .line 999
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1000
    .line 1001
    const-string v15, "SpectralSensitivity"

    .line 1002
    .line 1003
    const v14, 0x8824

    .line 1004
    .line 1005
    .line 1006
    move-object/from16 v51, v3

    .line 1007
    .line 1008
    const/4 v3, 0x2

    .line 1009
    invoke-direct {v9, v15, v14, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1010
    .line 1011
    .line 1012
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1013
    .line 1014
    const-string v14, "PhotographicSensitivity"

    .line 1015
    .line 1016
    const v15, 0x8827

    .line 1017
    .line 1018
    .line 1019
    move-object/from16 v53, v9

    .line 1020
    .line 1021
    const/4 v9, 0x3

    .line 1022
    invoke-direct {v3, v14, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1023
    .line 1024
    .line 1025
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1026
    .line 1027
    const-string v15, "OECF"

    .line 1028
    .line 1029
    const v9, 0x8828

    .line 1030
    .line 1031
    .line 1032
    move-object/from16 v54, v3

    .line 1033
    .line 1034
    const/4 v3, 0x7

    .line 1035
    invoke-direct {v14, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1036
    .line 1037
    .line 1038
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1039
    .line 1040
    const-string v9, "SensitivityType"

    .line 1041
    .line 1042
    const v15, 0x8830

    .line 1043
    .line 1044
    .line 1045
    move-object/from16 v55, v14

    .line 1046
    .line 1047
    const/4 v14, 0x3

    .line 1048
    invoke-direct {v3, v9, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1049
    .line 1050
    .line 1051
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1052
    .line 1053
    const-string v14, "StandardOutputSensitivity"

    .line 1054
    .line 1055
    const v15, 0x8831

    .line 1056
    .line 1057
    .line 1058
    move-object/from16 v56, v3

    .line 1059
    .line 1060
    const/4 v3, 0x4

    .line 1061
    invoke-direct {v9, v14, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1062
    .line 1063
    .line 1064
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1065
    .line 1066
    const-string v15, "RecommendedExposureIndex"

    .line 1067
    .line 1068
    move-object/from16 v57, v9

    .line 1069
    .line 1070
    const v9, 0x8832

    .line 1071
    .line 1072
    .line 1073
    invoke-direct {v14, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1074
    .line 1075
    .line 1076
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1077
    .line 1078
    const-string v15, "ISOSpeed"

    .line 1079
    .line 1080
    move-object/from16 v58, v14

    .line 1081
    .line 1082
    const v14, 0x8833

    .line 1083
    .line 1084
    .line 1085
    invoke-direct {v9, v15, v14, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1086
    .line 1087
    .line 1088
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1089
    .line 1090
    const-string v15, "ISOSpeedLatitudeyyy"

    .line 1091
    .line 1092
    move-object/from16 v59, v9

    .line 1093
    .line 1094
    const v9, 0x8834

    .line 1095
    .line 1096
    .line 1097
    invoke-direct {v14, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1098
    .line 1099
    .line 1100
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1101
    .line 1102
    const-string v15, "ISOSpeedLatitudezzz"

    .line 1103
    .line 1104
    move-object/from16 v60, v14

    .line 1105
    .line 1106
    const v14, 0x8835

    .line 1107
    .line 1108
    .line 1109
    invoke-direct {v9, v15, v14, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1110
    .line 1111
    .line 1112
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1113
    .line 1114
    const-string v14, "ExifVersion"

    .line 1115
    .line 1116
    const v15, 0x9000

    .line 1117
    .line 1118
    .line 1119
    move-object/from16 v61, v9

    .line 1120
    .line 1121
    const/4 v9, 0x2

    .line 1122
    invoke-direct {v3, v14, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1123
    .line 1124
    .line 1125
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1126
    .line 1127
    const-string v15, "DateTimeOriginal"

    .line 1128
    .line 1129
    move-object/from16 v62, v3

    .line 1130
    .line 1131
    const v3, 0x9003

    .line 1132
    .line 1133
    .line 1134
    invoke-direct {v14, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1135
    .line 1136
    .line 1137
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1138
    .line 1139
    const-string v15, "DateTimeDigitized"

    .line 1140
    .line 1141
    move-object/from16 v63, v14

    .line 1142
    .line 1143
    const v14, 0x9004

    .line 1144
    .line 1145
    .line 1146
    invoke-direct {v3, v15, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1147
    .line 1148
    .line 1149
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1150
    .line 1151
    const-string v15, "OffsetTime"

    .line 1152
    .line 1153
    move-object/from16 v64, v3

    .line 1154
    .line 1155
    const v3, 0x9010

    .line 1156
    .line 1157
    .line 1158
    invoke-direct {v14, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1159
    .line 1160
    .line 1161
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1162
    .line 1163
    const-string v15, "OffsetTimeOriginal"

    .line 1164
    .line 1165
    move-object/from16 v65, v14

    .line 1166
    .line 1167
    const v14, 0x9011

    .line 1168
    .line 1169
    .line 1170
    invoke-direct {v3, v15, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1171
    .line 1172
    .line 1173
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1174
    .line 1175
    const-string v15, "OffsetTimeDigitized"

    .line 1176
    .line 1177
    move-object/from16 v66, v3

    .line 1178
    .line 1179
    const v3, 0x9012

    .line 1180
    .line 1181
    .line 1182
    invoke-direct {v14, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1183
    .line 1184
    .line 1185
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1186
    .line 1187
    const-string v9, "ComponentsConfiguration"

    .line 1188
    .line 1189
    const v15, 0x9101

    .line 1190
    .line 1191
    .line 1192
    move-object/from16 v67, v14

    .line 1193
    .line 1194
    const/4 v14, 0x7

    .line 1195
    invoke-direct {v3, v9, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1196
    .line 1197
    .line 1198
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1199
    .line 1200
    const-string v14, "CompressedBitsPerPixel"

    .line 1201
    .line 1202
    const v15, 0x9102

    .line 1203
    .line 1204
    .line 1205
    move-object/from16 v68, v3

    .line 1206
    .line 1207
    const/4 v3, 0x5

    .line 1208
    invoke-direct {v9, v14, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1209
    .line 1210
    .line 1211
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1212
    .line 1213
    const-string v15, "ShutterSpeedValue"

    .line 1214
    .line 1215
    const v3, 0x9201

    .line 1216
    .line 1217
    .line 1218
    move-object/from16 v69, v9

    .line 1219
    .line 1220
    move/from16 v9, v17

    .line 1221
    .line 1222
    invoke-direct {v14, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1223
    .line 1224
    .line 1225
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1226
    .line 1227
    const-string v15, "ApertureValue"

    .line 1228
    .line 1229
    const v9, 0x9202

    .line 1230
    .line 1231
    .line 1232
    move-object/from16 v70, v14

    .line 1233
    .line 1234
    const/4 v14, 0x5

    .line 1235
    invoke-direct {v3, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1236
    .line 1237
    .line 1238
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1239
    .line 1240
    const-string v14, "BrightnessValue"

    .line 1241
    .line 1242
    const v15, 0x9203

    .line 1243
    .line 1244
    .line 1245
    move-object/from16 v71, v3

    .line 1246
    .line 1247
    const/16 v3, 0xa

    .line 1248
    .line 1249
    invoke-direct {v9, v14, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1250
    .line 1251
    .line 1252
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1253
    .line 1254
    const-string v15, "ExposureBiasValue"

    .line 1255
    .line 1256
    move-object/from16 v72, v9

    .line 1257
    .line 1258
    const v9, 0x9204

    .line 1259
    .line 1260
    .line 1261
    invoke-direct {v14, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1262
    .line 1263
    .line 1264
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1265
    .line 1266
    const-string v9, "MaxApertureValue"

    .line 1267
    .line 1268
    const v15, 0x9205

    .line 1269
    .line 1270
    .line 1271
    move-object/from16 v73, v14

    .line 1272
    .line 1273
    const/4 v14, 0x5

    .line 1274
    invoke-direct {v3, v9, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1275
    .line 1276
    .line 1277
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1278
    .line 1279
    const-string v15, "SubjectDistance"

    .line 1280
    .line 1281
    move-object/from16 v75, v3

    .line 1282
    .line 1283
    const v3, 0x9206

    .line 1284
    .line 1285
    .line 1286
    invoke-direct {v9, v15, v3, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1287
    .line 1288
    .line 1289
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1290
    .line 1291
    const-string v14, "MeteringMode"

    .line 1292
    .line 1293
    const v15, 0x9207

    .line 1294
    .line 1295
    .line 1296
    move-object/from16 v76, v9

    .line 1297
    .line 1298
    const/4 v9, 0x3

    .line 1299
    invoke-direct {v3, v14, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1300
    .line 1301
    .line 1302
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1303
    .line 1304
    const-string v15, "LightSource"

    .line 1305
    .line 1306
    move-object/from16 v78, v3

    .line 1307
    .line 1308
    const v3, 0x9208

    .line 1309
    .line 1310
    .line 1311
    invoke-direct {v14, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1312
    .line 1313
    .line 1314
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1315
    .line 1316
    const-string v15, "Flash"

    .line 1317
    .line 1318
    move-object/from16 v79, v14

    .line 1319
    .line 1320
    const v14, 0x9209

    .line 1321
    .line 1322
    .line 1323
    invoke-direct {v3, v15, v14, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1324
    .line 1325
    .line 1326
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1327
    .line 1328
    const-string v15, "FocalLength"

    .line 1329
    .line 1330
    const v9, 0x920a

    .line 1331
    .line 1332
    .line 1333
    move-object/from16 v80, v3

    .line 1334
    .line 1335
    const/4 v3, 0x5

    .line 1336
    invoke-direct {v14, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1337
    .line 1338
    .line 1339
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1340
    .line 1341
    const-string v9, "SubjectArea"

    .line 1342
    .line 1343
    const v15, 0x9214

    .line 1344
    .line 1345
    .line 1346
    move-object/from16 v82, v14

    .line 1347
    .line 1348
    const/4 v14, 0x3

    .line 1349
    invoke-direct {v3, v9, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1350
    .line 1351
    .line 1352
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1353
    .line 1354
    const-string v14, "MakerNote"

    .line 1355
    .line 1356
    const v15, 0x927c

    .line 1357
    .line 1358
    .line 1359
    move-object/from16 v83, v3

    .line 1360
    .line 1361
    const/4 v3, 0x7

    .line 1362
    invoke-direct {v9, v14, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1363
    .line 1364
    .line 1365
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1366
    .line 1367
    const-string v15, "UserComment"

    .line 1368
    .line 1369
    move-object/from16 v84, v9

    .line 1370
    .line 1371
    const v9, 0x9286

    .line 1372
    .line 1373
    .line 1374
    invoke-direct {v14, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1375
    .line 1376
    .line 1377
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1378
    .line 1379
    const-string v9, "SubSecTime"

    .line 1380
    .line 1381
    const v15, 0x9290

    .line 1382
    .line 1383
    .line 1384
    move-object/from16 v85, v14

    .line 1385
    .line 1386
    const/4 v14, 0x2

    .line 1387
    invoke-direct {v3, v9, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1388
    .line 1389
    .line 1390
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1391
    .line 1392
    const-string v15, "SubSecTimeOriginal"

    .line 1393
    .line 1394
    move-object/from16 v86, v3

    .line 1395
    .line 1396
    const v3, 0x9291

    .line 1397
    .line 1398
    .line 1399
    invoke-direct {v9, v15, v3, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1400
    .line 1401
    .line 1402
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1403
    .line 1404
    const-string v15, "SubSecTimeDigitized"

    .line 1405
    .line 1406
    move-object/from16 v87, v9

    .line 1407
    .line 1408
    const v9, 0x9292

    .line 1409
    .line 1410
    .line 1411
    invoke-direct {v3, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1412
    .line 1413
    .line 1414
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1415
    .line 1416
    const-string v14, "FlashpixVersion"

    .line 1417
    .line 1418
    const v15, 0xa000

    .line 1419
    .line 1420
    .line 1421
    move-object/from16 v88, v3

    .line 1422
    .line 1423
    const/4 v3, 0x7

    .line 1424
    invoke-direct {v9, v14, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1425
    .line 1426
    .line 1427
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1428
    .line 1429
    const-string v14, "ColorSpace"

    .line 1430
    .line 1431
    const v15, 0xa001

    .line 1432
    .line 1433
    .line 1434
    move-object/from16 v89, v9

    .line 1435
    .line 1436
    const/4 v9, 0x3

    .line 1437
    invoke-direct {v3, v14, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1438
    .line 1439
    .line 1440
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1441
    .line 1442
    const-string v15, "PixelXDimension"

    .line 1443
    .line 1444
    move-object/from16 v90, v3

    .line 1445
    .line 1446
    const v3, 0xa002

    .line 1447
    .line 1448
    .line 1449
    move-object/from16 v91, v1

    .line 1450
    .line 1451
    const/4 v1, 0x4

    .line 1452
    invoke-direct {v14, v15, v3, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 1453
    .line 1454
    .line 1455
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1456
    .line 1457
    const-string v15, "PixelYDimension"

    .line 1458
    .line 1459
    move-object/from16 v92, v14

    .line 1460
    .line 1461
    const v14, 0xa003

    .line 1462
    .line 1463
    .line 1464
    invoke-direct {v3, v15, v14, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 1465
    .line 1466
    .line 1467
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1468
    .line 1469
    const-string v14, "RelatedSoundFile"

    .line 1470
    .line 1471
    const v15, 0xa004

    .line 1472
    .line 1473
    .line 1474
    const/4 v1, 0x2

    .line 1475
    invoke-direct {v9, v14, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1476
    .line 1477
    .line 1478
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1479
    .line 1480
    const-string v14, "InteroperabilityIFDPointer"

    .line 1481
    .line 1482
    const v15, 0xa005

    .line 1483
    .line 1484
    .line 1485
    move-object/from16 v93, v3

    .line 1486
    .line 1487
    const/4 v3, 0x4

    .line 1488
    invoke-direct {v1, v14, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1489
    .line 1490
    .line 1491
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1492
    .line 1493
    const-string v14, "FlashEnergy"

    .line 1494
    .line 1495
    const v15, 0xa20b

    .line 1496
    .line 1497
    .line 1498
    move-object/from16 v94, v1

    .line 1499
    .line 1500
    const/4 v1, 0x5

    .line 1501
    invoke-direct {v3, v14, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1502
    .line 1503
    .line 1504
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1505
    .line 1506
    const-string v15, "SpatialFrequencyResponse"

    .line 1507
    .line 1508
    const v1, 0xa20c

    .line 1509
    .line 1510
    .line 1511
    move-object/from16 v95, v3

    .line 1512
    .line 1513
    const/4 v3, 0x7

    .line 1514
    invoke-direct {v14, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1515
    .line 1516
    .line 1517
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1518
    .line 1519
    const-string v3, "FocalPlaneXResolution"

    .line 1520
    .line 1521
    const v15, 0xa20e

    .line 1522
    .line 1523
    .line 1524
    move-object/from16 v96, v9

    .line 1525
    .line 1526
    const/4 v9, 0x5

    .line 1527
    invoke-direct {v1, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1528
    .line 1529
    .line 1530
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1531
    .line 1532
    const-string v15, "FocalPlaneYResolution"

    .line 1533
    .line 1534
    move-object/from16 v97, v1

    .line 1535
    .line 1536
    const v1, 0xa20f

    .line 1537
    .line 1538
    .line 1539
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1540
    .line 1541
    .line 1542
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1543
    .line 1544
    const-string v9, "FocalPlaneResolutionUnit"

    .line 1545
    .line 1546
    const v15, 0xa210

    .line 1547
    .line 1548
    .line 1549
    move-object/from16 v98, v3

    .line 1550
    .line 1551
    const/4 v3, 0x3

    .line 1552
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1553
    .line 1554
    .line 1555
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1556
    .line 1557
    const-string v15, "SubjectLocation"

    .line 1558
    .line 1559
    move-object/from16 v99, v1

    .line 1560
    .line 1561
    const v1, 0xa214

    .line 1562
    .line 1563
    .line 1564
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1565
    .line 1566
    .line 1567
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1568
    .line 1569
    const-string v15, "ExposureIndex"

    .line 1570
    .line 1571
    const v3, 0xa215

    .line 1572
    .line 1573
    .line 1574
    move-object/from16 v100, v9

    .line 1575
    .line 1576
    const/4 v9, 0x5

    .line 1577
    invoke-direct {v1, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1578
    .line 1579
    .line 1580
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1581
    .line 1582
    const-string v9, "SensingMethod"

    .line 1583
    .line 1584
    const v15, 0xa217

    .line 1585
    .line 1586
    .line 1587
    move-object/from16 v101, v1

    .line 1588
    .line 1589
    const/4 v1, 0x3

    .line 1590
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1591
    .line 1592
    .line 1593
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1594
    .line 1595
    const-string v9, "FileSource"

    .line 1596
    .line 1597
    const v15, 0xa300

    .line 1598
    .line 1599
    .line 1600
    move-object/from16 v102, v3

    .line 1601
    .line 1602
    const/4 v3, 0x7

    .line 1603
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1604
    .line 1605
    .line 1606
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1607
    .line 1608
    const-string v15, "SceneType"

    .line 1609
    .line 1610
    move-object/from16 v103, v1

    .line 1611
    .line 1612
    const v1, 0xa301

    .line 1613
    .line 1614
    .line 1615
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1616
    .line 1617
    .line 1618
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1619
    .line 1620
    const-string v15, "CFAPattern"

    .line 1621
    .line 1622
    move-object/from16 v104, v9

    .line 1623
    .line 1624
    const v9, 0xa302

    .line 1625
    .line 1626
    .line 1627
    invoke-direct {v1, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1628
    .line 1629
    .line 1630
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1631
    .line 1632
    const-string v9, "CustomRendered"

    .line 1633
    .line 1634
    const v15, 0xa401

    .line 1635
    .line 1636
    .line 1637
    move-object/from16 v105, v1

    .line 1638
    .line 1639
    const/4 v1, 0x3

    .line 1640
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1641
    .line 1642
    .line 1643
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1644
    .line 1645
    const-string v15, "ExposureMode"

    .line 1646
    .line 1647
    move-object/from16 v106, v3

    .line 1648
    .line 1649
    const v3, 0xa402

    .line 1650
    .line 1651
    .line 1652
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1653
    .line 1654
    .line 1655
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1656
    .line 1657
    const-string v15, "WhiteBalance"

    .line 1658
    .line 1659
    move-object/from16 v107, v9

    .line 1660
    .line 1661
    const v9, 0xa403

    .line 1662
    .line 1663
    .line 1664
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1665
    .line 1666
    .line 1667
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1668
    .line 1669
    const-string v15, "DigitalZoomRatio"

    .line 1670
    .line 1671
    const v1, 0xa404

    .line 1672
    .line 1673
    .line 1674
    move-object/from16 v108, v3

    .line 1675
    .line 1676
    const/4 v3, 0x5

    .line 1677
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1678
    .line 1679
    .line 1680
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1681
    .line 1682
    const-string v3, "FocalLengthIn35mmFilm"

    .line 1683
    .line 1684
    const v15, 0xa405

    .line 1685
    .line 1686
    .line 1687
    move-object/from16 v109, v9

    .line 1688
    .line 1689
    const/4 v9, 0x3

    .line 1690
    invoke-direct {v1, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1691
    .line 1692
    .line 1693
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1694
    .line 1695
    const-string v15, "SceneCaptureType"

    .line 1696
    .line 1697
    move-object/from16 v110, v1

    .line 1698
    .line 1699
    const v1, 0xa406

    .line 1700
    .line 1701
    .line 1702
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1703
    .line 1704
    .line 1705
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1706
    .line 1707
    const-string v15, "GainControl"

    .line 1708
    .line 1709
    move-object/from16 v111, v3

    .line 1710
    .line 1711
    const v3, 0xa407

    .line 1712
    .line 1713
    .line 1714
    invoke-direct {v1, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1715
    .line 1716
    .line 1717
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1718
    .line 1719
    const-string v15, "Contrast"

    .line 1720
    .line 1721
    move-object/from16 v112, v1

    .line 1722
    .line 1723
    const v1, 0xa408

    .line 1724
    .line 1725
    .line 1726
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1727
    .line 1728
    .line 1729
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1730
    .line 1731
    const-string v15, "Saturation"

    .line 1732
    .line 1733
    move-object/from16 v113, v3

    .line 1734
    .line 1735
    const v3, 0xa409

    .line 1736
    .line 1737
    .line 1738
    invoke-direct {v1, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1739
    .line 1740
    .line 1741
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1742
    .line 1743
    const-string v15, "Sharpness"

    .line 1744
    .line 1745
    move-object/from16 v114, v1

    .line 1746
    .line 1747
    const v1, 0xa40a

    .line 1748
    .line 1749
    .line 1750
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1751
    .line 1752
    .line 1753
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1754
    .line 1755
    const-string v15, "DeviceSettingDescription"

    .line 1756
    .line 1757
    const v9, 0xa40b

    .line 1758
    .line 1759
    .line 1760
    move-object/from16 v115, v3

    .line 1761
    .line 1762
    const/4 v3, 0x7

    .line 1763
    invoke-direct {v1, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1764
    .line 1765
    .line 1766
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1767
    .line 1768
    const-string v9, "SubjectDistanceRange"

    .line 1769
    .line 1770
    const v15, 0xa40c

    .line 1771
    .line 1772
    .line 1773
    move-object/from16 v116, v1

    .line 1774
    .line 1775
    const/4 v1, 0x3

    .line 1776
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1777
    .line 1778
    .line 1779
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1780
    .line 1781
    const-string v9, "ImageUniqueID"

    .line 1782
    .line 1783
    const v15, 0xa420

    .line 1784
    .line 1785
    .line 1786
    move-object/from16 v117, v3

    .line 1787
    .line 1788
    const/4 v3, 0x2

    .line 1789
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1790
    .line 1791
    .line 1792
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1793
    .line 1794
    const-string v15, "CameraOwnerName"

    .line 1795
    .line 1796
    move-object/from16 v118, v1

    .line 1797
    .line 1798
    const v1, 0xa430

    .line 1799
    .line 1800
    .line 1801
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1802
    .line 1803
    .line 1804
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1805
    .line 1806
    const-string v15, "BodySerialNumber"

    .line 1807
    .line 1808
    move-object/from16 v119, v9

    .line 1809
    .line 1810
    const v9, 0xa431

    .line 1811
    .line 1812
    .line 1813
    invoke-direct {v1, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1814
    .line 1815
    .line 1816
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1817
    .line 1818
    const-string v15, "LensSpecification"

    .line 1819
    .line 1820
    const v3, 0xa432

    .line 1821
    .line 1822
    .line 1823
    move-object/from16 v120, v1

    .line 1824
    .line 1825
    const/4 v1, 0x5

    .line 1826
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1827
    .line 1828
    .line 1829
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1830
    .line 1831
    const-string v3, "LensMake"

    .line 1832
    .line 1833
    const v15, 0xa433

    .line 1834
    .line 1835
    .line 1836
    move-object/from16 v121, v9

    .line 1837
    .line 1838
    const/4 v9, 0x2

    .line 1839
    invoke-direct {v1, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1840
    .line 1841
    .line 1842
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1843
    .line 1844
    const-string v15, "LensModel"

    .line 1845
    .line 1846
    move-object/from16 v122, v1

    .line 1847
    .line 1848
    const v1, 0xa434

    .line 1849
    .line 1850
    .line 1851
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1852
    .line 1853
    .line 1854
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1855
    .line 1856
    const-string v9, "Gamma"

    .line 1857
    .line 1858
    const v15, 0xa500

    .line 1859
    .line 1860
    .line 1861
    move-object/from16 v123, v3

    .line 1862
    .line 1863
    const/4 v3, 0x5

    .line 1864
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1865
    .line 1866
    .line 1867
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1868
    .line 1869
    const-string v9, "DNGVersion"

    .line 1870
    .line 1871
    const v15, 0xc612

    .line 1872
    .line 1873
    .line 1874
    move-object/from16 v124, v1

    .line 1875
    .line 1876
    const/4 v1, 0x1

    .line 1877
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 1878
    .line 1879
    .line 1880
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1881
    .line 1882
    const-string v15, "DefaultCropSize"

    .line 1883
    .line 1884
    move/from16 v21, v1

    .line 1885
    .line 1886
    const v1, 0xc620

    .line 1887
    .line 1888
    .line 1889
    move-object/from16 v125, v3

    .line 1890
    .line 1891
    move-object/from16 v126, v14

    .line 1892
    .line 1893
    const/4 v3, 0x3

    .line 1894
    const/4 v14, 0x4

    .line 1895
    invoke-direct {v9, v15, v1, v3, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 1896
    .line 1897
    .line 1898
    const/16 v1, 0x4a

    .line 1899
    .line 1900
    new-array v1, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 1901
    .line 1902
    aput-object v49, v1, v16

    .line 1903
    .line 1904
    aput-object v50, v1, v21

    .line 1905
    .line 1906
    const/16 v27, 0x2

    .line 1907
    .line 1908
    aput-object v51, v1, v27

    .line 1909
    .line 1910
    aput-object v53, v1, v3

    .line 1911
    .line 1912
    aput-object v54, v1, v14

    .line 1913
    .line 1914
    const/16 v25, 0x5

    .line 1915
    .line 1916
    aput-object v55, v1, v25

    .line 1917
    .line 1918
    const/16 v24, 0x6

    .line 1919
    .line 1920
    aput-object v56, v1, v24

    .line 1921
    .line 1922
    const/16 v22, 0x7

    .line 1923
    .line 1924
    aput-object v57, v1, v22

    .line 1925
    .line 1926
    aput-object v58, v1, v19

    .line 1927
    .line 1928
    aput-object v59, v1, v44

    .line 1929
    .line 1930
    const/16 v17, 0xa

    .line 1931
    .line 1932
    aput-object v60, v1, v17

    .line 1933
    .line 1934
    aput-object v61, v1, v31

    .line 1935
    .line 1936
    aput-object v62, v1, v32

    .line 1937
    .line 1938
    aput-object v63, v1, v34

    .line 1939
    .line 1940
    aput-object v64, v1, v18

    .line 1941
    .line 1942
    aput-object v65, v1, v35

    .line 1943
    .line 1944
    aput-object v66, v1, v38

    .line 1945
    .line 1946
    aput-object v67, v1, v39

    .line 1947
    .line 1948
    aput-object v68, v1, v41

    .line 1949
    .line 1950
    const/16 v3, 0x13

    .line 1951
    .line 1952
    aput-object v69, v1, v3

    .line 1953
    .line 1954
    const/16 v3, 0x14

    .line 1955
    .line 1956
    aput-object v70, v1, v3

    .line 1957
    .line 1958
    const/16 v3, 0x15

    .line 1959
    .line 1960
    aput-object v71, v1, v3

    .line 1961
    .line 1962
    const/16 v3, 0x16

    .line 1963
    .line 1964
    aput-object v72, v1, v3

    .line 1965
    .line 1966
    aput-object v73, v1, v81

    .line 1967
    .line 1968
    const/16 v3, 0x18

    .line 1969
    .line 1970
    aput-object v75, v1, v3

    .line 1971
    .line 1972
    const/16 v3, 0x19

    .line 1973
    .line 1974
    aput-object v76, v1, v3

    .line 1975
    .line 1976
    aput-object v78, v1, v42

    .line 1977
    .line 1978
    const/16 v3, 0x1b

    .line 1979
    .line 1980
    aput-object v79, v1, v3

    .line 1981
    .line 1982
    const/16 v3, 0x1c

    .line 1983
    .line 1984
    aput-object v80, v1, v3

    .line 1985
    .line 1986
    const/16 v3, 0x1d

    .line 1987
    .line 1988
    aput-object v82, v1, v3

    .line 1989
    .line 1990
    const/16 v3, 0x1e

    .line 1991
    .line 1992
    aput-object v83, v1, v3

    .line 1993
    .line 1994
    const/16 v3, 0x1f

    .line 1995
    .line 1996
    aput-object v84, v1, v3

    .line 1997
    .line 1998
    const/16 v3, 0x20

    .line 1999
    .line 2000
    aput-object v85, v1, v3

    .line 2001
    .line 2002
    const/16 v3, 0x21

    .line 2003
    .line 2004
    aput-object v86, v1, v3

    .line 2005
    .line 2006
    const/16 v3, 0x22

    .line 2007
    .line 2008
    aput-object v87, v1, v3

    .line 2009
    .line 2010
    const/16 v3, 0x23

    .line 2011
    .line 2012
    aput-object v88, v1, v3

    .line 2013
    .line 2014
    const/16 v3, 0x24

    .line 2015
    .line 2016
    aput-object v89, v1, v3

    .line 2017
    .line 2018
    const/16 v3, 0x25

    .line 2019
    .line 2020
    aput-object v90, v1, v3

    .line 2021
    .line 2022
    const/16 v3, 0x26

    .line 2023
    .line 2024
    aput-object v92, v1, v3

    .line 2025
    .line 2026
    const/16 v3, 0x27

    .line 2027
    .line 2028
    aput-object v93, v1, v3

    .line 2029
    .line 2030
    const/16 v3, 0x28

    .line 2031
    .line 2032
    aput-object v96, v1, v3

    .line 2033
    .line 2034
    const/16 v3, 0x29

    .line 2035
    .line 2036
    aput-object v94, v1, v3

    .line 2037
    .line 2038
    const/16 v3, 0x2a

    .line 2039
    .line 2040
    aput-object v95, v1, v3

    .line 2041
    .line 2042
    const/16 v3, 0x2b

    .line 2043
    .line 2044
    aput-object v126, v1, v3

    .line 2045
    .line 2046
    const/16 v3, 0x2c

    .line 2047
    .line 2048
    aput-object v97, v1, v3

    .line 2049
    .line 2050
    const/16 v3, 0x2d

    .line 2051
    .line 2052
    aput-object v98, v1, v3

    .line 2053
    .line 2054
    const/16 v3, 0x2e

    .line 2055
    .line 2056
    aput-object v99, v1, v3

    .line 2057
    .line 2058
    const/16 v3, 0x2f

    .line 2059
    .line 2060
    aput-object v100, v1, v3

    .line 2061
    .line 2062
    const/16 v3, 0x30

    .line 2063
    .line 2064
    aput-object v101, v1, v3

    .line 2065
    .line 2066
    const/16 v3, 0x31

    .line 2067
    .line 2068
    aput-object v102, v1, v3

    .line 2069
    .line 2070
    const/16 v3, 0x32

    .line 2071
    .line 2072
    aput-object v103, v1, v3

    .line 2073
    .line 2074
    const/16 v3, 0x33

    .line 2075
    .line 2076
    aput-object v104, v1, v3

    .line 2077
    .line 2078
    const/16 v3, 0x34

    .line 2079
    .line 2080
    aput-object v105, v1, v3

    .line 2081
    .line 2082
    const/16 v3, 0x35

    .line 2083
    .line 2084
    aput-object v106, v1, v3

    .line 2085
    .line 2086
    const/16 v3, 0x36

    .line 2087
    .line 2088
    aput-object v107, v1, v3

    .line 2089
    .line 2090
    const/16 v3, 0x37

    .line 2091
    .line 2092
    aput-object v108, v1, v3

    .line 2093
    .line 2094
    const/16 v3, 0x38

    .line 2095
    .line 2096
    aput-object v109, v1, v3

    .line 2097
    .line 2098
    const/16 v3, 0x39

    .line 2099
    .line 2100
    aput-object v110, v1, v3

    .line 2101
    .line 2102
    const/16 v3, 0x3a

    .line 2103
    .line 2104
    aput-object v111, v1, v3

    .line 2105
    .line 2106
    const/16 v3, 0x3b

    .line 2107
    .line 2108
    aput-object v112, v1, v3

    .line 2109
    .line 2110
    const/16 v3, 0x3c

    .line 2111
    .line 2112
    aput-object v113, v1, v3

    .line 2113
    .line 2114
    const/16 v3, 0x3d

    .line 2115
    .line 2116
    aput-object v114, v1, v3

    .line 2117
    .line 2118
    const/16 v3, 0x3e

    .line 2119
    .line 2120
    aput-object v115, v1, v3

    .line 2121
    .line 2122
    const/16 v3, 0x3f

    .line 2123
    .line 2124
    aput-object v116, v1, v3

    .line 2125
    .line 2126
    const/16 v3, 0x40

    .line 2127
    .line 2128
    aput-object v117, v1, v3

    .line 2129
    .line 2130
    const/16 v3, 0x41

    .line 2131
    .line 2132
    aput-object v118, v1, v3

    .line 2133
    .line 2134
    const/16 v3, 0x42

    .line 2135
    .line 2136
    aput-object v119, v1, v3

    .line 2137
    .line 2138
    const/16 v3, 0x43

    .line 2139
    .line 2140
    aput-object v120, v1, v3

    .line 2141
    .line 2142
    const/16 v3, 0x44

    .line 2143
    .line 2144
    aput-object v121, v1, v3

    .line 2145
    .line 2146
    const/16 v3, 0x45

    .line 2147
    .line 2148
    aput-object v122, v1, v3

    .line 2149
    .line 2150
    const/16 v3, 0x46

    .line 2151
    .line 2152
    aput-object v123, v1, v3

    .line 2153
    .line 2154
    const/16 v3, 0x47

    .line 2155
    .line 2156
    aput-object v124, v1, v3

    .line 2157
    .line 2158
    const/16 v3, 0x48

    .line 2159
    .line 2160
    aput-object v125, v1, v3

    .line 2161
    .line 2162
    const/16 v3, 0x49

    .line 2163
    .line 2164
    aput-object v9, v1, v3

    .line 2165
    .line 2166
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2167
    .line 2168
    const-string v9, "GPSVersionID"

    .line 2169
    .line 2170
    move/from16 v15, v16

    .line 2171
    .line 2172
    const/4 v14, 0x1

    .line 2173
    invoke-direct {v3, v9, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2174
    .line 2175
    .line 2176
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2177
    .line 2178
    const-string v15, "GPSLatitudeRef"

    .line 2179
    .line 2180
    move-object/from16 v49, v1

    .line 2181
    .line 2182
    const/4 v1, 0x2

    .line 2183
    invoke-direct {v9, v15, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2184
    .line 2185
    .line 2186
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2187
    .line 2188
    const-string v15, "GPSLatitude"

    .line 2189
    .line 2190
    move-object/from16 v50, v3

    .line 2191
    .line 2192
    move-object/from16 v51, v9

    .line 2193
    .line 2194
    const/4 v3, 0x5

    .line 2195
    const/16 v9, 0xa

    .line 2196
    .line 2197
    invoke-direct {v14, v15, v1, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2198
    .line 2199
    .line 2200
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2201
    .line 2202
    const-string v3, "GPSLongitudeRef"

    .line 2203
    .line 2204
    const/4 v9, 0x3

    .line 2205
    invoke-direct {v15, v3, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2206
    .line 2207
    .line 2208
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2209
    .line 2210
    const-string v3, "GPSLongitude"

    .line 2211
    .line 2212
    move-object/from16 v53, v14

    .line 2213
    .line 2214
    move-object/from16 v54, v15

    .line 2215
    .line 2216
    const/4 v9, 0x4

    .line 2217
    const/4 v14, 0x5

    .line 2218
    const/16 v15, 0xa

    .line 2219
    .line 2220
    invoke-direct {v1, v3, v9, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2221
    .line 2222
    .line 2223
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2224
    .line 2225
    const-string v9, "GPSAltitudeRef"

    .line 2226
    .line 2227
    const/4 v15, 0x1

    .line 2228
    invoke-direct {v3, v9, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2229
    .line 2230
    .line 2231
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2232
    .line 2233
    const-string v15, "GPSAltitude"

    .line 2234
    .line 2235
    move-object/from16 v55, v1

    .line 2236
    .line 2237
    const/4 v1, 0x6

    .line 2238
    invoke-direct {v9, v15, v1, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2239
    .line 2240
    .line 2241
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2242
    .line 2243
    const-string v15, "GPSTimeStamp"

    .line 2244
    .line 2245
    move-object/from16 v56, v3

    .line 2246
    .line 2247
    const/4 v3, 0x7

    .line 2248
    invoke-direct {v1, v15, v3, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2249
    .line 2250
    .line 2251
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2252
    .line 2253
    const-string v14, "GPSSatellites"

    .line 2254
    .line 2255
    move-object/from16 v57, v1

    .line 2256
    .line 2257
    move/from16 v15, v19

    .line 2258
    .line 2259
    const/4 v1, 0x2

    .line 2260
    invoke-direct {v3, v14, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2261
    .line 2262
    .line 2263
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2264
    .line 2265
    const-string v15, "GPSStatus"

    .line 2266
    .line 2267
    move-object/from16 v58, v3

    .line 2268
    .line 2269
    move/from16 v3, v44

    .line 2270
    .line 2271
    invoke-direct {v14, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2272
    .line 2273
    .line 2274
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2275
    .line 2276
    const-string v15, "GPSMeasureMode"

    .line 2277
    .line 2278
    move-object/from16 v59, v9

    .line 2279
    .line 2280
    const/16 v9, 0xa

    .line 2281
    .line 2282
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2283
    .line 2284
    .line 2285
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2286
    .line 2287
    const-string v15, "GPSDOP"

    .line 2288
    .line 2289
    move-object/from16 v60, v3

    .line 2290
    .line 2291
    move/from16 v3, v31

    .line 2292
    .line 2293
    const/4 v1, 0x5

    .line 2294
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2295
    .line 2296
    .line 2297
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2298
    .line 2299
    const-string v15, "GPSSpeedRef"

    .line 2300
    .line 2301
    move-object/from16 v61, v9

    .line 2302
    .line 2303
    move/from16 v9, v32

    .line 2304
    .line 2305
    const/4 v1, 0x2

    .line 2306
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2307
    .line 2308
    .line 2309
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2310
    .line 2311
    const-string v15, "GPSSpeed"

    .line 2312
    .line 2313
    move-object/from16 v62, v3

    .line 2314
    .line 2315
    move/from16 v3, v34

    .line 2316
    .line 2317
    const/4 v1, 0x5

    .line 2318
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2319
    .line 2320
    .line 2321
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2322
    .line 2323
    const-string v15, "GPSTrackRef"

    .line 2324
    .line 2325
    move-object/from16 v63, v9

    .line 2326
    .line 2327
    move/from16 v9, v18

    .line 2328
    .line 2329
    const/4 v1, 0x2

    .line 2330
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2331
    .line 2332
    .line 2333
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2334
    .line 2335
    const-string v15, "GPSTrack"

    .line 2336
    .line 2337
    move-object/from16 v64, v3

    .line 2338
    .line 2339
    move/from16 v3, v35

    .line 2340
    .line 2341
    const/4 v1, 0x5

    .line 2342
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2343
    .line 2344
    .line 2345
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2346
    .line 2347
    const-string v15, "GPSImgDirectionRef"

    .line 2348
    .line 2349
    move-object/from16 v65, v9

    .line 2350
    .line 2351
    move/from16 v9, v38

    .line 2352
    .line 2353
    const/4 v1, 0x2

    .line 2354
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2355
    .line 2356
    .line 2357
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2358
    .line 2359
    const-string v15, "GPSImgDirection"

    .line 2360
    .line 2361
    move-object/from16 v66, v3

    .line 2362
    .line 2363
    move/from16 v3, v39

    .line 2364
    .line 2365
    const/4 v1, 0x5

    .line 2366
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2367
    .line 2368
    .line 2369
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2370
    .line 2371
    const-string v15, "GPSMapDatum"

    .line 2372
    .line 2373
    move-object/from16 v67, v9

    .line 2374
    .line 2375
    move/from16 v9, v41

    .line 2376
    .line 2377
    const/4 v1, 0x2

    .line 2378
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2379
    .line 2380
    .line 2381
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2382
    .line 2383
    const-string v15, "GPSDestLatitudeRef"

    .line 2384
    .line 2385
    move-object/from16 v68, v3

    .line 2386
    .line 2387
    const/16 v3, 0x13

    .line 2388
    .line 2389
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2390
    .line 2391
    .line 2392
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2393
    .line 2394
    const-string v15, "GPSDestLatitude"

    .line 2395
    .line 2396
    const/16 v1, 0x14

    .line 2397
    .line 2398
    move-object/from16 v69, v9

    .line 2399
    .line 2400
    const/4 v9, 0x5

    .line 2401
    invoke-direct {v3, v15, v1, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2402
    .line 2403
    .line 2404
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2405
    .line 2406
    const-string v15, "GPSDestLongitudeRef"

    .line 2407
    .line 2408
    const/16 v9, 0x15

    .line 2409
    .line 2410
    move-object/from16 v70, v3

    .line 2411
    .line 2412
    const/4 v3, 0x2

    .line 2413
    invoke-direct {v1, v15, v9, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2414
    .line 2415
    .line 2416
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2417
    .line 2418
    const-string v15, "GPSDestLongitude"

    .line 2419
    .line 2420
    const/16 v3, 0x16

    .line 2421
    .line 2422
    move-object/from16 v71, v1

    .line 2423
    .line 2424
    const/4 v1, 0x5

    .line 2425
    invoke-direct {v9, v15, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2426
    .line 2427
    .line 2428
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2429
    .line 2430
    const-string v15, "GPSDestBearingRef"

    .line 2431
    .line 2432
    move-object/from16 v72, v9

    .line 2433
    .line 2434
    move/from16 v9, v81

    .line 2435
    .line 2436
    const/4 v1, 0x2

    .line 2437
    invoke-direct {v3, v15, v9, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2438
    .line 2439
    .line 2440
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2441
    .line 2442
    const-string v15, "GPSDestBearing"

    .line 2443
    .line 2444
    const/16 v1, 0x18

    .line 2445
    .line 2446
    move-object/from16 v73, v3

    .line 2447
    .line 2448
    const/4 v3, 0x5

    .line 2449
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2450
    .line 2451
    .line 2452
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2453
    .line 2454
    const-string v15, "GPSDestDistanceRef"

    .line 2455
    .line 2456
    const/16 v3, 0x19

    .line 2457
    .line 2458
    move-object/from16 v75, v9

    .line 2459
    .line 2460
    const/4 v9, 0x2

    .line 2461
    invoke-direct {v1, v15, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2462
    .line 2463
    .line 2464
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2465
    .line 2466
    const-string v9, "GPSDestDistance"

    .line 2467
    .line 2468
    move-object/from16 v76, v1

    .line 2469
    .line 2470
    move/from16 v1, v42

    .line 2471
    .line 2472
    const/4 v15, 0x5

    .line 2473
    invoke-direct {v3, v9, v1, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2474
    .line 2475
    .line 2476
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2477
    .line 2478
    const-string v9, "GPSProcessingMethod"

    .line 2479
    .line 2480
    const/16 v15, 0x1b

    .line 2481
    .line 2482
    move-object/from16 v78, v3

    .line 2483
    .line 2484
    const/4 v3, 0x7

    .line 2485
    invoke-direct {v1, v9, v15, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2486
    .line 2487
    .line 2488
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2489
    .line 2490
    const-string v15, "GPSAreaInformation"

    .line 2491
    .line 2492
    move-object/from16 v79, v1

    .line 2493
    .line 2494
    const/16 v1, 0x1c

    .line 2495
    .line 2496
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2497
    .line 2498
    .line 2499
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2500
    .line 2501
    const-string v3, "GPSDateStamp"

    .line 2502
    .line 2503
    const/16 v15, 0x1d

    .line 2504
    .line 2505
    move-object/from16 v80, v9

    .line 2506
    .line 2507
    const/4 v9, 0x2

    .line 2508
    invoke-direct {v1, v3, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2509
    .line 2510
    .line 2511
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2512
    .line 2513
    const-string v9, "GPSDifferential"

    .line 2514
    .line 2515
    const/16 v15, 0x1e

    .line 2516
    .line 2517
    move-object/from16 v82, v1

    .line 2518
    .line 2519
    const/4 v1, 0x3

    .line 2520
    invoke-direct {v3, v9, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2521
    .line 2522
    .line 2523
    new-instance v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2524
    .line 2525
    const-string v15, "GPSHPositioningError"

    .line 2526
    .line 2527
    move/from16 v37, v1

    .line 2528
    .line 2529
    const/16 v1, 0x1f

    .line 2530
    .line 2531
    move-object/from16 v83, v3

    .line 2532
    .line 2533
    const/4 v3, 0x5

    .line 2534
    invoke-direct {v9, v15, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2535
    .line 2536
    .line 2537
    const/16 v1, 0x20

    .line 2538
    .line 2539
    new-array v1, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2540
    .line 2541
    const/16 v16, 0x0

    .line 2542
    .line 2543
    aput-object v50, v1, v16

    .line 2544
    .line 2545
    const/16 v21, 0x1

    .line 2546
    .line 2547
    aput-object v51, v1, v21

    .line 2548
    .line 2549
    const/16 v27, 0x2

    .line 2550
    .line 2551
    aput-object v53, v1, v27

    .line 2552
    .line 2553
    aput-object v54, v1, v37

    .line 2554
    .line 2555
    const/16 v29, 0x4

    .line 2556
    .line 2557
    aput-object v55, v1, v29

    .line 2558
    .line 2559
    aput-object v56, v1, v3

    .line 2560
    .line 2561
    const/16 v24, 0x6

    .line 2562
    .line 2563
    aput-object v59, v1, v24

    .line 2564
    .line 2565
    const/16 v22, 0x7

    .line 2566
    .line 2567
    aput-object v57, v1, v22

    .line 2568
    .line 2569
    const/16 v19, 0x8

    .line 2570
    .line 2571
    aput-object v58, v1, v19

    .line 2572
    .line 2573
    const/16 v44, 0x9

    .line 2574
    .line 2575
    aput-object v14, v1, v44

    .line 2576
    .line 2577
    const/16 v17, 0xa

    .line 2578
    .line 2579
    aput-object v60, v1, v17

    .line 2580
    .line 2581
    const/16 v31, 0xb

    .line 2582
    .line 2583
    aput-object v61, v1, v31

    .line 2584
    .line 2585
    const/16 v32, 0xc

    .line 2586
    .line 2587
    aput-object v62, v1, v32

    .line 2588
    .line 2589
    const/16 v34, 0xd

    .line 2590
    .line 2591
    aput-object v63, v1, v34

    .line 2592
    .line 2593
    const/16 v18, 0xe

    .line 2594
    .line 2595
    aput-object v64, v1, v18

    .line 2596
    .line 2597
    const/16 v35, 0xf

    .line 2598
    .line 2599
    aput-object v65, v1, v35

    .line 2600
    .line 2601
    const/16 v38, 0x10

    .line 2602
    .line 2603
    aput-object v66, v1, v38

    .line 2604
    .line 2605
    const/16 v39, 0x11

    .line 2606
    .line 2607
    aput-object v67, v1, v39

    .line 2608
    .line 2609
    const/16 v41, 0x12

    .line 2610
    .line 2611
    aput-object v68, v1, v41

    .line 2612
    .line 2613
    const/16 v3, 0x13

    .line 2614
    .line 2615
    aput-object v69, v1, v3

    .line 2616
    .line 2617
    const/16 v3, 0x14

    .line 2618
    .line 2619
    aput-object v70, v1, v3

    .line 2620
    .line 2621
    const/16 v3, 0x15

    .line 2622
    .line 2623
    aput-object v71, v1, v3

    .line 2624
    .line 2625
    const/16 v3, 0x16

    .line 2626
    .line 2627
    aput-object v72, v1, v3

    .line 2628
    .line 2629
    const/16 v81, 0x17

    .line 2630
    .line 2631
    aput-object v73, v1, v81

    .line 2632
    .line 2633
    const/16 v3, 0x18

    .line 2634
    .line 2635
    aput-object v75, v1, v3

    .line 2636
    .line 2637
    const/16 v3, 0x19

    .line 2638
    .line 2639
    aput-object v76, v1, v3

    .line 2640
    .line 2641
    const/16 v42, 0x1a

    .line 2642
    .line 2643
    aput-object v78, v1, v42

    .line 2644
    .line 2645
    const/16 v3, 0x1b

    .line 2646
    .line 2647
    aput-object v79, v1, v3

    .line 2648
    .line 2649
    const/16 v3, 0x1c

    .line 2650
    .line 2651
    aput-object v80, v1, v3

    .line 2652
    .line 2653
    const/16 v3, 0x1d

    .line 2654
    .line 2655
    aput-object v82, v1, v3

    .line 2656
    .line 2657
    const/16 v3, 0x1e

    .line 2658
    .line 2659
    aput-object v83, v1, v3

    .line 2660
    .line 2661
    const/16 v3, 0x1f

    .line 2662
    .line 2663
    aput-object v9, v1, v3

    .line 2664
    .line 2665
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2666
    .line 2667
    const-string v9, "InteroperabilityIndex"

    .line 2668
    .line 2669
    const/4 v14, 0x1

    .line 2670
    const/4 v15, 0x2

    .line 2671
    invoke-direct {v3, v9, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2672
    .line 2673
    .line 2674
    new-array v9, v14, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2675
    .line 2676
    const/16 v16, 0x0

    .line 2677
    .line 2678
    aput-object v3, v9, v16

    .line 2679
    .line 2680
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2681
    .line 2682
    const/4 v14, 0x4

    .line 2683
    const/16 v15, 0xfe

    .line 2684
    .line 2685
    invoke-direct {v3, v10, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2686
    .line 2687
    .line 2688
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2689
    .line 2690
    const/16 v15, 0xff

    .line 2691
    .line 2692
    invoke-direct {v10, v2, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2693
    .line 2694
    .line 2695
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2696
    .line 2697
    const-string v15, "ThumbnailImageWidth"

    .line 2698
    .line 2699
    move-object/from16 v20, v1

    .line 2700
    .line 2701
    move-object/from16 v23, v3

    .line 2702
    .line 2703
    const/4 v1, 0x3

    .line 2704
    const/16 v3, 0x100

    .line 2705
    .line 2706
    invoke-direct {v2, v15, v3, v1, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2707
    .line 2708
    .line 2709
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2710
    .line 2711
    const-string v15, "ThumbnailImageLength"

    .line 2712
    .line 2713
    move-object/from16 v50, v2

    .line 2714
    .line 2715
    const/16 v2, 0x101

    .line 2716
    .line 2717
    invoke-direct {v3, v15, v2, v1, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2718
    .line 2719
    .line 2720
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2721
    .line 2722
    const/16 v14, 0x102

    .line 2723
    .line 2724
    invoke-direct {v2, v5, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2725
    .line 2726
    .line 2727
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2728
    .line 2729
    const/16 v14, 0x103

    .line 2730
    .line 2731
    invoke-direct {v5, v4, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2732
    .line 2733
    .line 2734
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2735
    .line 2736
    const/16 v14, 0x106

    .line 2737
    .line 2738
    invoke-direct {v4, v8, v14, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2739
    .line 2740
    .line 2741
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2742
    .line 2743
    const/4 v14, 0x2

    .line 2744
    const/16 v15, 0x10e

    .line 2745
    .line 2746
    invoke-direct {v8, v0, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2747
    .line 2748
    .line 2749
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2750
    .line 2751
    const/16 v15, 0x10f

    .line 2752
    .line 2753
    invoke-direct {v0, v11, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2754
    .line 2755
    .line 2756
    new-instance v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2757
    .line 2758
    const/16 v15, 0x110

    .line 2759
    .line 2760
    invoke-direct {v11, v7, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2761
    .line 2762
    .line 2763
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2764
    .line 2765
    const/4 v14, 0x4

    .line 2766
    const/16 v15, 0x111

    .line 2767
    .line 2768
    invoke-direct {v7, v13, v15, v1, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2769
    .line 2770
    .line 2771
    new-instance v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2772
    .line 2773
    const-string v15, "ThumbnailOrientation"

    .line 2774
    .line 2775
    move-object/from16 v33, v0

    .line 2776
    .line 2777
    const/16 v0, 0x112

    .line 2778
    .line 2779
    invoke-direct {v14, v15, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2780
    .line 2781
    .line 2782
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2783
    .line 2784
    const-string v15, "SamplesPerPixel"

    .line 2785
    .line 2786
    move-object/from16 v36, v2

    .line 2787
    .line 2788
    const/16 v2, 0x115

    .line 2789
    .line 2790
    invoke-direct {v0, v15, v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2791
    .line 2792
    .line 2793
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2794
    .line 2795
    const-string v15, "RowsPerStrip"

    .line 2796
    .line 2797
    move-object/from16 v40, v0

    .line 2798
    .line 2799
    const/16 v0, 0x116

    .line 2800
    .line 2801
    move-object/from16 v43, v3

    .line 2802
    .line 2803
    const/4 v3, 0x4

    .line 2804
    invoke-direct {v2, v15, v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2805
    .line 2806
    .line 2807
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2808
    .line 2809
    const-string v15, "StripByteCounts"

    .line 2810
    .line 2811
    move-object/from16 v51, v2

    .line 2812
    .line 2813
    const/16 v2, 0x117

    .line 2814
    .line 2815
    invoke-direct {v0, v15, v2, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 2816
    .line 2817
    .line 2818
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2819
    .line 2820
    const-string v2, "XResolution"

    .line 2821
    .line 2822
    const/16 v3, 0x11a

    .line 2823
    .line 2824
    const/4 v15, 0x5

    .line 2825
    invoke-direct {v1, v2, v3, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2826
    .line 2827
    .line 2828
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2829
    .line 2830
    const-string v3, "YResolution"

    .line 2831
    .line 2832
    move-object/from16 v53, v0

    .line 2833
    .line 2834
    const/16 v0, 0x11b

    .line 2835
    .line 2836
    invoke-direct {v2, v3, v0, v15}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2837
    .line 2838
    .line 2839
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2840
    .line 2841
    const-string v3, "PlanarConfiguration"

    .line 2842
    .line 2843
    const/16 v15, 0x11c

    .line 2844
    .line 2845
    move-object/from16 v54, v1

    .line 2846
    .line 2847
    const/4 v1, 0x3

    .line 2848
    invoke-direct {v0, v3, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2849
    .line 2850
    .line 2851
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2852
    .line 2853
    const-string v15, "ResolutionUnit"

    .line 2854
    .line 2855
    move-object/from16 v55, v0

    .line 2856
    .line 2857
    const/16 v0, 0x128

    .line 2858
    .line 2859
    invoke-direct {v3, v15, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2860
    .line 2861
    .line 2862
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2863
    .line 2864
    const-string v15, "TransferFunction"

    .line 2865
    .line 2866
    move-object/from16 v56, v2

    .line 2867
    .line 2868
    const/16 v2, 0x12d

    .line 2869
    .line 2870
    invoke-direct {v0, v15, v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2871
    .line 2872
    .line 2873
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2874
    .line 2875
    const-string v2, "Software"

    .line 2876
    .line 2877
    const/16 v15, 0x131

    .line 2878
    .line 2879
    move-object/from16 v57, v0

    .line 2880
    .line 2881
    const/4 v0, 0x2

    .line 2882
    invoke-direct {v1, v2, v15, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2883
    .line 2884
    .line 2885
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2886
    .line 2887
    const-string v15, "DateTime"

    .line 2888
    .line 2889
    move-object/from16 v58, v1

    .line 2890
    .line 2891
    const/16 v1, 0x132

    .line 2892
    .line 2893
    invoke-direct {v2, v15, v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2894
    .line 2895
    .line 2896
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2897
    .line 2898
    const-string v15, "Artist"

    .line 2899
    .line 2900
    move-object/from16 v59, v2

    .line 2901
    .line 2902
    const/16 v2, 0x13b

    .line 2903
    .line 2904
    invoke-direct {v1, v15, v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2905
    .line 2906
    .line 2907
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2908
    .line 2909
    const-string v2, "WhitePoint"

    .line 2910
    .line 2911
    const/16 v15, 0x13e

    .line 2912
    .line 2913
    move-object/from16 v60, v1

    .line 2914
    .line 2915
    const/4 v1, 0x5

    .line 2916
    invoke-direct {v0, v2, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2917
    .line 2918
    .line 2919
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2920
    .line 2921
    const-string v15, "PrimaryChromaticities"

    .line 2922
    .line 2923
    move-object/from16 v61, v0

    .line 2924
    .line 2925
    const/16 v0, 0x13f

    .line 2926
    .line 2927
    invoke-direct {v2, v15, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2928
    .line 2929
    .line 2930
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2931
    .line 2932
    const/4 v1, 0x4

    .line 2933
    const/16 v15, 0x14a

    .line 2934
    .line 2935
    invoke-direct {v0, v6, v15, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2936
    .line 2937
    .line 2938
    new-instance v15, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2939
    .line 2940
    move-object/from16 v62, v0

    .line 2941
    .line 2942
    const-string v0, "JPEGInterchangeFormat"

    .line 2943
    .line 2944
    move-object/from16 v63, v2

    .line 2945
    .line 2946
    const/16 v2, 0x201

    .line 2947
    .line 2948
    invoke-direct {v15, v0, v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2949
    .line 2950
    .line 2951
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2952
    .line 2953
    const-string v2, "JPEGInterchangeFormatLength"

    .line 2954
    .line 2955
    move-object/from16 v64, v3

    .line 2956
    .line 2957
    const/16 v3, 0x202

    .line 2958
    .line 2959
    invoke-direct {v0, v2, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2960
    .line 2961
    .line 2962
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2963
    .line 2964
    const-string v2, "YCbCrCoefficients"

    .line 2965
    .line 2966
    const/16 v3, 0x211

    .line 2967
    .line 2968
    move-object/from16 v65, v0

    .line 2969
    .line 2970
    const/4 v0, 0x5

    .line 2971
    invoke-direct {v1, v2, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2972
    .line 2973
    .line 2974
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2975
    .line 2976
    const-string v2, "YCbCrSubSampling"

    .line 2977
    .line 2978
    const/16 v3, 0x212

    .line 2979
    .line 2980
    move-object/from16 v66, v1

    .line 2981
    .line 2982
    const/4 v1, 0x3

    .line 2983
    invoke-direct {v0, v2, v3, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2984
    .line 2985
    .line 2986
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2987
    .line 2988
    const-string v3, "YCbCrPositioning"

    .line 2989
    .line 2990
    move-object/from16 v67, v0

    .line 2991
    .line 2992
    const/16 v0, 0x213

    .line 2993
    .line 2994
    invoke-direct {v2, v3, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 2995
    .line 2996
    .line 2997
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 2998
    .line 2999
    const-string v1, "ReferenceBlackWhite"

    .line 3000
    .line 3001
    const/16 v3, 0x214

    .line 3002
    .line 3003
    move-object/from16 v68, v2

    .line 3004
    .line 3005
    const/4 v2, 0x5

    .line 3006
    invoke-direct {v0, v1, v3, v2}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3007
    .line 3008
    .line 3009
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3010
    .line 3011
    const-string v2, "Copyright"

    .line 3012
    .line 3013
    const v3, 0x8298

    .line 3014
    .line 3015
    .line 3016
    move-object/from16 v69, v0

    .line 3017
    .line 3018
    const/4 v0, 0x2

    .line 3019
    invoke-direct {v1, v2, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3020
    .line 3021
    .line 3022
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3023
    .line 3024
    const v2, 0x8769

    .line 3025
    .line 3026
    .line 3027
    const/4 v3, 0x4

    .line 3028
    invoke-direct {v0, v12, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3029
    .line 3030
    .line 3031
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3032
    .line 3033
    move-object/from16 v70, v0

    .line 3034
    .line 3035
    move-object/from16 v71, v1

    .line 3036
    .line 3037
    move-object/from16 v0, v91

    .line 3038
    .line 3039
    const v1, 0x8825

    .line 3040
    .line 3041
    .line 3042
    invoke-direct {v2, v0, v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3043
    .line 3044
    .line 3045
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3046
    .line 3047
    const-string v3, "DNGVersion"

    .line 3048
    .line 3049
    move-object/from16 v72, v2

    .line 3050
    .line 3051
    const v2, 0xc612

    .line 3052
    .line 3053
    .line 3054
    move-object/from16 v73, v4

    .line 3055
    .line 3056
    const/4 v4, 0x1

    .line 3057
    invoke-direct {v1, v3, v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3058
    .line 3059
    .line 3060
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3061
    .line 3062
    const-string v3, "DefaultCropSize"

    .line 3063
    .line 3064
    move/from16 v21, v4

    .line 3065
    .line 3066
    const v4, 0xc620

    .line 3067
    .line 3068
    .line 3069
    move-object/from16 v75, v1

    .line 3070
    .line 3071
    move-object/from16 v76, v5

    .line 3072
    .line 3073
    const/4 v1, 0x3

    .line 3074
    const/4 v5, 0x4

    .line 3075
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    .line 3076
    .line 3077
    .line 3078
    const/16 v3, 0x25

    .line 3079
    .line 3080
    new-array v3, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3081
    .line 3082
    const/16 v16, 0x0

    .line 3083
    .line 3084
    aput-object v23, v3, v16

    .line 3085
    .line 3086
    aput-object v10, v3, v21

    .line 3087
    .line 3088
    const/16 v27, 0x2

    .line 3089
    .line 3090
    aput-object v50, v3, v27

    .line 3091
    .line 3092
    aput-object v43, v3, v1

    .line 3093
    .line 3094
    aput-object v36, v3, v5

    .line 3095
    .line 3096
    const/16 v25, 0x5

    .line 3097
    .line 3098
    aput-object v76, v3, v25

    .line 3099
    .line 3100
    const/16 v24, 0x6

    .line 3101
    .line 3102
    aput-object v73, v3, v24

    .line 3103
    .line 3104
    const/16 v22, 0x7

    .line 3105
    .line 3106
    aput-object v8, v3, v22

    .line 3107
    .line 3108
    const/16 v19, 0x8

    .line 3109
    .line 3110
    aput-object v33, v3, v19

    .line 3111
    .line 3112
    const/16 v44, 0x9

    .line 3113
    .line 3114
    aput-object v11, v3, v44

    .line 3115
    .line 3116
    const/16 v17, 0xa

    .line 3117
    .line 3118
    aput-object v7, v3, v17

    .line 3119
    .line 3120
    const/16 v31, 0xb

    .line 3121
    .line 3122
    aput-object v14, v3, v31

    .line 3123
    .line 3124
    const/16 v32, 0xc

    .line 3125
    .line 3126
    aput-object v40, v3, v32

    .line 3127
    .line 3128
    const/16 v34, 0xd

    .line 3129
    .line 3130
    aput-object v51, v3, v34

    .line 3131
    .line 3132
    const/16 v18, 0xe

    .line 3133
    .line 3134
    aput-object v53, v3, v18

    .line 3135
    .line 3136
    const/16 v35, 0xf

    .line 3137
    .line 3138
    aput-object v54, v3, v35

    .line 3139
    .line 3140
    const/16 v38, 0x10

    .line 3141
    .line 3142
    aput-object v56, v3, v38

    .line 3143
    .line 3144
    const/16 v39, 0x11

    .line 3145
    .line 3146
    aput-object v55, v3, v39

    .line 3147
    .line 3148
    const/16 v41, 0x12

    .line 3149
    .line 3150
    aput-object v64, v3, v41

    .line 3151
    .line 3152
    const/16 v1, 0x13

    .line 3153
    .line 3154
    aput-object v57, v3, v1

    .line 3155
    .line 3156
    const/16 v1, 0x14

    .line 3157
    .line 3158
    aput-object v58, v3, v1

    .line 3159
    .line 3160
    const/16 v1, 0x15

    .line 3161
    .line 3162
    aput-object v59, v3, v1

    .line 3163
    .line 3164
    const/16 v1, 0x16

    .line 3165
    .line 3166
    aput-object v60, v3, v1

    .line 3167
    .line 3168
    const/16 v81, 0x17

    .line 3169
    .line 3170
    aput-object v61, v3, v81

    .line 3171
    .line 3172
    const/16 v1, 0x18

    .line 3173
    .line 3174
    aput-object v63, v3, v1

    .line 3175
    .line 3176
    const/16 v1, 0x19

    .line 3177
    .line 3178
    aput-object v62, v3, v1

    .line 3179
    .line 3180
    const/16 v42, 0x1a

    .line 3181
    .line 3182
    aput-object v15, v3, v42

    .line 3183
    .line 3184
    const/16 v1, 0x1b

    .line 3185
    .line 3186
    aput-object v65, v3, v1

    .line 3187
    .line 3188
    const/16 v1, 0x1c

    .line 3189
    .line 3190
    aput-object v66, v3, v1

    .line 3191
    .line 3192
    const/16 v1, 0x1d

    .line 3193
    .line 3194
    aput-object v67, v3, v1

    .line 3195
    .line 3196
    const/16 v1, 0x1e

    .line 3197
    .line 3198
    aput-object v68, v3, v1

    .line 3199
    .line 3200
    const/16 v1, 0x1f

    .line 3201
    .line 3202
    aput-object v69, v3, v1

    .line 3203
    .line 3204
    const/16 v1, 0x20

    .line 3205
    .line 3206
    aput-object v71, v3, v1

    .line 3207
    .line 3208
    const/16 v1, 0x21

    .line 3209
    .line 3210
    aput-object v70, v3, v1

    .line 3211
    .line 3212
    const/16 v1, 0x22

    .line 3213
    .line 3214
    aput-object v72, v3, v1

    .line 3215
    .line 3216
    const/16 v1, 0x23

    .line 3217
    .line 3218
    aput-object v75, v3, v1

    .line 3219
    .line 3220
    const/16 v1, 0x24

    .line 3221
    .line 3222
    aput-object v2, v3, v1

    .line 3223
    .line 3224
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3225
    .line 3226
    const/4 v14, 0x3

    .line 3227
    const/16 v15, 0x111

    .line 3228
    .line 3229
    invoke-direct {v1, v13, v15, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3230
    .line 3231
    .line 3232
    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->J:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3233
    .line 3234
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3235
    .line 3236
    const-string v2, "ThumbnailImage"

    .line 3237
    .line 3238
    const/16 v4, 0x100

    .line 3239
    .line 3240
    const/4 v14, 0x7

    .line 3241
    invoke-direct {v1, v2, v4, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3242
    .line 3243
    .line 3244
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3245
    .line 3246
    const-string v4, "CameraSettingsIFDPointer"

    .line 3247
    .line 3248
    const/16 v5, 0x2020

    .line 3249
    .line 3250
    const/4 v14, 0x4

    .line 3251
    invoke-direct {v2, v4, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3252
    .line 3253
    .line 3254
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3255
    .line 3256
    const-string v5, "ImageProcessingIFDPointer"

    .line 3257
    .line 3258
    const/16 v7, 0x2040

    .line 3259
    .line 3260
    invoke-direct {v4, v5, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3261
    .line 3262
    .line 3263
    const/4 v5, 0x3

    .line 3264
    new-array v7, v5, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3265
    .line 3266
    const/16 v16, 0x0

    .line 3267
    .line 3268
    aput-object v1, v7, v16

    .line 3269
    .line 3270
    const/4 v1, 0x1

    .line 3271
    aput-object v2, v7, v1

    .line 3272
    .line 3273
    const/4 v13, 0x2

    .line 3274
    aput-object v4, v7, v13

    .line 3275
    .line 3276
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3277
    .line 3278
    const-string v4, "PreviewImageStart"

    .line 3279
    .line 3280
    const/16 v5, 0x101

    .line 3281
    .line 3282
    invoke-direct {v2, v4, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3283
    .line 3284
    .line 3285
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3286
    .line 3287
    const-string v5, "PreviewImageLength"

    .line 3288
    .line 3289
    const/16 v8, 0x102

    .line 3290
    .line 3291
    invoke-direct {v4, v5, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3292
    .line 3293
    .line 3294
    new-array v5, v13, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3295
    .line 3296
    aput-object v2, v5, v16

    .line 3297
    .line 3298
    aput-object v4, v5, v1

    .line 3299
    .line 3300
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3301
    .line 3302
    const-string v4, "AspectFrame"

    .line 3303
    .line 3304
    const/16 v8, 0x1113

    .line 3305
    .line 3306
    const/4 v14, 0x3

    .line 3307
    invoke-direct {v2, v4, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3308
    .line 3309
    .line 3310
    new-array v4, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3311
    .line 3312
    aput-object v2, v4, v16

    .line 3313
    .line 3314
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3315
    .line 3316
    const-string v8, "ColorSpace"

    .line 3317
    .line 3318
    const/16 v10, 0x37

    .line 3319
    .line 3320
    invoke-direct {v2, v8, v10, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3321
    .line 3322
    .line 3323
    new-array v8, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3324
    .line 3325
    aput-object v2, v8, v16

    .line 3326
    .line 3327
    const/16 v15, 0xa

    .line 3328
    .line 3329
    new-array v2, v15, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3330
    .line 3331
    aput-object v46, v2, v16

    .line 3332
    .line 3333
    aput-object v49, v2, v1

    .line 3334
    .line 3335
    const/16 v27, 0x2

    .line 3336
    .line 3337
    aput-object v20, v2, v27

    .line 3338
    .line 3339
    aput-object v9, v2, v14

    .line 3340
    .line 3341
    const/4 v9, 0x4

    .line 3342
    aput-object v3, v2, v9

    .line 3343
    .line 3344
    const/16 v25, 0x5

    .line 3345
    .line 3346
    aput-object v46, v2, v25

    .line 3347
    .line 3348
    const/16 v24, 0x6

    .line 3349
    .line 3350
    aput-object v7, v2, v24

    .line 3351
    .line 3352
    const/16 v22, 0x7

    .line 3353
    .line 3354
    aput-object v5, v2, v22

    .line 3355
    .line 3356
    const/16 v19, 0x8

    .line 3357
    .line 3358
    aput-object v4, v2, v19

    .line 3359
    .line 3360
    const/16 v44, 0x9

    .line 3361
    .line 3362
    aput-object v8, v2, v44

    .line 3363
    .line 3364
    sput-object v2, Landroidx/exifinterface/media/ExifInterface;->K:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3365
    .line 3366
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3367
    .line 3368
    const/16 v15, 0x14a

    .line 3369
    .line 3370
    invoke-direct {v1, v6, v15, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3371
    .line 3372
    .line 3373
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3374
    .line 3375
    const v3, 0x8769

    .line 3376
    .line 3377
    .line 3378
    invoke-direct {v2, v12, v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3379
    .line 3380
    .line 3381
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3382
    .line 3383
    const v4, 0x8825

    .line 3384
    .line 3385
    .line 3386
    invoke-direct {v3, v0, v4, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3387
    .line 3388
    .line 3389
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3390
    .line 3391
    const-string v4, "InteroperabilityIFDPointer"

    .line 3392
    .line 3393
    const v5, 0xa005

    .line 3394
    .line 3395
    .line 3396
    invoke-direct {v0, v4, v5, v9}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3397
    .line 3398
    .line 3399
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3400
    .line 3401
    const-string v5, "CameraSettingsIFDPointer"

    .line 3402
    .line 3403
    const/16 v6, 0x2020

    .line 3404
    .line 3405
    const/4 v14, 0x1

    .line 3406
    invoke-direct {v4, v5, v6, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3407
    .line 3408
    .line 3409
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3410
    .line 3411
    const-string v6, "ImageProcessingIFDPointer"

    .line 3412
    .line 3413
    const/16 v7, 0x2040

    .line 3414
    .line 3415
    invoke-direct {v5, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    .line 3416
    .line 3417
    .line 3418
    const/4 v6, 0x6

    .line 3419
    new-array v6, v6, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3420
    .line 3421
    const/16 v16, 0x0

    .line 3422
    .line 3423
    aput-object v1, v6, v16

    .line 3424
    .line 3425
    aput-object v2, v6, v14

    .line 3426
    .line 3427
    const/16 v27, 0x2

    .line 3428
    .line 3429
    aput-object v3, v6, v27

    .line 3430
    .line 3431
    const/16 v37, 0x3

    .line 3432
    .line 3433
    aput-object v0, v6, v37

    .line 3434
    .line 3435
    const/16 v29, 0x4

    .line 3436
    .line 3437
    aput-object v4, v6, v29

    .line 3438
    .line 3439
    const/16 v25, 0x5

    .line 3440
    .line 3441
    aput-object v5, v6, v25

    .line 3442
    .line 3443
    sput-object v6, Landroidx/exifinterface/media/ExifInterface;->L:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3444
    .line 3445
    const/16 v9, 0xa

    .line 3446
    .line 3447
    new-array v0, v9, [Ljava/util/HashMap;

    .line 3448
    .line 3449
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->M:[Ljava/util/HashMap;

    .line 3450
    .line 3451
    new-array v0, v9, [Ljava/util/HashMap;

    .line 3452
    .line 3453
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->N:[Ljava/util/HashMap;

    .line 3454
    .line 3455
    new-instance v0, Ljava/util/HashSet;

    .line 3456
    .line 3457
    const-string v1, "ExposureTime"

    .line 3458
    .line 3459
    const-string v2, "SubjectDistance"

    .line 3460
    .line 3461
    const-string v3, "FNumber"

    .line 3462
    .line 3463
    const-string v4, "DigitalZoomRatio"

    .line 3464
    .line 3465
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 3466
    .line 3467
    .line 3468
    move-result-object v1

    .line 3469
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 3470
    .line 3471
    .line 3472
    move-result-object v1

    .line 3473
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3474
    .line 3475
    .line 3476
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 3477
    .line 3478
    .line 3479
    move-result-object v0

    .line 3480
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->O:Ljava/util/Set;

    .line 3481
    .line 3482
    new-instance v0, Ljava/util/HashMap;

    .line 3483
    .line 3484
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3485
    .line 3486
    .line 3487
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->P:Ljava/util/HashMap;

    .line 3488
    .line 3489
    const-string v0, "US-ASCII"

    .line 3490
    .line 3491
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 3492
    .line 3493
    .line 3494
    move-result-object v0

    .line 3495
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->Q:Ljava/nio/charset/Charset;

    .line 3496
    .line 3497
    const-string v1, "Exif\u0000\u0000"

    .line 3498
    .line 3499
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 3500
    .line 3501
    .line 3502
    move-result-object v1

    .line 3503
    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->R:[B

    .line 3504
    .line 3505
    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    .line 3506
    .line 3507
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 3508
    .line 3509
    .line 3510
    move-result-object v0

    .line 3511
    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->S:[B

    .line 3512
    .line 3513
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3514
    .line 3515
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3516
    .line 3517
    const-string v2, "yyyy:MM:dd HH:mm:ss"

    .line 3518
    .line 3519
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3520
    .line 3521
    .line 3522
    const-string v2, "UTC"

    .line 3523
    .line 3524
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 3525
    .line 3526
    .line 3527
    move-result-object v2

    .line 3528
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3529
    .line 3530
    .line 3531
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3532
    .line 3533
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 3534
    .line 3535
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3536
    .line 3537
    .line 3538
    const-string v1, "UTC"

    .line 3539
    .line 3540
    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 3541
    .line 3542
    .line 3543
    move-result-object v1

    .line 3544
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3545
    .line 3546
    .line 3547
    const/4 v15, 0x0

    .line 3548
    :goto_0
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->K:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3549
    .line 3550
    array-length v1, v0

    .line 3551
    if-ge v15, v1, :cond_1

    .line 3552
    .line 3553
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->M:[Ljava/util/HashMap;

    .line 3554
    .line 3555
    new-instance v2, Ljava/util/HashMap;

    .line 3556
    .line 3557
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3558
    .line 3559
    .line 3560
    aput-object v2, v1, v15

    .line 3561
    .line 3562
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->N:[Ljava/util/HashMap;

    .line 3563
    .line 3564
    new-instance v2, Ljava/util/HashMap;

    .line 3565
    .line 3566
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3567
    .line 3568
    .line 3569
    aput-object v2, v1, v15

    .line 3570
    .line 3571
    aget-object v0, v0, v15

    .line 3572
    .line 3573
    array-length v1, v0

    .line 3574
    const/4 v2, 0x0

    .line 3575
    :goto_1
    if-ge v2, v1, :cond_0

    .line 3576
    .line 3577
    aget-object v3, v0, v2

    .line 3578
    .line 3579
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->M:[Ljava/util/HashMap;

    .line 3580
    .line 3581
    aget-object v4, v4, v15

    .line 3582
    .line 3583
    iget v5, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 3584
    .line 3585
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3586
    .line 3587
    .line 3588
    move-result-object v5

    .line 3589
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3590
    .line 3591
    .line 3592
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->N:[Ljava/util/HashMap;

    .line 3593
    .line 3594
    aget-object v4, v4, v15

    .line 3595
    .line 3596
    iget-object v5, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->b:Ljava/lang/String;

    .line 3597
    .line 3598
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3599
    .line 3600
    .line 3601
    add-int/lit8 v2, v2, 0x1

    .line 3602
    .line 3603
    goto :goto_1

    .line 3604
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 3605
    .line 3606
    goto :goto_0

    .line 3607
    :cond_1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->P:Ljava/util/HashMap;

    .line 3608
    .line 3609
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->L:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3610
    .line 3611
    const/16 v16, 0x0

    .line 3612
    .line 3613
    aget-object v2, v1, v16

    .line 3614
    .line 3615
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 3616
    .line 3617
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3618
    .line 3619
    .line 3620
    move-result-object v2

    .line 3621
    move-object/from16 v3, v77

    .line 3622
    .line 3623
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3624
    .line 3625
    .line 3626
    const/16 v21, 0x1

    .line 3627
    .line 3628
    aget-object v2, v1, v21

    .line 3629
    .line 3630
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 3631
    .line 3632
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3633
    .line 3634
    .line 3635
    move-result-object v2

    .line 3636
    move-object/from16 v3, v74

    .line 3637
    .line 3638
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3639
    .line 3640
    .line 3641
    const/16 v27, 0x2

    .line 3642
    .line 3643
    aget-object v2, v1, v27

    .line 3644
    .line 3645
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 3646
    .line 3647
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3648
    .line 3649
    .line 3650
    move-result-object v2

    .line 3651
    move-object/from16 v3, v52

    .line 3652
    .line 3653
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3654
    .line 3655
    .line 3656
    const/16 v37, 0x3

    .line 3657
    .line 3658
    aget-object v2, v1, v37

    .line 3659
    .line 3660
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 3661
    .line 3662
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3663
    .line 3664
    .line 3665
    move-result-object v2

    .line 3666
    move-object/from16 v3, v48

    .line 3667
    .line 3668
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3669
    .line 3670
    .line 3671
    const/16 v29, 0x4

    .line 3672
    .line 3673
    aget-object v2, v1, v29

    .line 3674
    .line 3675
    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 3676
    .line 3677
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3678
    .line 3679
    .line 3680
    move-result-object v2

    .line 3681
    move-object/from16 v3, v47

    .line 3682
    .line 3683
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3684
    .line 3685
    .line 3686
    const/16 v25, 0x5

    .line 3687
    .line 3688
    aget-object v1, v1, v25

    .line 3689
    .line 3690
    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 3691
    .line 3692
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3693
    .line 3694
    .line 3695
    move-result-object v1

    .line 3696
    move-object/from16 v2, v45

    .line 3697
    .line 3698
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3699
    .line 3700
    .line 3701
    const-string v0, ".*[1-9].*"

    .line 3702
    .line 3703
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3704
    .line 3705
    .line 3706
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3707
    .line 3708
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3709
    .line 3710
    .line 3711
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3712
    .line 3713
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3714
    .line 3715
    .line 3716
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    .line 3717
    .line 3718
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 3719
    .line 3720
    .line 3721
    return-void

    .line 3722
    nop

    .line 3723
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    .line 3724
    .line 3725
    .line 3726
    .line 3727
    .line 3728
    .line 3729
    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    .line 3730
    .line 3731
    .line 3732
    .line 3733
    .line 3734
    .line 3735
    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    .line 3736
    .line 3737
    .line 3738
    .line 3739
    .line 3740
    .line 3741
    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    .line 3742
    .line 3743
    .line 3744
    .line 3745
    .line 3746
    .line 3747
    :array_4
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    .line 3748
    .line 3749
    .line 3750
    .line 3751
    .line 3752
    .line 3753
    :array_5
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    .line 3754
    .line 3755
    .line 3756
    .line 3757
    .line 3758
    .line 3759
    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    .line 3760
    .line 3761
    .line 3762
    .line 3763
    .line 3764
    .line 3765
    .line 3766
    nop

    .line 3767
    :array_7
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    .line 3768
    .line 3769
    .line 3770
    .line 3771
    .line 3772
    .line 3773
    .line 3774
    .line 3775
    .line 3776
    nop

    :array_8
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_a
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_b
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->K:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 23
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->g:Ljava/util/HashSet;

    .line 24
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Landroidx/exifinterface/media/ExifInterface;->e:Z

    .line 27
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    .line 28
    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 29
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->b:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 30
    :cond_0
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    .line 31
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 32
    :try_start_0
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 34
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->b:Ljava/io/FileDescriptor;

    goto :goto_0

    .line 35
    :catch_0
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->o:Z

    if-eqz v1, :cond_1

    .line 36
    const-string v1, "ExifInterface"

    const-string v2, "The file descriptor for the given input is not seekable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 38
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->b:Ljava/io/FileDescriptor;

    .line 39
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->q(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->K:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->g:Ljava/util/HashSet;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 6
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->a:Ljava/lang/String;

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    .line 10
    :catch_0
    :try_start_3
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->o:Z

    if-eqz p1, :cond_0

    .line 11
    const-string p1, "ExifInterface"

    const-string v2, "The file descriptor for the given input is not seekable"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->b:Ljava/io/FileDescriptor;

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    .line 13
    :cond_1
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->b:Ljava/io/FileDescriptor;

    .line 14
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->q(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :try_start_4
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :catch_2
    move-exception p1

    .line 16
    throw p1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_2

    .line 17
    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_3
    move-exception p1

    .line 18
    throw p1

    .line 19
    :catch_4
    :cond_2
    :goto_3
    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "filename cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static t(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x4949

    .line 6
    .line 7
    const-string v1, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4d4d

    .line 14
    .line 15
    if-ne p0, v0, :cond_1

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string p0, "readExifSegment: Byte Align MM"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Invalid byte order: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const-string p0, "readExifSegment: Byte Align II"

    .line 54
    .line 55
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 59
    .line 60
    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->y(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-virtual {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->y(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->y(II)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    aget-object v5, v3, v4

    .line 17
    .line 18
    const-string v6, "PixelXDimension"

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 25
    .line 26
    aget-object v4, v3, v4

    .line 27
    .line 28
    const-string v6, "PixelYDimension"

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 35
    .line 36
    const-string v6, "ImageLength"

    .line 37
    .line 38
    const-string v7, "ImageWidth"

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    aget-object v8, v3, v0

    .line 45
    .line 46
    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    aget-object v5, v3, v0

    .line 50
    .line 51
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_0
    aget-object v4, v3, v2

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    aget-object v4, v3, v1

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Landroidx/exifinterface/media/ExifInterface;->p(Ljava/util/HashMap;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_1

    .line 69
    .line 70
    aget-object v4, v3, v1

    .line 71
    .line 72
    aput-object v4, v3, v2

    .line 73
    .line 74
    new-instance v4, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    aput-object v4, v3, v1

    .line 80
    .line 81
    :cond_1
    aget-object v3, v3, v2

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->p(Ljava/util/HashMap;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_2

    .line 88
    .line 89
    const-string v3, "ExifInterface"

    .line 90
    .line 91
    const-string v4, "No image meets the size requirements of a thumbnail image."

    .line 92
    .line 93
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v3, "ThumbnailOrientation"

    .line 97
    .line 98
    const-string v4, "Orientation"

    .line 99
    .line 100
    invoke-virtual {p0, v0, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->w(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v5, "ThumbnailImageLength"

    .line 104
    .line 105
    invoke-virtual {p0, v0, v5, v6}, Landroidx/exifinterface/media/ExifInterface;->w(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v8, "ThumbnailImageWidth"

    .line 109
    .line 110
    invoke-virtual {p0, v0, v8, v7}, Landroidx/exifinterface/media/ExifInterface;->w(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->w(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v1, v5, v6}, Landroidx/exifinterface/media/ExifInterface;->w(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v1, v8, v7}, Landroidx/exifinterface/media/ExifInterface;->w(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->w(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2, v6, v5}, Landroidx/exifinterface/media/ExifInterface;->w(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v2, v7, v8}, Landroidx/exifinterface/media/ExifInterface;->w(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final a()V
    .locals 8

    .line 1
    const-string v0, "DateTimeOriginal"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v3, "DateTime"

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    aget-object v4, v2, v1

    .line 21
    .line 22
    const-string v5, "\u0000"

    .line 23
    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->Q:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 35
    .line 36
    const/4 v6, 0x2

    .line 37
    array-length v7, v0

    .line 38
    invoke-direct {v5, v0, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_0
    const-string v0, "ImageWidth"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    aget-object v3, v2, v1

    .line 55
    .line 56
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 57
    .line 58
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_1
    const-string v0, "ImageLength"

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_2

    .line 72
    .line 73
    aget-object v3, v2, v1

    .line 74
    .line 75
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 76
    .line 77
    invoke-static {v4, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v3, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_2
    const-string v0, "Orientation"

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    aget-object v1, v2, v1

    .line 93
    .line 94
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-static {v4, v5, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :cond_3
    const-string v0, "LightSource"

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-nez v1, :cond_4

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    aget-object v1, v2, v1

    .line 113
    .line 114
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 115
    .line 116
    invoke-static {v4, v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->d(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    iget v2, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a:I

    .line 11
    .line 12
    const-string v3, "GPSTimeStamp"

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_4

    .line 19
    .line 20
    const/4 p1, 0x5

    .line 21
    const-string v3, "ExifInterface"

    .line 22
    .line 23
    if-eq v2, p1, :cond_1

    .line 24
    .line 25
    const/16 p1, 0xa

    .line 26
    .line 27
    if-eq v2, p1, :cond_1

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "GPS Timestamp format is not rational. format="

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_1
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    array-length v0, p1

    .line 58
    const/4 v2, 0x3

    .line 59
    if-eq v0, v2, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    .line 63
    aget-object v1, p1, v0

    .line 64
    .line 65
    iget-wide v3, v1, Landroidx/exifinterface/media/ExifInterface$Rational;->a:J

    .line 66
    .line 67
    long-to-float v3, v3

    .line 68
    iget-wide v4, v1, Landroidx/exifinterface/media/ExifInterface$Rational;->b:J

    .line 69
    .line 70
    long-to-float v1, v4

    .line 71
    div-float/2addr v3, v1

    .line 72
    float-to-int v1, v3

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const/4 v3, 0x1

    .line 78
    aget-object v4, p1, v3

    .line 79
    .line 80
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->a:J

    .line 81
    .line 82
    long-to-float v5, v5

    .line 83
    iget-wide v6, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->b:J

    .line 84
    .line 85
    long-to-float v4, v6

    .line 86
    div-float/2addr v5, v4

    .line 87
    float-to-int v4, v5

    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/4 v5, 0x2

    .line 93
    aget-object p1, p1, v5

    .line 94
    .line 95
    iget-wide v6, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->a:J

    .line 96
    .line 97
    long-to-float v6, v6

    .line 98
    iget-wide v7, p1, Landroidx/exifinterface/media/ExifInterface$Rational;->b:J

    .line 99
    .line 100
    long-to-float p1, v7

    .line 101
    div-float/2addr v6, p1

    .line 102
    float-to-int p1, v6

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-array v2, v2, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v1, v2, v0

    .line 110
    .line 111
    aput-object v4, v2, v3

    .line 112
    .line 113
    aput-object p1, v2, v5

    .line 114
    .line 115
    const-string p1, "%02d:%02d:%02d"

    .line 116
    .line 117
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    return-object p1

    .line 122
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v2, "Invalid GPS Timestamp array. array="

    .line 125
    .line 126
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-object v1

    .line 144
    :cond_4
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->O:Ljava/util/Set;

    .line 145
    .line 146
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    :try_start_0
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->d(Ljava/nio/ByteOrder;)D

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-object p1

    .line 163
    :catch_0
    :goto_1
    return-object v1

    .line 164
    :cond_5
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    return-object p1
.end method

.method public final c()I
    .locals 2

    .line 1
    const-string v0, "Orientation"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->d(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return v0

    .line 17
    :catch_0
    :goto_0
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method public final d(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 3

    .line 1
    const-string v0, "ISOSpeedRatings"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, "ExifInterface"

    .line 14
    .line 15
    const-string v0, "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY."

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    const-string p1, "PhotographicSensitivity"

    .line 21
    .line 22
    :cond_1
    const-string v0, "Xmp"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    if-eq v1, v2, :cond_3

    .line 34
    .line 35
    const/16 v2, 0x9

    .line 36
    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    const/16 v2, 0xf

    .line 40
    .line 41
    if-eq v1, v2, :cond_2

    .line 42
    .line 43
    const/16 v2, 0xc

    .line 44
    .line 45
    if-eq v1, v2, :cond_2

    .line 46
    .line 47
    const/16 v2, 0xd

    .line 48
    .line 49
    if-eq v1, v2, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->n:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 58
    :goto_1
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->K:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 59
    .line 60
    array-length v2, v2

    .line 61
    if-ge v1, v2, :cond_5

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 64
    .line 65
    aget-object v2, v2, v1

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    return-object v2

    .line 76
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->n:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 86
    .line 87
    if-eqz p1, :cond_6

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_6
    const/4 p1, 0x0

    .line 91
    return-object p1
.end method

.method public final e(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 12

    .line 1
    const-string v0, "yes"

    .line 2
    .line 3
    const-string v1, "Heif meta: "

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x1c

    .line 8
    .line 9
    if-lt v2, v3, :cond_f

    .line 10
    .line 11
    const/16 v3, 0xf

    .line 12
    .line 13
    const/16 v4, 0x1f

    .line 14
    .line 15
    if-ne p2, v3, :cond_1

    .line 16
    .line 17
    if-lt v2, v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 21
    .line 22
    const-string p2, "Reading EXIF from AVIF files is supported from SDK 31 and above"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    .line 29
    .line 30
    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 31
    .line 32
    .line 33
    :try_start_0
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$1;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$1;-><init>(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    .line 39
    .line 40
    .line 41
    const/16 v2, 0x21

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/16 v3, 0x22

    .line 48
    .line 49
    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/16 v5, 0x1a

    .line 54
    .line 55
    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const/16 v6, 0x11

    .line 60
    .line 61
    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_2

    .line 70
    .line 71
    const/16 v0, 0x1d

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/16 v5, 0x1e

    .line 78
    .line 79
    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    move-object p1, v0

    .line 90
    goto/16 :goto_5

    .line 91
    .line 92
    :catch_0
    move-exception v0

    .line 93
    move-object p1, v0

    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    const/16 v0, 0x12

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const/16 v4, 0x13

    .line 109
    .line 110
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const/16 v4, 0x18

    .line 115
    .line 116
    invoke-virtual {p2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    const/4 v0, 0x0

    .line 122
    move-object v4, v0

    .line 123
    move-object v5, v4

    .line 124
    :goto_1
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 125
    .line 126
    const/4 v7, 0x0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    :try_start_1
    aget-object v8, v6, v7

    .line 130
    .line 131
    const-string v9, "ImageWidth"

    .line 132
    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 138
    .line 139
    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    :cond_4
    if-eqz v5, :cond_5

    .line 147
    .line 148
    aget-object v8, v6, v7

    .line 149
    .line 150
    const-string v9, "ImageLength"

    .line 151
    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 157
    .line 158
    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_5
    const/4 v8, 0x6

    .line 166
    if-eqz v4, :cond_9

    .line 167
    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    const/16 v10, 0x5a

    .line 173
    .line 174
    if-eq v9, v10, :cond_8

    .line 175
    .line 176
    const/16 v10, 0xb4

    .line 177
    .line 178
    if-eq v9, v10, :cond_7

    .line 179
    .line 180
    const/16 v10, 0x10e

    .line 181
    .line 182
    if-eq v9, v10, :cond_6

    .line 183
    .line 184
    const/4 v9, 0x1

    .line 185
    goto :goto_2

    .line 186
    :cond_6
    const/16 v9, 0x8

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    const/4 v9, 0x3

    .line 190
    goto :goto_2

    .line 191
    :cond_8
    move v9, v8

    .line 192
    :goto_2
    aget-object v6, v6, v7

    .line 193
    .line 194
    const-string v10, "Orientation"

    .line 195
    .line 196
    iget-object v11, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 197
    .line 198
    invoke-static {v9, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    :cond_9
    if-eqz v2, :cond_c

    .line 206
    .line 207
    if-eqz v3, :cond_c

    .line 208
    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-le v3, v8, :cond_b

    .line 218
    .line 219
    int-to-long v9, v2

    .line 220
    invoke-virtual {p1, v9, v10}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 221
    .line 222
    .line 223
    new-array v6, v8, [B

    .line 224
    .line 225
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 226
    .line 227
    .line 228
    add-int/2addr v2, v8

    .line 229
    add-int/lit8 v3, v3, -0x6

    .line 230
    .line 231
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->R:[B

    .line 232
    .line 233
    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-eqz v6, :cond_a

    .line 238
    .line 239
    new-array v3, v3, [B

    .line 240
    .line 241
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 242
    .line 243
    .line 244
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->j:I

    .line 245
    .line 246
    invoke-virtual {p0, v3, v7}, Landroidx/exifinterface/media/ExifInterface;->u([BI)V

    .line 247
    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_a
    new-instance p1, Ljava/io/IOException;

    .line 251
    .line 252
    const-string v0, "Invalid identifier"

    .line 253
    .line 254
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p1

    .line 258
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 259
    .line 260
    const-string v0, "Invalid exif length"

    .line 261
    .line 262
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw p1

    .line 266
    :cond_c
    :goto_3
    const/16 v2, 0x29

    .line 267
    .line 268
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    const/16 v3, 0x2a

    .line 273
    .line 274
    invoke-virtual {p2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    if-eqz v2, :cond_d

    .line 279
    .line 280
    if-eqz v3, :cond_d

    .line 281
    .line 282
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    int-to-long v7, v2

    .line 291
    invoke-virtual {p1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 292
    .line 293
    .line 294
    new-array v9, v11, [B

    .line 295
    .line 296
    invoke-virtual {p1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 297
    .line 298
    .line 299
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 300
    .line 301
    const/4 v10, 0x1

    .line 302
    invoke-direct/range {v6 .. v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 303
    .line 304
    .line 305
    iput-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->n:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 306
    .line 307
    :cond_d
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 308
    .line 309
    if-eqz p1, :cond_e

    .line 310
    .line 311
    const-string p1, "ExifInterface"

    .line 312
    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v0, "x"

    .line 322
    .line 323
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    const-string v0, ", rotation "

    .line 330
    .line 331
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    .line 343
    .line 344
    :cond_e
    :try_start_2
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    .line 346
    .line 347
    :catch_1
    return-void

    .line 348
    :goto_4
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 349
    .line 350
    const-string v1, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    .line 351
    .line 352
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 356
    :goto_5
    :try_start_4
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 357
    .line 358
    .line 359
    :catch_2
    throw p1

    .line 360
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 361
    .line 362
    const-string p2, "Reading EXIF from HEIC files is supported from SDK 28 and above"

    .line 363
    .line 364
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw p1
.end method

.method public final f(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "ExifInterface"

    .line 8
    .line 9
    sget-boolean v4, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v6, "getJpegAttributes starting with: "

    .line 16
    .line 17
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    iput-object v5, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v6, "Invalid marker: "

    .line 39
    .line 40
    const/4 v7, -0x1

    .line 41
    if-ne v5, v7, :cond_11

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    const/16 v9, -0x28

    .line 48
    .line 49
    if-ne v8, v9, :cond_10

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    move v6, v5

    .line 53
    :goto_0
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ne v8, v7, :cond_f

    .line 58
    .line 59
    :goto_1
    add-int/lit8 v8, v6, 0x1

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eq v9, v7, :cond_e

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v10, "Found JPEG segment indicator: "

    .line 72
    .line 73
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    and-int/lit16 v10, v9, 0xff

    .line 77
    .line 78
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_1
    const/16 v8, -0x27

    .line 93
    .line 94
    if-eq v9, v8, :cond_d

    .line 95
    .line 96
    const/16 v8, -0x26

    .line 97
    .line 98
    if-ne v9, v8, :cond_2

    .line 99
    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    add-int/lit8 v10, v8, -0x2

    .line 107
    .line 108
    add-int/lit8 v6, v6, 0x4

    .line 109
    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    new-instance v11, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v12, "JPEG segment: "

    .line 115
    .line 116
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    and-int/lit16 v12, v9, 0xff

    .line 120
    .line 121
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v12, " (length: "

    .line 129
    .line 130
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v12, ")"

    .line 137
    .line 138
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    :cond_3
    const-string v11, "Invalid length"

    .line 149
    .line 150
    if-ltz v10, :cond_c

    .line 151
    .line 152
    const/16 v12, -0x1f

    .line 153
    .line 154
    const/4 v13, 0x0

    .line 155
    if-eq v9, v12, :cond_8

    .line 156
    .line 157
    const/4 v12, -0x2

    .line 158
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 159
    .line 160
    const/4 v15, 0x1

    .line 161
    if-eq v9, v12, :cond_6

    .line 162
    .line 163
    packed-switch v9, :pswitch_data_0

    .line 164
    .line 165
    .line 166
    packed-switch v9, :pswitch_data_1

    .line 167
    .line 168
    .line 169
    packed-switch v9, :pswitch_data_2

    .line 170
    .line 171
    .line 172
    packed-switch v9, :pswitch_data_3

    .line 173
    .line 174
    .line 175
    goto/16 :goto_6

    .line 176
    .line 177
    :pswitch_0
    invoke-virtual {v1, v15}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 178
    .line 179
    .line 180
    aget-object v9, v14, v2

    .line 181
    .line 182
    const/4 v10, 0x4

    .line 183
    if-eq v2, v10, :cond_4

    .line 184
    .line 185
    const-string v12, "ImageLength"

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_4
    const-string v12, "ThumbnailImageLength"

    .line 189
    .line 190
    :goto_2
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 191
    .line 192
    .line 193
    move-result v13

    .line 194
    move/from16 v16, v8

    .line 195
    .line 196
    int-to-long v7, v13

    .line 197
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 198
    .line 199
    invoke-static {v7, v8, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v9, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    aget-object v7, v14, v2

    .line 207
    .line 208
    if-eq v2, v10, :cond_5

    .line 209
    .line 210
    const-string v8, "ImageWidth"

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_5
    const-string v8, "ThumbnailImageWidth"

    .line 214
    .line 215
    :goto_3
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    int-to-long v9, v9

    .line 220
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 221
    .line 222
    invoke-static {v9, v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    add-int/lit8 v10, v16, -0x7

    .line 230
    .line 231
    goto/16 :goto_6

    .line 232
    .line 233
    :cond_6
    new-array v7, v10, [B

    .line 234
    .line 235
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 236
    .line 237
    .line 238
    const-string v8, "UserComment"

    .line 239
    .line 240
    invoke-virtual {v0, v8}, Landroidx/exifinterface/media/ExifInterface;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    if-nez v9, :cond_7

    .line 245
    .line 246
    aget-object v9, v14, v15

    .line 247
    .line 248
    new-instance v10, Ljava/lang/String;

    .line 249
    .line 250
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->Q:Ljava/nio/charset/Charset;

    .line 251
    .line 252
    invoke-direct {v10, v7, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 253
    .line 254
    .line 255
    const-string v7, "\u0000"

    .line 256
    .line 257
    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-virtual {v7, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 266
    .line 267
    array-length v12, v7

    .line 268
    invoke-direct {v10, v7, v5, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>([BII)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    :cond_7
    :goto_4
    move v10, v13

    .line 275
    goto :goto_6

    .line 276
    :cond_8
    new-array v7, v10, [B

    .line 277
    .line 278
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 279
    .line 280
    .line 281
    add-int v8, v6, v10

    .line 282
    .line 283
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->R:[B

    .line 284
    .line 285
    invoke-static {v7, v9}, Landroidx/exifinterface/media/ExifInterfaceUtils;->b([B[B)Z

    .line 286
    .line 287
    .line 288
    move-result v12

    .line 289
    if-eqz v12, :cond_9

    .line 290
    .line 291
    array-length v12, v9

    .line 292
    invoke-static {v7, v12, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    add-int v6, p2, v6

    .line 297
    .line 298
    array-length v9, v9

    .line 299
    add-int/2addr v6, v9

    .line 300
    iput v6, v0, Landroidx/exifinterface/media/ExifInterface;->j:I

    .line 301
    .line 302
    invoke-virtual {v0, v7, v2}, Landroidx/exifinterface/media/ExifInterface;->u([BI)V

    .line 303
    .line 304
    .line 305
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 306
    .line 307
    invoke-direct {v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v6}, Landroidx/exifinterface/media/ExifInterface;->x(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_9
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->S:[B

    .line 315
    .line 316
    invoke-static {v7, v9}, Landroidx/exifinterface/media/ExifInterfaceUtils;->b([B[B)Z

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    if-eqz v12, :cond_a

    .line 321
    .line 322
    array-length v12, v9

    .line 323
    add-int/2addr v6, v12

    .line 324
    array-length v9, v9

    .line 325
    invoke-static {v7, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    new-instance v16, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 330
    .line 331
    array-length v9, v7

    .line 332
    int-to-long v14, v6

    .line 333
    const/16 v20, 0x1

    .line 334
    .line 335
    move-object/from16 v19, v7

    .line 336
    .line 337
    move/from16 v21, v9

    .line 338
    .line 339
    move-wide/from16 v17, v14

    .line 340
    .line 341
    invoke-direct/range {v16 .. v21}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 342
    .line 343
    .line 344
    move-object/from16 v6, v16

    .line 345
    .line 346
    iput-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->n:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 347
    .line 348
    :cond_a
    :goto_5
    move v6, v8

    .line 349
    goto :goto_4

    .line 350
    :goto_6
    if-ltz v10, :cond_b

    .line 351
    .line 352
    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 353
    .line 354
    .line 355
    add-int/2addr v6, v10

    .line 356
    const/4 v7, -0x1

    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_b
    new-instance v1, Ljava/io/IOException;

    .line 360
    .line 361
    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v1

    .line 365
    :cond_c
    new-instance v1, Ljava/io/IOException;

    .line 366
    .line 367
    invoke-direct {v1, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v1

    .line 371
    :cond_d
    :goto_7
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 372
    .line 373
    iput-object v2, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 374
    .line 375
    return-void

    .line 376
    :cond_e
    move v6, v8

    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :cond_f
    new-instance v1, Ljava/io/IOException;

    .line 380
    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v3, "Invalid marker:"

    .line 384
    .line 385
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    and-int/lit16 v3, v8, 0xff

    .line 389
    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    throw v1

    .line 405
    :cond_10
    new-instance v1, Ljava/io/IOException;

    .line 406
    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    and-int/lit16 v3, v5, 0xff

    .line 413
    .line 414
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    throw v1

    .line 429
    :cond_11
    new-instance v1, Ljava/io/IOException;

    .line 430
    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    and-int/lit16 v3, v5, 0xff

    .line 437
    .line 438
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v3

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw v1

    .line 453
    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/io/BufferedInputStream;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/16 v2, 0x1388

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    new-array v3, v2, [B

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->t:[B

    .line 20
    .line 21
    array-length v6, v5

    .line 22
    const/4 v7, 0x4

    .line 23
    if-ge v0, v6, :cond_25

    .line 24
    .line 25
    aget-byte v6, v3, v0

    .line 26
    .line 27
    aget-byte v5, v5, v0

    .line 28
    .line 29
    if-eq v6, v5, :cond_24

    .line 30
    .line 31
    const-string v0, "FUJIFILMCCD-RAW"

    .line 32
    .line 33
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v5, 0x0

    .line 42
    :goto_1
    array-length v6, v0

    .line 43
    if-ge v5, v6, :cond_23

    .line 44
    .line 45
    aget-byte v6, v3, v5

    .line 46
    .line 47
    aget-byte v8, v0, v5

    .line 48
    .line 49
    if-eq v6, v8, :cond_22

    .line 50
    .line 51
    const/4 v6, 0x1

    .line 52
    :try_start_0
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 53
    .line 54
    invoke-direct {v8, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    int-to-long v9, v0

    .line 62
    new-array v0, v7, [B

    .line 63
    .line 64
    invoke-virtual {v8, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 65
    .line 66
    .line 67
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->u:[B

    .line 68
    .line 69
    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    :goto_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 76
    .line 77
    .line 78
    const/16 p1, 0x0

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    goto/16 :goto_b

    .line 82
    .line 83
    :cond_0
    const-wide/16 v11, 0x1

    .line 84
    .line 85
    cmp-long v0, v9, v11

    .line 86
    .line 87
    const-wide/16 v13, 0x8

    .line 88
    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    :try_start_2
    invoke-virtual {v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    .line 92
    .line 93
    .line 94
    move-result-wide v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    const-wide/16 v15, 0x10

    .line 96
    .line 97
    cmp-long v0, v9, v15

    .line 98
    .line 99
    if-gez v0, :cond_1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_1
    :goto_3
    const/16 p1, 0x0

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    move-object v5, v8

    .line 107
    goto/16 :goto_1b

    .line 108
    .line 109
    :catch_0
    move-exception v0

    .line 110
    const/16 p1, 0x0

    .line 111
    .line 112
    goto/16 :goto_a

    .line 113
    .line 114
    :cond_2
    move-wide v15, v13

    .line 115
    goto :goto_3

    .line 116
    :goto_4
    int-to-long v4, v2

    .line 117
    cmp-long v0, v9, v4

    .line 118
    .line 119
    if-lez v0, :cond_3

    .line 120
    .line 121
    move-wide v9, v4

    .line 122
    :cond_3
    sub-long/2addr v9, v15

    .line 123
    cmp-long v0, v9, v13

    .line 124
    .line 125
    if-gez v0, :cond_6

    .line 126
    .line 127
    :catch_1
    :cond_4
    :goto_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 128
    .line 129
    .line 130
    :cond_5
    move/from16 v0, p1

    .line 131
    .line 132
    goto/16 :goto_b

    .line 133
    .line 134
    :cond_6
    :try_start_3
    new-array v0, v7, [B

    .line 135
    .line 136
    const-wide/16 v4, 0x0

    .line 137
    .line 138
    move/from16 v2, p1

    .line 139
    .line 140
    move v13, v2

    .line 141
    move v14, v13

    .line 142
    :goto_6
    const-wide/16 v15, 0x4

    .line 143
    .line 144
    div-long v15, v9, v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .line 146
    cmp-long v15, v4, v15

    .line 147
    .line 148
    if-gez v15, :cond_4

    .line 149
    .line 150
    :try_start_4
    invoke-virtual {v8, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 151
    .line 152
    .line 153
    cmp-long v15, v4, v11

    .line 154
    .line 155
    if-nez v15, :cond_7

    .line 156
    .line 157
    goto :goto_9

    .line 158
    :cond_7
    :try_start_5
    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->v:[B

    .line 159
    .line 160
    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z

    .line 161
    .line 162
    .line 163
    move-result v15

    .line 164
    if-eqz v15, :cond_8

    .line 165
    .line 166
    move v2, v6

    .line 167
    goto :goto_8

    .line 168
    :cond_8
    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->w:[B

    .line 169
    .line 170
    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    if-eqz v15, :cond_9

    .line 175
    .line 176
    move v13, v6

    .line 177
    goto :goto_8

    .line 178
    :cond_9
    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->x:[B

    .line 179
    .line 180
    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z

    .line 181
    .line 182
    .line 183
    move-result v15

    .line 184
    if-nez v15, :cond_a

    .line 185
    .line 186
    sget-object v15, Landroidx/exifinterface/media/ExifInterface;->y:[B

    .line 187
    .line 188
    invoke-static {v0, v15}, Ljava/util/Arrays;->equals([B[B)Z

    .line 189
    .line 190
    .line 191
    move-result v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 192
    if-eqz v15, :cond_b

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :catch_2
    move-exception v0

    .line 196
    goto :goto_a

    .line 197
    :cond_a
    :goto_7
    move v14, v6

    .line 198
    :cond_b
    :goto_8
    if-eqz v2, :cond_d

    .line 199
    .line 200
    if-eqz v13, :cond_c

    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 203
    .line 204
    .line 205
    const/16 v0, 0xc

    .line 206
    .line 207
    goto :goto_b

    .line 208
    :cond_c
    if-eqz v14, :cond_d

    .line 209
    .line 210
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 211
    .line 212
    .line 213
    const/16 v0, 0xf

    .line 214
    .line 215
    goto :goto_b

    .line 216
    :cond_d
    :goto_9
    add-long/2addr v4, v11

    .line 217
    goto :goto_6

    .line 218
    :catchall_1
    move-exception v0

    .line 219
    const/4 v5, 0x0

    .line 220
    goto/16 :goto_1b

    .line 221
    .line 222
    :catch_3
    move-exception v0

    .line 223
    const/16 p1, 0x0

    .line 224
    .line 225
    const/4 v8, 0x0

    .line 226
    :goto_a
    :try_start_6
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 227
    .line 228
    if-eqz v2, :cond_e

    .line 229
    .line 230
    const-string v2, "ExifInterface"

    .line 231
    .line 232
    const-string v4, "Exception parsing HEIF file type box."

    .line 233
    .line 234
    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 235
    .line 236
    .line 237
    :cond_e
    if-eqz v8, :cond_5

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :goto_b
    if-eqz v0, :cond_f

    .line 241
    .line 242
    return v0

    .line 243
    :cond_f
    :try_start_7
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 244
    .line 245
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 246
    .line 247
    .line 248
    :try_start_8
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->t(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 253
    .line 254
    iput-object v0, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 255
    .line 256
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 257
    .line 258
    .line 259
    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 260
    const/16 v4, 0x4f52

    .line 261
    .line 262
    if-eq v0, v4, :cond_11

    .line 263
    .line 264
    const/16 v4, 0x5352

    .line 265
    .line 266
    if-ne v0, v4, :cond_10

    .line 267
    .line 268
    goto :goto_c

    .line 269
    :cond_10
    move/from16 v0, p1

    .line 270
    .line 271
    goto :goto_d

    .line 272
    :cond_11
    :goto_c
    move v0, v6

    .line 273
    :goto_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 274
    .line 275
    .line 276
    goto :goto_10

    .line 277
    :catchall_2
    move-exception v0

    .line 278
    move-object v5, v2

    .line 279
    goto :goto_e

    .line 280
    :catchall_3
    move-exception v0

    .line 281
    const/4 v5, 0x0

    .line 282
    goto :goto_e

    .line 283
    :catch_4
    const/4 v2, 0x0

    .line 284
    goto :goto_f

    .line 285
    :goto_e
    if-eqz v5, :cond_12

    .line 286
    .line 287
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 288
    .line 289
    .line 290
    :cond_12
    throw v0

    .line 291
    :catch_5
    :goto_f
    if-eqz v2, :cond_13

    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 294
    .line 295
    .line 296
    :cond_13
    move/from16 v0, p1

    .line 297
    .line 298
    :goto_10
    if-eqz v0, :cond_14

    .line 299
    .line 300
    const/4 v0, 0x7

    .line 301
    return v0

    .line 302
    :cond_14
    :try_start_9
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 303
    .line 304
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 305
    .line 306
    .line 307
    :try_start_a
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->t(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    iput-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 312
    .line 313
    iput-object v0, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 314
    .line 315
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 316
    .line 317
    .line 318
    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 319
    const/16 v4, 0x55

    .line 320
    .line 321
    if-ne v0, v4, :cond_15

    .line 322
    .line 323
    move v0, v6

    .line 324
    goto :goto_11

    .line 325
    :cond_15
    move/from16 v0, p1

    .line 326
    .line 327
    :goto_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 328
    .line 329
    .line 330
    goto :goto_14

    .line 331
    :catchall_4
    move-exception v0

    .line 332
    move-object v5, v2

    .line 333
    goto :goto_12

    .line 334
    :catch_6
    move-object v5, v2

    .line 335
    goto :goto_13

    .line 336
    :catchall_5
    move-exception v0

    .line 337
    const/4 v5, 0x0

    .line 338
    goto :goto_12

    .line 339
    :catch_7
    const/4 v5, 0x0

    .line 340
    goto :goto_13

    .line 341
    :goto_12
    if-eqz v5, :cond_16

    .line 342
    .line 343
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 344
    .line 345
    .line 346
    :cond_16
    throw v0

    .line 347
    :goto_13
    if-eqz v5, :cond_17

    .line 348
    .line 349
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 350
    .line 351
    .line 352
    :cond_17
    move/from16 v0, p1

    .line 353
    .line 354
    :goto_14
    if-eqz v0, :cond_18

    .line 355
    .line 356
    const/16 v0, 0xa

    .line 357
    .line 358
    return v0

    .line 359
    :cond_18
    move/from16 v0, p1

    .line 360
    .line 361
    :goto_15
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->B:[B

    .line 362
    .line 363
    array-length v4, v2

    .line 364
    if-ge v0, v4, :cond_1a

    .line 365
    .line 366
    aget-byte v4, v3, v0

    .line 367
    .line 368
    aget-byte v2, v2, v0

    .line 369
    .line 370
    if-eq v4, v2, :cond_19

    .line 371
    .line 372
    move/from16 v0, p1

    .line 373
    .line 374
    goto :goto_16

    .line 375
    :cond_19
    add-int/lit8 v0, v0, 0x1

    .line 376
    .line 377
    goto :goto_15

    .line 378
    :cond_1a
    move v0, v6

    .line 379
    :goto_16
    if-eqz v0, :cond_1b

    .line 380
    .line 381
    const/16 v0, 0xd

    .line 382
    .line 383
    return v0

    .line 384
    :cond_1b
    move/from16 v0, p1

    .line 385
    .line 386
    :goto_17
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->D:[B

    .line 387
    .line 388
    array-length v4, v2

    .line 389
    if-ge v0, v4, :cond_1d

    .line 390
    .line 391
    aget-byte v4, v3, v0

    .line 392
    .line 393
    aget-byte v2, v2, v0

    .line 394
    .line 395
    if-eq v4, v2, :cond_1c

    .line 396
    .line 397
    :goto_18
    move/from16 v6, p1

    .line 398
    .line 399
    goto :goto_1a

    .line 400
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 401
    .line 402
    goto :goto_17

    .line 403
    :cond_1d
    move/from16 v0, p1

    .line 404
    .line 405
    :goto_19
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->E:[B

    .line 406
    .line 407
    array-length v5, v4

    .line 408
    if-ge v0, v5, :cond_1f

    .line 409
    .line 410
    array-length v5, v2

    .line 411
    add-int/2addr v5, v0

    .line 412
    add-int/2addr v5, v7

    .line 413
    aget-byte v5, v3, v5

    .line 414
    .line 415
    aget-byte v4, v4, v0

    .line 416
    .line 417
    if-eq v5, v4, :cond_1e

    .line 418
    .line 419
    goto :goto_18

    .line 420
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 421
    .line 422
    goto :goto_19

    .line 423
    :cond_1f
    :goto_1a
    if-eqz v6, :cond_20

    .line 424
    .line 425
    const/16 v0, 0xe

    .line 426
    .line 427
    return v0

    .line 428
    :cond_20
    return p1

    .line 429
    :goto_1b
    if-eqz v5, :cond_21

    .line 430
    .line 431
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 432
    .line 433
    .line 434
    :cond_21
    throw v0

    .line 435
    :cond_22
    const/16 p1, 0x0

    .line 436
    .line 437
    add-int/lit8 v5, v5, 0x1

    .line 438
    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :cond_23
    const/16 v0, 0x9

    .line 442
    .line 443
    return v0

    .line 444
    :cond_24
    const/16 p1, 0x0

    .line 445
    .line 446
    add-int/lit8 v0, v0, 0x1

    .line 447
    .line 448
    goto/16 :goto_0

    .line 449
    .line 450
    :cond_25
    return v7
.end method

.method public final h(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->k(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    aget-object v1, p1, v0

    .line 8
    .line 9
    const-string v2, "MakerNote"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->d:[B

    .line 22
    .line 23
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    iput-object v1, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->z:[B

    .line 31
    .line 32
    array-length v3, v1

    .line 33
    new-array v3, v3, [B

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v4, 0x0

    .line 39
    .line 40
    invoke-virtual {v2, v4, v5}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 41
    .line 42
    .line 43
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->A:[B

    .line 44
    .line 45
    array-length v5, v4

    .line 46
    new-array v5, v5, [B

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-wide/16 v3, 0x8

    .line 58
    .line 59
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const-wide/16 v3, 0xc

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    const/4 v1, 0x6

    .line 75
    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->v(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    aget-object v2, p1, v1

    .line 80
    .line 81
    const-string v3, "PreviewImageStart"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 88
    .line 89
    aget-object v1, p1, v1

    .line 90
    .line 91
    const-string v3, "PreviewImageLength"

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    aget-object v4, p1, v3

    .line 105
    .line 106
    const-string v5, "JPEGInterchangeFormat"

    .line 107
    .line 108
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    aget-object v2, p1, v3

    .line 112
    .line 113
    const-string v3, "JPEGInterchangeFormatLength"

    .line 114
    .line 115
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_2
    const/16 v1, 0x8

    .line 119
    .line 120
    aget-object v1, p1, v1

    .line 121
    .line 122
    const-string v2, "AspectFrame"

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 129
    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, [I

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    array-length v2, v1

    .line 143
    const/4 v3, 0x4

    .line 144
    if-eq v2, v3, :cond_3

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const/4 v2, 0x2

    .line 148
    aget v2, v1, v2

    .line 149
    .line 150
    const/4 v3, 0x0

    .line 151
    aget v4, v1, v3

    .line 152
    .line 153
    if-le v2, v4, :cond_6

    .line 154
    .line 155
    const/4 v5, 0x3

    .line 156
    aget v5, v1, v5

    .line 157
    .line 158
    aget v1, v1, v0

    .line 159
    .line 160
    if-le v5, v1, :cond_6

    .line 161
    .line 162
    sub-int/2addr v2, v4

    .line 163
    add-int/2addr v2, v0

    .line 164
    sub-int/2addr v5, v1

    .line 165
    add-int/2addr v5, v0

    .line 166
    if-ge v2, v5, :cond_4

    .line 167
    .line 168
    add-int/2addr v2, v5

    .line 169
    sub-int v5, v2, v5

    .line 170
    .line 171
    sub-int/2addr v2, v5

    .line 172
    :cond_4
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 173
    .line 174
    invoke-static {v2, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 179
    .line 180
    invoke-static {v5, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    aget-object v2, p1, v3

    .line 185
    .line 186
    const-string v4, "ImageWidth"

    .line 187
    .line 188
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    aget-object p1, p1, v3

    .line 192
    .line 193
    const-string v0, "ImageLength"

    .line 194
    .line 195
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v0, "Invalid aspect frame values. frame="

    .line 202
    .line 203
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const-string v0, "ExifInterface"

    .line 218
    .line 219
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :cond_6
    return-void
.end method

.method public final i(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    sget-boolean v2, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "getPngAttributes starting with: "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "ExifInterface"

    .line 24
    .line 25
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 29
    .line 30
    iput-object v2, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 31
    .line 32
    iget v2, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 33
    .line 34
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->B:[B

    .line 35
    .line 36
    array-length v3, v3

    .line 37
    invoke-virtual {v0, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    move v4, v3

    .line 42
    move v5, v4

    .line 43
    :goto_0
    if-eqz v4, :cond_1

    .line 44
    .line 45
    if-nez v5, :cond_4

    .line 46
    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    iget v8, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 56
    .line 57
    add-int v9, v8, v6

    .line 58
    .line 59
    add-int/lit8 v9, v9, 0x4

    .line 60
    .line 61
    sub-int/2addr v8, v2

    .line 62
    const/16 v10, 0x10

    .line 63
    .line 64
    if-ne v8, v10, :cond_3

    .line 65
    .line 66
    const v10, 0x49484452

    .line 67
    .line 68
    .line 69
    if-ne v7, v10, :cond_2

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 73
    .line 74
    const-string v2, "Encountered invalid PNG file--IHDR chunk should appear as the first chunk"

    .line 75
    .line 76
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_3
    :goto_1
    const v10, 0x49454e44    # 808164.25f

    .line 84
    .line 85
    .line 86
    if-ne v7, v10, :cond_5

    .line 87
    .line 88
    :cond_4
    return-void

    .line 89
    :cond_5
    const v10, 0x65584966

    .line 90
    .line 91
    .line 92
    const/4 v11, 0x1

    .line 93
    if-ne v7, v10, :cond_7

    .line 94
    .line 95
    if-nez v4, :cond_7

    .line 96
    .line 97
    iput v8, v1, Landroidx/exifinterface/media/ExifInterface;->j:I

    .line 98
    .line 99
    new-array v4, v6, [B

    .line 100
    .line 101
    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    new-instance v8, Ljava/util/zip/CRC32;

    .line 109
    .line 110
    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 111
    .line 112
    .line 113
    ushr-int/lit8 v10, v7, 0x18

    .line 114
    .line 115
    invoke-virtual {v8, v10}, Ljava/util/zip/CRC32;->update(I)V

    .line 116
    .line 117
    .line 118
    ushr-int/lit8 v10, v7, 0x10

    .line 119
    .line 120
    invoke-virtual {v8, v10}, Ljava/util/zip/CRC32;->update(I)V

    .line 121
    .line 122
    .line 123
    ushr-int/lit8 v10, v7, 0x8

    .line 124
    .line 125
    invoke-virtual {v8, v10}, Ljava/util/zip/CRC32;->update(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v8, v7}, Ljava/util/zip/CRC32;->update(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    long-to-int v7, v12

    .line 139
    if-ne v7, v6, :cond_6

    .line 140
    .line 141
    invoke-virtual {v1, v4, v3}, Landroidx/exifinterface/media/ExifInterface;->u([BI)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface;->A()V

    .line 145
    .line 146
    .line 147
    new-instance v6, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 148
    .line 149
    invoke-direct {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface;->x(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 153
    .line 154
    .line 155
    move v4, v11

    .line 156
    goto :goto_2

    .line 157
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 158
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v3, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    .line 165
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v3, ", calculated CRC value: "

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_7
    const v8, 0x69545874

    .line 193
    .line 194
    .line 195
    if-ne v7, v8, :cond_8

    .line 196
    .line 197
    if-nez v5, :cond_8

    .line 198
    .line 199
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->C:[B

    .line 200
    .line 201
    array-length v8, v7

    .line 202
    if-lt v6, v8, :cond_8

    .line 203
    .line 204
    array-length v8, v7

    .line 205
    new-array v10, v8, [B

    .line 206
    .line 207
    invoke-virtual {v0, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 208
    .line 209
    .line 210
    invoke-static {v10, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 211
    .line 212
    .line 213
    move-result v7

    .line 214
    if-eqz v7, :cond_8

    .line 215
    .line 216
    iget v5, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 217
    .line 218
    sub-int/2addr v5, v2

    .line 219
    sub-int/2addr v6, v8

    .line 220
    new-array v15, v6, [B

    .line 221
    .line 222
    invoke-virtual {v0, v15}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 223
    .line 224
    .line 225
    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 226
    .line 227
    const/16 v16, 0x1

    .line 228
    .line 229
    int-to-long v13, v5

    .line 230
    move/from16 v17, v6

    .line 231
    .line 232
    invoke-direct/range {v12 .. v17}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 233
    .line 234
    .line 235
    iput-object v12, v1, Landroidx/exifinterface/media/ExifInterface;->n:Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 236
    .line 237
    move v5, v11

    .line 238
    :cond_8
    :goto_2
    iget v6, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 239
    .line 240
    sub-int/2addr v9, v6

    .line 241
    invoke-virtual {v0, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :goto_3
    new-instance v2, Ljava/io/IOException;

    .line 247
    .line 248
    const-string v3, "Encountered corrupt PNG file."

    .line 249
    .line 250
    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    throw v2
.end method

.method public final j(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 9

    .line 1
    const-string v0, "ExifInterface"

    .line 2
    .line 3
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "getRafAttributes starting with: "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/16 v2, 0x54

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    new-array v3, v2, [B

    .line 31
    .line 32
    new-array v4, v2, [B

    .line 33
    .line 34
    new-array v2, v2, [B

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    new-array v4, v4, [B

    .line 70
    .line 71
    iget v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 72
    .line 73
    sub-int v5, v3, v5

    .line 74
    .line 75
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 82
    .line 83
    invoke-direct {v5, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 84
    .line 85
    .line 86
    const/4 v4, 0x5

    .line 87
    invoke-virtual {p0, v5, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->f(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 88
    .line 89
    .line 90
    iget v3, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 91
    .line 92
    sub-int/2addr v2, v3

    .line 93
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 97
    .line 98
    iput-object v2, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "numberOfDirectoryEntry: "

    .line 109
    .line 110
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    :cond_1
    const/4 v3, 0x0

    .line 124
    move v4, v3

    .line 125
    :goto_0
    if-ge v4, v2, :cond_3

    .line 126
    .line 127
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->J:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 136
    .line 137
    iget v7, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->a:I

    .line 138
    .line 139
    if-ne v5, v7, :cond_2

    .line 140
    .line 141
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 150
    .line 151
    invoke-static {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 156
    .line 157
    invoke-static {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 162
    .line 163
    aget-object v7, v6, v3

    .line 164
    .line 165
    const-string v8, "ImageLength"

    .line 166
    .line 167
    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    aget-object v3, v6, v3

    .line 171
    .line 172
    const-string v4, "ImageWidth"

    .line 173
    .line 174
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    if-eqz v1, :cond_3

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, "Updated to length: "

    .line 182
    .line 183
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v2, ", width: "

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_2
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v4, v4, 0x1

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_3
    return-void
.end method

.method public final k(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->r(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->v(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->z(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->z(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->z(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->A()V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    aget-object v1, p1, v0

    .line 32
    .line 33
    const-string v2, "MakerNote"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 44
    .line 45
    iget-object v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->d:[B

    .line 46
    .line 47
    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 51
    .line 52
    iput-object v1, v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x9

    .line 59
    .line 60
    invoke-virtual {p0, v2, v1}, Landroidx/exifinterface/media/ExifInterface;->v(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 61
    .line 62
    .line 63
    aget-object v1, p1, v1

    .line 64
    .line 65
    const-string v2, "ColorSpace"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    aget-object p1, p1, v0

    .line 76
    .line 77
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method

.method public final l(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getRw2Attributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->k(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    aget-object v1, p1, v0

    .line 31
    .line 32
    const-string v2, "JpgFromRaw"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 43
    .line 44
    iget-object v3, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->d:[B

    .line 45
    .line 46
    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 47
    .line 48
    .line 49
    iget-wide v3, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c:J

    .line 50
    .line 51
    long-to-int v1, v3

    .line 52
    const/4 v3, 0x5

    .line 53
    invoke-virtual {p0, v2, v1, v3}, Landroidx/exifinterface/media/ExifInterface;->f(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 54
    .line 55
    .line 56
    :cond_1
    aget-object v0, p1, v0

    .line 57
    .line 58
    const-string v1, "ISO"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    aget-object v2, p1, v1

    .line 68
    .line 69
    const-string v3, "PhotographicSensitivity"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    aget-object p1, p1, v1

    .line 82
    .line 83
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public final m(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z
    .locals 6

    .line 1
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->R:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string p1, "ExifInterface"

    .line 17
    .line 18
    const-string v0, "Given data is not EXIF-only."

    .line 19
    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    const/16 v1, 0x400

    .line 25
    .line 26
    new-array v1, v1, [B

    .line 27
    .line 28
    move v3, v2

    .line 29
    :goto_0
    array-length v4, v1

    .line 30
    if-ne v3, v4, :cond_1

    .line 31
    .line 32
    array-length v4, v1

    .line 33
    mul-int/lit8 v4, v4, 0x2

    .line 34
    .line 35
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    iget-object v4, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->c:Ljava/io/DataInputStream;

    .line 40
    .line 41
    array-length v5, v1

    .line 42
    sub-int/2addr v5, v3

    .line 43
    invoke-virtual {v4, v1, v3, v5}, Ljava/io/DataInputStream;->read([BII)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, -0x1

    .line 48
    if-eq v4, v5, :cond_2

    .line 49
    .line 50
    add-int/2addr v3, v4

    .line 51
    iget v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 52
    .line 53
    add-int/2addr v5, v4

    .line 54
    iput v5, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    array-length v0, v0

    .line 62
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->j:I

    .line 63
    .line 64
    invoke-virtual {p0, p1, v2}, Landroidx/exifinterface/media/ExifInterface;->u([BI)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    return p1
.end method

.method public final n(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "getWebpAttributes starting with: "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ExifInterface"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 25
    .line 26
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 27
    .line 28
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->D:[B

    .line 29
    .line 30
    array-length v0, v0

    .line 31
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, 0x8

    .line 39
    .line 40
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->E:[B

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 44
    .line 45
    .line 46
    array-length v1, v1

    .line 47
    add-int/lit8 v1, v1, 0x8

    .line 48
    .line 49
    :goto_0
    const/4 v2, 0x4

    .line 50
    :try_start_0
    new-array v2, v2, [B

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    add-int/lit8 v1, v1, 0x8

    .line 60
    .line 61
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->F:[B

    .line 62
    .line 63
    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    new-array v0, v3, [B

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->R:[B

    .line 75
    .line 76
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterfaceUtils;->b([B[B)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    array-length p1, p1

    .line 83
    invoke-static {v0, p1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception p1

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_1
    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->j:I

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, v0, p1}, Landroidx/exifinterface/media/ExifInterface;->u([BI)V

    .line 94
    .line 95
    .line 96
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 97
    .line 98
    invoke-direct {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->x(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    rem-int/lit8 v2, v3, 0x2

    .line 106
    .line 107
    const/4 v4, 0x1

    .line 108
    if-ne v2, v4, :cond_3

    .line 109
    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    :cond_3
    add-int/2addr v1, v3

    .line 113
    if-ne v1, v0, :cond_4

    .line 114
    .line 115
    return-void

    .line 116
    :cond_4
    if-gt v1, v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    new-instance p1, Ljava/io/IOException;

    .line 123
    .line 124
    const-string v0, "Encountered WebP file with invalid chunk size"

    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_2
    new-instance v0, Ljava/io/IOException;

    .line 131
    .line 132
    const-string v1, "Encountered corrupt WebP file."

    .line 133
    .line 134
    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    throw v0
.end method

.method public final o(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 3

    .line 1
    const-string v0, "JPEGInterchangeFormat"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    const-string v1, "JPEGInterchangeFormatLength"

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 34
    .line 35
    const/4 v2, 0x7

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->k:I

    .line 39
    .line 40
    add-int/2addr v0, v1

    .line 41
    :cond_0
    if-lez v0, :cond_1

    .line 42
    .line 43
    if-lez p2, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->a:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->c:Landroid/content/res/AssetManager$AssetInputStream;

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->b:Ljava/io/FileDescriptor;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    new-array v1, p2, [B

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 63
    .line 64
    .line 65
    :cond_1
    sget-boolean p1, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Setting thumbnail attributes with offset: "

    .line 72
    .line 73
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, ", length: "

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string p2, "ExifInterface"

    .line 92
    .line 93
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public final p(Ljava/util/HashMap;)Z
    .locals 2

    .line 1
    const-string v0, "ImageLength"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 8
    .line 9
    const-string v1, "ImageWidth"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/16 v1, 0x200

    .line 34
    .line 35
    if-gt v0, v1, :cond_0

    .line 36
    .line 37
    if-gt p1, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public final q(Ljava/io/InputStream;)V
    .locals 8

    .line 1
    sget-boolean v0, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    :try_start_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->K:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 6
    .line 7
    array-length v3, v3

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v4, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_6

    .line 24
    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :catch_1
    move-exception p1

    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    iget-boolean v2, p0, Landroidx/exifinterface/media/ExifInterface;->e:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 36
    .line 37
    const/16 v4, 0x1388

    .line 38
    .line 39
    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->g(Ljava/io/BufferedInputStream;)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 47
    .line 48
    move-object p1, v3

    .line 49
    :cond_1
    iget v3, p0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 50
    .line 51
    const/16 v4, 0xe

    .line 52
    .line 53
    const/16 v5, 0xd

    .line 54
    .line 55
    const/16 v6, 0x9

    .line 56
    .line 57
    const/4 v7, 0x4

    .line 58
    if-eq v3, v7, :cond_9

    .line 59
    .line 60
    if-eq v3, v6, :cond_9

    .line 61
    .line 62
    if-eq v3, v5, :cond_9

    .line 63
    .line 64
    if-ne v3, v4, :cond_2

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 68
    .line 69
    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->m(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)Z

    .line 75
    .line 76
    .line 77
    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    if-nez p1, :cond_8

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->a()V

    .line 81
    .line 82
    .line 83
    if-eqz v0, :cond_10

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->s()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    :try_start_2
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 90
    .line 91
    const/16 v2, 0xc

    .line 92
    .line 93
    if-eq p1, v2, :cond_7

    .line 94
    .line 95
    const/16 v2, 0xf

    .line 96
    .line 97
    if-ne p1, v2, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    const/4 v2, 0x7

    .line 101
    if-ne p1, v2, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->h(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    const/16 v2, 0xa

    .line 108
    .line 109
    if-ne p1, v2, :cond_6

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->l(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->k(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_7
    :goto_1
    invoke-virtual {p0, v1, p1}, Landroidx/exifinterface/media/ExifInterface;->e(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 120
    .line 121
    .line 122
    :cond_8
    :goto_2
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->j:I

    .line 123
    .line 124
    int-to-long v2, p1

    .line 125
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->x(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_9
    :goto_3
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 133
    .line 134
    invoke-direct {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 135
    .line 136
    .line 137
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 138
    .line 139
    if-ne p1, v7, :cond_a

    .line 140
    .line 141
    invoke-virtual {p0, v2, v1, v1}, Landroidx/exifinterface/media/ExifInterface;->f(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_a
    if-ne p1, v5, :cond_b

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->i(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_b
    if-ne p1, v6, :cond_c

    .line 152
    .line 153
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->j(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_c
    if-ne p1, v4, :cond_d

    .line 158
    .line 159
    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->n(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    .line 161
    .line 162
    :cond_d
    :goto_4
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->a()V

    .line 163
    .line 164
    .line 165
    if-eqz v0, :cond_10

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->s()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :goto_5
    if-eqz v0, :cond_f

    .line 172
    .line 173
    :try_start_3
    const-string v1, "ExifInterface"

    .line 174
    .line 175
    const-string v2, "Invalid image: ExifInterface got an unsupported image format file (ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    .line 176
    .line 177
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    .line 179
    .line 180
    goto :goto_7

    .line 181
    :goto_6
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->a()V

    .line 182
    .line 183
    .line 184
    if-eqz v0, :cond_e

    .line 185
    .line 186
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->s()V

    .line 187
    .line 188
    .line 189
    :cond_e
    throw p1

    .line 190
    :cond_f
    :goto_7
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->a()V

    .line 191
    .line 192
    .line 193
    if-eqz v0, :cond_10

    .line 194
    .line 195
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->s()V

    .line 196
    .line 197
    .line 198
    :cond_10
    return-void
.end method

.method public final r(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/exifinterface/media/ExifInterface;->t(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    iput-object v0, p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->g:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x2a

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Invalid start code: "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v1, 0x8

    .line 56
    .line 57
    if-lt v0, v1, :cond_3

    .line 58
    .line 59
    add-int/lit8 v0, v0, -0x8

    .line 60
    .line 61
    if-lez v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 68
    .line 69
    const-string v1, "Invalid first Ifd offset: "

    .line 70
    .line 71
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method public final s()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    const-string v2, "The size of tag group["

    .line 8
    .line 9
    const-string v3, "]: "

    .line 10
    .line 11
    invoke-static {v0, v2, v3}, Landroid/support/v4/media/a;->s(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    aget-object v3, v1, v0

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "ExifInterface"

    .line 29
    .line 30
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    aget-object v1, v1, v0

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v6, "tagName: "

    .line 64
    .line 65
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", tagType: "

    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ", tagValue: \'"

    .line 90
    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 95
    .line 96
    invoke-virtual {v4, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, "\'"

    .line 104
    .line 105
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public final u([BI)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->r(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->v(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final v(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 8
    .line 9
    iget v4, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->i:I

    .line 10
    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->g:Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string v6, "ExifInterface"

    .line 25
    .line 26
    sget-boolean v7, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    new-instance v8, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v9, "numberOfDirectoryEntry: "

    .line 33
    .line 34
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    if-gtz v3, :cond_1

    .line 48
    .line 49
    goto/16 :goto_15

    .line 50
    .line 51
    :cond_1
    const/4 v9, 0x0

    .line 52
    :goto_0
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 53
    .line 54
    if-ge v9, v3, :cond_2d

    .line 55
    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const-wide/16 v17, 0x0

    .line 63
    .line 64
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    const/16 v19, 0x1

    .line 73
    .line 74
    iget v11, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 75
    .line 76
    int-to-long v10, v11

    .line 77
    const-wide/16 v21, 0x4

    .line 78
    .line 79
    add-long v10, v10, v21

    .line 80
    .line 81
    sget-object v23, Landroidx/exifinterface/media/ExifInterface;->M:[Ljava/util/HashMap;

    .line 82
    .line 83
    const/16 v24, 0x4

    .line 84
    .line 85
    aget-object v15, v23, v2

    .line 86
    .line 87
    move/from16 v25, v3

    .line 88
    .line 89
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 98
    .line 99
    const/16 v23, 0x2

    .line 100
    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v26

    .line 107
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v27

    .line 111
    const/16 v28, 0x3

    .line 112
    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    iget-object v15, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->b:Ljava/lang/String;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    const/4 v15, 0x0

    .line 119
    :goto_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v29

    .line 123
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v30

    .line 127
    move/from16 v31, v7

    .line 128
    .line 129
    const/4 v7, 0x5

    .line 130
    new-array v7, v7, [Ljava/lang/Object;

    .line 131
    .line 132
    aput-object v26, v7, v16

    .line 133
    .line 134
    aput-object v27, v7, v19

    .line 135
    .line 136
    aput-object v15, v7, v23

    .line 137
    .line 138
    aput-object v29, v7, v28

    .line 139
    .line 140
    aput-object v30, v7, v24

    .line 141
    .line 142
    const-string v15, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    .line 143
    .line 144
    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    move/from16 v31, v7

    .line 153
    .line 154
    const/16 v28, 0x3

    .line 155
    .line 156
    :goto_2
    if-nez v3, :cond_5

    .line 157
    .line 158
    if-eqz v31, :cond_4

    .line 159
    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v15, "Skip the tag entry since tag number is not defined: "

    .line 163
    .line 164
    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    :cond_4
    move/from16 v30, v8

    .line 178
    .line 179
    goto/16 :goto_b

    .line 180
    .line 181
    :cond_5
    if-lez v12, :cond_6

    .line 182
    .line 183
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->H:[I

    .line 184
    .line 185
    array-length v15, v7

    .line 186
    if-lt v12, v15, :cond_7

    .line 187
    .line 188
    :cond_6
    move/from16 v30, v8

    .line 189
    .line 190
    goto/16 :goto_a

    .line 191
    .line 192
    :cond_7
    iget v15, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->c:I

    .line 193
    .line 194
    move-object/from16 v29, v7

    .line 195
    .line 196
    const/4 v7, 0x7

    .line 197
    if-eq v15, v7, :cond_9

    .line 198
    .line 199
    if-ne v12, v7, :cond_8

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_8
    if-eq v15, v12, :cond_9

    .line 203
    .line 204
    iget v7, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->d:I

    .line 205
    .line 206
    if-ne v7, v12, :cond_a

    .line 207
    .line 208
    :cond_9
    :goto_3
    move/from16 v30, v8

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_a
    move/from16 v30, v8

    .line 212
    .line 213
    move/from16 v8, v24

    .line 214
    .line 215
    if-eq v15, v8, :cond_b

    .line 216
    .line 217
    if-ne v7, v8, :cond_c

    .line 218
    .line 219
    :cond_b
    move/from16 v8, v28

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_c
    const/16 v8, 0x9

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :goto_4
    if-ne v12, v8, :cond_c

    .line 226
    .line 227
    :goto_5
    const/4 v7, 0x7

    .line 228
    goto :goto_7

    .line 229
    :goto_6
    if-eq v15, v8, :cond_d

    .line 230
    .line 231
    if-ne v7, v8, :cond_e

    .line 232
    .line 233
    :cond_d
    const/16 v8, 0x8

    .line 234
    .line 235
    if-ne v12, v8, :cond_e

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_e
    const/16 v8, 0xc

    .line 239
    .line 240
    if-eq v15, v8, :cond_f

    .line 241
    .line 242
    if-ne v7, v8, :cond_10

    .line 243
    .line 244
    :cond_f
    const/16 v7, 0xb

    .line 245
    .line 246
    if-ne v12, v7, :cond_10

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_10
    if-eqz v31, :cond_15

    .line 250
    .line 251
    new-instance v7, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v8, "Skip the tag entry since data format ("

    .line 254
    .line 255
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->G:[Ljava/lang/String;

    .line 259
    .line 260
    aget-object v8, v8, v12

    .line 261
    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v8, ") is unexpected for tag: "

    .line 266
    .line 267
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v8, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->b:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    goto :goto_b

    .line 283
    :goto_7
    if-ne v12, v7, :cond_11

    .line 284
    .line 285
    move v12, v15

    .line 286
    :cond_11
    int-to-long v7, v13

    .line 287
    aget v15, v29, v12

    .line 288
    .line 289
    move-wide/from16 v32, v7

    .line 290
    .line 291
    int-to-long v7, v15

    .line 292
    mul-long v7, v7, v32

    .line 293
    .line 294
    cmp-long v15, v7, v17

    .line 295
    .line 296
    if-ltz v15, :cond_13

    .line 297
    .line 298
    const-wide/32 v32, 0x7fffffff

    .line 299
    .line 300
    .line 301
    cmp-long v15, v7, v32

    .line 302
    .line 303
    if-lez v15, :cond_12

    .line 304
    .line 305
    goto :goto_8

    .line 306
    :cond_12
    move/from16 v15, v19

    .line 307
    .line 308
    goto :goto_c

    .line 309
    :cond_13
    :goto_8
    if-eqz v31, :cond_14

    .line 310
    .line 311
    new-instance v15, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    move-wide/from16 v32, v7

    .line 314
    .line 315
    const-string v7, "Skip the tag entry since the number of components is invalid: "

    .line 316
    .line 317
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_14
    move-wide/from16 v32, v7

    .line 332
    .line 333
    :goto_9
    move/from16 v15, v16

    .line 334
    .line 335
    move-wide/from16 v7, v32

    .line 336
    .line 337
    goto :goto_c

    .line 338
    :goto_a
    if-eqz v31, :cond_15

    .line 339
    .line 340
    new-instance v7, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v8, "Skip the tag entry since data format is invalid: "

    .line 343
    .line 344
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    :cond_15
    :goto_b
    move/from16 v15, v16

    .line 358
    .line 359
    move-wide/from16 v7, v17

    .line 360
    .line 361
    :goto_c
    if-nez v15, :cond_16

    .line 362
    .line 363
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 364
    .line 365
    .line 366
    move/from16 v29, v9

    .line 367
    .line 368
    goto/16 :goto_14

    .line 369
    .line 370
    :cond_16
    cmp-long v15, v7, v21

    .line 371
    .line 372
    move/from16 v29, v9

    .line 373
    .line 374
    const-string v9, "Compression"

    .line 375
    .line 376
    if-lez v15, :cond_1a

    .line 377
    .line 378
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 379
    .line 380
    .line 381
    move-result v15

    .line 382
    if-eqz v31, :cond_17

    .line 383
    .line 384
    move-object/from16 v32, v14

    .line 385
    .line 386
    new-instance v14, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    move-wide/from16 v33, v10

    .line 389
    .line 390
    const-string v10, "seek to data offset: "

    .line 391
    .line 392
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v10

    .line 402
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    goto :goto_d

    .line 406
    :cond_17
    move-wide/from16 v33, v10

    .line 407
    .line 408
    move-object/from16 v32, v14

    .line 409
    .line 410
    :goto_d
    iget v10, v0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 411
    .line 412
    const/4 v11, 0x7

    .line 413
    if-ne v10, v11, :cond_18

    .line 414
    .line 415
    const-string v10, "MakerNote"

    .line 416
    .line 417
    iget-object v11, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->b:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v10

    .line 423
    if-eqz v10, :cond_19

    .line 424
    .line 425
    iput v15, v0, Landroidx/exifinterface/media/ExifInterface;->k:I

    .line 426
    .line 427
    :cond_18
    move/from16 v21, v13

    .line 428
    .line 429
    goto :goto_e

    .line 430
    :cond_19
    const/4 v10, 0x6

    .line 431
    if-ne v2, v10, :cond_18

    .line 432
    .line 433
    const-string v11, "ThumbnailImage"

    .line 434
    .line 435
    iget-object v14, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->b:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v11

    .line 441
    if-eqz v11, :cond_18

    .line 442
    .line 443
    iput v15, v0, Landroidx/exifinterface/media/ExifInterface;->l:I

    .line 444
    .line 445
    iput v13, v0, Landroidx/exifinterface/media/ExifInterface;->m:I

    .line 446
    .line 447
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 448
    .line 449
    invoke-static {v10, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 450
    .line 451
    .line 452
    move-result-object v10

    .line 453
    iget v11, v0, Landroidx/exifinterface/media/ExifInterface;->l:I

    .line 454
    .line 455
    move/from16 v21, v13

    .line 456
    .line 457
    int-to-long v13, v11

    .line 458
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 459
    .line 460
    invoke-static {v13, v14, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 461
    .line 462
    .line 463
    move-result-object v11

    .line 464
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->m:I

    .line 465
    .line 466
    int-to-long v13, v13

    .line 467
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 468
    .line 469
    invoke-static {v13, v14, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    const/16 v24, 0x4

    .line 474
    .line 475
    aget-object v13, v32, v24

    .line 476
    .line 477
    invoke-virtual {v13, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    aget-object v10, v32, v24

    .line 481
    .line 482
    const-string v13, "JPEGInterchangeFormat"

    .line 483
    .line 484
    invoke-virtual {v10, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    aget-object v10, v32, v24

    .line 488
    .line 489
    const-string v11, "JPEGInterchangeFormatLength"

    .line 490
    .line 491
    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    :goto_e
    int-to-long v10, v15

    .line 495
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 496
    .line 497
    .line 498
    goto :goto_f

    .line 499
    :cond_1a
    move-wide/from16 v33, v10

    .line 500
    .line 501
    move/from16 v21, v13

    .line 502
    .line 503
    move-object/from16 v32, v14

    .line 504
    .line 505
    :goto_f
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->P:Ljava/util/HashMap;

    .line 506
    .line 507
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v10

    .line 511
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    check-cast v2, Ljava/lang/Integer;

    .line 516
    .line 517
    if-eqz v31, :cond_1b

    .line 518
    .line 519
    new-instance v10, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    const-string v11, "nextIfdType: "

    .line 522
    .line 523
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string v11, " byteCount: "

    .line 530
    .line 531
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v10

    .line 541
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    :cond_1b
    if-eqz v2, :cond_26

    .line 545
    .line 546
    const/4 v10, 0x3

    .line 547
    if-eq v12, v10, :cond_1f

    .line 548
    .line 549
    const/4 v8, 0x4

    .line 550
    if-eq v12, v8, :cond_1e

    .line 551
    .line 552
    const/16 v8, 0x8

    .line 553
    .line 554
    if-eq v12, v8, :cond_1d

    .line 555
    .line 556
    const/16 v8, 0x9

    .line 557
    .line 558
    if-eq v12, v8, :cond_1c

    .line 559
    .line 560
    const/16 v7, 0xd

    .line 561
    .line 562
    if-eq v12, v7, :cond_1c

    .line 563
    .line 564
    const-wide/16 v7, -0x1

    .line 565
    .line 566
    goto :goto_11

    .line 567
    :cond_1c
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 568
    .line 569
    .line 570
    move-result v7

    .line 571
    :goto_10
    int-to-long v7, v7

    .line 572
    goto :goto_11

    .line 573
    :cond_1d
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    .line 574
    .line 575
    .line 576
    move-result v7

    .line 577
    goto :goto_10

    .line 578
    :cond_1e
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 579
    .line 580
    .line 581
    move-result v7

    .line 582
    int-to-long v7, v7

    .line 583
    const-wide v9, 0xffffffffL

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    and-long/2addr v7, v9

    .line 589
    goto :goto_11

    .line 590
    :cond_1f
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    .line 591
    .line 592
    .line 593
    move-result v7

    .line 594
    goto :goto_10

    .line 595
    :goto_11
    if-eqz v31, :cond_20

    .line 596
    .line 597
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 598
    .line 599
    .line 600
    move-result-object v9

    .line 601
    iget-object v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->b:Ljava/lang/String;

    .line 602
    .line 603
    move/from16 v10, v23

    .line 604
    .line 605
    new-array v10, v10, [Ljava/lang/Object;

    .line 606
    .line 607
    aput-object v9, v10, v16

    .line 608
    .line 609
    aput-object v3, v10, v19

    .line 610
    .line 611
    const-string v3, "Offset: %d, tagName: %s"

    .line 612
    .line 613
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    :cond_20
    cmp-long v3, v7, v17

    .line 621
    .line 622
    const-string v9, ")"

    .line 623
    .line 624
    const/4 v10, -0x1

    .line 625
    if-lez v3, :cond_24

    .line 626
    .line 627
    if-eq v4, v10, :cond_21

    .line 628
    .line 629
    int-to-long v11, v4

    .line 630
    cmp-long v3, v7, v11

    .line 631
    .line 632
    if-gez v3, :cond_24

    .line 633
    .line 634
    :cond_21
    long-to-int v3, v7

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v3

    .line 639
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v3

    .line 643
    if-nez v3, :cond_23

    .line 644
    .line 645
    invoke-virtual {v1, v7, v8}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->v(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 653
    .line 654
    .line 655
    :cond_22
    :goto_12
    move-wide/from16 v10, v33

    .line 656
    .line 657
    goto :goto_13

    .line 658
    :cond_23
    if-eqz v31, :cond_22

    .line 659
    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    .line 661
    .line 662
    const-string v10, "Skip jump into the IFD since it has already been read: IfdType "

    .line 663
    .line 664
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    const-string v2, " (at "

    .line 671
    .line 672
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    goto :goto_12

    .line 689
    :cond_24
    if-eqz v31, :cond_22

    .line 690
    .line 691
    const-string v2, "Skip jump into the IFD since its offset is invalid: "

    .line 692
    .line 693
    invoke-static {v7, v8, v2}, Landroid/support/v4/media/a;->h(JLjava/lang/String;)Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v2

    .line 697
    if-eq v4, v10, :cond_25

    .line 698
    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    const-string v2, " (total length: "

    .line 708
    .line 709
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    :cond_25
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .line 724
    .line 725
    goto :goto_12

    .line 726
    :goto_13
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 727
    .line 728
    .line 729
    goto :goto_14

    .line 730
    :cond_26
    move-wide/from16 v10, v33

    .line 731
    .line 732
    iget v2, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 733
    .line 734
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->j:I

    .line 735
    .line 736
    add-int/2addr v2, v13

    .line 737
    long-to-int v7, v7

    .line 738
    new-array v7, v7, [B

    .line 739
    .line 740
    invoke-virtual {v1, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 741
    .line 742
    .line 743
    new-instance v19, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 744
    .line 745
    int-to-long v13, v2

    .line 746
    move-object/from16 v22, v7

    .line 747
    .line 748
    move/from16 v23, v12

    .line 749
    .line 750
    move/from16 v24, v21

    .line 751
    .line 752
    move-wide/from16 v20, v13

    .line 753
    .line 754
    invoke-direct/range {v19 .. v24}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(J[BII)V

    .line 755
    .line 756
    .line 757
    move-object/from16 v2, v19

    .line 758
    .line 759
    aget-object v7, v32, p2

    .line 760
    .line 761
    iget-object v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->b:Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    const-string v7, "DNGVersion"

    .line 767
    .line 768
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v7

    .line 772
    if-eqz v7, :cond_27

    .line 773
    .line 774
    const/4 v8, 0x3

    .line 775
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 776
    .line 777
    :cond_27
    const-string v7, "Make"

    .line 778
    .line 779
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v7

    .line 783
    if-nez v7, :cond_28

    .line 784
    .line 785
    const-string v7, "Model"

    .line 786
    .line 787
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v7

    .line 791
    if-eqz v7, :cond_29

    .line 792
    .line 793
    :cond_28
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 794
    .line 795
    invoke-virtual {v2, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->f(Ljava/nio/ByteOrder;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    const-string v8, "PENTAX"

    .line 800
    .line 801
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 802
    .line 803
    .line 804
    move-result v7

    .line 805
    if-nez v7, :cond_2a

    .line 806
    .line 807
    :cond_29
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 808
    .line 809
    .line 810
    move-result v3

    .line 811
    if-eqz v3, :cond_2b

    .line 812
    .line 813
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 814
    .line 815
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 816
    .line 817
    .line 818
    move-result v2

    .line 819
    const v3, 0xffff

    .line 820
    .line 821
    .line 822
    if-ne v2, v3, :cond_2b

    .line 823
    .line 824
    :cond_2a
    const/16 v8, 0x8

    .line 825
    .line 826
    iput v8, v0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 827
    .line 828
    :cond_2b
    iget v2, v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->f:I

    .line 829
    .line 830
    int-to-long v2, v2

    .line 831
    cmp-long v2, v2, v10

    .line 832
    .line 833
    if-eqz v2, :cond_2c

    .line 834
    .line 835
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 836
    .line 837
    .line 838
    :cond_2c
    :goto_14
    add-int/lit8 v9, v29, 0x1

    .line 839
    .line 840
    int-to-short v9, v9

    .line 841
    move/from16 v2, p2

    .line 842
    .line 843
    move/from16 v3, v25

    .line 844
    .line 845
    move/from16 v7, v31

    .line 846
    .line 847
    goto/16 :goto_0

    .line 848
    .line 849
    :cond_2d
    move/from16 v31, v7

    .line 850
    .line 851
    move-object/from16 v32, v14

    .line 852
    .line 853
    const/16 v16, 0x0

    .line 854
    .line 855
    const-wide/16 v17, 0x0

    .line 856
    .line 857
    const/16 v19, 0x1

    .line 858
    .line 859
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    .line 860
    .line 861
    .line 862
    move-result v2

    .line 863
    if-eqz v31, :cond_2e

    .line 864
    .line 865
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 866
    .line 867
    .line 868
    move-result-object v3

    .line 869
    move/from16 v4, v19

    .line 870
    .line 871
    new-array v4, v4, [Ljava/lang/Object;

    .line 872
    .line 873
    aput-object v3, v4, v16

    .line 874
    .line 875
    const-string v3, "nextIfdOffset: %d"

    .line 876
    .line 877
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 878
    .line 879
    .line 880
    move-result-object v3

    .line 881
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .line 883
    .line 884
    :cond_2e
    int-to-long v3, v2

    .line 885
    cmp-long v7, v3, v17

    .line 886
    .line 887
    if-lez v7, :cond_31

    .line 888
    .line 889
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 890
    .line 891
    .line 892
    move-result-object v7

    .line 893
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result v5

    .line 897
    if-nez v5, :cond_30

    .line 898
    .line 899
    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 900
    .line 901
    .line 902
    const/4 v8, 0x4

    .line 903
    aget-object v2, v32, v8

    .line 904
    .line 905
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    if-eqz v2, :cond_2f

    .line 910
    .line 911
    invoke-virtual {v0, v1, v8}, Landroidx/exifinterface/media/ExifInterface;->v(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 912
    .line 913
    .line 914
    return-void

    .line 915
    :cond_2f
    const/4 v7, 0x5

    .line 916
    aget-object v2, v32, v7

    .line 917
    .line 918
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 919
    .line 920
    .line 921
    move-result v2

    .line 922
    if-eqz v2, :cond_32

    .line 923
    .line 924
    invoke-virtual {v0, v1, v7}, Landroidx/exifinterface/media/ExifInterface;->v(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V

    .line 925
    .line 926
    .line 927
    return-void

    .line 928
    :cond_30
    if-eqz v31, :cond_32

    .line 929
    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    .line 931
    .line 932
    const-string v3, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    .line 933
    .line 934
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v1

    .line 944
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .line 946
    .line 947
    return-void

    .line 948
    :cond_31
    if-eqz v31, :cond_32

    .line 949
    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    const-string v3, "Stop reading file since a wrong offset may cause an infinite loop: "

    .line 953
    .line 954
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .line 966
    .line 967
    :cond_32
    :goto_15
    return-void
.end method

.method public final w(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    aget-object v1, v0, p1

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    aget-object v1, v0, p1

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 26
    .line 27
    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    aget-object p1, v0, p1

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final x(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    aget-object v2, v2, v3

    .line 9
    .line 10
    const-string v3, "Compression"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 17
    .line 18
    if-eqz v3, :cond_10

    .line 19
    .line 20
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x6

    .line 27
    const/4 v5, 0x1

    .line 28
    if-eq v3, v5, :cond_1

    .line 29
    .line 30
    if-eq v3, v4, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x7

    .line 33
    if-eq v3, v6, :cond_1

    .line 34
    .line 35
    goto/16 :goto_5

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->o(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    const-string v3, "BitsPerSample"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 48
    .line 49
    const-string v6, "ExifInterface"

    .line 50
    .line 51
    if-eqz v3, :cond_e

    .line 52
    .line 53
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 54
    .line 55
    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, [I

    .line 60
    .line 61
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->r:[I

    .line 62
    .line 63
    invoke-static {v7, v3}, Ljava/util/Arrays;->equals([I[I)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget v8, v0, Landroidx/exifinterface/media/ExifInterface;->d:I

    .line 71
    .line 72
    const/4 v9, 0x3

    .line 73
    if-ne v8, v9, :cond_e

    .line 74
    .line 75
    const-string v8, "PhotometricInterpretation"

    .line 76
    .line 77
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 82
    .line 83
    if-eqz v8, :cond_e

    .line 84
    .line 85
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 86
    .line 87
    invoke-virtual {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-ne v8, v5, :cond_3

    .line 92
    .line 93
    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->s:[I

    .line 94
    .line 95
    invoke-static {v3, v9}, Ljava/util/Arrays;->equals([I[I)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_4

    .line 100
    .line 101
    :cond_3
    if-ne v8, v4, :cond_e

    .line 102
    .line 103
    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([I[I)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_e

    .line 108
    .line 109
    :cond_4
    :goto_0
    const-string v3, " bytes."

    .line 110
    .line 111
    const-string v4, "StripOffsets"

    .line 112
    .line 113
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 118
    .line 119
    const-string v7, "StripByteCounts"

    .line 120
    .line 121
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 126
    .line 127
    if-eqz v4, :cond_f

    .line 128
    .line 129
    if-eqz v2, :cond_f

    .line 130
    .line 131
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 132
    .line 133
    invoke-virtual {v4, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterfaceUtils;->a(Ljava/io/Serializable;)[J

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 142
    .line 143
    invoke-virtual {v2, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterfaceUtils;->a(Ljava/io/Serializable;)[J

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v4, :cond_d

    .line 152
    .line 153
    array-length v7, v4

    .line 154
    if-nez v7, :cond_5

    .line 155
    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :cond_5
    if-eqz v2, :cond_c

    .line 159
    .line 160
    array-length v7, v2

    .line 161
    if-nez v7, :cond_6

    .line 162
    .line 163
    goto/16 :goto_3

    .line 164
    .line 165
    :cond_6
    array-length v7, v4

    .line 166
    array-length v8, v2

    .line 167
    if-eq v7, v8, :cond_7

    .line 168
    .line 169
    const-string v1, "stripOffsets and stripByteCounts should have same length."

    .line 170
    .line 171
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto/16 :goto_5

    .line 175
    .line 176
    :cond_7
    array-length v7, v2

    .line 177
    const/4 v8, 0x0

    .line 178
    const-wide/16 v9, 0x0

    .line 179
    .line 180
    move v11, v8

    .line 181
    :goto_1
    if-ge v11, v7, :cond_8

    .line 182
    .line 183
    aget-wide v12, v2, v11

    .line 184
    .line 185
    add-long/2addr v9, v12

    .line 186
    add-int/lit8 v11, v11, 0x1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_8
    long-to-int v7, v9

    .line 190
    new-array v7, v7, [B

    .line 191
    .line 192
    iput-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->i:Z

    .line 193
    .line 194
    move v9, v8

    .line 195
    move v10, v9

    .line 196
    move v11, v10

    .line 197
    :goto_2
    array-length v12, v4

    .line 198
    if-ge v9, v12, :cond_b

    .line 199
    .line 200
    aget-wide v12, v4, v9

    .line 201
    .line 202
    long-to-int v12, v12

    .line 203
    aget-wide v13, v2, v9

    .line 204
    .line 205
    long-to-int v13, v13

    .line 206
    array-length v14, v4

    .line 207
    sub-int/2addr v14, v5

    .line 208
    if-ge v9, v14, :cond_9

    .line 209
    .line 210
    add-int v14, v12, v13

    .line 211
    .line 212
    int-to-long v14, v14

    .line 213
    add-int/lit8 v16, v9, 0x1

    .line 214
    .line 215
    aget-wide v16, v4, v16

    .line 216
    .line 217
    cmp-long v14, v14, v16

    .line 218
    .line 219
    if-eqz v14, :cond_9

    .line 220
    .line 221
    iput-boolean v8, v0, Landroidx/exifinterface/media/ExifInterface;->i:Z

    .line 222
    .line 223
    :cond_9
    sub-int/2addr v12, v10

    .line 224
    if-gez v12, :cond_a

    .line 225
    .line 226
    const-string v1, "Invalid strip offset value"

    .line 227
    .line 228
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_a
    :try_start_0
    invoke-virtual {v1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->a(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    .line 234
    .line 235
    add-int/2addr v10, v12

    .line 236
    new-array v12, v13, [B

    .line 237
    .line 238
    :try_start_1
    invoke-virtual {v1, v12}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    .line 240
    .line 241
    add-int/2addr v10, v13

    .line 242
    invoke-static {v12, v8, v7, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    .line 244
    .line 245
    add-int/2addr v11, v13

    .line 246
    add-int/lit8 v9, v9, 0x1

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v2, "Failed to read "

    .line 252
    .line 253
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string v2, "Failed to skip "

    .line 273
    .line 274
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    goto :goto_5

    .line 291
    :cond_b
    iget-boolean v1, v0, Landroidx/exifinterface/media/ExifInterface;->i:Z

    .line 292
    .line 293
    if-eqz v1, :cond_f

    .line 294
    .line 295
    aget-wide v1, v4, v8

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_c
    :goto_3
    const-string v1, "stripByteCounts should not be null or have zero length."

    .line 299
    .line 300
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_d
    :goto_4
    const-string v1, "stripOffsets should not be null or have zero length."

    .line 305
    .line 306
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_e
    sget-boolean v1, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 311
    .line 312
    if-eqz v1, :cond_f

    .line 313
    .line 314
    const-string v1, "Unsupported data type value"

    .line 315
    .line 316
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    :cond_f
    :goto_5
    return-void

    .line 320
    :cond_10
    invoke-virtual {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->o(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 321
    .line 322
    .line 323
    return-void
.end method

.method public final y(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "ExifInterface"

    .line 10
    .line 11
    sget-boolean v3, Landroidx/exifinterface/media/ExifInterface;->o:Z

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    aget-object v1, v0, p2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    aget-object v1, v0, p1

    .line 25
    .line 26
    const-string v4, "ImageLength"

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 33
    .line 34
    aget-object v5, v0, p1

    .line 35
    .line 36
    const-string v6, "ImageWidth"

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 43
    .line 44
    aget-object v7, v0, p2

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 51
    .line 52
    aget-object v7, v0, p2

    .line 53
    .line 54
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    if-eqz v4, :cond_3

    .line 66
    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 77
    .line 78
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 89
    .line 90
    invoke-virtual {v6, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-ge v1, v3, :cond_6

    .line 95
    .line 96
    if-ge v2, v4, :cond_6

    .line 97
    .line 98
    aget-object v1, v0, p1

    .line 99
    .line 100
    aget-object v2, v0, p2

    .line 101
    .line 102
    aput-object v2, v0, p1

    .line 103
    .line 104
    aput-object v1, v0, p2

    .line 105
    .line 106
    return-void

    .line 107
    :cond_3
    :goto_0
    if-eqz v3, :cond_6

    .line 108
    .line 109
    const-string p1, "Second image does not contain valid size information"

    .line 110
    .line 111
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    .line 116
    .line 117
    const-string p1, "First image does not contain valid size information"

    .line 118
    .line 119
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 124
    .line 125
    const-string p1, "Cannot perform swap since only one image data exists"

    .line 126
    .line 127
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_6
    return-void
.end method

.method public final z(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->f:[Ljava/util/HashMap;

    .line 2
    .line 3
    aget-object v1, v0, p2

    .line 4
    .line 5
    const-string v2, "DefaultCropSize"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 12
    .line 13
    aget-object v2, v0, p2

    .line 14
    .line 15
    const-string v3, "SensorTopBorder"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 22
    .line 23
    aget-object v3, v0, p2

    .line 24
    .line 25
    const-string v4, "SensorLeftBorder"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 32
    .line 33
    aget-object v4, v0, p2

    .line 34
    .line 35
    const-string v5, "SensorBottomBorder"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 42
    .line 43
    aget-object v5, v0, p2

    .line 44
    .line 45
    const-string v6, "SensorRightBorder"

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 52
    .line 53
    const-string v6, "ImageLength"

    .line 54
    .line 55
    const-string v7, "ImageWidth"

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    iget p1, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->a:I

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    const-string v3, "Invalid crop size values. cropSize="

    .line 63
    .line 64
    const-string v4, "ExifInterface"

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x2

    .line 69
    if-ne p1, v2, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    array-length v1, p1

    .line 82
    if-eq v1, v9, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    aget-object v1, p1, v8

    .line 86
    .line 87
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 88
    .line 89
    invoke-static {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->b(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    aget-object p1, p1, v5

    .line 94
    .line 95
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 96
    .line 97
    invoke-static {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->b(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 123
    .line 124
    invoke-virtual {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->g(Ljava/nio/ByteOrder;)Ljava/io/Serializable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, [I

    .line 129
    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    array-length v1, p1

    .line 133
    if-eq v1, v9, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    aget v1, p1, v8

    .line 137
    .line 138
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 139
    .line 140
    invoke-static {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    aget p1, p1, v5

    .line 145
    .line 146
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 147
    .line 148
    invoke-static {p1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    :goto_1
    aget-object v2, v0, p2

    .line 153
    .line 154
    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    aget-object p2, v0, p2

    .line 158
    .line 159
    invoke-virtual {p2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_5
    if-eqz v2, :cond_6

    .line 184
    .line 185
    if-eqz v3, :cond_6

    .line 186
    .line 187
    if-eqz v4, :cond_6

    .line 188
    .line 189
    if-eqz v5, :cond_6

    .line 190
    .line 191
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 192
    .line 193
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 198
    .line 199
    invoke-virtual {v4, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 204
    .line 205
    invoke-virtual {v5, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-le v1, p1, :cond_8

    .line 216
    .line 217
    if-le v2, v3, :cond_8

    .line 218
    .line 219
    sub-int/2addr v1, p1

    .line 220
    sub-int/2addr v2, v3

    .line 221
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 222
    .line 223
    invoke-static {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 228
    .line 229
    invoke-static {v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->c(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    aget-object v2, v0, p2

    .line 234
    .line 235
    invoke-virtual {v2, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    aget-object p1, v0, p2

    .line 239
    .line 240
    invoke-virtual {p1, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_6
    aget-object v1, v0, p2

    .line 245
    .line 246
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 251
    .line 252
    aget-object v2, v0, p2

    .line 253
    .line 254
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 259
    .line 260
    if-eqz v1, :cond_7

    .line 261
    .line 262
    if-nez v2, :cond_8

    .line 263
    .line 264
    :cond_7
    aget-object v1, v0, p2

    .line 265
    .line 266
    const-string v2, "JPEGInterchangeFormat"

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 273
    .line 274
    aget-object v0, v0, p2

    .line 275
    .line 276
    const-string v2, "JPEGInterchangeFormatLength"

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 283
    .line 284
    if-eqz v1, :cond_8

    .line 285
    .line 286
    if-eqz v0, :cond_8

    .line 287
    .line 288
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 289
    .line 290
    invoke-virtual {v1, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->h:Ljava/nio/ByteOrder;

    .line 295
    .line 296
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->e(Ljava/nio/ByteOrder;)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    int-to-long v2, v0

    .line 301
    invoke-virtual {p1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->b(J)V

    .line 302
    .line 303
    .line 304
    new-array v1, v1, [B

    .line 305
    .line 306
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 307
    .line 308
    .line 309
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    .line 310
    .line 311
    invoke-direct {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->f(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 315
    .line 316
    .line 317
    :cond_8
    return-void
.end method
