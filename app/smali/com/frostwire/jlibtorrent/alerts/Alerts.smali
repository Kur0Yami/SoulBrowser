.class public final Lcom/frostwire/jlibtorrent/alerts/Alerts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/frostwire/jlibtorrent/alerts/Alerts$CastLambda;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:[Lcom/frostwire/jlibtorrent/alerts/Alerts$CastLambda;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->num_alert_types_get()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/frostwire/jlibtorrent/alerts/Alerts;->a:I

    .line 6
    .line 7
    new-array v0, v0, [Lcom/frostwire/jlibtorrent/alerts/Alerts$CastLambda;

    .line 8
    .line 9
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$1;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$2;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$3;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$4;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    aput-object v1, v0, v2

    .line 40
    .line 41
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$5;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    aput-object v1, v0, v2

    .line 48
    .line 49
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$6;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x5

    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$7;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x6

    .line 63
    aput-object v1, v0, v2

    .line 64
    .line 65
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$8;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x7

    .line 71
    aput-object v1, v0, v2

    .line 72
    .line 73
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$9;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    const/16 v2, 0x8

    .line 79
    .line 80
    aput-object v1, v0, v2

    .line 81
    .line 82
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$10;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    const/16 v2, 0x9

    .line 88
    .line 89
    aput-object v1, v0, v2

    .line 90
    .line 91
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$11;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    const/16 v2, 0xa

    .line 97
    .line 98
    aput-object v1, v0, v2

    .line 99
    .line 100
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$12;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    const/16 v2, 0xb

    .line 106
    .line 107
    aput-object v1, v0, v2

    .line 108
    .line 109
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$13;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    const/16 v2, 0xc

    .line 115
    .line 116
    aput-object v1, v0, v2

    .line 117
    .line 118
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$14;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    const/16 v2, 0xd

    .line 124
    .line 125
    aput-object v1, v0, v2

    .line 126
    .line 127
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$15;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 130
    .line 131
    .line 132
    const/16 v2, 0xe

    .line 133
    .line 134
    aput-object v1, v0, v2

    .line 135
    .line 136
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$16;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    const/16 v2, 0xf

    .line 142
    .line 143
    aput-object v1, v0, v2

    .line 144
    .line 145
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$17;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 148
    .line 149
    .line 150
    const/16 v2, 0x10

    .line 151
    .line 152
    aput-object v1, v0, v2

    .line 153
    .line 154
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$18;

    .line 155
    .line 156
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    const/16 v2, 0x11

    .line 160
    .line 161
    aput-object v1, v0, v2

    .line 162
    .line 163
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$19;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 166
    .line 167
    .line 168
    const/16 v2, 0x12

    .line 169
    .line 170
    aput-object v1, v0, v2

    .line 171
    .line 172
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$20;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    const/16 v2, 0x13

    .line 178
    .line 179
    aput-object v1, v0, v2

    .line 180
    .line 181
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$21;

    .line 182
    .line 183
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 184
    .line 185
    .line 186
    const/16 v2, 0x14

    .line 187
    .line 188
    aput-object v1, v0, v2

    .line 189
    .line 190
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$22;

    .line 191
    .line 192
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    const/16 v2, 0x15

    .line 196
    .line 197
    aput-object v1, v0, v2

    .line 198
    .line 199
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$23;

    .line 200
    .line 201
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    const/16 v2, 0x16

    .line 205
    .line 206
    aput-object v1, v0, v2

    .line 207
    .line 208
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$24;

    .line 209
    .line 210
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    const/16 v2, 0x17

    .line 214
    .line 215
    aput-object v1, v0, v2

    .line 216
    .line 217
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$25;

    .line 218
    .line 219
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 220
    .line 221
    .line 222
    const/16 v2, 0x18

    .line 223
    .line 224
    aput-object v1, v0, v2

    .line 225
    .line 226
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$26;

    .line 227
    .line 228
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 229
    .line 230
    .line 231
    const/16 v2, 0x19

    .line 232
    .line 233
    aput-object v1, v0, v2

    .line 234
    .line 235
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$27;

    .line 236
    .line 237
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 238
    .line 239
    .line 240
    const/16 v2, 0x1a

    .line 241
    .line 242
    aput-object v1, v0, v2

    .line 243
    .line 244
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$28;

    .line 245
    .line 246
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 247
    .line 248
    .line 249
    const/16 v2, 0x1b

    .line 250
    .line 251
    aput-object v1, v0, v2

    .line 252
    .line 253
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$29;

    .line 254
    .line 255
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 256
    .line 257
    .line 258
    const/16 v2, 0x1c

    .line 259
    .line 260
    aput-object v1, v0, v2

    .line 261
    .line 262
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$30;

    .line 263
    .line 264
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 265
    .line 266
    .line 267
    const/16 v2, 0x1d

    .line 268
    .line 269
    aput-object v1, v0, v2

    .line 270
    .line 271
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$31;

    .line 272
    .line 273
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 274
    .line 275
    .line 276
    const/16 v2, 0x1e

    .line 277
    .line 278
    aput-object v1, v0, v2

    .line 279
    .line 280
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$32;

    .line 281
    .line 282
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 283
    .line 284
    .line 285
    const/16 v2, 0x1f

    .line 286
    .line 287
    aput-object v1, v0, v2

    .line 288
    .line 289
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$33;

    .line 290
    .line 291
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 292
    .line 293
    .line 294
    const/16 v2, 0x20

    .line 295
    .line 296
    aput-object v1, v0, v2

    .line 297
    .line 298
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$34;

    .line 299
    .line 300
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 301
    .line 302
    .line 303
    const/16 v2, 0x21

    .line 304
    .line 305
    aput-object v1, v0, v2

    .line 306
    .line 307
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$35;

    .line 308
    .line 309
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 310
    .line 311
    .line 312
    const/16 v2, 0x22

    .line 313
    .line 314
    aput-object v1, v0, v2

    .line 315
    .line 316
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$36;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 319
    .line 320
    .line 321
    const/16 v2, 0x23

    .line 322
    .line 323
    aput-object v1, v0, v2

    .line 324
    .line 325
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$37;

    .line 326
    .line 327
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 328
    .line 329
    .line 330
    const/16 v2, 0x24

    .line 331
    .line 332
    aput-object v1, v0, v2

    .line 333
    .line 334
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$38;

    .line 335
    .line 336
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 337
    .line 338
    .line 339
    const/16 v2, 0x25

    .line 340
    .line 341
    aput-object v1, v0, v2

    .line 342
    .line 343
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$39;

    .line 344
    .line 345
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 346
    .line 347
    .line 348
    const/16 v2, 0x26

    .line 349
    .line 350
    aput-object v1, v0, v2

    .line 351
    .line 352
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$40;

    .line 353
    .line 354
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 355
    .line 356
    .line 357
    const/16 v2, 0x27

    .line 358
    .line 359
    aput-object v1, v0, v2

    .line 360
    .line 361
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$41;

    .line 362
    .line 363
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 364
    .line 365
    .line 366
    const/16 v2, 0x28

    .line 367
    .line 368
    aput-object v1, v0, v2

    .line 369
    .line 370
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$42;

    .line 371
    .line 372
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 373
    .line 374
    .line 375
    const/16 v2, 0x29

    .line 376
    .line 377
    aput-object v1, v0, v2

    .line 378
    .line 379
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$43;

    .line 380
    .line 381
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 382
    .line 383
    .line 384
    const/16 v2, 0x2a

    .line 385
    .line 386
    aput-object v1, v0, v2

    .line 387
    .line 388
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$44;

    .line 389
    .line 390
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 391
    .line 392
    .line 393
    const/16 v2, 0x2b

    .line 394
    .line 395
    aput-object v1, v0, v2

    .line 396
    .line 397
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$45;

    .line 398
    .line 399
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 400
    .line 401
    .line 402
    const/16 v2, 0x2c

    .line 403
    .line 404
    aput-object v1, v0, v2

    .line 405
    .line 406
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$46;

    .line 407
    .line 408
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 409
    .line 410
    .line 411
    const/16 v2, 0x2d

    .line 412
    .line 413
    aput-object v1, v0, v2

    .line 414
    .line 415
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$47;

    .line 416
    .line 417
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 418
    .line 419
    .line 420
    const/16 v2, 0x2e

    .line 421
    .line 422
    aput-object v1, v0, v2

    .line 423
    .line 424
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$48;

    .line 425
    .line 426
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 427
    .line 428
    .line 429
    const/16 v2, 0x2f

    .line 430
    .line 431
    aput-object v1, v0, v2

    .line 432
    .line 433
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$49;

    .line 434
    .line 435
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 436
    .line 437
    .line 438
    const/16 v2, 0x30

    .line 439
    .line 440
    aput-object v1, v0, v2

    .line 441
    .line 442
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$50;

    .line 443
    .line 444
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 445
    .line 446
    .line 447
    const/16 v2, 0x31

    .line 448
    .line 449
    aput-object v1, v0, v2

    .line 450
    .line 451
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$51;

    .line 452
    .line 453
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 454
    .line 455
    .line 456
    const/16 v2, 0x32

    .line 457
    .line 458
    aput-object v1, v0, v2

    .line 459
    .line 460
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$52;

    .line 461
    .line 462
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 463
    .line 464
    .line 465
    const/16 v2, 0x33

    .line 466
    .line 467
    aput-object v1, v0, v2

    .line 468
    .line 469
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$53;

    .line 470
    .line 471
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 472
    .line 473
    .line 474
    const/16 v2, 0x34

    .line 475
    .line 476
    aput-object v1, v0, v2

    .line 477
    .line 478
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$54;

    .line 479
    .line 480
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 481
    .line 482
    .line 483
    const/16 v2, 0x35

    .line 484
    .line 485
    aput-object v1, v0, v2

    .line 486
    .line 487
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$55;

    .line 488
    .line 489
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 490
    .line 491
    .line 492
    const/16 v2, 0x36

    .line 493
    .line 494
    aput-object v1, v0, v2

    .line 495
    .line 496
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$56;

    .line 497
    .line 498
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 499
    .line 500
    .line 501
    const/16 v2, 0x37

    .line 502
    .line 503
    aput-object v1, v0, v2

    .line 504
    .line 505
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$57;

    .line 506
    .line 507
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 508
    .line 509
    .line 510
    const/16 v2, 0x38

    .line 511
    .line 512
    aput-object v1, v0, v2

    .line 513
    .line 514
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$58;

    .line 515
    .line 516
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 517
    .line 518
    .line 519
    const/16 v2, 0x39

    .line 520
    .line 521
    aput-object v1, v0, v2

    .line 522
    .line 523
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$59;

    .line 524
    .line 525
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 526
    .line 527
    .line 528
    const/16 v2, 0x3a

    .line 529
    .line 530
    aput-object v1, v0, v2

    .line 531
    .line 532
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$60;

    .line 533
    .line 534
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 535
    .line 536
    .line 537
    const/16 v2, 0x3b

    .line 538
    .line 539
    aput-object v1, v0, v2

    .line 540
    .line 541
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$61;

    .line 542
    .line 543
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 544
    .line 545
    .line 546
    const/16 v2, 0x3c

    .line 547
    .line 548
    aput-object v1, v0, v2

    .line 549
    .line 550
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$62;

    .line 551
    .line 552
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 553
    .line 554
    .line 555
    const/16 v2, 0x3d

    .line 556
    .line 557
    aput-object v1, v0, v2

    .line 558
    .line 559
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$63;

    .line 560
    .line 561
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 562
    .line 563
    .line 564
    const/16 v2, 0x3e

    .line 565
    .line 566
    aput-object v1, v0, v2

    .line 567
    .line 568
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$64;

    .line 569
    .line 570
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 571
    .line 572
    .line 573
    const/16 v2, 0x3f

    .line 574
    .line 575
    aput-object v1, v0, v2

    .line 576
    .line 577
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$65;

    .line 578
    .line 579
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 580
    .line 581
    .line 582
    const/16 v2, 0x40

    .line 583
    .line 584
    aput-object v1, v0, v2

    .line 585
    .line 586
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$66;

    .line 587
    .line 588
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 589
    .line 590
    .line 591
    const/16 v2, 0x41

    .line 592
    .line 593
    aput-object v1, v0, v2

    .line 594
    .line 595
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$67;

    .line 596
    .line 597
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 598
    .line 599
    .line 600
    const/16 v2, 0x42

    .line 601
    .line 602
    aput-object v1, v0, v2

    .line 603
    .line 604
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$68;

    .line 605
    .line 606
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 607
    .line 608
    .line 609
    const/16 v2, 0x43

    .line 610
    .line 611
    aput-object v1, v0, v2

    .line 612
    .line 613
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$69;

    .line 614
    .line 615
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 616
    .line 617
    .line 618
    const/16 v2, 0x44

    .line 619
    .line 620
    aput-object v1, v0, v2

    .line 621
    .line 622
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$70;

    .line 623
    .line 624
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 625
    .line 626
    .line 627
    const/16 v2, 0x45

    .line 628
    .line 629
    aput-object v1, v0, v2

    .line 630
    .line 631
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$71;

    .line 632
    .line 633
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 634
    .line 635
    .line 636
    const/16 v2, 0x46

    .line 637
    .line 638
    aput-object v1, v0, v2

    .line 639
    .line 640
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$72;

    .line 641
    .line 642
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 643
    .line 644
    .line 645
    const/16 v2, 0x47

    .line 646
    .line 647
    aput-object v1, v0, v2

    .line 648
    .line 649
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$73;

    .line 650
    .line 651
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 652
    .line 653
    .line 654
    const/16 v2, 0x48

    .line 655
    .line 656
    aput-object v1, v0, v2

    .line 657
    .line 658
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$74;

    .line 659
    .line 660
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 661
    .line 662
    .line 663
    const/16 v2, 0x49

    .line 664
    .line 665
    aput-object v1, v0, v2

    .line 666
    .line 667
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$75;

    .line 668
    .line 669
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 670
    .line 671
    .line 672
    const/16 v2, 0x4a

    .line 673
    .line 674
    aput-object v1, v0, v2

    .line 675
    .line 676
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$76;

    .line 677
    .line 678
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 679
    .line 680
    .line 681
    const/16 v2, 0x4b

    .line 682
    .line 683
    aput-object v1, v0, v2

    .line 684
    .line 685
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$77;

    .line 686
    .line 687
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 688
    .line 689
    .line 690
    const/16 v2, 0x4c

    .line 691
    .line 692
    aput-object v1, v0, v2

    .line 693
    .line 694
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$78;

    .line 695
    .line 696
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 697
    .line 698
    .line 699
    const/16 v2, 0x4d

    .line 700
    .line 701
    aput-object v1, v0, v2

    .line 702
    .line 703
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$79;

    .line 704
    .line 705
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 706
    .line 707
    .line 708
    const/16 v2, 0x4e

    .line 709
    .line 710
    aput-object v1, v0, v2

    .line 711
    .line 712
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$80;

    .line 713
    .line 714
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 715
    .line 716
    .line 717
    const/16 v2, 0x4f

    .line 718
    .line 719
    aput-object v1, v0, v2

    .line 720
    .line 721
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$81;

    .line 722
    .line 723
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 724
    .line 725
    .line 726
    const/16 v2, 0x50

    .line 727
    .line 728
    aput-object v1, v0, v2

    .line 729
    .line 730
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$82;

    .line 731
    .line 732
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 733
    .line 734
    .line 735
    const/16 v2, 0x51

    .line 736
    .line 737
    aput-object v1, v0, v2

    .line 738
    .line 739
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$83;

    .line 740
    .line 741
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 742
    .line 743
    .line 744
    const/16 v2, 0x52

    .line 745
    .line 746
    aput-object v1, v0, v2

    .line 747
    .line 748
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$84;

    .line 749
    .line 750
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 751
    .line 752
    .line 753
    const/16 v2, 0x53

    .line 754
    .line 755
    aput-object v1, v0, v2

    .line 756
    .line 757
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$85;

    .line 758
    .line 759
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 760
    .line 761
    .line 762
    const/16 v2, 0x54

    .line 763
    .line 764
    aput-object v1, v0, v2

    .line 765
    .line 766
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$86;

    .line 767
    .line 768
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 769
    .line 770
    .line 771
    const/16 v2, 0x55

    .line 772
    .line 773
    aput-object v1, v0, v2

    .line 774
    .line 775
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$87;

    .line 776
    .line 777
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 778
    .line 779
    .line 780
    const/16 v2, 0x56

    .line 781
    .line 782
    aput-object v1, v0, v2

    .line 783
    .line 784
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$88;

    .line 785
    .line 786
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 787
    .line 788
    .line 789
    const/16 v2, 0x57

    .line 790
    .line 791
    aput-object v1, v0, v2

    .line 792
    .line 793
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$89;

    .line 794
    .line 795
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 796
    .line 797
    .line 798
    const/16 v2, 0x58

    .line 799
    .line 800
    aput-object v1, v0, v2

    .line 801
    .line 802
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$90;

    .line 803
    .line 804
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 805
    .line 806
    .line 807
    const/16 v2, 0x59

    .line 808
    .line 809
    aput-object v1, v0, v2

    .line 810
    .line 811
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$91;

    .line 812
    .line 813
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 814
    .line 815
    .line 816
    const/16 v2, 0x5a

    .line 817
    .line 818
    aput-object v1, v0, v2

    .line 819
    .line 820
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$92;

    .line 821
    .line 822
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 823
    .line 824
    .line 825
    const/16 v2, 0x5b

    .line 826
    .line 827
    aput-object v1, v0, v2

    .line 828
    .line 829
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$93;

    .line 830
    .line 831
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 832
    .line 833
    .line 834
    const/16 v2, 0x5c

    .line 835
    .line 836
    aput-object v1, v0, v2

    .line 837
    .line 838
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$94;

    .line 839
    .line 840
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 841
    .line 842
    .line 843
    const/16 v2, 0x5d

    .line 844
    .line 845
    aput-object v1, v0, v2

    .line 846
    .line 847
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$95;

    .line 848
    .line 849
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 850
    .line 851
    .line 852
    const/16 v2, 0x5e

    .line 853
    .line 854
    aput-object v1, v0, v2

    .line 855
    .line 856
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/Alerts$96;

    .line 857
    .line 858
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 859
    .line 860
    .line 861
    const/16 v2, 0x5f

    .line 862
    .line 863
    aput-object v1, v0, v2

    .line 864
    .line 865
    sput-object v0, Lcom/frostwire/jlibtorrent/alerts/Alerts;->b:[Lcom/frostwire/jlibtorrent/alerts/Alerts$CastLambda;

    .line 866
    .line 867
    return-void
.end method

.method public static a(Lcom/frostwire/jlibtorrent/swig/alert;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "alert not known: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/alert;->c()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " - "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/alert;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static b(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;
    .locals 2

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/Alerts;->b:[Lcom/frostwire/jlibtorrent/alerts/Alerts$CastLambda;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/alert;->c()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-interface {v0, p0}, Lcom/frostwire/jlibtorrent/alerts/Alerts$CastLambda;->a(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
