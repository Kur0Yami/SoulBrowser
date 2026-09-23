.class public final enum Lfi/iki/elonen/NanoHTTPD$Response$Status;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lfi/iki/elonen/NanoHTTPD$Response$IStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoHTTPD$Response$Status;",
        ">;",
        "Lfi/iki/elonen/NanoHTTPD$Response$IStatus;"
    }
.end annotation


# static fields
.field public static final enum g:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum h:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum i:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum j:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum k:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum l:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final enum m:Lfi/iki/elonen/NanoHTTPD$Response$Status;

.field public static final synthetic n:[Lfi/iki/elonen/NanoHTTPD$Response$Status;


# instance fields
.field public final c:I

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 58

    .line 1
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    const-string v2, "Switching Protocols"

    .line 6
    .line 7
    const-string v3, "SWITCH_PROTOCOL"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 14
    .line 15
    const/16 v2, 0xc8

    .line 16
    .line 17
    const-string v3, "OK"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v3, v5, v2, v3}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->g:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 24
    .line 25
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 26
    .line 27
    const/16 v3, 0xc9

    .line 28
    .line 29
    const-string v6, "Created"

    .line 30
    .line 31
    const-string v7, "CREATED"

    .line 32
    .line 33
    const/4 v8, 0x2

    .line 34
    invoke-direct {v2, v7, v8, v3, v6}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 38
    .line 39
    const/16 v6, 0xca

    .line 40
    .line 41
    const-string v7, "Accepted"

    .line 42
    .line 43
    const-string v9, "ACCEPTED"

    .line 44
    .line 45
    const/4 v10, 0x3

    .line 46
    invoke-direct {v3, v9, v10, v6, v7}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 50
    .line 51
    const/16 v7, 0xcc

    .line 52
    .line 53
    const-string v9, "No Content"

    .line 54
    .line 55
    const-string v11, "NO_CONTENT"

    .line 56
    .line 57
    const/4 v12, 0x4

    .line 58
    invoke-direct {v6, v11, v12, v7, v9}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 62
    .line 63
    const/16 v9, 0xce

    .line 64
    .line 65
    const-string v11, "Partial Content"

    .line 66
    .line 67
    const-string v13, "PARTIAL_CONTENT"

    .line 68
    .line 69
    const/4 v14, 0x5

    .line 70
    invoke-direct {v7, v13, v14, v9, v11}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sput-object v7, Lfi/iki/elonen/NanoHTTPD$Response$Status;->h:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 74
    .line 75
    new-instance v9, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 76
    .line 77
    const/16 v11, 0xcf

    .line 78
    .line 79
    const-string v13, "Multi-Status"

    .line 80
    .line 81
    const-string v15, "MULTI_STATUS"

    .line 82
    .line 83
    move/from16 v16, v4

    .line 84
    .line 85
    const/4 v4, 0x6

    .line 86
    invoke-direct {v9, v15, v4, v11, v13}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v11, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 90
    .line 91
    const/16 v13, 0x12d

    .line 92
    .line 93
    const-string v15, "Moved Permanently"

    .line 94
    .line 95
    move/from16 v17, v4

    .line 96
    .line 97
    const-string v4, "REDIRECT"

    .line 98
    .line 99
    move/from16 v18, v5

    .line 100
    .line 101
    const/4 v5, 0x7

    .line 102
    invoke-direct {v11, v4, v5, v13, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 106
    .line 107
    const/16 v13, 0x12e

    .line 108
    .line 109
    const-string v15, "Found"

    .line 110
    .line 111
    move/from16 v19, v5

    .line 112
    .line 113
    const-string v5, "FOUND"

    .line 114
    .line 115
    move/from16 v20, v8

    .line 116
    .line 117
    const/16 v8, 0x8

    .line 118
    .line 119
    invoke-direct {v4, v5, v8, v13, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 123
    .line 124
    const/16 v13, 0x12f

    .line 125
    .line 126
    const-string v15, "See Other"

    .line 127
    .line 128
    move/from16 v21, v8

    .line 129
    .line 130
    const-string v8, "REDIRECT_SEE_OTHER"

    .line 131
    .line 132
    move/from16 v22, v10

    .line 133
    .line 134
    const/16 v10, 0x9

    .line 135
    .line 136
    invoke-direct {v5, v8, v10, v13, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 140
    .line 141
    const/16 v13, 0x130

    .line 142
    .line 143
    const-string v15, "Not Modified"

    .line 144
    .line 145
    move/from16 v23, v10

    .line 146
    .line 147
    const-string v10, "NOT_MODIFIED"

    .line 148
    .line 149
    move/from16 v24, v12

    .line 150
    .line 151
    const/16 v12, 0xa

    .line 152
    .line 153
    invoke-direct {v8, v10, v12, v13, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    sput-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->i:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 157
    .line 158
    new-instance v10, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 159
    .line 160
    const/16 v13, 0x133

    .line 161
    .line 162
    const-string v15, "Temporary Redirect"

    .line 163
    .line 164
    move/from16 v25, v12

    .line 165
    .line 166
    const-string v12, "TEMPORARY_REDIRECT"

    .line 167
    .line 168
    move/from16 v26, v14

    .line 169
    .line 170
    const/16 v14, 0xb

    .line 171
    .line 172
    invoke-direct {v10, v12, v14, v13, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v12, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 176
    .line 177
    const/16 v13, 0x190

    .line 178
    .line 179
    const-string v15, "Bad Request"

    .line 180
    .line 181
    move/from16 v27, v14

    .line 182
    .line 183
    const-string v14, "BAD_REQUEST"

    .line 184
    .line 185
    move-object/from16 v28, v0

    .line 186
    .line 187
    const/16 v0, 0xc

    .line 188
    .line 189
    invoke-direct {v12, v14, v0, v13, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sput-object v12, Lfi/iki/elonen/NanoHTTPD$Response$Status;->j:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 193
    .line 194
    new-instance v13, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 195
    .line 196
    const/16 v14, 0x191

    .line 197
    .line 198
    const-string v15, "Unauthorized"

    .line 199
    .line 200
    move/from16 v29, v0

    .line 201
    .line 202
    const-string v0, "UNAUTHORIZED"

    .line 203
    .line 204
    move-object/from16 v30, v1

    .line 205
    .line 206
    const/16 v1, 0xd

    .line 207
    .line 208
    invoke-direct {v13, v0, v1, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 212
    .line 213
    const/16 v14, 0x193

    .line 214
    .line 215
    const-string v15, "Forbidden"

    .line 216
    .line 217
    move/from16 v31, v1

    .line 218
    .line 219
    const-string v1, "FORBIDDEN"

    .line 220
    .line 221
    move-object/from16 v32, v2

    .line 222
    .line 223
    const/16 v2, 0xe

    .line 224
    .line 225
    invoke-direct {v0, v1, v2, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 229
    .line 230
    const/16 v14, 0x194

    .line 231
    .line 232
    const-string v15, "Not Found"

    .line 233
    .line 234
    move/from16 v33, v2

    .line 235
    .line 236
    const-string v2, "NOT_FOUND"

    .line 237
    .line 238
    move-object/from16 v34, v0

    .line 239
    .line 240
    const/16 v0, 0xf

    .line 241
    .line 242
    invoke-direct {v1, v2, v0, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    sput-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->k:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 246
    .line 247
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 248
    .line 249
    const/16 v14, 0x195

    .line 250
    .line 251
    const-string v15, "Method Not Allowed"

    .line 252
    .line 253
    move/from16 v35, v0

    .line 254
    .line 255
    const-string v0, "METHOD_NOT_ALLOWED"

    .line 256
    .line 257
    move-object/from16 v36, v1

    .line 258
    .line 259
    const/16 v1, 0x10

    .line 260
    .line 261
    invoke-direct {v2, v0, v1, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 265
    .line 266
    const/16 v14, 0x196

    .line 267
    .line 268
    const-string v15, "Not Acceptable"

    .line 269
    .line 270
    move/from16 v37, v1

    .line 271
    .line 272
    const-string v1, "NOT_ACCEPTABLE"

    .line 273
    .line 274
    move-object/from16 v38, v2

    .line 275
    .line 276
    const/16 v2, 0x11

    .line 277
    .line 278
    invoke-direct {v0, v1, v2, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 282
    .line 283
    const/16 v14, 0x198

    .line 284
    .line 285
    const-string v15, "Request Timeout"

    .line 286
    .line 287
    move/from16 v39, v2

    .line 288
    .line 289
    const-string v2, "REQUEST_TIMEOUT"

    .line 290
    .line 291
    move-object/from16 v40, v0

    .line 292
    .line 293
    const/16 v0, 0x12

    .line 294
    .line 295
    invoke-direct {v1, v2, v0, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 299
    .line 300
    const/16 v14, 0x199

    .line 301
    .line 302
    const-string v15, "Conflict"

    .line 303
    .line 304
    move/from16 v41, v0

    .line 305
    .line 306
    const-string v0, "CONFLICT"

    .line 307
    .line 308
    move-object/from16 v42, v1

    .line 309
    .line 310
    const/16 v1, 0x13

    .line 311
    .line 312
    invoke-direct {v2, v0, v1, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 316
    .line 317
    const/16 v14, 0x19a

    .line 318
    .line 319
    const-string v15, "Gone"

    .line 320
    .line 321
    move/from16 v43, v1

    .line 322
    .line 323
    const-string v1, "GONE"

    .line 324
    .line 325
    move-object/from16 v44, v2

    .line 326
    .line 327
    const/16 v2, 0x14

    .line 328
    .line 329
    invoke-direct {v0, v1, v2, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 333
    .line 334
    const/16 v14, 0x19b

    .line 335
    .line 336
    const-string v15, "Length Required"

    .line 337
    .line 338
    move/from16 v45, v2

    .line 339
    .line 340
    const-string v2, "LENGTH_REQUIRED"

    .line 341
    .line 342
    move-object/from16 v46, v0

    .line 343
    .line 344
    const/16 v0, 0x15

    .line 345
    .line 346
    invoke-direct {v1, v2, v0, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 350
    .line 351
    const/16 v14, 0x19c

    .line 352
    .line 353
    const-string v15, "Precondition Failed"

    .line 354
    .line 355
    move/from16 v47, v0

    .line 356
    .line 357
    const-string v0, "PRECONDITION_FAILED"

    .line 358
    .line 359
    move-object/from16 v48, v1

    .line 360
    .line 361
    const/16 v1, 0x16

    .line 362
    .line 363
    invoke-direct {v2, v0, v1, v14, v15}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 364
    .line 365
    .line 366
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 367
    .line 368
    const/16 v1, 0x19d

    .line 369
    .line 370
    const-string v14, "Payload Too Large"

    .line 371
    .line 372
    const-string v15, "PAYLOAD_TOO_LARGE"

    .line 373
    .line 374
    move-object/from16 v49, v2

    .line 375
    .line 376
    const/16 v2, 0x17

    .line 377
    .line 378
    invoke-direct {v0, v15, v2, v1, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 379
    .line 380
    .line 381
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 382
    .line 383
    const/16 v2, 0x19f

    .line 384
    .line 385
    const-string v14, "Unsupported Media Type"

    .line 386
    .line 387
    const-string v15, "UNSUPPORTED_MEDIA_TYPE"

    .line 388
    .line 389
    move-object/from16 v50, v0

    .line 390
    .line 391
    const/16 v0, 0x18

    .line 392
    .line 393
    invoke-direct {v1, v15, v0, v2, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 394
    .line 395
    .line 396
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 397
    .line 398
    const/16 v2, 0x1a0

    .line 399
    .line 400
    const-string v14, "Requested Range Not Satisfiable"

    .line 401
    .line 402
    const-string v15, "RANGE_NOT_SATISFIABLE"

    .line 403
    .line 404
    move-object/from16 v51, v1

    .line 405
    .line 406
    const/16 v1, 0x19

    .line 407
    .line 408
    invoke-direct {v0, v15, v1, v2, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 409
    .line 410
    .line 411
    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->l:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 412
    .line 413
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 414
    .line 415
    const/16 v2, 0x1a1

    .line 416
    .line 417
    const-string v14, "Expectation Failed"

    .line 418
    .line 419
    const-string v15, "EXPECTATION_FAILED"

    .line 420
    .line 421
    move-object/from16 v52, v0

    .line 422
    .line 423
    const/16 v0, 0x1a

    .line 424
    .line 425
    invoke-direct {v1, v15, v0, v2, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 426
    .line 427
    .line 428
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 429
    .line 430
    const/16 v2, 0x1ad

    .line 431
    .line 432
    const-string v14, "Too Many Requests"

    .line 433
    .line 434
    const-string v15, "TOO_MANY_REQUESTS"

    .line 435
    .line 436
    move-object/from16 v53, v1

    .line 437
    .line 438
    const/16 v1, 0x1b

    .line 439
    .line 440
    invoke-direct {v0, v15, v1, v2, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 441
    .line 442
    .line 443
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 444
    .line 445
    const/16 v2, 0x1f4

    .line 446
    .line 447
    const-string v14, "Internal Server Error"

    .line 448
    .line 449
    const-string v15, "INTERNAL_ERROR"

    .line 450
    .line 451
    move-object/from16 v54, v0

    .line 452
    .line 453
    const/16 v0, 0x1c

    .line 454
    .line 455
    invoke-direct {v1, v15, v0, v2, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 456
    .line 457
    .line 458
    sput-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->m:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 459
    .line 460
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 461
    .line 462
    const/16 v2, 0x1f5

    .line 463
    .line 464
    const-string v14, "Not Implemented"

    .line 465
    .line 466
    const-string v15, "NOT_IMPLEMENTED"

    .line 467
    .line 468
    move-object/from16 v55, v1

    .line 469
    .line 470
    const/16 v1, 0x1d

    .line 471
    .line 472
    invoke-direct {v0, v15, v1, v2, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 476
    .line 477
    const/16 v2, 0x1f7

    .line 478
    .line 479
    const-string v14, "Service Unavailable"

    .line 480
    .line 481
    const-string v15, "SERVICE_UNAVAILABLE"

    .line 482
    .line 483
    move-object/from16 v56, v0

    .line 484
    .line 485
    const/16 v0, 0x1e

    .line 486
    .line 487
    invoke-direct {v1, v15, v0, v2, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 488
    .line 489
    .line 490
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 491
    .line 492
    const/16 v2, 0x1f9

    .line 493
    .line 494
    const-string v14, "HTTP Version Not Supported"

    .line 495
    .line 496
    const-string v15, "UNSUPPORTED_HTTP_VERSION"

    .line 497
    .line 498
    move-object/from16 v57, v1

    .line 499
    .line 500
    const/16 v1, 0x1f

    .line 501
    .line 502
    invoke-direct {v0, v15, v1, v2, v14}, Lfi/iki/elonen/NanoHTTPD$Response$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 503
    .line 504
    .line 505
    const/16 v1, 0x20

    .line 506
    .line 507
    new-array v1, v1, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 508
    .line 509
    aput-object v28, v1, v16

    .line 510
    .line 511
    aput-object v30, v1, v18

    .line 512
    .line 513
    aput-object v32, v1, v20

    .line 514
    .line 515
    aput-object v3, v1, v22

    .line 516
    .line 517
    aput-object v6, v1, v24

    .line 518
    .line 519
    aput-object v7, v1, v26

    .line 520
    .line 521
    aput-object v9, v1, v17

    .line 522
    .line 523
    aput-object v11, v1, v19

    .line 524
    .line 525
    aput-object v4, v1, v21

    .line 526
    .line 527
    aput-object v5, v1, v23

    .line 528
    .line 529
    aput-object v8, v1, v25

    .line 530
    .line 531
    aput-object v10, v1, v27

    .line 532
    .line 533
    aput-object v12, v1, v29

    .line 534
    .line 535
    aput-object v13, v1, v31

    .line 536
    .line 537
    aput-object v34, v1, v33

    .line 538
    .line 539
    aput-object v36, v1, v35

    .line 540
    .line 541
    aput-object v38, v1, v37

    .line 542
    .line 543
    aput-object v40, v1, v39

    .line 544
    .line 545
    aput-object v42, v1, v41

    .line 546
    .line 547
    aput-object v44, v1, v43

    .line 548
    .line 549
    aput-object v46, v1, v45

    .line 550
    .line 551
    aput-object v48, v1, v47

    .line 552
    .line 553
    const/16 v2, 0x16

    .line 554
    .line 555
    aput-object v49, v1, v2

    .line 556
    .line 557
    const/16 v2, 0x17

    .line 558
    .line 559
    aput-object v50, v1, v2

    .line 560
    .line 561
    const/16 v2, 0x18

    .line 562
    .line 563
    aput-object v51, v1, v2

    .line 564
    .line 565
    const/16 v2, 0x19

    .line 566
    .line 567
    aput-object v52, v1, v2

    .line 568
    .line 569
    const/16 v2, 0x1a

    .line 570
    .line 571
    aput-object v53, v1, v2

    .line 572
    .line 573
    const/16 v2, 0x1b

    .line 574
    .line 575
    aput-object v54, v1, v2

    .line 576
    .line 577
    const/16 v2, 0x1c

    .line 578
    .line 579
    aput-object v55, v1, v2

    .line 580
    .line 581
    const/16 v2, 0x1d

    .line 582
    .line 583
    aput-object v56, v1, v2

    .line 584
    .line 585
    const/16 v2, 0x1e

    .line 586
    .line 587
    aput-object v57, v1, v2

    .line 588
    .line 589
    const/16 v2, 0x1f

    .line 590
    .line 591
    aput-object v0, v1, v2

    .line 592
    .line 593
    sput-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->n:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 594
    .line 595
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->c:I

    .line 5
    .line 6
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    .line 1
    const-class v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$Response$Status;
    .locals 1

    .line 1
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->n:[Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$Response$Status;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$Response$Status;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->c:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response$Status;->f:Ljava/lang/String;

    .line 19
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
