.class public final enum Lcom/frostwire/jlibtorrent/Operation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/frostwire/jlibtorrent/Operation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/frostwire/jlibtorrent/Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 2
    .line 3
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/operation_t;->c:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 4
    .line 5
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 6
    .line 7
    const-string v1, "UNKNOWN"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 14
    .line 15
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/operation_t;->d:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 16
    .line 17
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 18
    .line 19
    const-string v3, "BITTORRENT"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/frostwire/jlibtorrent/Operation;

    .line 26
    .line 27
    sget-object v5, Lcom/frostwire/jlibtorrent/swig/operation_t;->e:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 28
    .line 29
    iget v5, v5, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 30
    .line 31
    const-string v5, "IOCONTROL"

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lcom/frostwire/jlibtorrent/Operation;

    .line 38
    .line 39
    sget-object v7, Lcom/frostwire/jlibtorrent/swig/operation_t;->f:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 40
    .line 41
    iget v7, v7, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 42
    .line 43
    const-string v7, "GETPEERNAME"

    .line 44
    .line 45
    const/4 v8, 0x3

    .line 46
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lcom/frostwire/jlibtorrent/Operation;

    .line 50
    .line 51
    sget-object v9, Lcom/frostwire/jlibtorrent/swig/operation_t;->g:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 52
    .line 53
    iget v9, v9, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 54
    .line 55
    const-string v9, "GETNAME"

    .line 56
    .line 57
    const/4 v10, 0x4

    .line 58
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    new-instance v9, Lcom/frostwire/jlibtorrent/Operation;

    .line 62
    .line 63
    sget-object v11, Lcom/frostwire/jlibtorrent/swig/operation_t;->h:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 64
    .line 65
    iget v11, v11, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 66
    .line 67
    const-string v11, "ALLOC_RECVBUF"

    .line 68
    .line 69
    const/4 v12, 0x5

    .line 70
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v11, Lcom/frostwire/jlibtorrent/Operation;

    .line 74
    .line 75
    sget-object v13, Lcom/frostwire/jlibtorrent/swig/operation_t;->i:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 76
    .line 77
    iget v13, v13, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 78
    .line 79
    const-string v13, "ALLOC_SNDBUF"

    .line 80
    .line 81
    const/4 v14, 0x6

    .line 82
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    new-instance v13, Lcom/frostwire/jlibtorrent/Operation;

    .line 86
    .line 87
    sget-object v15, Lcom/frostwire/jlibtorrent/swig/operation_t;->j:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 88
    .line 89
    iget v15, v15, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 90
    .line 91
    const-string v15, "FILE_WRITE"

    .line 92
    .line 93
    move/from16 v16, v2

    .line 94
    .line 95
    const/4 v2, 0x7

    .line 96
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    new-instance v15, Lcom/frostwire/jlibtorrent/Operation;

    .line 100
    .line 101
    move/from16 v17, v2

    .line 102
    .line 103
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->k:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 104
    .line 105
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 106
    .line 107
    const-string v2, "FILE_READ"

    .line 108
    .line 109
    move/from16 v18, v4

    .line 110
    .line 111
    const/16 v4, 0x8

    .line 112
    .line 113
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lcom/frostwire/jlibtorrent/Operation;

    .line 117
    .line 118
    move/from16 v19, v4

    .line 119
    .line 120
    sget-object v4, Lcom/frostwire/jlibtorrent/swig/operation_t;->l:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 121
    .line 122
    iget v4, v4, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 123
    .line 124
    const-string v4, "FILE"

    .line 125
    .line 126
    move/from16 v20, v6

    .line 127
    .line 128
    const/16 v6, 0x9

    .line 129
    .line 130
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Lcom/frostwire/jlibtorrent/Operation;

    .line 134
    .line 135
    move/from16 v21, v6

    .line 136
    .line 137
    sget-object v6, Lcom/frostwire/jlibtorrent/swig/operation_t;->m:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 138
    .line 139
    iget v6, v6, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 140
    .line 141
    const-string v6, "SOCK_WRITE"

    .line 142
    .line 143
    move/from16 v22, v8

    .line 144
    .line 145
    const/16 v8, 0xa

    .line 146
    .line 147
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    new-instance v6, Lcom/frostwire/jlibtorrent/Operation;

    .line 151
    .line 152
    move/from16 v23, v8

    .line 153
    .line 154
    sget-object v8, Lcom/frostwire/jlibtorrent/swig/operation_t;->n:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 155
    .line 156
    iget v8, v8, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 157
    .line 158
    const-string v8, "SOCK_READ"

    .line 159
    .line 160
    move/from16 v24, v10

    .line 161
    .line 162
    const/16 v10, 0xb

    .line 163
    .line 164
    invoke-direct {v6, v8, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    new-instance v8, Lcom/frostwire/jlibtorrent/Operation;

    .line 168
    .line 169
    move/from16 v25, v10

    .line 170
    .line 171
    sget-object v10, Lcom/frostwire/jlibtorrent/swig/operation_t;->o:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 172
    .line 173
    iget v10, v10, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 174
    .line 175
    const-string v10, "SOCK_OPEN"

    .line 176
    .line 177
    move/from16 v26, v12

    .line 178
    .line 179
    const/16 v12, 0xc

    .line 180
    .line 181
    invoke-direct {v8, v10, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    new-instance v10, Lcom/frostwire/jlibtorrent/Operation;

    .line 185
    .line 186
    move/from16 v27, v12

    .line 187
    .line 188
    sget-object v12, Lcom/frostwire/jlibtorrent/swig/operation_t;->p:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 189
    .line 190
    iget v12, v12, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 191
    .line 192
    const-string v12, "SOCK_BIND"

    .line 193
    .line 194
    move/from16 v28, v14

    .line 195
    .line 196
    const/16 v14, 0xd

    .line 197
    .line 198
    invoke-direct {v10, v12, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    new-instance v12, Lcom/frostwire/jlibtorrent/Operation;

    .line 202
    .line 203
    move/from16 v29, v14

    .line 204
    .line 205
    sget-object v14, Lcom/frostwire/jlibtorrent/swig/operation_t;->q:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 206
    .line 207
    iget v14, v14, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 208
    .line 209
    const-string v14, "AVAILABLE"

    .line 210
    .line 211
    move-object/from16 v30, v0

    .line 212
    .line 213
    const/16 v0, 0xe

    .line 214
    .line 215
    invoke-direct {v12, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 216
    .line 217
    .line 218
    new-instance v14, Lcom/frostwire/jlibtorrent/Operation;

    .line 219
    .line 220
    move/from16 v31, v0

    .line 221
    .line 222
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/operation_t;->r:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 223
    .line 224
    iget v0, v0, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 225
    .line 226
    const-string v0, "ENCRYPTION"

    .line 227
    .line 228
    move-object/from16 v32, v1

    .line 229
    .line 230
    const/16 v1, 0xf

    .line 231
    .line 232
    invoke-direct {v14, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 236
    .line 237
    move/from16 v33, v1

    .line 238
    .line 239
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/operation_t;->s:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 240
    .line 241
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 242
    .line 243
    const-string v1, "CONNECT"

    .line 244
    .line 245
    move-object/from16 v34, v2

    .line 246
    .line 247
    const/16 v2, 0x10

    .line 248
    .line 249
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 250
    .line 251
    .line 252
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 253
    .line 254
    move/from16 v35, v2

    .line 255
    .line 256
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->t:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 257
    .line 258
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 259
    .line 260
    const-string v2, "SSL_HANDSHAKE"

    .line 261
    .line 262
    move-object/from16 v36, v0

    .line 263
    .line 264
    const/16 v0, 0x11

    .line 265
    .line 266
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Lcom/frostwire/jlibtorrent/Operation;

    .line 270
    .line 271
    move/from16 v37, v0

    .line 272
    .line 273
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/operation_t;->u:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 274
    .line 275
    iget v0, v0, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 276
    .line 277
    const-string v0, "GET_INTERFACE"

    .line 278
    .line 279
    move-object/from16 v38, v1

    .line 280
    .line 281
    const/16 v1, 0x12

    .line 282
    .line 283
    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 284
    .line 285
    .line 286
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 287
    .line 288
    move/from16 v39, v1

    .line 289
    .line 290
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/operation_t;->v:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 291
    .line 292
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 293
    .line 294
    const-string v1, "SOCK_LISTEN"

    .line 295
    .line 296
    move-object/from16 v40, v2

    .line 297
    .line 298
    const/16 v2, 0x13

    .line 299
    .line 300
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 304
    .line 305
    move/from16 v41, v2

    .line 306
    .line 307
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->w:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 308
    .line 309
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 310
    .line 311
    const-string v2, "SOCK_BIND_TO_DEVICE"

    .line 312
    .line 313
    move-object/from16 v42, v0

    .line 314
    .line 315
    const/16 v0, 0x14

    .line 316
    .line 317
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 318
    .line 319
    .line 320
    new-instance v2, Lcom/frostwire/jlibtorrent/Operation;

    .line 321
    .line 322
    move/from16 v43, v0

    .line 323
    .line 324
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/operation_t;->x:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 325
    .line 326
    iget v0, v0, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 327
    .line 328
    const-string v0, "SOCK_ACCEPT"

    .line 329
    .line 330
    move-object/from16 v44, v1

    .line 331
    .line 332
    const/16 v1, 0x15

    .line 333
    .line 334
    invoke-direct {v2, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 335
    .line 336
    .line 337
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 338
    .line 339
    move/from16 v45, v1

    .line 340
    .line 341
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/operation_t;->y:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 342
    .line 343
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 344
    .line 345
    const-string v1, "PARSE_ADDRESS"

    .line 346
    .line 347
    move-object/from16 v46, v2

    .line 348
    .line 349
    const/16 v2, 0x16

    .line 350
    .line 351
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 355
    .line 356
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->z:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 357
    .line 358
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 359
    .line 360
    const-string v2, "ENUM_IF"

    .line 361
    .line 362
    move-object/from16 v47, v0

    .line 363
    .line 364
    const/16 v0, 0x17

    .line 365
    .line 366
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 367
    .line 368
    .line 369
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 370
    .line 371
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->A:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 372
    .line 373
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 374
    .line 375
    const-string v2, "FILE_STAT"

    .line 376
    .line 377
    move-object/from16 v48, v1

    .line 378
    .line 379
    const/16 v1, 0x18

    .line 380
    .line 381
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 382
    .line 383
    .line 384
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 385
    .line 386
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->B:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 387
    .line 388
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 389
    .line 390
    const-string v2, "FILE_COPY"

    .line 391
    .line 392
    move-object/from16 v49, v0

    .line 393
    .line 394
    const/16 v0, 0x19

    .line 395
    .line 396
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 397
    .line 398
    .line 399
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 400
    .line 401
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->C:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 402
    .line 403
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 404
    .line 405
    const-string v2, "FILE_FALLOCATE"

    .line 406
    .line 407
    move-object/from16 v50, v1

    .line 408
    .line 409
    const/16 v1, 0x1a

    .line 410
    .line 411
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 412
    .line 413
    .line 414
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 415
    .line 416
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->D:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 417
    .line 418
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 419
    .line 420
    const-string v2, "FILE_HARD_LINK"

    .line 421
    .line 422
    move-object/from16 v51, v0

    .line 423
    .line 424
    const/16 v0, 0x1b

    .line 425
    .line 426
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 427
    .line 428
    .line 429
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 430
    .line 431
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->E:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 432
    .line 433
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 434
    .line 435
    const-string v2, "FILE_REMOVE"

    .line 436
    .line 437
    move-object/from16 v52, v1

    .line 438
    .line 439
    const/16 v1, 0x1c

    .line 440
    .line 441
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 442
    .line 443
    .line 444
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 445
    .line 446
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->F:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 447
    .line 448
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 449
    .line 450
    const-string v2, "FILE_RENAME"

    .line 451
    .line 452
    move-object/from16 v53, v0

    .line 453
    .line 454
    const/16 v0, 0x1d

    .line 455
    .line 456
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 457
    .line 458
    .line 459
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 460
    .line 461
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->G:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 462
    .line 463
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 464
    .line 465
    const-string v2, "FILE_OPEN"

    .line 466
    .line 467
    move-object/from16 v54, v1

    .line 468
    .line 469
    const/16 v1, 0x1e

    .line 470
    .line 471
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 472
    .line 473
    .line 474
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 475
    .line 476
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->H:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 477
    .line 478
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 479
    .line 480
    const-string v2, "MKDIR"

    .line 481
    .line 482
    move-object/from16 v55, v0

    .line 483
    .line 484
    const/16 v0, 0x1f

    .line 485
    .line 486
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 487
    .line 488
    .line 489
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 490
    .line 491
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->I:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 492
    .line 493
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 494
    .line 495
    const-string v2, "CHECK_RESUME"

    .line 496
    .line 497
    move-object/from16 v56, v1

    .line 498
    .line 499
    const/16 v1, 0x20

    .line 500
    .line 501
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 502
    .line 503
    .line 504
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 505
    .line 506
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->J:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 507
    .line 508
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 509
    .line 510
    const-string v2, "EXCEPTION"

    .line 511
    .line 512
    move-object/from16 v57, v0

    .line 513
    .line 514
    const/16 v0, 0x21

    .line 515
    .line 516
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 517
    .line 518
    .line 519
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 520
    .line 521
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->K:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 522
    .line 523
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 524
    .line 525
    const-string v2, "ALLOC_CACHE_PIECE"

    .line 526
    .line 527
    move-object/from16 v58, v1

    .line 528
    .line 529
    const/16 v1, 0x22

    .line 530
    .line 531
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 532
    .line 533
    .line 534
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 535
    .line 536
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->L:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 537
    .line 538
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 539
    .line 540
    const-string v2, "PARTFILE_MOVE"

    .line 541
    .line 542
    move-object/from16 v59, v0

    .line 543
    .line 544
    const/16 v0, 0x23

    .line 545
    .line 546
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 547
    .line 548
    .line 549
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 550
    .line 551
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->M:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 552
    .line 553
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 554
    .line 555
    const-string v2, "PARTFILE_READ"

    .line 556
    .line 557
    move-object/from16 v60, v1

    .line 558
    .line 559
    const/16 v1, 0x24

    .line 560
    .line 561
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 562
    .line 563
    .line 564
    new-instance v1, Lcom/frostwire/jlibtorrent/Operation;

    .line 565
    .line 566
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->N:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 567
    .line 568
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 569
    .line 570
    const-string v2, "PARTFILE_WRITE"

    .line 571
    .line 572
    move-object/from16 v61, v0

    .line 573
    .line 574
    const/16 v0, 0x25

    .line 575
    .line 576
    invoke-direct {v1, v2, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 577
    .line 578
    .line 579
    new-instance v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 580
    .line 581
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->O:Lcom/frostwire/jlibtorrent/swig/operation_t;

    .line 582
    .line 583
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/operation_t;->a:I

    .line 584
    .line 585
    const-string v2, "HOSTNAME_LOOKUP"

    .line 586
    .line 587
    move-object/from16 v62, v1

    .line 588
    .line 589
    const/16 v1, 0x26

    .line 590
    .line 591
    invoke-direct {v0, v2, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 592
    .line 593
    .line 594
    const/16 v1, 0x27

    .line 595
    .line 596
    new-array v1, v1, [Lcom/frostwire/jlibtorrent/Operation;

    .line 597
    .line 598
    aput-object v30, v1, v16

    .line 599
    .line 600
    aput-object v32, v1, v18

    .line 601
    .line 602
    aput-object v3, v1, v20

    .line 603
    .line 604
    aput-object v5, v1, v22

    .line 605
    .line 606
    aput-object v7, v1, v24

    .line 607
    .line 608
    aput-object v9, v1, v26

    .line 609
    .line 610
    aput-object v11, v1, v28

    .line 611
    .line 612
    aput-object v13, v1, v17

    .line 613
    .line 614
    aput-object v15, v1, v19

    .line 615
    .line 616
    aput-object v34, v1, v21

    .line 617
    .line 618
    aput-object v4, v1, v23

    .line 619
    .line 620
    aput-object v6, v1, v25

    .line 621
    .line 622
    aput-object v8, v1, v27

    .line 623
    .line 624
    aput-object v10, v1, v29

    .line 625
    .line 626
    aput-object v12, v1, v31

    .line 627
    .line 628
    aput-object v14, v1, v33

    .line 629
    .line 630
    aput-object v36, v1, v35

    .line 631
    .line 632
    aput-object v38, v1, v37

    .line 633
    .line 634
    aput-object v40, v1, v39

    .line 635
    .line 636
    aput-object v42, v1, v41

    .line 637
    .line 638
    aput-object v44, v1, v43

    .line 639
    .line 640
    aput-object v46, v1, v45

    .line 641
    .line 642
    const/16 v2, 0x16

    .line 643
    .line 644
    aput-object v47, v1, v2

    .line 645
    .line 646
    const/16 v2, 0x17

    .line 647
    .line 648
    aput-object v48, v1, v2

    .line 649
    .line 650
    const/16 v2, 0x18

    .line 651
    .line 652
    aput-object v49, v1, v2

    .line 653
    .line 654
    const/16 v2, 0x19

    .line 655
    .line 656
    aput-object v50, v1, v2

    .line 657
    .line 658
    const/16 v2, 0x1a

    .line 659
    .line 660
    aput-object v51, v1, v2

    .line 661
    .line 662
    const/16 v2, 0x1b

    .line 663
    .line 664
    aput-object v52, v1, v2

    .line 665
    .line 666
    const/16 v2, 0x1c

    .line 667
    .line 668
    aput-object v53, v1, v2

    .line 669
    .line 670
    const/16 v2, 0x1d

    .line 671
    .line 672
    aput-object v54, v1, v2

    .line 673
    .line 674
    const/16 v2, 0x1e

    .line 675
    .line 676
    aput-object v55, v1, v2

    .line 677
    .line 678
    const/16 v2, 0x1f

    .line 679
    .line 680
    aput-object v56, v1, v2

    .line 681
    .line 682
    const/16 v2, 0x20

    .line 683
    .line 684
    aput-object v57, v1, v2

    .line 685
    .line 686
    const/16 v2, 0x21

    .line 687
    .line 688
    aput-object v58, v1, v2

    .line 689
    .line 690
    const/16 v2, 0x22

    .line 691
    .line 692
    aput-object v59, v1, v2

    .line 693
    .line 694
    const/16 v2, 0x23

    .line 695
    .line 696
    aput-object v60, v1, v2

    .line 697
    .line 698
    const/16 v2, 0x24

    .line 699
    .line 700
    aput-object v61, v1, v2

    .line 701
    .line 702
    const/16 v2, 0x25

    .line 703
    .line 704
    aput-object v62, v1, v2

    .line 705
    .line 706
    const/16 v2, 0x26

    .line 707
    .line 708
    aput-object v0, v1, v2

    .line 709
    .line 710
    sput-object v1, Lcom/frostwire/jlibtorrent/Operation;->c:[Lcom/frostwire/jlibtorrent/Operation;

    .line 711
    .line 712
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/Operation;
    .locals 1

    .line 1
    const-class v0, Lcom/frostwire/jlibtorrent/Operation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/frostwire/jlibtorrent/Operation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/frostwire/jlibtorrent/Operation;
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/Operation;->c:[Lcom/frostwire/jlibtorrent/Operation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/frostwire/jlibtorrent/Operation;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/frostwire/jlibtorrent/Operation;

    .line 8
    .line 9
    return-object v0
.end method
