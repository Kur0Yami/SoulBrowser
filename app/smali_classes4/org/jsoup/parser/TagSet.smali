.class public Lorg/jsoup/parser/TagSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lorg/jsoup/parser/TagSet;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lorg/jsoup/parser/TagSet;

.field public c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 71

    .line 1
    const-string v69, "listing"

    .line 2
    .line 3
    const-string v70, "#root"

    .line 4
    .line 5
    const-string v1, "html"

    .line 6
    .line 7
    const-string v2, "head"

    .line 8
    .line 9
    const-string v3, "body"

    .line 10
    .line 11
    const-string v4, "frameset"

    .line 12
    .line 13
    const-string v5, "script"

    .line 14
    .line 15
    const-string v6, "noscript"

    .line 16
    .line 17
    const-string v7, "style"

    .line 18
    .line 19
    const-string v8, "meta"

    .line 20
    .line 21
    const-string v9, "link"

    .line 22
    .line 23
    const-string v10, "title"

    .line 24
    .line 25
    const-string v11, "frame"

    .line 26
    .line 27
    const-string v12, "noframes"

    .line 28
    .line 29
    const-string v13, "section"

    .line 30
    .line 31
    const-string v14, "nav"

    .line 32
    .line 33
    const-string v15, "aside"

    .line 34
    .line 35
    const-string v16, "hgroup"

    .line 36
    .line 37
    const-string v17, "header"

    .line 38
    .line 39
    const-string v18, "footer"

    .line 40
    .line 41
    const-string v19, "p"

    .line 42
    .line 43
    const-string v20, "h1"

    .line 44
    .line 45
    const-string v21, "h2"

    .line 46
    .line 47
    const-string v22, "h3"

    .line 48
    .line 49
    const-string v23, "h4"

    .line 50
    .line 51
    const-string v24, "h5"

    .line 52
    .line 53
    const-string v25, "h6"

    .line 54
    .line 55
    const-string v26, "br"

    .line 56
    .line 57
    const-string v27, "button"

    .line 58
    .line 59
    const-string v28, "ul"

    .line 60
    .line 61
    const-string v29, "ol"

    .line 62
    .line 63
    const-string v30, "pre"

    .line 64
    .line 65
    const-string v31, "div"

    .line 66
    .line 67
    const-string v32, "blockquote"

    .line 68
    .line 69
    const-string v33, "hr"

    .line 70
    .line 71
    const-string v34, "address"

    .line 72
    .line 73
    const-string v35, "figure"

    .line 74
    .line 75
    const-string v36, "figcaption"

    .line 76
    .line 77
    const-string v37, "form"

    .line 78
    .line 79
    const-string v38, "fieldset"

    .line 80
    .line 81
    const-string v39, "ins"

    .line 82
    .line 83
    const-string v40, "del"

    .line 84
    .line 85
    const-string v41, "dl"

    .line 86
    .line 87
    const-string v42, "dt"

    .line 88
    .line 89
    const-string v43, "dd"

    .line 90
    .line 91
    const-string v44, "li"

    .line 92
    .line 93
    const-string v45, "table"

    .line 94
    .line 95
    const-string v46, "caption"

    .line 96
    .line 97
    const-string v47, "thead"

    .line 98
    .line 99
    const-string v48, "tfoot"

    .line 100
    .line 101
    const-string v49, "tbody"

    .line 102
    .line 103
    const-string v50, "colgroup"

    .line 104
    .line 105
    const-string v51, "col"

    .line 106
    .line 107
    const-string v52, "tr"

    .line 108
    .line 109
    const-string v53, "th"

    .line 110
    .line 111
    const-string v54, "td"

    .line 112
    .line 113
    const-string v55, "video"

    .line 114
    .line 115
    const-string v56, "audio"

    .line 116
    .line 117
    const-string v57, "canvas"

    .line 118
    .line 119
    const-string v58, "details"

    .line 120
    .line 121
    const-string v59, "menu"

    .line 122
    .line 123
    const-string v60, "plaintext"

    .line 124
    .line 125
    const-string v61, "template"

    .line 126
    .line 127
    const-string v62, "article"

    .line 128
    .line 129
    const-string v63, "main"

    .line 130
    .line 131
    const-string v64, "center"

    .line 132
    .line 133
    const-string v65, "template"

    .line 134
    .line 135
    const-string v66, "dir"

    .line 136
    .line 137
    const-string v67, "applet"

    .line 138
    .line 139
    const-string v68, "marquee"

    .line 140
    .line 141
    filled-new-array/range {v1 .. v70}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v67, "nobr"

    .line 146
    .line 147
    const-string v68, "rb"

    .line 148
    .line 149
    const-string v1, "object"

    .line 150
    .line 151
    const-string v2, "base"

    .line 152
    .line 153
    const-string v3, "font"

    .line 154
    .line 155
    const-string v4, "tt"

    .line 156
    .line 157
    const-string v5, "i"

    .line 158
    .line 159
    const-string v6, "b"

    .line 160
    .line 161
    const-string v7, "u"

    .line 162
    .line 163
    const-string v8, "big"

    .line 164
    .line 165
    const-string v9, "small"

    .line 166
    .line 167
    const-string v10, "em"

    .line 168
    .line 169
    const-string v11, "strong"

    .line 170
    .line 171
    const-string v12, "dfn"

    .line 172
    .line 173
    const-string v13, "code"

    .line 174
    .line 175
    const-string v14, "samp"

    .line 176
    .line 177
    const-string v15, "kbd"

    .line 178
    .line 179
    const-string v16, "var"

    .line 180
    .line 181
    const-string v17, "cite"

    .line 182
    .line 183
    const-string v18, "abbr"

    .line 184
    .line 185
    const-string v19, "time"

    .line 186
    .line 187
    const-string v20, "acronym"

    .line 188
    .line 189
    const-string v21, "mark"

    .line 190
    .line 191
    const-string v22, "ruby"

    .line 192
    .line 193
    const-string v23, "rt"

    .line 194
    .line 195
    const-string v24, "rp"

    .line 196
    .line 197
    const-string v25, "rtc"

    .line 198
    .line 199
    const-string v26, "a"

    .line 200
    .line 201
    const-string v27, "img"

    .line 202
    .line 203
    const-string v28, "wbr"

    .line 204
    .line 205
    const-string v29, "map"

    .line 206
    .line 207
    const-string v30, "q"

    .line 208
    .line 209
    const-string v31, "sub"

    .line 210
    .line 211
    const-string v32, "sup"

    .line 212
    .line 213
    const-string v33, "bdo"

    .line 214
    .line 215
    const-string v34, "iframe"

    .line 216
    .line 217
    const-string v35, "embed"

    .line 218
    .line 219
    const-string v36, "span"

    .line 220
    .line 221
    const-string v37, "input"

    .line 222
    .line 223
    const-string v38, "select"

    .line 224
    .line 225
    const-string v39, "textarea"

    .line 226
    .line 227
    const-string v40, "label"

    .line 228
    .line 229
    const-string v41, "optgroup"

    .line 230
    .line 231
    const-string v42, "option"

    .line 232
    .line 233
    const-string v43, "legend"

    .line 234
    .line 235
    const-string v44, "datalist"

    .line 236
    .line 237
    const-string v45, "keygen"

    .line 238
    .line 239
    const-string v46, "output"

    .line 240
    .line 241
    const-string v47, "progress"

    .line 242
    .line 243
    const-string v48, "meter"

    .line 244
    .line 245
    const-string v49, "area"

    .line 246
    .line 247
    const-string v50, "param"

    .line 248
    .line 249
    const-string v51, "source"

    .line 250
    .line 251
    const-string v52, "track"

    .line 252
    .line 253
    const-string v53, "summary"

    .line 254
    .line 255
    const-string v54, "command"

    .line 256
    .line 257
    const-string v55, "device"

    .line 258
    .line 259
    const-string v56, "area"

    .line 260
    .line 261
    const-string v57, "basefont"

    .line 262
    .line 263
    const-string v58, "bgsound"

    .line 264
    .line 265
    const-string v59, "menuitem"

    .line 266
    .line 267
    const-string v60, "param"

    .line 268
    .line 269
    const-string v61, "source"

    .line 270
    .line 271
    const-string v62, "track"

    .line 272
    .line 273
    const-string v63, "data"

    .line 274
    .line 275
    const-string v64, "bdi"

    .line 276
    .line 277
    const-string v65, "s"

    .line 278
    .line 279
    const-string v66, "strike"

    .line 280
    .line 281
    filled-new-array/range {v1 .. v68}, [Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    const-string v20, "s"

    .line 286
    .line 287
    const-string v21, "button"

    .line 288
    .line 289
    const-string v2, "title"

    .line 290
    .line 291
    const-string v3, "a"

    .line 292
    .line 293
    const-string v4, "p"

    .line 294
    .line 295
    const-string v5, "h1"

    .line 296
    .line 297
    const-string v6, "h2"

    .line 298
    .line 299
    const-string v7, "h3"

    .line 300
    .line 301
    const-string v8, "h4"

    .line 302
    .line 303
    const-string v9, "h5"

    .line 304
    .line 305
    const-string v10, "h6"

    .line 306
    .line 307
    const-string v11, "pre"

    .line 308
    .line 309
    const-string v12, "address"

    .line 310
    .line 311
    const-string v13, "li"

    .line 312
    .line 313
    const-string v14, "th"

    .line 314
    .line 315
    const-string v15, "td"

    .line 316
    .line 317
    const-string v16, "script"

    .line 318
    .line 319
    const-string v17, "style"

    .line 320
    .line 321
    const-string v18, "ins"

    .line 322
    .line 323
    const-string v19, "del"

    .line 324
    .line 325
    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    const-string v22, "source"

    .line 330
    .line 331
    const-string v23, "track"

    .line 332
    .line 333
    const-string v3, "meta"

    .line 334
    .line 335
    const-string v4, "link"

    .line 336
    .line 337
    const-string v5, "base"

    .line 338
    .line 339
    const-string v6, "frame"

    .line 340
    .line 341
    const-string v7, "img"

    .line 342
    .line 343
    const-string v8, "br"

    .line 344
    .line 345
    const-string v9, "wbr"

    .line 346
    .line 347
    const-string v10, "embed"

    .line 348
    .line 349
    const-string v11, "hr"

    .line 350
    .line 351
    const-string v12, "input"

    .line 352
    .line 353
    const-string v13, "keygen"

    .line 354
    .line 355
    const-string v14, "col"

    .line 356
    .line 357
    const-string v15, "command"

    .line 358
    .line 359
    const-string v16, "device"

    .line 360
    .line 361
    const-string v17, "area"

    .line 362
    .line 363
    const-string v18, "basefont"

    .line 364
    .line 365
    const-string v19, "bgsound"

    .line 366
    .line 367
    const-string v20, "menuitem"

    .line 368
    .line 369
    const-string v21, "param"

    .line 370
    .line 371
    filled-new-array/range {v3 .. v23}, [Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    const-string v4, "pre"

    .line 376
    .line 377
    const-string v5, "plaintext"

    .line 378
    .line 379
    const-string v6, "title"

    .line 380
    .line 381
    const-string v7, "textarea"

    .line 382
    .line 383
    const-string v8, "script"

    .line 384
    .line 385
    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    const-string v13, "style"

    .line 394
    .line 395
    const-string v14, "xmp"

    .line 396
    .line 397
    const-string v9, "iframe"

    .line 398
    .line 399
    const-string v10, "noembed"

    .line 400
    .line 401
    const-string v11, "noframes"

    .line 402
    .line 403
    const-string v12, "script"

    .line 404
    .line 405
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    sget-object v7, Lorg/jsoup/internal/SharedConstants;->FormSubmitTags:[Ljava/lang/String;

    .line 410
    .line 411
    const-string v9, "math"

    .line 412
    .line 413
    filled-new-array {v9}, [Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    const-string v10, "mn"

    .line 418
    .line 419
    const-string v11, "mtext"

    .line 420
    .line 421
    const-string v12, "mi"

    .line 422
    .line 423
    const-string v13, "mo"

    .line 424
    .line 425
    const-string v14, "msup"

    .line 426
    .line 427
    filled-new-array {v12, v13, v14, v10, v11}, [Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v10

    .line 431
    const-string v11, "femerge"

    .line 432
    .line 433
    const-string v12, "femergenode"

    .line 434
    .line 435
    const-string v13, "svg"

    .line 436
    .line 437
    filled-new-array {v13, v11, v12}, [Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v11

    .line 441
    const-string v12, "text"

    .line 442
    .line 443
    filled-new-array {v12}, [Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v12

    .line 447
    filled-new-array {v8}, [Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v8

    .line 451
    new-instance v13, Lorg/jsoup/parser/TagSet;

    .line 452
    .line 453
    invoke-direct {v13}, Lorg/jsoup/parser/TagSet;-><init>()V

    .line 454
    .line 455
    .line 456
    new-instance v14, Lorg/jsoup/parser/e;

    .line 457
    .line 458
    const/4 v15, 0x4

    .line 459
    invoke-direct {v14, v15}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 460
    .line 461
    .line 462
    const-string v15, "http://www.w3.org/1999/xhtml"

    .line 463
    .line 464
    invoke-virtual {v13, v15, v0, v14}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 465
    .line 466
    .line 467
    new-instance v0, Lorg/jsoup/parser/e;

    .line 468
    .line 469
    const/16 v14, 0x8

    .line 470
    .line 471
    invoke-direct {v0, v14}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v13, v15, v1, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 475
    .line 476
    .line 477
    new-instance v0, Lorg/jsoup/parser/e;

    .line 478
    .line 479
    const/16 v1, 0x9

    .line 480
    .line 481
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v13, v15, v2, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 485
    .line 486
    .line 487
    new-instance v0, Lorg/jsoup/parser/e;

    .line 488
    .line 489
    const/16 v1, 0xa

    .line 490
    .line 491
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v13, v15, v3, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 495
    .line 496
    .line 497
    new-instance v0, Lorg/jsoup/parser/e;

    .line 498
    .line 499
    const/16 v1, 0xb

    .line 500
    .line 501
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v13, v15, v4, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 505
    .line 506
    .line 507
    new-instance v0, Lorg/jsoup/parser/e;

    .line 508
    .line 509
    const/16 v1, 0xc

    .line 510
    .line 511
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v13, v15, v5, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 515
    .line 516
    .line 517
    new-instance v0, Lorg/jsoup/parser/e;

    .line 518
    .line 519
    const/4 v1, 0x0

    .line 520
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v13, v15, v6, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 524
    .line 525
    .line 526
    new-instance v0, Lorg/jsoup/parser/e;

    .line 527
    .line 528
    const/4 v1, 0x1

    .line 529
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v13, v15, v7, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 533
    .line 534
    .line 535
    new-instance v0, Lorg/jsoup/parser/e;

    .line 536
    .line 537
    const/4 v1, 0x2

    .line 538
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 539
    .line 540
    .line 541
    const-string v1, "http://www.w3.org/1998/Math/MathML"

    .line 542
    .line 543
    invoke-virtual {v13, v1, v9, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 544
    .line 545
    .line 546
    new-instance v0, Lorg/jsoup/parser/e;

    .line 547
    .line 548
    const/4 v2, 0x3

    .line 549
    invoke-direct {v0, v2}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v13, v1, v10, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 553
    .line 554
    .line 555
    new-instance v0, Lorg/jsoup/parser/e;

    .line 556
    .line 557
    const/4 v1, 0x5

    .line 558
    invoke-direct {v0, v1}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 559
    .line 560
    .line 561
    const-string v1, "http://www.w3.org/2000/svg"

    .line 562
    .line 563
    invoke-virtual {v13, v1, v11, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 564
    .line 565
    .line 566
    new-instance v0, Lorg/jsoup/parser/e;

    .line 567
    .line 568
    const/4 v2, 0x6

    .line 569
    invoke-direct {v0, v2}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v13, v1, v12, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 573
    .line 574
    .line 575
    new-instance v0, Lorg/jsoup/parser/e;

    .line 576
    .line 577
    const/4 v2, 0x7

    .line 578
    invoke-direct {v0, v2}, Lorg/jsoup/parser/e;-><init>(I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v13, v1, v8, v0}, Lorg/jsoup/parser/TagSet;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 582
    .line 583
    .line 584
    sput-object v13, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 585
    .line 586
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TagSet;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/jsoup/parser/TagSet;->b:Lorg/jsoup/parser/TagSet;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/TagSet;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/TagSet;->a:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Lorg/jsoup/parser/TagSet;->b:Lorg/jsoup/parser/TagSet;

    return-void
.end method

.method public static Html()Lorg/jsoup/parser/TagSet;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/TagSet;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/parser/TagSet;->d:Lorg/jsoup/parser/TagSet;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final a(Lorg/jsoup/parser/Tag;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    check-cast v3, Ljava/util/function/Consumer;

    .line 19
    .line 20
    invoke-interface {v3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p1, Lorg/jsoup/parser/Tag;->c:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Lorg/jsoup/parser/d;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lorg/jsoup/parser/TagSet;->a:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-static {v2, v0, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/Map;

    .line 38
    .line 39
    iget-object v1, p1, Lorg/jsoup/parser/Tag;->f:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public add(Lorg/jsoup/parser/Tag;)Lorg/jsoup/parser/TagSet;
    .locals 1

    .line 1
    sget v0, Lorg/jsoup/parser/Tag;->Known:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/Tag;->set(I)Lorg/jsoup/parser/Tag;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TagSet;->a(Lorg/jsoup/parser/Tag;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p2, v2

    .line 7
    .line 8
    invoke-virtual {p0, v3, p1}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    new-instance v4, Lorg/jsoup/parser/Tag;

    .line 15
    .line 16
    invoke-direct {v4, v3, v3, p1}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput v1, v4, Lorg/jsoup/parser/Tag;->h:I

    .line 20
    .line 21
    invoke-virtual {p0, v4}, Lorg/jsoup/parser/TagSet;->add(Lorg/jsoup/parser/Tag;)Lorg/jsoup/parser/TagSet;

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-interface {p3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, p3}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    if-nez p2, :cond_1

    .line 22
    .line 23
    sget-object p2, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    .line 24
    .line 25
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_1
    if-eqz p4, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move-object p1, p2

    .line 33
    :goto_0
    invoke-virtual {p0, p2, p3}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    if-eqz p4, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->a()Lorg/jsoup/parser/Tag;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p1, p2, Lorg/jsoup/parser/Tag;->f:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/TagSet;->a(Lorg/jsoup/parser/Tag;)V

    .line 54
    .line 55
    .line 56
    return-object p2

    .line 57
    :cond_3
    return-object v0

    .line 58
    :cond_4
    new-instance p4, Lorg/jsoup/parser/Tag;

    .line 59
    .line 60
    invoke-direct {p4, p1, p2, p3}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p4}, Lorg/jsoup/parser/TagSet;->a(Lorg/jsoup/parser/Tag;)V

    .line 64
    .line 65
    .line 66
    return-object p4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/jsoup/parser/TagSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lorg/jsoup/parser/TagSet;

    .line 8
    .line 9
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/jsoup/parser/TagSet;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Map;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->b:Lorg/jsoup/parser/TagSet;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/parser/TagSet;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/jsoup/parser/Tag;->a()Lorg/jsoup/parser/Tag;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/TagSet;->a(Lorg/jsoup/parser/Tag;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onNewTag(Ljava/util/function/Consumer;)Lorg/jsoup/parser/TagSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/jsoup/parser/Tag;",
            ">;)",
            "Lorg/jsoup/parser/TagSet;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/jsoup/parser/TagSet;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/TagSet;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public valueOf(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 2
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {p0, p1, p2, v0}, Lorg/jsoup/parser/TagSet;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p1

    return-object p1
.end method

.method public valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p3}, Lorg/jsoup/parser/ParseSettings;->preserveTagCase()Z

    move-result p3

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/jsoup/parser/TagSet;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    move-result-object p1

    return-object p1
.end method
