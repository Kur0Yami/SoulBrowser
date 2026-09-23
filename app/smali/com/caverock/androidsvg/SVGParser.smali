.class Lcom/caverock/androidsvg/SVGParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGParser$TextScanner;,
        Lcom/caverock/androidsvg/SVGParser$SAXHandler;,
        Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;,
        Lcom/caverock/androidsvg/SVGParser$AspectRatioKeywords;,
        Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;,
        Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;,
        Lcom/caverock/androidsvg/SVGParser$ColourKeywords;,
        Lcom/caverock/androidsvg/SVGParser$SVGAttr;,
        Lcom/caverock/androidsvg/SVGParser$SVGElem;
    }
.end annotation


# instance fields
.field public a:Lcom/caverock/androidsvg/SVG;

.field public b:Lcom/caverock/androidsvg/SVG$SvgContainer;

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Lcom/caverock/androidsvg/SVGParser$SVGElem;

.field public g:Ljava/lang/StringBuilder;

.field public h:Z

.field public i:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->c:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->e:Z

    .line 13
    .line 14
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->f:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->g:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->h:Z

    .line 19
    .line 20
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->i:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    return-void
.end method

.method public static A(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/Matrix;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_18

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    const/4 v5, 0x0

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    iget v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 32
    .line 33
    iget-object v6, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    :goto_1
    const/16 v8, 0x61

    .line 40
    .line 41
    if-lt v7, v8, :cond_1

    .line 42
    .line 43
    const/16 v8, 0x7a

    .line 44
    .line 45
    if-le v7, v8, :cond_2

    .line 46
    .line 47
    :cond_1
    const/16 v8, 0x41

    .line 48
    .line 49
    if-lt v7, v8, :cond_3

    .line 50
    .line 51
    const/16 v8, 0x5a

    .line 52
    .line 53
    if-gt v7, v8, :cond_3

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget v8, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 61
    .line 62
    :goto_2
    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->g(I)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_4

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const/16 v9, 0x28

    .line 74
    .line 75
    if-ne v7, v9, :cond_5

    .line 76
    .line 77
    iget v5, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 78
    .line 79
    add-int/2addr v5, v4

    .line 80
    iput v5, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 81
    .line 82
    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    goto :goto_3

    .line 87
    :cond_5
    iput v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 88
    .line 89
    :goto_3
    if-eqz v5, :cond_17

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const/4 v6, 0x5

    .line 96
    const/4 v7, 0x4

    .line 97
    const/4 v8, 0x3

    .line 98
    const/4 v9, 0x2

    .line 99
    const/4 v10, 0x0

    .line 100
    const/4 v11, -0x1

    .line 101
    sparse-switch v3, :sswitch_data_0

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :sswitch_0
    const-string v3, "translate"

    .line 106
    .line 107
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_6

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_6
    move v11, v6

    .line 115
    goto :goto_4

    .line 116
    :sswitch_1
    const-string v3, "skewY"

    .line 117
    .line 118
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_7

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_7
    move v11, v7

    .line 126
    goto :goto_4

    .line 127
    :sswitch_2
    const-string v3, "skewX"

    .line 128
    .line 129
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_8

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_8
    move v11, v8

    .line 137
    goto :goto_4

    .line 138
    :sswitch_3
    const-string v3, "scale"

    .line 139
    .line 140
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_9

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_9
    move v11, v9

    .line 148
    goto :goto_4

    .line 149
    :sswitch_4
    const-string v3, "rotate"

    .line 150
    .line 151
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-nez v3, :cond_a

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_a
    move v11, v4

    .line 159
    goto :goto_4

    .line 160
    :sswitch_5
    const-string v3, "matrix"

    .line 161
    .line 162
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-nez v3, :cond_b

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_b
    move v11, v10

    .line 170
    :goto_4
    const/4 v3, 0x0

    .line 171
    const/16 v12, 0x29

    .line 172
    .line 173
    const-string v13, "Invalid transform list: "

    .line 174
    .line 175
    packed-switch v11, :pswitch_data_0

    .line 176
    .line 177
    .line 178
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 179
    .line 180
    const-string v1, "Invalid transform list fn: "

    .line 181
    .line 182
    const-string v2, ")"

    .line 183
    .line 184
    invoke-static {v1, v5, v2}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :pswitch_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->o()F

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 204
    .line 205
    .line 206
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-nez v6, :cond_d

    .line 211
    .line 212
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_d

    .line 217
    .line 218
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_c

    .line 223
    .line 224
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 225
    .line 226
    .line 227
    goto/16 :goto_5

    .line 228
    .line 229
    :cond_c
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 230
    .line 231
    .line 232
    goto/16 :goto_5

    .line 233
    .line 234
    :cond_d
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 235
    .line 236
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v1

    .line 244
    :pswitch_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 252
    .line 253
    .line 254
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_e

    .line 259
    .line 260
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-eqz v5, :cond_e

    .line 265
    .line 266
    float-to-double v4, v4

    .line 267
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 268
    .line 269
    .line 270
    move-result-wide v4

    .line 271
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    .line 272
    .line 273
    .line 274
    move-result-wide v4

    .line 275
    double-to-float v4, v4

    .line 276
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 277
    .line 278
    .line 279
    goto/16 :goto_5

    .line 280
    .line 281
    :cond_e
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 282
    .line 283
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v1

    .line 291
    :pswitch_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 299
    .line 300
    .line 301
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 302
    .line 303
    .line 304
    move-result v5

    .line 305
    if-nez v5, :cond_f

    .line 306
    .line 307
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_f

    .line 312
    .line 313
    float-to-double v4, v4

    .line 314
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 315
    .line 316
    .line 317
    move-result-wide v4

    .line 318
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    .line 319
    .line 320
    .line 321
    move-result-wide v4

    .line 322
    double-to-float v4, v4

    .line 323
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 324
    .line 325
    .line 326
    goto/16 :goto_5

    .line 327
    .line 328
    :cond_f
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 329
    .line 330
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw v1

    .line 338
    :pswitch_3
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->o()F

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 350
    .line 351
    .line 352
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-nez v5, :cond_11

    .line 357
    .line 358
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 359
    .line 360
    .line 361
    move-result v5

    .line 362
    if-eqz v5, :cond_11

    .line 363
    .line 364
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-eqz v5, :cond_10

    .line 369
    .line 370
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 371
    .line 372
    .line 373
    goto/16 :goto_5

    .line 374
    .line 375
    :cond_10
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 376
    .line 377
    .line 378
    goto/16 :goto_5

    .line 379
    .line 380
    :cond_11
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 381
    .line 382
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    throw v1

    .line 390
    :pswitch_4
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->o()F

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->o()F

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 406
    .line 407
    .line 408
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 409
    .line 410
    .line 411
    move-result v6

    .line 412
    if-nez v6, :cond_14

    .line 413
    .line 414
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    if-eqz v6, :cond_14

    .line 419
    .line 420
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    if-eqz v6, :cond_12

    .line 425
    .line 426
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 427
    .line 428
    .line 429
    goto/16 :goto_5

    .line 430
    .line 431
    :cond_12
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 432
    .line 433
    .line 434
    move-result v6

    .line 435
    if-nez v6, :cond_13

    .line 436
    .line 437
    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 438
    .line 439
    .line 440
    goto :goto_5

    .line 441
    :cond_13
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 442
    .line 443
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    throw v1

    .line 451
    :cond_14
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 452
    .line 453
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v1

    .line 461
    :pswitch_5
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 469
    .line 470
    .line 471
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 472
    .line 473
    .line 474
    move-result v11

    .line 475
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 479
    .line 480
    .line 481
    move-result v14

    .line 482
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 486
    .line 487
    .line 488
    move-result v15

    .line 489
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 490
    .line 491
    .line 492
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 493
    .line 494
    .line 495
    move-result v16

    .line 496
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 500
    .line 501
    .line 502
    move-result v17

    .line 503
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 504
    .line 505
    .line 506
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 507
    .line 508
    .line 509
    move-result v18

    .line 510
    if-nez v18, :cond_16

    .line 511
    .line 512
    invoke-virtual {v2, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 513
    .line 514
    .line 515
    move-result v12

    .line 516
    if-eqz v12, :cond_16

    .line 517
    .line 518
    new-instance v12, Landroid/graphics/Matrix;

    .line 519
    .line 520
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 521
    .line 522
    .line 523
    const/16 v13, 0x9

    .line 524
    .line 525
    new-array v13, v13, [F

    .line 526
    .line 527
    aput v5, v13, v10

    .line 528
    .line 529
    aput v14, v13, v4

    .line 530
    .line 531
    aput v16, v13, v9

    .line 532
    .line 533
    aput v11, v13, v8

    .line 534
    .line 535
    aput v15, v13, v7

    .line 536
    .line 537
    aput v17, v13, v6

    .line 538
    .line 539
    const/4 v4, 0x6

    .line 540
    aput v3, v13, v4

    .line 541
    .line 542
    const/4 v4, 0x7

    .line 543
    aput v3, v13, v4

    .line 544
    .line 545
    const/high16 v3, 0x3f800000    # 1.0f

    .line 546
    .line 547
    const/16 v4, 0x8

    .line 548
    .line 549
    aput v3, v13, v4

    .line 550
    .line 551
    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->setValues([F)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 555
    .line 556
    .line 557
    :goto_5
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    if-eqz v3, :cond_15

    .line 562
    .line 563
    goto :goto_6

    .line 564
    :cond_15
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 565
    .line 566
    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :cond_16
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 570
    .line 571
    invoke-virtual {v13, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    throw v1

    .line 579
    :cond_17
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 580
    .line 581
    const-string v2, "Bad transform function encountered in transform list: "

    .line 582
    .line 583
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    throw v1

    .line 591
    :cond_18
    :goto_6
    return-object v1

    .line 592
    nop

    .line 593
    :sswitch_data_0
    .sparse-switch
        -0x4072683f -> :sswitch_5
        -0x379c7c9e -> :sswitch_2
        -0x372522a5 -> :sswitch_4
        0x683094a -> :sswitch_3
        0x686bc8f -> :sswitch_1
        0x159eff6a -> :sswitch_0
    .end sparse-switch

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static E(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_26

    .line 12
    .line 13
    :cond_0
    const-string v2, "inherit"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto/16 :goto_26

    .line 22
    .line 23
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "auto"

    .line 32
    .line 33
    const/4 v4, 0x5

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eq v2, v5, :cond_4c

    .line 36
    .line 37
    const/4 v7, 0x2

    .line 38
    if-eq v2, v7, :cond_4b

    .line 39
    .line 40
    const/4 v8, 0x4

    .line 41
    sget-object v9, Lcom/caverock/androidsvg/SVG$Style$FillRule;->f:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 42
    .line 43
    const-string v10, "evenodd"

    .line 44
    .line 45
    sget-object v11, Lcom/caverock/androidsvg/SVG$Style$FillRule;->c:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 46
    .line 47
    const-string v12, "nonzero"

    .line 48
    .line 49
    if-eq v2, v8, :cond_48

    .line 50
    .line 51
    if-eq v2, v4, :cond_47

    .line 52
    .line 53
    const/16 v4, 0x8

    .line 54
    .line 55
    if-eq v2, v4, :cond_44

    .line 56
    .line 57
    const/16 v4, 0x23

    .line 58
    .line 59
    if-eq v2, v4, :cond_43

    .line 60
    .line 61
    const/16 v4, 0x28

    .line 62
    .line 63
    if-eq v2, v4, :cond_42

    .line 64
    .line 65
    const/16 v4, 0x2a

    .line 66
    .line 67
    const-string v14, "visible"

    .line 68
    .line 69
    move/from16 p1, v5

    .line 70
    .line 71
    if-eq v2, v4, :cond_3d

    .line 72
    .line 73
    const/16 v4, 0x4e

    .line 74
    .line 75
    const-string v7, "none"

    .line 76
    .line 77
    if-eq v2, v4, :cond_3a

    .line 78
    .line 79
    const/16 v4, 0x3a

    .line 80
    .line 81
    const-string v8, "SVGParser"

    .line 82
    .line 83
    sget-object v13, Lcom/caverock/androidsvg/SVG$CurrentColor;->c:Lcom/caverock/androidsvg/SVG$CurrentColor;

    .line 84
    .line 85
    const-string v15, "currentColor"

    .line 86
    .line 87
    if-eq v2, v4, :cond_38

    .line 88
    .line 89
    const/16 v4, 0x3b

    .line 90
    .line 91
    if-eq v2, v4, :cond_37

    .line 92
    .line 93
    const/16 v4, 0x4a

    .line 94
    .line 95
    if-eq v2, v4, :cond_33

    .line 96
    .line 97
    const/16 v4, 0x4b

    .line 98
    .line 99
    if-eq v2, v4, :cond_2d

    .line 100
    .line 101
    const-string v4, "italic"

    .line 102
    .line 103
    const-string v5, "oblique"

    .line 104
    .line 105
    const-string v6, "normal"

    .line 106
    .line 107
    sget-object v16, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->g:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 108
    .line 109
    sget-object v17, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->f:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 110
    .line 111
    sget-object v18, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->c:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 112
    .line 113
    move/from16 v19, v2

    .line 114
    .line 115
    const-string v2, "|"

    .line 116
    .line 117
    move-object/from16 v20, v9

    .line 118
    .line 119
    const/16 v9, 0x7c

    .line 120
    .line 121
    packed-switch v19, :pswitch_data_0

    .line 122
    .line 123
    .line 124
    packed-switch v19, :pswitch_data_1

    .line 125
    .line 126
    .line 127
    const-string v3, "round"

    .line 128
    .line 129
    packed-switch v19, :pswitch_data_2

    .line 130
    .line 131
    .line 132
    packed-switch v19, :pswitch_data_3

    .line 133
    .line 134
    .line 135
    goto/16 :goto_26

    .line 136
    .line 137
    :pswitch_0
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-gez v3, :cond_50

    .line 142
    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v3, "|visible|hidden|collapse|"

    .line 159
    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_2

    .line 165
    .line 166
    goto/16 :goto_26

    .line 167
    .line 168
    :cond_2
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->F:Ljava/lang/Boolean;

    .line 177
    .line 178
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 179
    .line 180
    const-wide/32 v3, 0x2000000

    .line 181
    .line 182
    .line 183
    or-long/2addr v1, v3

    .line 184
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->O:Ljava/lang/Float;

    .line 192
    .line 193
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 194
    .line 195
    const-wide v3, 0x400000000L

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    or-long/2addr v1, v3

    .line 201
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_2
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_3

    .line 209
    .line 210
    iput-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->N:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->o(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->N:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    :goto_0
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 220
    .line 221
    const-wide v3, 0x200000000L

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    or-long/2addr v1, v3

    .line 227
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 228
    .line 229
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    goto/16 :goto_26

    .line 239
    .line 240
    :pswitch_3
    :try_start_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->k:Lcom/caverock/androidsvg/SVG$Length;

    .line 245
    .line 246
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 247
    .line 248
    const-wide/16 v3, 0x20

    .line 249
    .line 250
    or-long/2addr v1, v3

    .line 251
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_5

    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->j:Ljava/lang/Float;

    .line 259
    .line 260
    if-eqz v1, :cond_50

    .line 261
    .line 262
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 263
    .line 264
    const-wide/16 v3, 0x10

    .line 265
    .line 266
    or-long/2addr v1, v3

    .line 267
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 268
    .line 269
    return-void

    .line 270
    :pswitch_5
    :try_start_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->q(Ljava/lang/String;)F

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->n:Ljava/lang/Float;

    .line 279
    .line 280
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 281
    .line 282
    const-wide/16 v3, 0x100

    .line 283
    .line 284
    or-long/2addr v1, v3

    .line 285
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J
    :try_end_2
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_2 .. :try_end_2} :catch_5

    .line 286
    .line 287
    return-void

    .line 288
    :pswitch_6
    const-string v2, "miter"

    .line 289
    .line 290
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_4

    .line 295
    .line 296
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->c:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 297
    .line 298
    goto :goto_1

    .line 299
    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_5

    .line 304
    .line 305
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->f:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_5
    const-string v2, "bevel"

    .line 309
    .line 310
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_6

    .line 315
    .line 316
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->g:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 317
    .line 318
    goto :goto_1

    .line 319
    :cond_6
    const/4 v6, 0x0

    .line 320
    :goto_1
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->m:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 321
    .line 322
    if-eqz v6, :cond_50

    .line 323
    .line 324
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 325
    .line 326
    const-wide/16 v3, 0x80

    .line 327
    .line 328
    or-long/2addr v1, v3

    .line 329
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_7
    const-string v2, "butt"

    .line 333
    .line 334
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_7

    .line 339
    .line 340
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$LineCap;->c:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-eqz v2, :cond_8

    .line 348
    .line 349
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$LineCap;->f:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_8
    const-string v2, "square"

    .line 353
    .line 354
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_9

    .line 359
    .line 360
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$LineCap;->g:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_9
    const/4 v6, 0x0

    .line 364
    :goto_2
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->l:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 365
    .line 366
    if-eqz v6, :cond_50

    .line 367
    .line 368
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 369
    .line 370
    const-wide/16 v3, 0x40

    .line 371
    .line 372
    or-long/2addr v1, v3

    .line 373
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 374
    .line 375
    return-void

    .line 376
    :pswitch_8
    :try_start_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->p:Lcom/caverock/androidsvg/SVG$Length;

    .line 381
    .line 382
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 383
    .line 384
    const-wide/16 v3, 0x400

    .line 385
    .line 386
    or-long/2addr v1, v3

    .line 387
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J
    :try_end_3
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_3 .. :try_end_3} :catch_5

    .line 388
    .line 389
    return-void

    .line 390
    :pswitch_9
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    const-wide/16 v3, 0x200

    .line 395
    .line 396
    if-eqz v2, :cond_a

    .line 397
    .line 398
    const/4 v8, 0x0

    .line 399
    iput-object v8, v0, Lcom/caverock/androidsvg/SVG$Style;->o:[Lcom/caverock/androidsvg/SVG$Length;

    .line 400
    .line 401
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 402
    .line 403
    or-long/2addr v1, v3

    .line 404
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 405
    .line 406
    return-void

    .line 407
    :cond_a
    const/4 v8, 0x0

    .line 408
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 409
    .line 410
    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_b

    .line 421
    .line 422
    :goto_3
    move-object v6, v8

    .line 423
    goto :goto_5

    .line 424
    :cond_b
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->j()Lcom/caverock/androidsvg/SVG$Length;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    if-nez v1, :cond_c

    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_c
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    if-eqz v5, :cond_d

    .line 436
    .line 437
    goto :goto_3

    .line 438
    :cond_d
    iget v5, v1, Lcom/caverock/androidsvg/SVG$Length;->c:F

    .line 439
    .line 440
    new-instance v6, Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    :goto_4
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_10

    .line 453
    .line 454
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->j()Lcom/caverock/androidsvg/SVG$Length;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    if-nez v1, :cond_e

    .line 462
    .line 463
    goto :goto_3

    .line 464
    :cond_e
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    .line 465
    .line 466
    .line 467
    move-result v7

    .line 468
    if-eqz v7, :cond_f

    .line 469
    .line 470
    goto :goto_3

    .line 471
    :cond_f
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    iget v1, v1, Lcom/caverock/androidsvg/SVG$Length;->c:F

    .line 475
    .line 476
    add-float/2addr v5, v1

    .line 477
    goto :goto_4

    .line 478
    :cond_10
    const/4 v1, 0x0

    .line 479
    cmpl-float v1, v5, v1

    .line 480
    .line 481
    if-nez v1, :cond_11

    .line 482
    .line 483
    goto :goto_3

    .line 484
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    new-array v1, v1, [Lcom/caverock/androidsvg/SVG$Length;

    .line 489
    .line 490
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    move-object v6, v1

    .line 495
    check-cast v6, [Lcom/caverock/androidsvg/SVG$Length;

    .line 496
    .line 497
    :goto_5
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->o:[Lcom/caverock/androidsvg/SVG$Length;

    .line 498
    .line 499
    if-eqz v6, :cond_50

    .line 500
    .line 501
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 502
    .line 503
    or-long/2addr v1, v3

    .line 504
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 505
    .line 506
    return-void

    .line 507
    :pswitch_a
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->x(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->i:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 512
    .line 513
    if-eqz v1, :cond_50

    .line 514
    .line 515
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 516
    .line 517
    const-wide/16 v3, 0x8

    .line 518
    .line 519
    or-long/2addr v1, v3

    .line 520
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 521
    .line 522
    return-void

    .line 523
    :pswitch_b
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->H:Ljava/lang/Float;

    .line 528
    .line 529
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 530
    .line 531
    const-wide/32 v3, 0x8000000

    .line 532
    .line 533
    .line 534
    or-long/2addr v1, v3

    .line 535
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 536
    .line 537
    return-void

    .line 538
    :pswitch_c
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    if-eqz v2, :cond_12

    .line 543
    .line 544
    iput-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 545
    .line 546
    goto :goto_6

    .line 547
    :cond_12
    :try_start_4
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->o(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->G:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_4
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_4 .. :try_end_4} :catch_1

    .line 552
    .line 553
    :goto_6
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 554
    .line 555
    const-wide/32 v3, 0x4000000

    .line 556
    .line 557
    .line 558
    or-long/2addr v1, v3

    .line 559
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 560
    .line 561
    return-void

    .line 562
    :catch_1
    move-exception v0

    .line 563
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    .line 569
    .line 570
    goto/16 :goto_26

    .line 571
    .line 572
    :pswitch_d
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->D:Ljava/lang/String;

    .line 577
    .line 578
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 579
    .line 580
    const-wide/32 v3, 0x800000

    .line 581
    .line 582
    .line 583
    or-long/2addr v1, v3

    .line 584
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 585
    .line 586
    return-void

    .line 587
    :pswitch_e
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->C:Ljava/lang/String;

    .line 592
    .line 593
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 594
    .line 595
    const-wide/32 v3, 0x400000

    .line 596
    .line 597
    .line 598
    or-long/2addr v1, v3

    .line 599
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 600
    .line 601
    return-void

    .line 602
    :pswitch_f
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/String;

    .line 607
    .line 608
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 609
    .line 610
    const-wide/32 v3, 0x200000

    .line 611
    .line 612
    .line 613
    or-long/2addr v1, v3

    .line 614
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 615
    .line 616
    return-void

    .line 617
    :pswitch_10
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->B:Ljava/lang/String;

    .line 622
    .line 623
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->C:Ljava/lang/String;

    .line 624
    .line 625
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->D:Ljava/lang/String;

    .line 626
    .line 627
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 628
    .line 629
    const-wide/32 v3, 0xe00000

    .line 630
    .line 631
    .line 632
    or-long/2addr v1, v3

    .line 633
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 634
    .line 635
    return-void

    .line 636
    :pswitch_11
    const/4 v8, 0x0

    .line 637
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    sparse-switch v2, :sswitch_data_0

    .line 642
    .line 643
    .line 644
    :goto_7
    const/4 v5, -0x1

    .line 645
    goto :goto_8

    .line 646
    :sswitch_0
    const-string v2, "optimizeSpeed"

    .line 647
    .line 648
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    if-nez v1, :cond_13

    .line 653
    .line 654
    goto :goto_7

    .line 655
    :cond_13
    const/4 v5, 0x2

    .line 656
    goto :goto_8

    .line 657
    :sswitch_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v1

    .line 661
    if-nez v1, :cond_14

    .line 662
    .line 663
    goto :goto_7

    .line 664
    :cond_14
    move/from16 v5, p1

    .line 665
    .line 666
    goto :goto_8

    .line 667
    :sswitch_2
    const-string v2, "optimizeQuality"

    .line 668
    .line 669
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-nez v1, :cond_15

    .line 674
    .line 675
    goto :goto_7

    .line 676
    :cond_15
    const/4 v5, 0x0

    .line 677
    :goto_8
    packed-switch v5, :pswitch_data_4

    .line 678
    .line 679
    .line 680
    move-object v6, v8

    .line 681
    goto :goto_9

    .line 682
    :pswitch_12
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->g:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 683
    .line 684
    goto :goto_9

    .line 685
    :pswitch_13
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->c:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 686
    .line 687
    goto :goto_9

    .line 688
    :pswitch_14
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->f:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 689
    .line 690
    :goto_9
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->Q:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 691
    .line 692
    if-eqz v6, :cond_50

    .line 693
    .line 694
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 695
    .line 696
    const-wide v3, 0x2000000000L

    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    or-long/2addr v1, v3

    .line 702
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 703
    .line 704
    return-void

    .line 705
    :pswitch_15
    const/4 v8, 0x0

    .line 706
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    sparse-switch v2, :sswitch_data_1

    .line 711
    .line 712
    .line 713
    :goto_a
    const/4 v5, -0x1

    .line 714
    goto :goto_b

    .line 715
    :sswitch_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    if-nez v1, :cond_16

    .line 720
    .line 721
    goto :goto_a

    .line 722
    :cond_16
    const/4 v5, 0x2

    .line 723
    goto :goto_b

    .line 724
    :sswitch_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v1

    .line 728
    if-nez v1, :cond_17

    .line 729
    .line 730
    goto :goto_a

    .line 731
    :cond_17
    move/from16 v5, p1

    .line 732
    .line 733
    goto :goto_b

    .line 734
    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result v1

    .line 738
    if-nez v1, :cond_18

    .line 739
    .line 740
    goto :goto_a

    .line 741
    :cond_18
    const/4 v5, 0x0

    .line 742
    :goto_b
    packed-switch v5, :pswitch_data_5

    .line 743
    .line 744
    .line 745
    move-object v6, v8

    .line 746
    goto :goto_c

    .line 747
    :pswitch_16
    move-object/from16 v6, v18

    .line 748
    .line 749
    goto :goto_c

    .line 750
    :pswitch_17
    move-object/from16 v6, v17

    .line 751
    .line 752
    goto :goto_c

    .line 753
    :pswitch_18
    move-object/from16 v6, v16

    .line 754
    .line 755
    :goto_c
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 756
    .line 757
    if-eqz v6, :cond_50

    .line 758
    .line 759
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 760
    .line 761
    const-wide/32 v3, 0x10000

    .line 762
    .line 763
    .line 764
    or-long/2addr v1, v3

    .line 765
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 766
    .line 767
    return-void

    .line 768
    :pswitch_19
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->a:Ljava/util/HashMap;

    .line 769
    .line 770
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    check-cast v1, Ljava/lang/Integer;

    .line 775
    .line 776
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Ljava/lang/Integer;

    .line 777
    .line 778
    if-eqz v1, :cond_50

    .line 779
    .line 780
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 781
    .line 782
    const-wide/32 v3, 0x8000

    .line 783
    .line 784
    .line 785
    or-long/2addr v1, v3

    .line 786
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 787
    .line 788
    return-void

    .line 789
    :pswitch_1a
    const/4 v8, 0x0

    .line 790
    :try_start_5
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->a:Ljava/util/HashMap;

    .line 791
    .line 792
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    .line 794
    .line 795
    move-result-object v2

    .line 796
    check-cast v2, Lcom/caverock/androidsvg/SVG$Length;

    .line 797
    .line 798
    if-nez v2, :cond_19

    .line 799
    .line 800
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 801
    .line 802
    .line 803
    move-result-object v6
    :try_end_5
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_5 .. :try_end_5} :catch_2

    .line 804
    goto :goto_d

    .line 805
    :cond_19
    move-object v6, v2

    .line 806
    goto :goto_d

    .line 807
    :catch_2
    move-object v6, v8

    .line 808
    :goto_d
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Length;

    .line 809
    .line 810
    if-eqz v6, :cond_50

    .line 811
    .line 812
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 813
    .line 814
    const-wide/16 v3, 0x4000

    .line 815
    .line 816
    or-long/2addr v1, v3

    .line 817
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 818
    .line 819
    return-void

    .line 820
    :pswitch_1b
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->r(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->s:Ljava/util/ArrayList;

    .line 825
    .line 826
    if-eqz v1, :cond_50

    .line 827
    .line 828
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 829
    .line 830
    const-wide/16 v3, 0x2000

    .line 831
    .line 832
    or-long/2addr v1, v3

    .line 833
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 834
    .line 835
    return-void

    .line 836
    :pswitch_1c
    const/4 v8, 0x0

    .line 837
    new-instance v3, Ljava/lang/StringBuilder;

    .line 838
    .line 839
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    .line 844
    .line 845
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    const-string v3, "|caption|icon|menu|message-box|small-caption|status-bar|"

    .line 853
    .line 854
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 855
    .line 856
    .line 857
    move-result v2

    .line 858
    if-nez v2, :cond_1a

    .line 859
    .line 860
    goto/16 :goto_26

    .line 861
    .line 862
    :cond_1a
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 863
    .line 864
    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    move-object v1, v8

    .line 868
    move-object v3, v1

    .line 869
    move-object v7, v3

    .line 870
    :goto_e
    const/16 v9, 0x2f

    .line 871
    .line 872
    const/4 v10, 0x0

    .line 873
    invoke-virtual {v2, v9, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->m(CZ)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v11

    .line 877
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 878
    .line 879
    .line 880
    if-nez v11, :cond_1b

    .line 881
    .line 882
    goto/16 :goto_26

    .line 883
    .line 884
    :cond_1b
    if-eqz v1, :cond_1c

    .line 885
    .line 886
    if-eqz v3, :cond_1c

    .line 887
    .line 888
    goto/16 :goto_12

    .line 889
    .line 890
    :cond_1c
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 891
    .line 892
    .line 893
    move-result v12

    .line 894
    if-eqz v12, :cond_1d

    .line 895
    .line 896
    goto :goto_e

    .line 897
    :cond_1d
    if-nez v1, :cond_1e

    .line 898
    .line 899
    sget-object v1, Lcom/caverock/androidsvg/SVGParser$FontWeightKeywords;->a:Ljava/util/HashMap;

    .line 900
    .line 901
    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    check-cast v1, Ljava/lang/Integer;

    .line 906
    .line 907
    if-eqz v1, :cond_1e

    .line 908
    .line 909
    goto :goto_e

    .line 910
    :cond_1e
    if-nez v3, :cond_22

    .line 911
    .line 912
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 913
    .line 914
    .line 915
    move-result v3

    .line 916
    sparse-switch v3, :sswitch_data_2

    .line 917
    .line 918
    .line 919
    :goto_f
    const/4 v3, -0x1

    .line 920
    goto :goto_10

    .line 921
    :sswitch_6
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    move-result v3

    .line 925
    if-nez v3, :cond_1f

    .line 926
    .line 927
    goto :goto_f

    .line 928
    :cond_1f
    const/4 v3, 0x2

    .line 929
    goto :goto_10

    .line 930
    :sswitch_7
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 931
    .line 932
    .line 933
    move-result v3

    .line 934
    if-nez v3, :cond_20

    .line 935
    .line 936
    goto :goto_f

    .line 937
    :cond_20
    move/from16 v3, p1

    .line 938
    .line 939
    goto :goto_10

    .line 940
    :sswitch_8
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    if-nez v3, :cond_21

    .line 945
    .line 946
    goto :goto_f

    .line 947
    :cond_21
    move v3, v10

    .line 948
    :goto_10
    packed-switch v3, :pswitch_data_6

    .line 949
    .line 950
    .line 951
    move-object v3, v8

    .line 952
    goto :goto_11

    .line 953
    :pswitch_1d
    move-object/from16 v3, v18

    .line 954
    .line 955
    goto :goto_11

    .line 956
    :pswitch_1e
    move-object/from16 v3, v17

    .line 957
    .line 958
    goto :goto_11

    .line 959
    :pswitch_1f
    move-object/from16 v3, v16

    .line 960
    .line 961
    :goto_11
    if-eqz v3, :cond_22

    .line 962
    .line 963
    goto :goto_e

    .line 964
    :cond_22
    if-nez v7, :cond_23

    .line 965
    .line 966
    const-string v7, "small-caps"

    .line 967
    .line 968
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    move-result v7

    .line 972
    if-eqz v7, :cond_23

    .line 973
    .line 974
    move-object v7, v11

    .line 975
    goto :goto_e

    .line 976
    :cond_23
    :goto_12
    :try_start_6
    sget-object v4, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->a:Ljava/util/HashMap;

    .line 977
    .line 978
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v4

    .line 982
    check-cast v4, Lcom/caverock/androidsvg/SVG$Length;

    .line 983
    .line 984
    if-nez v4, :cond_24

    .line 985
    .line 986
    invoke-static {v11}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    .line 987
    .line 988
    .line 989
    move-result-object v4
    :try_end_6
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_6 .. :try_end_6} :catch_3

    .line 990
    goto :goto_13

    .line 991
    :catch_3
    move-object v4, v8

    .line 992
    :cond_24
    :goto_13
    invoke-virtual {v2, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 993
    .line 994
    .line 995
    move-result v5

    .line 996
    if-eqz v5, :cond_26

    .line 997
    .line 998
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->l()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v5

    .line 1005
    if-eqz v5, :cond_25

    .line 1006
    .line 1007
    :try_start_7
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    :try_end_7
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1008
    .line 1009
    .line 1010
    :cond_25
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 1011
    .line 1012
    .line 1013
    :cond_26
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 1014
    .line 1015
    .line 1016
    move-result v5

    .line 1017
    if-eqz v5, :cond_27

    .line 1018
    .line 1019
    move-object v6, v8

    .line 1020
    goto :goto_14

    .line 1021
    :cond_27
    iget v5, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 1022
    .line 1023
    iget v6, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c:I

    .line 1024
    .line 1025
    iput v6, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 1026
    .line 1027
    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    .line 1028
    .line 1029
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v6

    .line 1033
    :goto_14
    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser;->r(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v2

    .line 1037
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->s:Ljava/util/ArrayList;

    .line 1038
    .line 1039
    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->t:Lcom/caverock/androidsvg/SVG$Length;

    .line 1040
    .line 1041
    if-nez v1, :cond_28

    .line 1042
    .line 1043
    const/16 v1, 0x190

    .line 1044
    .line 1045
    goto :goto_15

    .line 1046
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1047
    .line 1048
    .line 1049
    move-result v1

    .line 1050
    :goto_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v1

    .line 1054
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->u:Ljava/lang/Integer;

    .line 1055
    .line 1056
    if-nez v3, :cond_29

    .line 1057
    .line 1058
    move-object/from16 v3, v18

    .line 1059
    .line 1060
    :cond_29
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->v:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1061
    .line 1062
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1063
    .line 1064
    const-wide/32 v3, 0x1e000

    .line 1065
    .line 1066
    .line 1067
    or-long/2addr v1, v3

    .line 1068
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1069
    .line 1070
    goto/16 :goto_26

    .line 1071
    .line 1072
    :pswitch_20
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v1

    .line 1076
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->h:Ljava/lang/Float;

    .line 1077
    .line 1078
    if-eqz v1, :cond_50

    .line 1079
    .line 1080
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1081
    .line 1082
    const-wide/16 v3, 0x4

    .line 1083
    .line 1084
    or-long/2addr v1, v3

    .line 1085
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1086
    .line 1087
    return-void

    .line 1088
    :pswitch_21
    const/4 v8, 0x0

    .line 1089
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v2

    .line 1093
    if-eqz v2, :cond_2a

    .line 1094
    .line 1095
    move-object v6, v11

    .line 1096
    goto :goto_16

    .line 1097
    :cond_2a
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1098
    .line 1099
    .line 1100
    move-result v1

    .line 1101
    if-eqz v1, :cond_2b

    .line 1102
    .line 1103
    move-object/from16 v6, v20

    .line 1104
    .line 1105
    goto :goto_16

    .line 1106
    :cond_2b
    move-object v6, v8

    .line 1107
    :goto_16
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->g:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1108
    .line 1109
    if-eqz v6, :cond_50

    .line 1110
    .line 1111
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1112
    .line 1113
    const-wide/16 v3, 0x2

    .line 1114
    .line 1115
    or-long/2addr v1, v3

    .line 1116
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1117
    .line 1118
    return-void

    .line 1119
    :pswitch_22
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->x(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->f:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1124
    .line 1125
    if-eqz v1, :cond_50

    .line 1126
    .line 1127
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1128
    .line 1129
    const-wide/16 v3, 0x1

    .line 1130
    .line 1131
    or-long/2addr v1, v3

    .line 1132
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1133
    .line 1134
    return-void

    .line 1135
    :pswitch_23
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    .line 1136
    .line 1137
    .line 1138
    move-result v3

    .line 1139
    if-gez v3, :cond_50

    .line 1140
    .line 1141
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1142
    .line 1143
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v2

    .line 1156
    const-string v3, "|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|"

    .line 1157
    .line 1158
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1159
    .line 1160
    .line 1161
    move-result v2

    .line 1162
    if-nez v2, :cond_2c

    .line 1163
    .line 1164
    goto/16 :goto_26

    .line 1165
    .line 1166
    :cond_2c
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v1

    .line 1170
    xor-int/lit8 v1, v1, 0x1

    .line 1171
    .line 1172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v1

    .line 1176
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->E:Ljava/lang/Boolean;

    .line 1177
    .line 1178
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1179
    .line 1180
    const-wide/32 v3, 0x1000000

    .line 1181
    .line 1182
    .line 1183
    or-long/2addr v1, v3

    .line 1184
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1185
    .line 1186
    return-void

    .line 1187
    :cond_2d
    const/4 v8, 0x0

    .line 1188
    const/4 v10, 0x0

    .line 1189
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1190
    .line 1191
    .line 1192
    move-result v2

    .line 1193
    sparse-switch v2, :sswitch_data_3

    .line 1194
    .line 1195
    .line 1196
    :goto_17
    const/4 v5, -0x1

    .line 1197
    goto :goto_18

    .line 1198
    :sswitch_9
    const-string v2, "overline"

    .line 1199
    .line 1200
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1201
    .line 1202
    .line 1203
    move-result v1

    .line 1204
    if-nez v1, :cond_2e

    .line 1205
    .line 1206
    goto :goto_17

    .line 1207
    :cond_2e
    const/4 v5, 0x4

    .line 1208
    goto :goto_18

    .line 1209
    :sswitch_a
    const-string v2, "blink"

    .line 1210
    .line 1211
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v1

    .line 1215
    if-nez v1, :cond_2f

    .line 1216
    .line 1217
    goto :goto_17

    .line 1218
    :cond_2f
    const/4 v5, 0x3

    .line 1219
    goto :goto_18

    .line 1220
    :sswitch_b
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v1

    .line 1224
    if-nez v1, :cond_30

    .line 1225
    .line 1226
    goto :goto_17

    .line 1227
    :cond_30
    const/4 v5, 0x2

    .line 1228
    goto :goto_18

    .line 1229
    :sswitch_c
    const-string v2, "underline"

    .line 1230
    .line 1231
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v1

    .line 1235
    if-nez v1, :cond_31

    .line 1236
    .line 1237
    goto :goto_17

    .line 1238
    :cond_31
    move/from16 v5, p1

    .line 1239
    .line 1240
    goto :goto_18

    .line 1241
    :sswitch_d
    const-string v2, "line-through"

    .line 1242
    .line 1243
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result v1

    .line 1247
    if-nez v1, :cond_32

    .line 1248
    .line 1249
    goto :goto_17

    .line 1250
    :cond_32
    move v5, v10

    .line 1251
    :goto_18
    packed-switch v5, :pswitch_data_7

    .line 1252
    .line 1253
    .line 1254
    move-object v6, v8

    .line 1255
    goto :goto_19

    .line 1256
    :pswitch_24
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->g:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1257
    .line 1258
    goto :goto_19

    .line 1259
    :pswitch_25
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->i:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1260
    .line 1261
    goto :goto_19

    .line 1262
    :pswitch_26
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->c:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1263
    .line 1264
    goto :goto_19

    .line 1265
    :pswitch_27
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->f:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1266
    .line 1267
    goto :goto_19

    .line 1268
    :pswitch_28
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->h:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1269
    .line 1270
    :goto_19
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->w:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1271
    .line 1272
    if-eqz v6, :cond_50

    .line 1273
    .line 1274
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1275
    .line 1276
    const-wide/32 v3, 0x20000

    .line 1277
    .line 1278
    .line 1279
    or-long/2addr v1, v3

    .line 1280
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1281
    .line 1282
    return-void

    .line 1283
    :cond_33
    const/4 v8, 0x0

    .line 1284
    const/4 v10, 0x0

    .line 1285
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1286
    .line 1287
    .line 1288
    move-result v2

    .line 1289
    sparse-switch v2, :sswitch_data_4

    .line 1290
    .line 1291
    .line 1292
    :goto_1a
    const/4 v5, -0x1

    .line 1293
    goto :goto_1b

    .line 1294
    :sswitch_e
    const-string v2, "start"

    .line 1295
    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v1

    .line 1300
    if-nez v1, :cond_34

    .line 1301
    .line 1302
    goto :goto_1a

    .line 1303
    :cond_34
    const/4 v5, 0x2

    .line 1304
    goto :goto_1b

    .line 1305
    :sswitch_f
    const-string v2, "end"

    .line 1306
    .line 1307
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1308
    .line 1309
    .line 1310
    move-result v1

    .line 1311
    if-nez v1, :cond_35

    .line 1312
    .line 1313
    goto :goto_1a

    .line 1314
    :cond_35
    move/from16 v5, p1

    .line 1315
    .line 1316
    goto :goto_1b

    .line 1317
    :sswitch_10
    const-string v2, "middle"

    .line 1318
    .line 1319
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1320
    .line 1321
    .line 1322
    move-result v1

    .line 1323
    if-nez v1, :cond_36

    .line 1324
    .line 1325
    goto :goto_1a

    .line 1326
    :cond_36
    move v5, v10

    .line 1327
    :goto_1b
    packed-switch v5, :pswitch_data_8

    .line 1328
    .line 1329
    .line 1330
    move-object v6, v8

    .line 1331
    goto :goto_1c

    .line 1332
    :pswitch_29
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->c:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 1333
    .line 1334
    goto :goto_1c

    .line 1335
    :pswitch_2a
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->g:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 1336
    .line 1337
    goto :goto_1c

    .line 1338
    :pswitch_2b
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->f:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 1339
    .line 1340
    :goto_1c
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->y:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 1341
    .line 1342
    if-eqz v6, :cond_50

    .line 1343
    .line 1344
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1345
    .line 1346
    const-wide/32 v3, 0x40000

    .line 1347
    .line 1348
    .line 1349
    or-long/2addr v1, v3

    .line 1350
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1351
    .line 1352
    return-void

    .line 1353
    :cond_37
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v1

    .line 1357
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->M:Ljava/lang/Float;

    .line 1358
    .line 1359
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1360
    .line 1361
    const-wide v3, 0x100000000L

    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    or-long/2addr v1, v3

    .line 1367
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1368
    .line 1369
    return-void

    .line 1370
    :cond_38
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v2

    .line 1374
    if-eqz v2, :cond_39

    .line 1375
    .line 1376
    iput-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->L:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1377
    .line 1378
    goto :goto_1d

    .line 1379
    :cond_39
    :try_start_8
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->o(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v1

    .line 1383
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->L:Lcom/caverock/androidsvg/SVG$SvgPaint;
    :try_end_8
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1384
    .line 1385
    :goto_1d
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1386
    .line 1387
    const-wide v3, 0x80000000L

    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    or-long/2addr v1, v3

    .line 1393
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1394
    .line 1395
    return-void

    .line 1396
    :catch_4
    move-exception v0

    .line 1397
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v0

    .line 1401
    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    .line 1403
    .line 1404
    goto/16 :goto_26

    .line 1405
    .line 1406
    :cond_3a
    const/4 v8, 0x0

    .line 1407
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1408
    .line 1409
    .line 1410
    move-result v2

    .line 1411
    if-nez v2, :cond_3c

    .line 1412
    .line 1413
    const-string v2, "non-scaling-stroke"

    .line 1414
    .line 1415
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v1

    .line 1419
    if-nez v1, :cond_3b

    .line 1420
    .line 1421
    move-object v6, v8

    .line 1422
    goto :goto_1e

    .line 1423
    :cond_3b
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->f:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 1424
    .line 1425
    goto :goto_1e

    .line 1426
    :cond_3c
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->c:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 1427
    .line 1428
    :goto_1e
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->P:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 1429
    .line 1430
    if-eqz v6, :cond_50

    .line 1431
    .line 1432
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1433
    .line 1434
    const-wide v3, 0x800000000L

    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    or-long/2addr v1, v3

    .line 1440
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1441
    .line 1442
    return-void

    .line 1443
    :cond_3d
    const/4 v8, 0x0

    .line 1444
    const/4 v10, 0x0

    .line 1445
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1446
    .line 1447
    .line 1448
    move-result v2

    .line 1449
    sparse-switch v2, :sswitch_data_5

    .line 1450
    .line 1451
    .line 1452
    :goto_1f
    const/4 v5, -0x1

    .line 1453
    goto :goto_20

    .line 1454
    :sswitch_11
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v1

    .line 1458
    if-nez v1, :cond_3e

    .line 1459
    .line 1460
    goto :goto_1f

    .line 1461
    :cond_3e
    const/4 v5, 0x3

    .line 1462
    goto :goto_20

    .line 1463
    :sswitch_12
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v1

    .line 1467
    if-nez v1, :cond_3f

    .line 1468
    .line 1469
    goto :goto_1f

    .line 1470
    :cond_3f
    const/4 v5, 0x2

    .line 1471
    goto :goto_20

    .line 1472
    :sswitch_13
    const-string v2, "scroll"

    .line 1473
    .line 1474
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1475
    .line 1476
    .line 1477
    move-result v1

    .line 1478
    if-nez v1, :cond_40

    .line 1479
    .line 1480
    goto :goto_1f

    .line 1481
    :cond_40
    move/from16 v5, p1

    .line 1482
    .line 1483
    goto :goto_20

    .line 1484
    :sswitch_14
    const-string v2, "hidden"

    .line 1485
    .line 1486
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1487
    .line 1488
    .line 1489
    move-result v1

    .line 1490
    if-nez v1, :cond_41

    .line 1491
    .line 1492
    goto :goto_1f

    .line 1493
    :cond_41
    move v5, v10

    .line 1494
    :goto_20
    packed-switch v5, :pswitch_data_9

    .line 1495
    .line 1496
    .line 1497
    move-object v6, v8

    .line 1498
    goto :goto_21

    .line 1499
    :pswitch_2c
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1500
    .line 1501
    goto :goto_21

    .line 1502
    :pswitch_2d
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1503
    .line 1504
    :goto_21
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->z:Ljava/lang/Boolean;

    .line 1505
    .line 1506
    if-eqz v6, :cond_50

    .line 1507
    .line 1508
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1509
    .line 1510
    const-wide/32 v3, 0x80000

    .line 1511
    .line 1512
    .line 1513
    or-long/2addr v1, v3

    .line 1514
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1515
    .line 1516
    return-void

    .line 1517
    :cond_42
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->w(Ljava/lang/String;)Ljava/lang/Float;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v1

    .line 1521
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->q:Ljava/lang/Float;

    .line 1522
    .line 1523
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1524
    .line 1525
    const-wide/16 v3, 0x800

    .line 1526
    .line 1527
    or-long/2addr v1, v3

    .line 1528
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1529
    .line 1530
    return-void

    .line 1531
    :cond_43
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v1

    .line 1535
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->K:Ljava/lang/String;

    .line 1536
    .line 1537
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1538
    .line 1539
    const-wide/32 v3, 0x40000000

    .line 1540
    .line 1541
    .line 1542
    or-long/2addr v1, v3

    .line 1543
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1544
    .line 1545
    return-void

    .line 1546
    :cond_44
    const/4 v8, 0x0

    .line 1547
    const-string v2, "ltr"

    .line 1548
    .line 1549
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1550
    .line 1551
    .line 1552
    move-result v2

    .line 1553
    if-nez v2, :cond_46

    .line 1554
    .line 1555
    const-string v2, "rtl"

    .line 1556
    .line 1557
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v1

    .line 1561
    if-nez v1, :cond_45

    .line 1562
    .line 1563
    move-object v6, v8

    .line 1564
    goto :goto_22

    .line 1565
    :cond_45
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->f:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 1566
    .line 1567
    goto :goto_22

    .line 1568
    :cond_46
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->c:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 1569
    .line 1570
    :goto_22
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->x:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 1571
    .line 1572
    if-eqz v6, :cond_50

    .line 1573
    .line 1574
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1575
    .line 1576
    const-wide v3, 0x1000000000L

    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    or-long/2addr v1, v3

    .line 1582
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1583
    .line 1584
    return-void

    .line 1585
    :cond_47
    :try_start_9
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->o(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v1

    .line 1589
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->r:Lcom/caverock/androidsvg/SVG$Colour;

    .line 1590
    .line 1591
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1592
    .line 1593
    const-wide/16 v3, 0x1000

    .line 1594
    .line 1595
    or-long/2addr v1, v3

    .line 1596
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J
    :try_end_9
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1597
    .line 1598
    return-void

    .line 1599
    :cond_48
    move-object/from16 v20, v9

    .line 1600
    .line 1601
    const/4 v8, 0x0

    .line 1602
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v2

    .line 1606
    if-eqz v2, :cond_49

    .line 1607
    .line 1608
    move-object v6, v11

    .line 1609
    goto :goto_23

    .line 1610
    :cond_49
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1611
    .line 1612
    .line 1613
    move-result v1

    .line 1614
    if-eqz v1, :cond_4a

    .line 1615
    .line 1616
    move-object/from16 v6, v20

    .line 1617
    .line 1618
    goto :goto_23

    .line 1619
    :cond_4a
    move-object v6, v8

    .line 1620
    :goto_23
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->J:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1621
    .line 1622
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1623
    .line 1624
    const-wide/32 v3, 0x20000000

    .line 1625
    .line 1626
    .line 1627
    or-long/2addr v1, v3

    .line 1628
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1629
    .line 1630
    return-void

    .line 1631
    :cond_4b
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v1

    .line 1635
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->I:Ljava/lang/String;

    .line 1636
    .line 1637
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1638
    .line 1639
    const-wide/32 v3, 0x10000000

    .line 1640
    .line 1641
    .line 1642
    or-long/2addr v1, v3

    .line 1643
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1644
    .line 1645
    return-void

    .line 1646
    :cond_4c
    const/4 v8, 0x0

    .line 1647
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1648
    .line 1649
    .line 1650
    move-result v2

    .line 1651
    if-eqz v2, :cond_4d

    .line 1652
    .line 1653
    :goto_24
    move-object v6, v8

    .line 1654
    goto :goto_25

    .line 1655
    :cond_4d
    const-string v2, "rect("

    .line 1656
    .line 1657
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1658
    .line 1659
    .line 1660
    move-result v2

    .line 1661
    if-nez v2, :cond_4e

    .line 1662
    .line 1663
    goto :goto_24

    .line 1664
    :cond_4e
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 1665
    .line 1666
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v1

    .line 1670
    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 1671
    .line 1672
    .line 1673
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 1674
    .line 1675
    .line 1676
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->v(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v1

    .line 1680
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 1681
    .line 1682
    .line 1683
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->v(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v3

    .line 1687
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 1688
    .line 1689
    .line 1690
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->v(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v4

    .line 1694
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 1695
    .line 1696
    .line 1697
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->v(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v5

    .line 1701
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 1702
    .line 1703
    .line 1704
    const/16 v6, 0x29

    .line 1705
    .line 1706
    invoke-virtual {v2, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 1707
    .line 1708
    .line 1709
    move-result v6

    .line 1710
    if-nez v6, :cond_4f

    .line 1711
    .line 1712
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 1713
    .line 1714
    .line 1715
    move-result v2

    .line 1716
    if-nez v2, :cond_4f

    .line 1717
    .line 1718
    goto :goto_24

    .line 1719
    :cond_4f
    new-instance v6, Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 1720
    .line 1721
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1722
    .line 1723
    .line 1724
    iput-object v1, v6, Lcom/caverock/androidsvg/SVG$CSSClipRect;->a:Lcom/caverock/androidsvg/SVG$Length;

    .line 1725
    .line 1726
    iput-object v3, v6, Lcom/caverock/androidsvg/SVG$CSSClipRect;->b:Lcom/caverock/androidsvg/SVG$Length;

    .line 1727
    .line 1728
    iput-object v4, v6, Lcom/caverock/androidsvg/SVG$CSSClipRect;->c:Lcom/caverock/androidsvg/SVG$Length;

    .line 1729
    .line 1730
    iput-object v5, v6, Lcom/caverock/androidsvg/SVG$CSSClipRect;->d:Lcom/caverock/androidsvg/SVG$Length;

    .line 1731
    .line 1732
    :goto_25
    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->A:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 1733
    .line 1734
    if-eqz v6, :cond_50

    .line 1735
    .line 1736
    iget-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1737
    .line 1738
    const-wide/32 v3, 0x100000

    .line 1739
    .line 1740
    .line 1741
    or-long/2addr v1, v3

    .line 1742
    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->c:J

    .line 1743
    .line 1744
    :catch_5
    :cond_50
    :goto_26
    return-void

    .line 1745
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_15
    .end packed-switch

    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    :pswitch_data_2
    .packed-switch 0x3e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    :pswitch_data_3
    .packed-switch 0x58
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    :sswitch_data_0
    .sparse-switch
        -0x379c7c9e -> :sswitch_2
        0x686bc8f -> :sswitch_1
        0x159eff6a -> :sswitch_0
    .end sparse-switch

    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    :sswitch_data_1
    .sparse-switch
        -0x4072683f -> :sswitch_5
        -0x372522a5 -> :sswitch_4
        0x683094a -> :sswitch_3
    .end sparse-switch

    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    :sswitch_data_2
    .sparse-switch
        -0x62ce05cf -> :sswitch_8
        -0x4642c5d0 -> :sswitch_7
        -0x3df94319 -> :sswitch_6
    .end sparse-switch

    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    :sswitch_data_3
    .sparse-switch
        -0x45d81614 -> :sswitch_d
        -0x3d363934 -> :sswitch_c
        0x33af38 -> :sswitch_b
        0x597af5c -> :sswitch_a
        0x1f9462c8 -> :sswitch_9
    .end sparse-switch

    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    :sswitch_data_4
    .sparse-switch
        -0x4009266b -> :sswitch_10
        0x188db -> :sswitch_f
        0x68ac462 -> :sswitch_e
    .end sparse-switch

    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    :sswitch_data_5
    .sparse-switch
        -0x48916256 -> :sswitch_14
        -0x361a1933 -> :sswitch_13
        0x2dddaf -> :sswitch_12
        0x1bd1f072 -> :sswitch_11
    .end sparse-switch

    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
    .end packed-switch
.end method

.method public static b(F)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    .line 9
    .line 10
    cmpl-float v0, p0, v0

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    const/16 p0, 0xff

    .line 15
    .line 16
    return p0

    .line 17
    :cond_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static d(FFF)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p0, v0

    .line 3
    .line 4
    const/high16 v2, 0x43b40000    # 360.0f

    .line 5
    .line 6
    rem-float/2addr p0, v2

    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    add-float/2addr p0, v2

    .line 11
    :goto_0
    const/high16 v1, 0x42700000    # 60.0f

    .line 12
    .line 13
    div-float/2addr p0, v1

    .line 14
    const/high16 v1, 0x42c80000    # 100.0f

    .line 15
    .line 16
    div-float/2addr p1, v1

    .line 17
    div-float/2addr p2, v1

    .line 18
    cmpg-float v1, p1, v0

    .line 19
    .line 20
    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    .line 22
    if-gez v1, :cond_1

    .line 23
    .line 24
    move p1, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    cmpl-float v1, p1, v2

    .line 27
    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    move p1, v2

    .line 31
    :cond_2
    :goto_1
    cmpg-float v1, p2, v0

    .line 32
    .line 33
    if-gez v1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    cmpl-float v0, p2, v2

    .line 37
    .line 38
    if-lez v0, :cond_4

    .line 39
    .line 40
    move v0, v2

    .line 41
    goto :goto_2

    .line 42
    :cond_4
    move v0, p2

    .line 43
    :goto_2
    const/high16 p2, 0x3f000000    # 0.5f

    .line 44
    .line 45
    cmpg-float p2, v0, p2

    .line 46
    .line 47
    if-gtz p2, :cond_5

    .line 48
    .line 49
    add-float/2addr p1, v2

    .line 50
    mul-float/2addr p1, v0

    .line 51
    goto :goto_3

    .line 52
    :cond_5
    add-float p2, v0, p1

    .line 53
    .line 54
    mul-float/2addr p1, v0

    .line 55
    sub-float p1, p2, p1

    .line 56
    .line 57
    :goto_3
    const/high16 p2, 0x40000000    # 2.0f

    .line 58
    .line 59
    mul-float/2addr v0, p2

    .line 60
    sub-float/2addr v0, p1

    .line 61
    add-float v1, p0, p2

    .line 62
    .line 63
    invoke-static {v0, p1, v1}, Lcom/caverock/androidsvg/SVGParser;->e(FFF)F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v0, p1, p0}, Lcom/caverock/androidsvg/SVGParser;->e(FFF)F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    sub-float/2addr p0, p2

    .line 72
    invoke-static {v0, p1, p0}, Lcom/caverock/androidsvg/SVGParser;->e(FFF)F

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    const/high16 p1, 0x43800000    # 256.0f

    .line 77
    .line 78
    mul-float/2addr v1, p1

    .line 79
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    shl-int/lit8 p2, p2, 0x10

    .line 84
    .line 85
    mul-float/2addr v2, p1

    .line 86
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    shl-int/lit8 v0, v0, 0x8

    .line 91
    .line 92
    or-int/2addr p2, v0

    .line 93
    mul-float/2addr p0, p1

    .line 94
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    or-int/2addr p0, p2

    .line 99
    return p0
.end method

.method public static e(FFF)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p2, v0

    .line 3
    .line 4
    const/high16 v1, 0x40c00000    # 6.0f

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    add-float/2addr p2, v1

    .line 9
    :cond_0
    cmpl-float v0, p2, v1

    .line 10
    .line 11
    if-ltz v0, :cond_1

    .line 12
    .line 13
    sub-float/2addr p2, v1

    .line 14
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    .line 16
    cmpg-float v0, p2, v0

    .line 17
    .line 18
    if-gez v0, :cond_2

    .line 19
    .line 20
    invoke-static {p1, p0, p2, p0}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_2
    const/high16 v0, 0x40400000    # 3.0f

    .line 26
    .line 27
    cmpg-float v0, p2, v0

    .line 28
    .line 29
    if-gez v0, :cond_3

    .line 30
    .line 31
    return p1

    .line 32
    :cond_3
    const/high16 v0, 0x40800000    # 4.0f

    .line 33
    .line 34
    cmpg-float v1, p2, v0

    .line 35
    .line 36
    if-gez v1, :cond_4

    .line 37
    .line 38
    sub-float/2addr p1, p0

    .line 39
    invoke-static {v0, p2, p1, p0}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    :cond_4
    return p0
.end method

.method public static g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_7

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/16 v4, 0x49

    .line 30
    .line 31
    if-eq v3, v4, :cond_4

    .line 32
    .line 33
    packed-switch v3, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :pswitch_0
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->r(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Ljava/util/HashSet;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-interface {p0, v3}, Lcom/caverock/androidsvg/SVG$SvgConditional;->g(Ljava/util/HashSet;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :pswitch_1
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 59
    .line 60
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->l()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->i(Ljava/util/HashSet;)V

    .line 86
    .line 87
    .line 88
    goto :goto_6

    .line 89
    :pswitch_2
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->h(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_6

    .line 93
    :pswitch_3
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v2, Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    :goto_3
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_3

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->l()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string v5, "http://www.w3.org/TR/SVG11/feature#"

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_2

    .line 120
    .line 121
    const/16 v5, 0x23

    .line 122
    .line 123
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_2
    const-string v4, "UNSUPPORTED"

    .line 132
    .line 133
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    :goto_4
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_3
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->f(Ljava/util/HashSet;)V

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_4
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 145
    .line 146
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v2, Ljava/util/HashSet;

    .line 150
    .line 151
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 152
    .line 153
    .line 154
    :goto_5
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_6

    .line 159
    .line 160
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->l()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    const/16 v5, 0x2d

    .line 165
    .line 166
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    const/4 v6, -0x1

    .line 171
    if-eq v5, v6, :cond_5

    .line 172
    .line 173
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    :cond_5
    new-instance v5, Ljava/util/Locale;

    .line 178
    .line 179
    const-string v6, ""

    .line 180
    .line 181
    invoke-direct {v5, v4, v6, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :cond_6
    invoke-interface {p0, v2}, Lcom/caverock/androidsvg/SVG$SvgConditional;->j(Ljava/util/HashSet;)V

    .line 196
    .line 197
    .line 198
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_7
    return-void

    .line 203
    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_5

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "id"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_4

    .line 19
    .line 20
    const-string v2, "xml:id"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string v2, "xml:space"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "default"

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->d:Ljava/lang/Boolean;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    const-string v0, "preserve"

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->d:Ljava/lang/Boolean;

    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 72
    .line 73
    const-string v0, "Invalid value for \"xml:space\" attribute: "

    .line 74
    .line 75
    invoke-static {v0, p1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_1
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->c:Ljava/lang/String;

    .line 95
    .line 96
    :cond_5
    return-void
.end method

.method public static i(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_8

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v3, 0x17

    .line 29
    .line 30
    if-eq v2, v3, :cond_6

    .line 31
    .line 32
    const/16 v3, 0x18

    .line 33
    .line 34
    if-eq v2, v3, :cond_3

    .line 35
    .line 36
    const/16 v3, 0x1a

    .line 37
    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    const/16 v3, 0x3c

    .line 41
    .line 42
    if-eq v2, v3, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$GradientSpread;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->k:Lcom/caverock/androidsvg/SVG$GradientSpread;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 53
    .line 54
    const-string p1, "Invalid spreadMethod attribute. \""

    .line 55
    .line 56
    const-string v0, "\" is not a valid value."

    .line 57
    .line 58
    invoke-static {p1, v1, v0}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    const-string v2, ""

    .line 67
    .line 68
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_2

    .line 77
    .line 78
    const-string v2, "http://www.w3.org/1999/xlink"

    .line 79
    .line 80
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_7

    .line 89
    .line 90
    :cond_2
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->l:Ljava/lang/String;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const-string v2, "objectBoundingBox"

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 102
    .line 103
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->i:Ljava/lang/Boolean;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const-string v2, "userSpaceOnUse"

    .line 107
    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    .line 116
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->i:Ljava/lang/Boolean;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 120
    .line 121
    const-string p1, "Invalid value for attribute gradientUnits"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_6
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->A(Ljava/lang/String;)Landroid/graphics/Matrix;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$GradientElement;->j:Landroid/graphics/Matrix;

    .line 132
    .line 133
    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 134
    .line 135
    goto/16 :goto_0

    .line 136
    .line 137
    :cond_8
    return-void
.end method

.method public static j(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_4

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->f:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 18
    .line 19
    if-ne v2, v3, :cond_3

    .line 20
    .line 21
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const-string v6, "Invalid <"

    .line 53
    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_0

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 70
    .line 71
    .line 72
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 88
    .line 89
    const-string p1, "> points attribute. There should be an even number of coordinates."

    .line 90
    .line 91
    invoke-static {v6, p2, p1}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 100
    .line 101
    const-string p1, "> points attribute. Non-coordinate content found in list."

    .line 102
    .line 103
    invoke-static {v6, p2, p1}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    new-array v2, v2, [F

    .line 116
    .line 117
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$PolyLine;->o:[F

    .line 118
    .line 119
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    move v4, v0

    .line 124
    move v5, v4

    .line 125
    :goto_2
    if-ge v5, v2, :cond_3

    .line 126
    .line 127
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    check-cast v6, Ljava/lang/Float;

    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    iget-object v7, p0, Lcom/caverock/androidsvg/SVG$PolyLine;->o:[F

    .line 140
    .line 141
    add-int/lit8 v8, v4, 0x1

    .line 142
    .line 143
    aput v6, v7, v4

    .line 144
    .line 145
    move v4, v8

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_4
    return-void
.end method

.method public static k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_c

    .line 8
    .line 9
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_0
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_8

    .line 38
    .line 39
    const/16 v4, 0x48

    .line 40
    .line 41
    if-eq v3, v4, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->e:Lcom/caverock/androidsvg/SVG$Style;

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    .line 48
    .line 49
    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->e:Lcom/caverock/androidsvg/SVG$Style;

    .line 53
    .line 54
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->e:Lcom/caverock/androidsvg/SVG$Style;

    .line 55
    .line 56
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-static {v2, v3, v4}, Lcom/caverock/androidsvg/SVGParser;->E(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_2
    new-instance v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 74
    .line 75
    const-string v4, "/\\*.*?\\*/"

    .line 76
    .line 77
    const-string v5, ""

    .line 78
    .line 79
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    :goto_1
    const/16 v2, 0x3a

    .line 87
    .line 88
    invoke-virtual {v3, v2, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->m(CZ)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_4

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 103
    .line 104
    .line 105
    const/16 v2, 0x3b

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    invoke-virtual {v3, v2, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->m(CZ)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-nez v5, :cond_5

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    if-nez v6, :cond_6

    .line 123
    .line 124
    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    :cond_6
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->f:Lcom/caverock/androidsvg/SVG$Style;

    .line 131
    .line 132
    if-nez v2, :cond_7

    .line 133
    .line 134
    new-instance v2, Lcom/caverock/androidsvg/SVG$Style;

    .line 135
    .line 136
    invoke-direct {v2}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->f:Lcom/caverock/androidsvg/SVG$Style;

    .line 140
    .line 141
    :cond_7
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->f:Lcom/caverock/androidsvg/SVG$Style;

    .line 142
    .line 143
    invoke-static {v2, v4, v5}, Lcom/caverock/androidsvg/SVGParser;->E(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_8
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    .line 151
    .line 152
    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    :goto_2
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-nez v4, :cond_b

    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->l()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-nez v4, :cond_9

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_9
    if-nez v2, :cond_a

    .line 170
    .line 171
    new-instance v2, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    :cond_a
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_b
    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->g:Ljava/util/ArrayList;

    .line 184
    .line 185
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_c
    return-void
.end method

.method public static l(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_4

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v3, 0x9

    .line 29
    .line 30
    if-eq v2, v3, :cond_3

    .line 31
    .line 32
    const/16 v3, 0xa

    .line 33
    .line 34
    if-eq v2, v3, :cond_2

    .line 35
    .line 36
    const/16 v3, 0x52

    .line 37
    .line 38
    if-eq v2, v3, :cond_1

    .line 39
    .line 40
    const/16 v3, 0x53

    .line 41
    .line 42
    if-eq v2, v3, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->u(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->o:Ljava/util/ArrayList;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->u(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->n:Ljava/util/ArrayList;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->u(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->q:Ljava/util/ArrayList;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->u(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$TextPositionedContainer;->p:Ljava/util/ArrayList;

    .line 71
    .line 72
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    return-void
.end method

.method public static m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->g:Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 17
    .line 18
    if-ne v1, v2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->A(Ljava/lang/String;)Landroid/graphics/Matrix;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p0, v1}, Lcom/caverock/androidsvg/SVG$HasTransform;->k(Landroid/graphics/Matrix;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public static n(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_5

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v3, 0x30

    .line 29
    .line 30
    if-eq v2, v3, :cond_4

    .line 31
    .line 32
    const/16 v3, 0x50

    .line 33
    .line 34
    if-eq v2, v3, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_3

    .line 75
    .line 76
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_3

    .line 81
    .line 82
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_3

    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    const/4 v5, 0x0

    .line 95
    cmpg-float v6, v4, v5

    .line 96
    .line 97
    if-ltz v6, :cond_2

    .line 98
    .line 99
    cmpg-float v5, v2, v5

    .line 100
    .line 101
    if-ltz v5, :cond_1

    .line 102
    .line 103
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    .line 104
    .line 105
    invoke-direct {v5, v1, v3, v4, v2}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 106
    .line 107
    .line 108
    iput-object v5, p0, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;->o:Lcom/caverock/androidsvg/SVG$Box;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 112
    .line 113
    const-string p1, "Invalid viewBox. height cannot be negative"

    .line 114
    .line 115
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 120
    .line 121
    const-string p1, "Invalid viewBox. width cannot be negative"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_3
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 128
    .line 129
    const-string p1, "Invalid viewBox definition - should have four numbers"

    .line 130
    .line 131
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_4
    invoke-static {p0, v1}, Lcom/caverock/androidsvg/SVGParser;->y(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_5
    return-void
.end method

.method public static o(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x23

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    const/high16 v3, -0x1000000

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    if-ne v0, v1, :cond_b

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-lt v1, v0, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    move v8, v1

    .line 26
    :goto_0
    if-ge v8, v0, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    const/16 v10, 0x30

    .line 33
    .line 34
    const-wide/16 v11, 0x10

    .line 35
    .line 36
    if-lt v9, v10, :cond_1

    .line 37
    .line 38
    const/16 v10, 0x39

    .line 39
    .line 40
    if-gt v9, v10, :cond_1

    .line 41
    .line 42
    mul-long/2addr v6, v11

    .line 43
    add-int/lit8 v9, v9, -0x30

    .line 44
    .line 45
    int-to-long v9, v9

    .line 46
    add-long/2addr v6, v9

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const-wide/16 v13, 0xa

    .line 49
    .line 50
    const/16 v10, 0x41

    .line 51
    .line 52
    if-lt v9, v10, :cond_2

    .line 53
    .line 54
    const/16 v10, 0x46

    .line 55
    .line 56
    if-gt v9, v10, :cond_2

    .line 57
    .line 58
    mul-long/2addr v6, v11

    .line 59
    add-int/lit8 v9, v9, -0x41

    .line 60
    .line 61
    :goto_1
    int-to-long v9, v9

    .line 62
    add-long/2addr v6, v9

    .line 63
    add-long/2addr v6, v13

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const/16 v10, 0x61

    .line 66
    .line 67
    if-lt v9, v10, :cond_4

    .line 68
    .line 69
    const/16 v10, 0x66

    .line 70
    .line 71
    if-gt v9, v10, :cond_4

    .line 72
    .line 73
    mul-long/2addr v6, v11

    .line 74
    add-int/lit8 v9, v9, -0x61

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_2
    const-wide v9, 0xffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    cmp-long v9, v6, v9

    .line 83
    .line 84
    if-lez v9, :cond_3

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-ne v8, v1, :cond_5

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    new-instance v5, Lcom/caverock/androidsvg/IntegerParser;

    .line 94
    .line 95
    invoke-direct {v5, v6, v7, v8}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    .line 96
    .line 97
    .line 98
    :goto_3
    const-string v0, "Bad hex colour value: "

    .line 99
    .line 100
    if-eqz v5, :cond_a

    .line 101
    .line 102
    iget-wide v6, v5, Lcom/caverock/androidsvg/IntegerParser;->b:J

    .line 103
    .line 104
    iget v1, v5, Lcom/caverock/androidsvg/IntegerParser;->a:I

    .line 105
    .line 106
    if-eq v1, v4, :cond_9

    .line 107
    .line 108
    if-eq v1, v2, :cond_8

    .line 109
    .line 110
    const/4 v2, 0x7

    .line 111
    if-eq v1, v2, :cond_7

    .line 112
    .line 113
    const/16 v2, 0x9

    .line 114
    .line 115
    if-ne v1, v2, :cond_6

    .line 116
    .line 117
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 118
    .line 119
    long-to-int v0, v6

    .line 120
    shl-int/lit8 v1, v0, 0x18

    .line 121
    .line 122
    ushr-int/lit8 v0, v0, 0x8

    .line 123
    .line 124
    or-int/2addr v0, v1

    .line 125
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 126
    .line 127
    .line 128
    return-object p0

    .line 129
    :cond_6
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-direct {v1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v1

    .line 139
    :cond_7
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 140
    .line 141
    long-to-int v0, v6

    .line 142
    or-int/2addr v0, v3

    .line 143
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 144
    .line 145
    .line 146
    return-object p0

    .line 147
    :cond_8
    long-to-int p0, v6

    .line 148
    const v0, 0xf000

    .line 149
    .line 150
    .line 151
    and-int/2addr v0, p0

    .line 152
    and-int/lit16 v1, p0, 0xf00

    .line 153
    .line 154
    and-int/lit16 v2, p0, 0xf0

    .line 155
    .line 156
    and-int/lit8 p0, p0, 0xf

    .line 157
    .line 158
    new-instance v3, Lcom/caverock/androidsvg/SVG$Colour;

    .line 159
    .line 160
    shl-int/lit8 v5, p0, 0x1c

    .line 161
    .line 162
    shl-int/lit8 p0, p0, 0x18

    .line 163
    .line 164
    or-int/2addr p0, v5

    .line 165
    shl-int/lit8 v5, v0, 0x8

    .line 166
    .line 167
    or-int/2addr p0, v5

    .line 168
    shl-int/2addr v0, v4

    .line 169
    or-int/2addr p0, v0

    .line 170
    shl-int/lit8 v0, v1, 0x4

    .line 171
    .line 172
    or-int/2addr p0, v0

    .line 173
    or-int/2addr p0, v1

    .line 174
    or-int/2addr p0, v2

    .line 175
    shr-int/lit8 v0, v2, 0x4

    .line 176
    .line 177
    or-int/2addr p0, v0

    .line 178
    invoke-direct {v3, p0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 179
    .line 180
    .line 181
    return-object v3

    .line 182
    :cond_9
    long-to-int p0, v6

    .line 183
    and-int/lit16 v0, p0, 0xf00

    .line 184
    .line 185
    and-int/lit16 v1, p0, 0xf0

    .line 186
    .line 187
    and-int/lit8 p0, p0, 0xf

    .line 188
    .line 189
    new-instance v2, Lcom/caverock/androidsvg/SVG$Colour;

    .line 190
    .line 191
    shl-int/lit8 v5, v0, 0xc

    .line 192
    .line 193
    or-int/2addr v3, v5

    .line 194
    shl-int/lit8 v0, v0, 0x8

    .line 195
    .line 196
    or-int/2addr v0, v3

    .line 197
    shl-int/lit8 v3, v1, 0x8

    .line 198
    .line 199
    or-int/2addr v0, v3

    .line 200
    shl-int/2addr v1, v4

    .line 201
    or-int/2addr v0, v1

    .line 202
    shl-int/lit8 v1, p0, 0x4

    .line 203
    .line 204
    or-int/2addr v0, v1

    .line 205
    or-int/2addr p0, v0

    .line 206
    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 207
    .line 208
    .line 209
    return-object v2

    .line 210
    :cond_a
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 211
    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-direct {v1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v1

    .line 220
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 221
    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string v1, "rgba("

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    const/16 v5, 0x29

    .line 233
    .line 234
    const/high16 v6, 0x43800000    # 256.0f

    .line 235
    .line 236
    const/16 v7, 0x25

    .line 237
    .line 238
    if-nez v1, :cond_16

    .line 239
    .line 240
    const-string v8, "rgb("

    .line 241
    .line 242
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-eqz v8, :cond_c

    .line 247
    .line 248
    goto/16 :goto_6

    .line 249
    .line 250
    :cond_c
    const-string v1, "hsla("

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-nez v1, :cond_f

    .line 257
    .line 258
    const-string v8, "hsl("

    .line 259
    .line 260
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_d

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_d
    sget-object p0, Lcom/caverock/androidsvg/SVGParser$ColourKeywords;->a:Ljava/util/HashMap;

    .line 268
    .line 269
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    check-cast p0, Ljava/lang/Integer;

    .line 274
    .line 275
    if-eqz p0, :cond_e

    .line 276
    .line 277
    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 278
    .line 279
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 284
    .line 285
    .line 286
    return-object v0

    .line 287
    :cond_e
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 288
    .line 289
    const-string v1, "Invalid colour keyword: "

    .line 290
    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p0

    .line 299
    :cond_f
    :goto_4
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 300
    .line 301
    if-eqz v1, :cond_10

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_10
    move v2, v4

    .line 305
    :goto_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-nez v8, :cond_11

    .line 328
    .line 329
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 330
    .line 331
    .line 332
    :cond_11
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    if-nez v9, :cond_12

    .line 341
    .line 342
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 343
    .line 344
    .line 345
    :cond_12
    if-eqz v1, :cond_14

    .line 346
    .line 347
    invoke-virtual {v0, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 352
    .line 353
    .line 354
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-nez v3, :cond_13

    .line 359
    .line 360
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_13

    .line 365
    .line 366
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 367
    .line 368
    mul-float/2addr v1, v6

    .line 369
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    shl-int/lit8 v0, v0, 0x18

    .line 374
    .line 375
    invoke-static {v2, v4, v8}, Lcom/caverock/androidsvg/SVGParser;->d(FFF)I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    or-int/2addr v0, v1

    .line 380
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 381
    .line 382
    .line 383
    return-object p0

    .line 384
    :cond_13
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 385
    .line 386
    const-string v1, "Bad hsla() colour value: "

    .line 387
    .line 388
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw v0

    .line 396
    :cond_14
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 397
    .line 398
    .line 399
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-nez v1, :cond_15

    .line 404
    .line 405
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_15

    .line 410
    .line 411
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 412
    .line 413
    invoke-static {v2, v4, v8}, Lcom/caverock/androidsvg/SVGParser;->d(FFF)I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    or-int/2addr v0, v3

    .line 418
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 419
    .line 420
    .line 421
    return-object p0

    .line 422
    :cond_15
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 423
    .line 424
    const-string v1, "Bad hsl() colour value: "

    .line 425
    .line 426
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw v0

    .line 434
    :cond_16
    :goto_6
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 435
    .line 436
    if-eqz v1, :cond_17

    .line 437
    .line 438
    goto :goto_7

    .line 439
    :cond_17
    move v2, v4

    .line 440
    :goto_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    const/high16 v8, 0x42c80000    # 100.0f

    .line 459
    .line 460
    if-nez v4, :cond_18

    .line 461
    .line 462
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_18

    .line 467
    .line 468
    mul-float/2addr v2, v6

    .line 469
    div-float/2addr v2, v8

    .line 470
    :cond_18
    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    if-nez v9, :cond_19

    .line 479
    .line 480
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    if-eqz v9, :cond_19

    .line 485
    .line 486
    mul-float/2addr v4, v6

    .line 487
    div-float/2addr v4, v8

    .line 488
    :cond_19
    invoke-virtual {v0, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 489
    .line 490
    .line 491
    move-result v9

    .line 492
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 493
    .line 494
    .line 495
    move-result v10

    .line 496
    if-nez v10, :cond_1a

    .line 497
    .line 498
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    if-eqz v7, :cond_1a

    .line 503
    .line 504
    mul-float/2addr v9, v6

    .line 505
    div-float/2addr v9, v8

    .line 506
    :cond_1a
    if-eqz v1, :cond_1c

    .line 507
    .line 508
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 513
    .line 514
    .line 515
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    if-nez v3, :cond_1b

    .line 520
    .line 521
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_1b

    .line 526
    .line 527
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 528
    .line 529
    mul-float/2addr v1, v6

    .line 530
    invoke-static {v1}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    shl-int/lit8 v0, v0, 0x18

    .line 535
    .line 536
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 537
    .line 538
    .line 539
    move-result v1

    .line 540
    shl-int/lit8 v1, v1, 0x10

    .line 541
    .line 542
    or-int/2addr v0, v1

    .line 543
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    shl-int/lit8 v1, v1, 0x8

    .line 548
    .line 549
    or-int/2addr v0, v1

    .line 550
    invoke-static {v9}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    or-int/2addr v0, v1

    .line 555
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 556
    .line 557
    .line 558
    return-object p0

    .line 559
    :cond_1b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 560
    .line 561
    const-string v1, "Bad rgba() colour value: "

    .line 562
    .line 563
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p0

    .line 567
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    throw v0

    .line 571
    :cond_1c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 572
    .line 573
    .line 574
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-nez v1, :cond_1d

    .line 579
    .line 580
    invoke-virtual {v0, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-eqz v0, :cond_1d

    .line 585
    .line 586
    new-instance p0, Lcom/caverock/androidsvg/SVG$Colour;

    .line 587
    .line 588
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    shl-int/lit8 v0, v0, 0x10

    .line 593
    .line 594
    or-int/2addr v0, v3

    .line 595
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    shl-int/lit8 v1, v1, 0x8

    .line 600
    .line 601
    or-int/2addr v0, v1

    .line 602
    invoke-static {v9}, Lcom/caverock/androidsvg/SVGParser;->b(F)I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    or-int/2addr v0, v1

    .line 607
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    .line 608
    .line 609
    .line 610
    return-object p0

    .line 611
    :cond_1d
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 612
    .line 613
    const-string v1, "Bad rgb() colour value: "

    .line 614
    .line 615
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v0
.end method

.method public static p(ILjava/lang/String;)F
    .locals 2

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/NumberParser;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p0, p1}, Lcom/caverock/androidsvg/NumberParser;->a(IILjava/lang/String;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 19
    .line 20
    const-string v0, "Invalid float value: "

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static q(Ljava/lang/String;)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->p(ILjava/lang/String;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 13
    .line 14
    const-string v0, "Invalid float value (empty string)"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static r(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->k()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x2c

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->m(CZ)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_1
    if-nez v1, :cond_2

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    if-nez p0, :cond_3

    .line 24
    .line 25
    new-instance p0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    return-object p0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "none"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "url("

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_1
    const-string v0, ")"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x4

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v1, v0, -0x1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x25

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->g:Lcom/caverock/androidsvg/SVG$Unit;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x2

    .line 27
    if-le v0, v2, :cond_1

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    add-int/lit8 v1, v0, -0x2

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    add-int/lit8 v0, v0, -0x2

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    .line 60
    .line 61
    .line 62
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 65
    .line 66
    const-string v1, "Invalid length unit specifier: "

    .line 67
    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->c:Lcom/caverock/androidsvg/SVG$Unit;

    .line 77
    .line 78
    :goto_0
    :try_start_1
    invoke-static {v0, p0}, Lcom/caverock/androidsvg/SVGParser;->p(ILjava/lang/String;)F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    .line 83
    .line 84
    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    :catch_1
    move-exception v0

    .line 89
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 90
    .line 91
    const-string v2, "Invalid length value: "

    .line 92
    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {v1, p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 102
    .line 103
    const-string v0, "Invalid length value (empty string)"

    .line 104
    .line 105
    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public static u(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "Invalid length list value: "

    .line 42
    .line 43
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 47
    .line 48
    :goto_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v5, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    .line 53
    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    iget v4, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 57
    .line 58
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->g(I)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_0

    .line 67
    .line 68
    iget v4, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 69
    .line 70
    add-int/2addr v4, v1

    .line 71
    iput v4, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    iget v1, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 75
    .line 76
    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_1
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->n()Lcom/caverock/androidsvg/SVG$Unit;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    if-nez v3, :cond_2

    .line 98
    .line 99
    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->c:Lcom/caverock/androidsvg/SVG$Unit;

    .line 100
    .line 101
    :cond_2
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    .line 102
    .line 103
    invoke-direct {v4, p0, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    return-object v0

    .line 114
    :cond_4
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 115
    .line 116
    const-string v0, "Invalid length list (empty string)"

    .line 117
    .line 118
    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public static v(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 1

    .line 1
    const-string v0, "auto"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Lcom/caverock/androidsvg/SVG$Length;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->j()Lcom/caverock/androidsvg/SVG$Length;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static w(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->q(Ljava/lang/String;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    cmpg-float v1, p0, v0

    .line 7
    .line 8
    if-gez v1, :cond_0

    .line 9
    .line 10
    :goto_0
    move p0, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float v1, p0, v0

    .line 15
    .line 16
    if-lez v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static x(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgPaint;
    .locals 8

    .line 1
    const-string v0, "url("

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "currentColor"

    .line 8
    .line 9
    const-string v2, "none"

    .line 10
    .line 11
    sget-object v3, Lcom/caverock/androidsvg/SVG$Colour;->g:Lcom/caverock/androidsvg/SVG$Colour;

    .line 12
    .line 13
    sget-object v4, Lcom/caverock/androidsvg/SVG$CurrentColor;->c:Lcom/caverock/androidsvg/SVG$CurrentColor;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    const-string v0, ")"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v6, -0x1

    .line 25
    const/4 v7, 0x4

    .line 26
    if-eq v0, v6, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-lez v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    :try_start_0
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->o(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 65
    .line 66
    .line 67
    move-result-object v3
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-object v3, v5

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move-object v3, v4

    .line 72
    :cond_1
    :goto_0
    move-object v5, v3

    .line 73
    :cond_2
    new-instance p0, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 74
    .line 75
    invoke-direct {p0, v6, v5}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_3
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 88
    .line 89
    invoke-direct {v0, p0, v5}, Lcom/caverock/androidsvg/SVG$PaintReference;-><init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 90
    .line 91
    .line 92
    return-object v0

    .line 93
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_5

    .line 104
    .line 105
    :try_start_1
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->o(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Colour;

    .line 106
    .line 107
    .line 108
    move-result-object p0
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    return-object p0

    .line 110
    :catch_1
    return-object v5

    .line 111
    :cond_5
    return-object v4

    .line 112
    :cond_6
    return-object v3
.end method

.method public static y(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->l()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "defer"

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->l()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :cond_0
    sget-object v2, Lcom/caverock/androidsvg/SVGParser$AspectRatioKeywords;->a:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->l()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const-string v2, "meet"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    const-string v2, "slice"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    sget-object p1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->f:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Lcom/caverock/androidsvg/SVGParseException;

    .line 72
    .line 73
    const-string v0, "Invalid preserveAspectRatio definition: "

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    sget-object p1, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->c:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 p1, 0x0

    .line 87
    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 88
    .line 89
    invoke-direct {v0, v1, p1}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    .line 90
    .line 91
    .line 92
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;->n:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 93
    .line 94
    return-void
.end method

.method public static z(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x3d

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->m(CZ)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    :goto_0
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->k()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->m(CZ)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final B(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    const-string v0, "SVGParser"

    .line 2
    .line 3
    const-string v1, "Falling back to SAX parser"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "http://xml.org/sax/features/external-general-entities"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$SAXHandler;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/caverock/androidsvg/SVGParser$SAXHandler;-><init>(Lcom/caverock/androidsvg/SVGParser;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lorg/xml/sax/InputSource;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :catch_2
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :goto_0
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 60
    .line 61
    const-string v1, "Stream error"

    .line 62
    .line 63
    invoke-direct {v0, v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :goto_1
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 68
    .line 69
    const-string v1, "SVG parse error"

    .line 70
    .line 71
    invoke-direct {v0, v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :goto_2
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 76
    .line 77
    const-string v1, "XML parser problem"

    .line 78
    .line 79
    invoke-direct {v0, v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public final C(Ljava/io/InputStream;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser$XPPAttributesWrapper;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 11
    .line 12
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {v0, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 29
    .line 30
    .line 31
    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    if-eq v2, v4, :cond_a

    .line 33
    .line 34
    if-eqz v2, :cond_8

    .line 35
    .line 36
    const/16 v5, 0x8

    .line 37
    .line 38
    const-string v6, "SVGParser"

    .line 39
    .line 40
    if-eq v2, v5, :cond_7

    .line 41
    .line 42
    const/16 v5, 0xa

    .line 43
    .line 44
    if-eq v2, v5, :cond_6

    .line 45
    .line 46
    const/16 v5, 0x3a

    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    if-eq v2, v6, :cond_4

    .line 50
    .line 51
    const/4 v7, 0x3

    .line 52
    if-eq v2, v7, :cond_2

    .line 53
    .line 54
    const/4 v5, 0x4

    .line 55
    if-eq v2, v5, :cond_1

    .line 56
    .line 57
    const/4 v5, 0x5

    .line 58
    if-eq v2, v5, :cond_0

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGParser;->H(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :catch_1
    move-exception p1

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_1
    new-array v2, v6, [I

    .line 78
    .line 79
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    aget v6, v2, v3

    .line 84
    .line 85
    aget v2, v2, v4

    .line 86
    .line 87
    invoke-virtual {p0, v5, v6, v2}, Lcom/caverock/androidsvg/SVGParser;->I([CII)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-eqz v6, :cond_3

    .line 101
    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {p0, v5, v6, v2}, Lcom/caverock/androidsvg/SVGParser;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_1

    .line 136
    .line 137
    :cond_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    if-eqz v6, :cond_5

    .line 146
    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {p0, v5, v6, v2, v1}, Lcom/caverock/androidsvg/SVGParser;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_6
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    .line 182
    .line 183
    iget-object v2, v2, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 184
    .line 185
    if-nez v2, :cond_9

    .line 186
    .line 187
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const-string v5, "<!ENTITY "

    .line 192
    .line 193
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    if-eqz v2, :cond_9

    .line 198
    .line 199
    :try_start_2
    const-string v0, "Switching to SAX parser to process entities"

    .line 200
    .line 201
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->B(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :catch_2
    :try_start_3
    const-string p1, "Detected internal entity definitions, but could not parse them."

    .line 212
    .line 213
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v5, "PROC INSTR: "

    .line 223
    .line 224
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    new-instance v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 242
    .line 243
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-direct {v2, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->l()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGParser;->z(Lcom/caverock/androidsvg/SVGParser$TextScanner;)Ljava/util/HashMap;

    .line 255
    .line 256
    .line 257
    const-string v2, "xml-stylesheet"

    .line 258
    .line 259
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser;->F()V

    .line 264
    .line 265
    .line 266
    :cond_9
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 267
    .line 268
    .line 269
    move-result v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_a
    :goto_2
    return-void

    .line 273
    :goto_3
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 274
    .line 275
    const-string v1, "Stream error"

    .line 276
    .line 277
    invoke-direct {v0, v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :goto_4
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 282
    .line 283
    const-string v1, "XML parser problem"

    .line 284
    .line 285
    invoke-direct {v0, v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 286
    .line 287
    .line 288
    throw v0
.end method

.method public final D(Lorg/xml/sax/Attributes;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 6
    .line 7
    if-eqz v2, :cond_21

    .line 8
    .line 9
    new-instance v3, Lcom/caverock/androidsvg/SVG$Path;

    .line 10
    .line 11
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    .line 15
    .line 16
    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 17
    .line 18
    iput-object v2, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 19
    .line 20
    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    move v4, v2

    .line 34
    :goto_0
    invoke-interface {v1}, Lorg/xml/sax/Attributes;->getLength()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-ge v4, v5, :cond_20

    .line 39
    .line 40
    invoke-interface {v1, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-interface {v1, v4}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/16 v7, 0xd

    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    if-eq v6, v7, :cond_2

    .line 64
    .line 65
    const/16 v7, 0x2b

    .line 66
    .line 67
    if-eq v6, v7, :cond_0

    .line 68
    .line 69
    :goto_1
    move/from16 v22, v4

    .line 70
    .line 71
    goto/16 :goto_12

    .line 72
    .line 73
    :cond_0
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->q(Ljava/lang/String;)F

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    cmpg-float v5, v5, v8

    .line 78
    .line 79
    if-ltz v5, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 83
    .line 84
    const-string v2, "Invalid <path> element. pathLength cannot be negative"

    .line 85
    .line 86
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_2
    new-instance v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;

    .line 91
    .line 92
    invoke-direct {v6, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v9, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 96
    .line 97
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput v2, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->b:I

    .line 101
    .line 102
    iput v2, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->d:I

    .line 103
    .line 104
    const/16 v5, 0x8

    .line 105
    .line 106
    new-array v5, v5, [B

    .line 107
    .line 108
    iput-object v5, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->a:[B

    .line 109
    .line 110
    const/16 v5, 0x10

    .line 111
    .line 112
    new-array v5, v5, [F

    .line 113
    .line 114
    iput-object v5, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->c:[F

    .line 115
    .line 116
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    :goto_2
    goto :goto_6

    .line 123
    :cond_3
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    const/16 v7, 0x4d

    .line 132
    .line 133
    const/16 v10, 0x6d

    .line 134
    .line 135
    if-eq v5, v7, :cond_4

    .line 136
    .line 137
    if-eq v5, v10, :cond_4

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_4
    move v7, v8

    .line 141
    move v11, v7

    .line 142
    move v12, v11

    .line 143
    move v13, v12

    .line 144
    move/from16 v17, v13

    .line 145
    .line 146
    move/from16 v18, v17

    .line 147
    .line 148
    :goto_3
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 149
    .line 150
    .line 151
    const/16 v15, 0x6c

    .line 152
    .line 153
    const/high16 v16, 0x40000000    # 2.0f

    .line 154
    .line 155
    const-string v2, " path segment"

    .line 156
    .line 157
    move/from16 v19, v8

    .line 158
    .line 159
    const-string v8, "Bad path coords for "

    .line 160
    .line 161
    const-string v10, "SVGParser"

    .line 162
    .line 163
    sparse-switch v5, :sswitch_data_0

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :sswitch_0
    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$PathDefinition;->close()V

    .line 168
    .line 169
    .line 170
    move/from16 v22, v4

    .line 171
    .line 172
    move/from16 v7, v17

    .line 173
    .line 174
    move v11, v7

    .line 175
    move/from16 v12, v18

    .line 176
    .line 177
    :goto_4
    move v13, v12

    .line 178
    :goto_5
    const/16 v20, 0x6d

    .line 179
    .line 180
    goto/16 :goto_e

    .line 181
    .line 182
    :sswitch_1
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 187
    .line 188
    .line 189
    move-result v15

    .line 190
    if-eqz v15, :cond_5

    .line 191
    .line 192
    new-instance v6, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    int-to-char v5, v5

    .line 198
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :goto_6
    move/from16 v22, v4

    .line 212
    .line 213
    goto/16 :goto_11

    .line 214
    .line 215
    :cond_5
    const/16 v2, 0x76

    .line 216
    .line 217
    if-ne v5, v2, :cond_6

    .line 218
    .line 219
    add-float/2addr v13, v12

    .line 220
    :cond_6
    move v12, v13

    .line 221
    invoke-virtual {v9, v7, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->e(FF)V

    .line 222
    .line 223
    .line 224
    move/from16 v22, v4

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :sswitch_2
    mul-float v15, v7, v16

    .line 228
    .line 229
    sub-float v11, v15, v11

    .line 230
    .line 231
    mul-float v16, v16, v12

    .line 232
    .line 233
    sub-float v13, v16, v13

    .line 234
    .line 235
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 236
    .line 237
    .line 238
    move-result v15

    .line 239
    invoke-virtual {v6, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 240
    .line 241
    .line 242
    move-result v16

    .line 243
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 244
    .line 245
    .line 246
    move-result v21

    .line 247
    if-eqz v21, :cond_7

    .line 248
    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    int-to-char v5, v5

    .line 255
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_7
    const/16 v2, 0x74

    .line 270
    .line 271
    if-ne v5, v2, :cond_8

    .line 272
    .line 273
    add-float/2addr v15, v7

    .line 274
    add-float v16, v16, v12

    .line 275
    .line 276
    :cond_8
    move v7, v15

    .line 277
    move/from16 v12, v16

    .line 278
    .line 279
    invoke-virtual {v9, v11, v13, v7, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->a(FFFF)V

    .line 280
    .line 281
    .line 282
    move/from16 v22, v4

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :sswitch_3
    mul-float v15, v7, v16

    .line 286
    .line 287
    sub-float/2addr v15, v11

    .line 288
    mul-float v16, v16, v12

    .line 289
    .line 290
    sub-float v11, v16, v13

    .line 291
    .line 292
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    invoke-virtual {v6, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 297
    .line 298
    .line 299
    move-result v14

    .line 300
    invoke-virtual {v6, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-virtual {v6, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 305
    .line 306
    .line 307
    move-result v21

    .line 308
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    .line 309
    .line 310
    .line 311
    move-result v22

    .line 312
    if-eqz v22, :cond_9

    .line 313
    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    int-to-char v5, v5

    .line 320
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :cond_9
    const/16 v2, 0x73

    .line 335
    .line 336
    if-ne v5, v2, :cond_a

    .line 337
    .line 338
    add-float/2addr v1, v7

    .line 339
    add-float v21, v21, v12

    .line 340
    .line 341
    add-float/2addr v13, v7

    .line 342
    add-float/2addr v14, v12

    .line 343
    :cond_a
    move v12, v13

    .line 344
    move v13, v14

    .line 345
    move v10, v15

    .line 346
    move/from16 v15, v21

    .line 347
    .line 348
    const/16 v20, 0x6d

    .line 349
    .line 350
    move v14, v1

    .line 351
    const/16 v1, 0x61

    .line 352
    .line 353
    invoke-virtual/range {v9 .. v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->c(FFFFFF)V

    .line 354
    .line 355
    .line 356
    :goto_7
    move v11, v12

    .line 357
    move v7, v14

    .line 358
    move v12, v15

    .line 359
    move/from16 v22, v4

    .line 360
    .line 361
    goto/16 :goto_e

    .line 362
    .line 363
    :sswitch_4
    const/16 v1, 0x61

    .line 364
    .line 365
    const/16 v11, 0x6d

    .line 366
    .line 367
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 368
    .line 369
    .line 370
    move-result v13

    .line 371
    invoke-virtual {v6, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 372
    .line 373
    .line 374
    move-result v14

    .line 375
    invoke-virtual {v6, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 376
    .line 377
    .line 378
    move-result v15

    .line 379
    invoke-virtual {v6, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 380
    .line 381
    .line 382
    move-result v16

    .line 383
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 384
    .line 385
    .line 386
    move-result v20

    .line 387
    if-eqz v20, :cond_b

    .line 388
    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    int-to-char v5, v5

    .line 395
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    goto/16 :goto_6

    .line 409
    .line 410
    :cond_b
    const/16 v2, 0x71

    .line 411
    .line 412
    if-ne v5, v2, :cond_c

    .line 413
    .line 414
    add-float/2addr v15, v7

    .line 415
    add-float v16, v16, v12

    .line 416
    .line 417
    add-float/2addr v13, v7

    .line 418
    add-float/2addr v14, v12

    .line 419
    :cond_c
    move v7, v15

    .line 420
    move/from16 v12, v16

    .line 421
    .line 422
    invoke-virtual {v9, v13, v14, v7, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->a(FFFF)V

    .line 423
    .line 424
    .line 425
    move/from16 v22, v4

    .line 426
    .line 427
    move/from16 v20, v11

    .line 428
    .line 429
    move v11, v13

    .line 430
    move v13, v14

    .line 431
    goto/16 :goto_e

    .line 432
    .line 433
    :sswitch_5
    const/16 v1, 0x61

    .line 434
    .line 435
    const/16 v11, 0x6d

    .line 436
    .line 437
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 438
    .line 439
    .line 440
    move-result v13

    .line 441
    invoke-virtual {v6, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 442
    .line 443
    .line 444
    move-result v14

    .line 445
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 446
    .line 447
    .line 448
    move-result v16

    .line 449
    if-eqz v16, :cond_d

    .line 450
    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    int-to-char v5, v5

    .line 457
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    goto/16 :goto_6

    .line 471
    .line 472
    :cond_d
    if-ne v5, v11, :cond_f

    .line 473
    .line 474
    iget v2, v9, Lcom/caverock/androidsvg/SVG$PathDefinition;->b:I

    .line 475
    .line 476
    if-nez v2, :cond_e

    .line 477
    .line 478
    goto :goto_8

    .line 479
    :cond_e
    add-float/2addr v13, v7

    .line 480
    add-float/2addr v14, v12

    .line 481
    :cond_f
    :goto_8
    move v7, v13

    .line 482
    move v12, v14

    .line 483
    invoke-virtual {v9, v7, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->b(FF)V

    .line 484
    .line 485
    .line 486
    if-ne v5, v11, :cond_10

    .line 487
    .line 488
    goto :goto_9

    .line 489
    :cond_10
    const/16 v15, 0x4c

    .line 490
    .line 491
    :goto_9
    move/from16 v22, v4

    .line 492
    .line 493
    move/from16 v17, v7

    .line 494
    .line 495
    move/from16 v20, v11

    .line 496
    .line 497
    move v13, v12

    .line 498
    move/from16 v18, v13

    .line 499
    .line 500
    move v5, v15

    .line 501
    move/from16 v11, v17

    .line 502
    .line 503
    goto/16 :goto_e

    .line 504
    .line 505
    :sswitch_6
    const/16 v1, 0x61

    .line 506
    .line 507
    const/16 v11, 0x6d

    .line 508
    .line 509
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 510
    .line 511
    .line 512
    move-result v13

    .line 513
    invoke-virtual {v6, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 514
    .line 515
    .line 516
    move-result v14

    .line 517
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 518
    .line 519
    .line 520
    move-result v16

    .line 521
    if-eqz v16, :cond_11

    .line 522
    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    int-to-char v5, v5

    .line 529
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    goto/16 :goto_6

    .line 543
    .line 544
    :cond_11
    if-ne v5, v15, :cond_12

    .line 545
    .line 546
    add-float/2addr v13, v7

    .line 547
    add-float/2addr v14, v12

    .line 548
    :cond_12
    move v7, v13

    .line 549
    move v12, v14

    .line 550
    invoke-virtual {v9, v7, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->e(FF)V

    .line 551
    .line 552
    .line 553
    move/from16 v22, v4

    .line 554
    .line 555
    move/from16 v20, v11

    .line 556
    .line 557
    move v13, v12

    .line 558
    :goto_a
    move v11, v7

    .line 559
    goto/16 :goto_e

    .line 560
    .line 561
    :sswitch_7
    const/16 v1, 0x61

    .line 562
    .line 563
    const/16 v11, 0x6d

    .line 564
    .line 565
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 566
    .line 567
    .line 568
    move-result v14

    .line 569
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 570
    .line 571
    .line 572
    move-result v15

    .line 573
    if-eqz v15, :cond_13

    .line 574
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    int-to-char v5, v5

    .line 581
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    .line 593
    .line 594
    goto/16 :goto_6

    .line 595
    .line 596
    :cond_13
    const/16 v2, 0x68

    .line 597
    .line 598
    if-ne v5, v2, :cond_14

    .line 599
    .line 600
    add-float/2addr v14, v7

    .line 601
    :cond_14
    move v7, v14

    .line 602
    invoke-virtual {v9, v7, v12}, Lcom/caverock/androidsvg/SVG$PathDefinition;->e(FF)V

    .line 603
    .line 604
    .line 605
    move/from16 v22, v4

    .line 606
    .line 607
    move/from16 v20, v11

    .line 608
    .line 609
    goto :goto_a

    .line 610
    :sswitch_8
    const/16 v1, 0x61

    .line 611
    .line 612
    const/16 v11, 0x6d

    .line 613
    .line 614
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 615
    .line 616
    .line 617
    move-result v13

    .line 618
    invoke-virtual {v6, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 619
    .line 620
    .line 621
    move-result v14

    .line 622
    invoke-virtual {v6, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 623
    .line 624
    .line 625
    move-result v15

    .line 626
    invoke-virtual {v6, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 627
    .line 628
    .line 629
    move-result v11

    .line 630
    invoke-virtual {v6, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 631
    .line 632
    .line 633
    move-result v1

    .line 634
    invoke-virtual {v6, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 635
    .line 636
    .line 637
    move-result v16

    .line 638
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 639
    .line 640
    .line 641
    move-result v22

    .line 642
    if-eqz v22, :cond_15

    .line 643
    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    .line 645
    .line 646
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    int-to-char v5, v5

    .line 650
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    goto/16 :goto_6

    .line 664
    .line 665
    :cond_15
    const/16 v2, 0x63

    .line 666
    .line 667
    if-ne v5, v2, :cond_16

    .line 668
    .line 669
    add-float/2addr v1, v7

    .line 670
    add-float v16, v16, v12

    .line 671
    .line 672
    add-float/2addr v13, v7

    .line 673
    add-float/2addr v14, v12

    .line 674
    add-float/2addr v15, v7

    .line 675
    add-float/2addr v11, v12

    .line 676
    :cond_16
    move v10, v13

    .line 677
    move v12, v15

    .line 678
    move/from16 v15, v16

    .line 679
    .line 680
    const/16 v20, 0x6d

    .line 681
    .line 682
    move v13, v11

    .line 683
    move v11, v14

    .line 684
    move v14, v1

    .line 685
    invoke-virtual/range {v9 .. v15}, Lcom/caverock/androidsvg/SVG$PathDefinition;->c(FFFFFF)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_7

    .line 689
    .line 690
    :sswitch_9
    move-object v1, v10

    .line 691
    const/16 v20, 0x6d

    .line 692
    .line 693
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 694
    .line 695
    .line 696
    move-result v10

    .line 697
    invoke-virtual {v6, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 698
    .line 699
    .line 700
    move-result v11

    .line 701
    move v13, v12

    .line 702
    invoke-virtual {v6, v11}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 703
    .line 704
    .line 705
    move-result v12

    .line 706
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 707
    .line 708
    .line 709
    move-result-object v14

    .line 710
    invoke-virtual {v6, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 711
    .line 712
    .line 713
    move-result-object v14

    .line 714
    invoke-virtual {v6, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 715
    .line 716
    .line 717
    move-result-object v15

    .line 718
    if-nez v15, :cond_17

    .line 719
    .line 720
    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 721
    .line 722
    :goto_b
    move/from16 v22, v4

    .line 723
    .line 724
    move/from16 v4, v16

    .line 725
    .line 726
    goto :goto_c

    .line 727
    :cond_17
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 728
    .line 729
    .line 730
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->i()F

    .line 731
    .line 732
    .line 733
    move-result v16

    .line 734
    goto :goto_b

    .line 735
    :goto_c
    invoke-virtual {v6, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c(F)F

    .line 736
    .line 737
    .line 738
    move-result v16

    .line 739
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    .line 740
    .line 741
    .line 742
    move-result v23

    .line 743
    if-nez v23, :cond_1f

    .line 744
    .line 745
    cmpg-float v23, v10, v19

    .line 746
    .line 747
    if-ltz v23, :cond_1f

    .line 748
    .line 749
    cmpg-float v23, v11, v19

    .line 750
    .line 751
    if-gez v23, :cond_18

    .line 752
    .line 753
    goto :goto_10

    .line 754
    :cond_18
    move/from16 v23, v4

    .line 755
    .line 756
    const/16 v4, 0x61

    .line 757
    .line 758
    if-ne v5, v4, :cond_19

    .line 759
    .line 760
    add-float v4, v23, v7

    .line 761
    .line 762
    add-float v16, v16, v13

    .line 763
    .line 764
    goto :goto_d

    .line 765
    :cond_19
    move/from16 v4, v23

    .line 766
    .line 767
    :goto_d
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 768
    .line 769
    .line 770
    move-result v13

    .line 771
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 772
    .line 773
    .line 774
    move-result v14

    .line 775
    move v15, v4

    .line 776
    invoke-virtual/range {v9 .. v16}, Lcom/caverock/androidsvg/SVG$PathDefinition;->d(FFFZZFF)V

    .line 777
    .line 778
    .line 779
    move v7, v15

    .line 780
    move v11, v7

    .line 781
    move/from16 v12, v16

    .line 782
    .line 783
    move v13, v12

    .line 784
    :goto_e
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 785
    .line 786
    .line 787
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    if-eqz v1, :cond_1a

    .line 792
    .line 793
    goto :goto_11

    .line 794
    :cond_1a
    iget v1, v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 795
    .line 796
    iget v2, v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c:I

    .line 797
    .line 798
    if-ne v1, v2, :cond_1b

    .line 799
    .line 800
    goto :goto_f

    .line 801
    :cond_1b
    iget-object v2, v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    .line 802
    .line 803
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 804
    .line 805
    .line 806
    move-result v1

    .line 807
    const/16 v4, 0x61

    .line 808
    .line 809
    if-lt v1, v4, :cond_1c

    .line 810
    .line 811
    const/16 v2, 0x7a

    .line 812
    .line 813
    if-le v1, v2, :cond_1d

    .line 814
    .line 815
    :cond_1c
    const/16 v2, 0x41

    .line 816
    .line 817
    if-lt v1, v2, :cond_1e

    .line 818
    .line 819
    const/16 v2, 0x5a

    .line 820
    .line 821
    if-gt v1, v2, :cond_1e

    .line 822
    .line 823
    :cond_1d
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 828
    .line 829
    .line 830
    move-result v5

    .line 831
    :cond_1e
    :goto_f
    move-object/from16 v1, p1

    .line 832
    .line 833
    move/from16 v8, v19

    .line 834
    .line 835
    move/from16 v10, v20

    .line 836
    .line 837
    move/from16 v4, v22

    .line 838
    .line 839
    const/4 v2, 0x0

    .line 840
    goto/16 :goto_3

    .line 841
    .line 842
    :cond_1f
    :goto_10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 843
    .line 844
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    int-to-char v5, v5

    .line 848
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .line 860
    .line 861
    :goto_11
    iput-object v9, v3, Lcom/caverock/androidsvg/SVG$Path;->o:Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 862
    .line 863
    :goto_12
    add-int/lit8 v4, v22, 0x1

    .line 864
    .line 865
    move-object/from16 v1, p1

    .line 866
    .line 867
    const/4 v2, 0x0

    .line 868
    goto/16 :goto_0

    .line 869
    .line 870
    :cond_20
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 871
    .line 872
    invoke-interface {v1, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 873
    .line 874
    .line 875
    return-void

    .line 876
    :cond_21
    new-instance v1, Lcom/caverock/androidsvg/SVGParseException;

    .line 877
    .line 878
    const-string v2, "Invalid document. Root element must be <svg>"

    .line 879
    .line 880
    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    throw v1

    .line 884
    nop

    .line 885
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public final F()V
    .locals 2

    .line 1
    new-instance v0, Lcom/caverock/androidsvg/SVG;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    .line 8
    .line 9
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG;->b:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, Lcom/caverock/androidsvg/SVG;->c:Ljava/util/HashMap;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    .line 24
    .line 25
    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 1
    iget-boolean v3, v1, Lcom/caverock/androidsvg/SVGParser;->c:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 2
    iget v0, v1, Lcom/caverock/androidsvg/SVGParser;->d:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/caverock/androidsvg/SVGParser;->d:I

    return-void

    .line 3
    :cond_0
    const-string v3, "http://www.w3.org/2000/svg"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ""

    if-nez v3, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move-object/from16 v0, p2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    .line 5
    :goto_0
    sget-object v3, Lcom/caverock/androidsvg/SVGParser$SVGElem;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    sget-object v0, Lcom/caverock/androidsvg/SVGParser$SVGElem;->h:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v7, 0x38

    const-string v9, "Invalid <use> element. height cannot be negative"

    const-string v10, "Invalid <use> element. width cannot be negative"

    const/16 v11, 0x25

    const-string v14, "objectBoundingBox"

    const-string v15, "userSpaceOnUse"

    const-string v8, "http://www.w3.org/1999/xlink"

    const/16 v12, 0x1a

    const/16 v13, 0x19

    const-string v6, "Invalid document. Root element must be <svg>"

    packed-switch v3, :pswitch_data_0

    .line 8
    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVGParser;->c:Z

    .line 9
    iput v4, v1, Lcom/caverock/androidsvg/SVGParser;->d:I

    return-void

    .line 10
    :pswitch_0
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_4

    .line 11
    new-instance v0, Lcom/caverock/androidsvg/SVG$View;

    .line 12
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 13
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 14
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 15
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 16
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 17
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->n(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 18
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 19
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 20
    :cond_4
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 21
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0

    .line 23
    :pswitch_1
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_c

    .line 24
    new-instance v0, Lcom/caverock/androidsvg/SVG$Use;

    .line 25
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 26
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 27
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 28
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 29
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 30
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 31
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    .line 32
    :goto_2
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_b

    .line 33
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_8

    if-eq v4, v12, :cond_6

    packed-switch v4, :pswitch_data_1

    goto :goto_3

    .line 35
    :pswitch_2
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Use;->q:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    .line 36
    :pswitch_3
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Use;->p:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    .line 37
    :pswitch_4
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Use;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 38
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 39
    :cond_5
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 40
    invoke-direct {v0, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0

    .line 42
    :cond_6
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 43
    :cond_7
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Use;->o:Ljava/lang/String;

    goto :goto_3

    .line 44
    :cond_8
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Use;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 45
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 46
    :cond_a
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 47
    invoke-direct {v0, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0

    .line 49
    :cond_b
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 50
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 51
    :cond_c
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 52
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0

    .line 54
    :pswitch_5
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_f

    .line 55
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_e

    .line 56
    new-instance v0, Lcom/caverock/androidsvg/SVG$TSpan;

    .line 57
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 58
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 59
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 60
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 61
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 62
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 63
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->l(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 64
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 65
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 66
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v3, :cond_d

    .line 67
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextRoot;

    .line 68
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$TSpan;->r:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-void

    .line 69
    :cond_d
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$TextChild;->e()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v2

    .line 70
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$TSpan;->r:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-void

    .line 71
    :cond_e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements."

    .line 72
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0

    .line 74
    :cond_f
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 75
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v0

    .line 77
    :pswitch_6
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_16

    .line 78
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v0, :cond_15

    .line 79
    new-instance v0, Lcom/caverock/androidsvg/SVG$TRef;

    .line 80
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 81
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 82
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 83
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 84
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 85
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    .line 86
    :goto_4
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_13

    .line 87
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v12, :cond_10

    goto :goto_5

    .line 89
    :cond_10
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 90
    :cond_11
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$TRef;->n:Ljava/lang/String;

    :cond_12
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 91
    :cond_13
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 92
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v3, :cond_14

    .line 93
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextRoot;

    .line 94
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$TRef;->o:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-void

    .line 95
    :cond_14
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$TextChild;->e()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v2

    .line 96
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$TRef;->o:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-void

    .line 97
    :cond_15
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid document. <tref> elements are only valid inside <text> or <tspan> elements."

    .line 98
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v0

    .line 100
    :cond_16
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 101
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 102
    throw v0

    .line 103
    :pswitch_7
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1d

    .line 104
    new-instance v0, Lcom/caverock/androidsvg/SVG$TextPath;

    .line 105
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 106
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 107
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 108
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 109
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 110
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    .line 111
    :goto_6
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_1b

    .line 112
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v12, :cond_18

    const/16 v7, 0x3d

    if-eq v4, v7, :cond_17

    goto :goto_7

    .line 114
    :cond_17
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$TextPath;->o:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_7

    .line 115
    :cond_18
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 116
    :cond_19
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$TextPath;->n:Ljava/lang/String;

    :cond_1a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 117
    :cond_1b
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 118
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 119
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextRoot;

    if-eqz v3, :cond_1c

    .line 120
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextRoot;

    .line 121
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$TextPath;->p:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-void

    .line 122
    :cond_1c
    check-cast v2, Lcom/caverock/androidsvg/SVG$TextChild;

    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$TextChild;->e()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v2

    .line 123
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$TextPath;->p:Lcom/caverock/androidsvg/SVG$TextRoot;

    return-void

    .line 124
    :cond_1d
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 125
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 126
    throw v0

    .line 127
    :pswitch_8
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1e

    .line 128
    new-instance v0, Lcom/caverock/androidsvg/SVG$Text;

    .line 129
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 130
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 131
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 132
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 133
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 134
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 135
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 136
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->l(Lcom/caverock/androidsvg/SVG$TextPositionedContainer;Lorg/xml/sax/Attributes;)V

    .line 137
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 138
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 139
    :cond_1e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 140
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 141
    throw v0

    .line 142
    :pswitch_9
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_1f

    .line 143
    new-instance v0, Lcom/caverock/androidsvg/SVG$Symbol;

    .line 144
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 145
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 146
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 147
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 148
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 149
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 150
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->n(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    .line 151
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 152
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 153
    :cond_1f
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 154
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v0

    .line 156
    :pswitch_a
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_20

    .line 157
    new-instance v0, Lcom/caverock/androidsvg/SVG$Switch;

    .line 158
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 159
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 160
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 161
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 162
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 163
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 164
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 165
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 166
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 167
    :cond_20
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 168
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 169
    throw v0

    .line 170
    :pswitch_b
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_27

    .line 171
    const-string v0, "all"

    move v5, v4

    const/4 v3, 0x0

    :goto_8
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-ge v3, v6, :cond_23

    .line 172
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 173
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/16 v8, 0x26

    if-eq v7, v8, :cond_22

    const/16 v8, 0x4d

    if-eq v7, v8, :cond_21

    goto :goto_9

    .line 174
    :cond_21
    const-string v5, "text/css"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_9

    :cond_22
    move-object v0, v6

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_23
    if-eqz v5, :cond_26

    .line 175
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v2, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 177
    invoke-static {v2}, Lcom/caverock/androidsvg/CSSParser;->c(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/ArrayList;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :cond_24
    if-ge v6, v2, :cond_26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    check-cast v3, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 179
    sget-object v5, Lcom/caverock/androidsvg/CSSParser$MediaType;->c:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-eq v3, v5, :cond_25

    sget-object v5, Lcom/caverock/androidsvg/CSSParser$MediaType;->f:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-ne v3, v5, :cond_24

    .line 180
    :cond_25
    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVGParser;->h:Z

    return-void

    .line 181
    :cond_26
    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVGParser;->c:Z

    .line 182
    iput v4, v1, Lcom/caverock/androidsvg/SVGParser;->d:I

    return-void

    .line 183
    :cond_27
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 184
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 185
    throw v0

    .line 186
    :pswitch_c
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_30

    .line 187
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-eqz v3, :cond_2f

    .line 188
    new-instance v3, Lcom/caverock/androidsvg/SVG$Stop;

    .line 189
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    .line 190
    iget-object v5, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 191
    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 192
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 193
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    const/4 v0, 0x0

    .line 194
    :goto_a
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_2e

    .line 195
    invoke-interface {v2, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-interface {v2, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x27

    if-eq v6, v7, :cond_28

    goto :goto_d

    .line 197
    :cond_28
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2d

    .line 198
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 199
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_29

    add-int/lit8 v6, v6, -0x1

    move v7, v4

    goto :goto_b

    :cond_29
    const/4 v7, 0x0

    .line 200
    :goto_b
    :try_start_0
    invoke-static {v6, v5}, Lcom/caverock/androidsvg/SVGParser;->p(ILjava/lang/String;)F

    move-result v6

    const/high16 v8, 0x42c80000    # 100.0f

    if-eqz v7, :cond_2a

    div-float/2addr v6, v8

    :cond_2a
    const/4 v7, 0x0

    cmpg-float v9, v6, v7

    if-gez v9, :cond_2b

    move v8, v7

    goto :goto_c

    :cond_2b
    cmpl-float v7, v6, v8

    if-lez v7, :cond_2c

    goto :goto_c

    :cond_2c
    move v8, v6

    .line 201
    :goto_c
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    iput-object v5, v3, Lcom/caverock/androidsvg/SVG$Stop;->h:Ljava/lang/Float;

    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_0
    move-exception v0

    .line 203
    new-instance v2, Lcom/caverock/androidsvg/SVGParseException;

    const-string v3, "Invalid offset value in <stop>: "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-direct {v2, v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 205
    throw v2

    .line 206
    :cond_2d
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid offset value in <stop> (empty string)"

    .line 207
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 208
    throw v0

    .line 209
    :cond_2e
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 210
    iput-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 211
    :cond_2f
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid document. <stop> elements are only valid inside <linearGradient> or <radialGradient> elements."

    .line 212
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 213
    throw v0

    .line 214
    :cond_30
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 215
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 216
    throw v0

    .line 217
    :pswitch_d
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_31

    .line 218
    new-instance v3, Lcom/caverock/androidsvg/SVG$SolidColor;

    .line 219
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    .line 220
    iget-object v4, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 221
    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 222
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 223
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 224
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 225
    iput-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 226
    :cond_31
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 227
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 228
    throw v0

    .line 229
    :pswitch_e
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_3a

    .line 230
    new-instance v3, Lcom/caverock/androidsvg/SVG$Rect;

    .line 231
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 232
    iget-object v4, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 233
    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 234
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 235
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 236
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 237
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    .line 238
    :goto_e
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_39

    .line 239
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_37

    if-eq v4, v7, :cond_35

    const/16 v5, 0x39

    if-eq v4, v5, :cond_33

    packed-switch v4, :pswitch_data_2

    goto :goto_f

    .line 241
    :pswitch_f
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Rect;->p:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_f

    .line 242
    :pswitch_10
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Rect;->o:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_f

    .line 243
    :pswitch_11
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Rect;->q:Lcom/caverock/androidsvg/SVG$Length;

    .line 244
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_f

    .line 245
    :cond_32
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <rect> element. width cannot be negative"

    .line 246
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 247
    throw v0

    .line 248
    :cond_33
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Rect;->t:Lcom/caverock/androidsvg/SVG$Length;

    .line 249
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_f

    .line 250
    :cond_34
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <rect> element. ry cannot be negative"

    .line 251
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 252
    throw v0

    .line 253
    :cond_35
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Rect;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 254
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_f

    .line 255
    :cond_36
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <rect> element. rx cannot be negative"

    .line 256
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 257
    throw v0

    .line 258
    :cond_37
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Rect;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 259
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v0

    if-nez v0, :cond_38

    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    .line 260
    :cond_38
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <rect> element. height cannot be negative"

    .line 261
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 262
    throw v0

    .line 263
    :cond_39
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 264
    :cond_3a
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 265
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 266
    throw v0

    .line 267
    :pswitch_12
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_42

    .line 268
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .line 269
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$GradientElement;-><init>()V

    .line 270
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 271
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 272
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 273
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 274
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->i(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    .line 275
    :goto_10
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_41

    .line 276
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_40

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3f

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3e

    const/16 v5, 0xc

    if-eq v4, v5, :cond_3d

    const/16 v5, 0x31

    if-eq v4, v5, :cond_3b

    goto :goto_11

    .line 278
    :cond_3b
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->o:Lcom/caverock/androidsvg/SVG$Length;

    .line 279
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_11

    .line 280
    :cond_3c
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <radialGradient> element. r cannot be negative"

    .line 281
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 282
    throw v0

    .line 283
    :cond_3d
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->q:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    .line 284
    :cond_3e
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->p:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    .line 285
    :cond_3f
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->n:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_11

    .line 286
    :cond_40
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->m:Lcom/caverock/androidsvg/SVG$Length;

    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 287
    :cond_41
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 288
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 289
    :cond_42
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 290
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 291
    throw v0

    .line 292
    :pswitch_13
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_43

    .line 293
    new-instance v3, Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 294
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 295
    iget-object v4, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 296
    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 297
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 298
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 299
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 300
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 301
    const-string v0, "polyline"

    invoke-static {v3, v2, v0}, Lcom/caverock/androidsvg/SVGParser;->j(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 302
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 303
    :cond_43
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 304
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 305
    throw v0

    .line 306
    :pswitch_14
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_44

    .line 307
    new-instance v3, Lcom/caverock/androidsvg/SVG$Polygon;

    .line 308
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 309
    iget-object v4, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 310
    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 311
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 312
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 313
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 314
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 315
    const-string v0, "polygon"

    invoke-static {v3, v2, v0}, Lcom/caverock/androidsvg/SVGParser;->j(Lcom/caverock/androidsvg/SVG$PolyLine;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 316
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 317
    :cond_44
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 318
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 319
    throw v0

    .line 320
    :pswitch_15
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_50

    .line 321
    new-instance v0, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 322
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 323
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 324
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 325
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 326
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 327
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 328
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->n(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    .line 329
    :goto_12
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_4f

    .line 330
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_4c

    if-eq v4, v12, :cond_4a

    packed-switch v4, :pswitch_data_3

    packed-switch v4, :pswitch_data_4

    goto/16 :goto_13

    .line 332
    :pswitch_16
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->t:Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_13

    .line 333
    :pswitch_17
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->s:Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_13

    .line 334
    :pswitch_18
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->u:Lcom/caverock/androidsvg/SVG$Length;

    .line 335
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_13

    .line 336
    :cond_45
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <pattern> element. width cannot be negative"

    .line 337
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 338
    throw v0

    .line 339
    :pswitch_19
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 340
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->p:Ljava/lang/Boolean;

    goto :goto_13

    .line 341
    :cond_46
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 342
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->p:Ljava/lang/Boolean;

    goto :goto_13

    .line 343
    :cond_47
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid value for attribute patternUnits"

    .line 344
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 345
    throw v0

    .line 346
    :pswitch_1a
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->A(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->r:Landroid/graphics/Matrix;

    goto :goto_13

    .line 347
    :pswitch_1b
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 348
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->q:Ljava/lang/Boolean;

    goto :goto_13

    .line 349
    :cond_48
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 350
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->q:Ljava/lang/Boolean;

    goto :goto_13

    .line 351
    :cond_49
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid value for attribute patternContentUnits"

    .line 352
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 353
    throw v0

    .line 354
    :cond_4a
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 355
    :cond_4b
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->w:Ljava/lang/String;

    goto :goto_13

    .line 356
    :cond_4c
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Pattern;->v:Lcom/caverock/androidsvg/SVG$Length;

    .line 357
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_4e

    :cond_4d
    :goto_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12

    .line 358
    :cond_4e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <pattern> element. height cannot be negative"

    .line 359
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 360
    throw v0

    .line 361
    :cond_4f
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 362
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 363
    :cond_50
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 364
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 365
    throw v0

    .line 366
    :pswitch_1c
    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVGParser;->D(Lorg/xml/sax/Attributes;)V

    return-void

    .line 367
    :pswitch_1d
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_5b

    .line 368
    new-instance v0, Lcom/caverock/androidsvg/SVG$Mask;

    .line 369
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 370
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 371
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 372
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 373
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 374
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    const/4 v6, 0x0

    .line 375
    :goto_14
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_5a

    .line 376
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 377
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_58

    const/16 v5, 0x24

    if-eq v4, v5, :cond_55

    if-eq v4, v11, :cond_52

    packed-switch v4, :pswitch_data_5

    goto :goto_15

    .line 378
    :pswitch_1e
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_15

    .line 379
    :pswitch_1f
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_15

    .line 380
    :pswitch_20
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Mask;->p:Lcom/caverock/androidsvg/SVG$Length;

    .line 381
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_15

    .line 382
    :cond_51
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <mask> element. width cannot be negative"

    .line 383
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 384
    throw v0

    .line 385
    :cond_52
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 386
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Mask;->n:Ljava/lang/Boolean;

    goto :goto_15

    .line 387
    :cond_53
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 388
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Mask;->n:Ljava/lang/Boolean;

    goto :goto_15

    .line 389
    :cond_54
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid value for attribute maskUnits"

    .line 390
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 391
    throw v0

    .line 392
    :cond_55
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 393
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Mask;->o:Ljava/lang/Boolean;

    goto :goto_15

    .line 394
    :cond_56
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 395
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Mask;->o:Ljava/lang/Boolean;

    goto :goto_15

    .line 396
    :cond_57
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid value for attribute maskContentUnits"

    .line 397
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 398
    throw v0

    .line 399
    :cond_58
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Mask;->q:Lcom/caverock/androidsvg/SVG$Length;

    .line 400
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_59

    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_14

    .line 401
    :cond_59
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <mask> element. height cannot be negative"

    .line 402
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 403
    throw v0

    .line 404
    :cond_5a
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 405
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 406
    :cond_5b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 407
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 408
    throw v0

    .line 409
    :pswitch_21
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_65

    .line 410
    new-instance v0, Lcom/caverock/androidsvg/SVG$Marker;

    .line 411
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 412
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 413
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 414
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 415
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 416
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 417
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->n(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    const/4 v3, 0x0

    .line 418
    :goto_16
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_64

    .line 419
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/16 v7, 0x29

    if-eq v6, v7, :cond_62

    const/16 v7, 0x32

    if-eq v6, v7, :cond_61

    const/16 v7, 0x33

    if-eq v6, v7, :cond_60

    packed-switch v6, :pswitch_data_6

    :goto_17
    const/4 v11, 0x0

    goto/16 :goto_18

    .line 421
    :pswitch_22
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Marker;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 422
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v5

    if-nez v5, :cond_5c

    goto :goto_17

    .line 423
    :cond_5c
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <marker> element. markerWidth cannot be negative"

    .line 424
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 425
    throw v0

    .line 426
    :pswitch_23
    const-string v6, "strokeWidth"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    const/4 v11, 0x0

    .line 427
    iput-boolean v11, v0, Lcom/caverock/androidsvg/SVG$Marker;->p:Z

    goto :goto_18

    :cond_5d
    const/4 v11, 0x0

    .line 428
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 429
    iput-boolean v4, v0, Lcom/caverock/androidsvg/SVG$Marker;->p:Z

    goto :goto_18

    .line 430
    :cond_5e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid value for attribute markerUnits"

    .line 431
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 432
    throw v0

    :pswitch_24
    const/4 v11, 0x0

    .line 433
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Marker;->t:Lcom/caverock/androidsvg/SVG$Length;

    .line 434
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_18

    .line 435
    :cond_5f
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <marker> element. markerHeight cannot be negative"

    .line 436
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 437
    throw v0

    :cond_60
    const/4 v11, 0x0

    .line 438
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Marker;->r:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_18

    :cond_61
    const/4 v11, 0x0

    .line 439
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v5

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Marker;->q:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_18

    :cond_62
    const/4 v11, 0x0

    .line 440
    const-string v6, "auto"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 441
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Marker;->u:Ljava/lang/Float;

    goto :goto_18

    .line 442
    :cond_63
    invoke-static {v5}, Lcom/caverock/androidsvg/SVGParser;->q(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Marker;->u:Ljava/lang/Float;

    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    .line 443
    :cond_64
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 444
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 445
    :cond_65
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 446
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 447
    throw v0

    :pswitch_25
    const/4 v11, 0x0

    .line 448
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_67

    .line 449
    new-instance v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 450
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$GradientElement;-><init>()V

    .line 451
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 452
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 453
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 454
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 455
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->i(Lcom/caverock/androidsvg/SVG$GradientElement;Lorg/xml/sax/Attributes;)V

    move v6, v11

    .line 456
    :goto_19
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_66

    .line 457
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_7

    goto :goto_1a

    .line 459
    :pswitch_26
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->p:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1a

    .line 460
    :pswitch_27
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->o:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1a

    .line 461
    :pswitch_28
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->n:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1a

    .line 462
    :pswitch_29
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->m:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 463
    :cond_66
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 464
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 465
    :cond_67
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 466
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 467
    throw v0

    :pswitch_2a
    const/4 v11, 0x0

    .line 468
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_69

    .line 469
    new-instance v3, Lcom/caverock/androidsvg/SVG$Line;

    .line 470
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 471
    iget-object v4, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 472
    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 473
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 474
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 475
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 476
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    .line 477
    :goto_1b
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_68

    .line 478
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_8

    goto :goto_1c

    .line 480
    :pswitch_2b
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Line;->r:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1c

    .line 481
    :pswitch_2c
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Line;->q:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1c

    .line 482
    :pswitch_2d
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Line;->p:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1c

    .line 483
    :pswitch_2e
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Line;->o:Lcom/caverock/androidsvg/SVG$Length;

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 484
    :cond_68
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 485
    :cond_69
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 486
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 487
    throw v0

    :pswitch_2f
    const/4 v11, 0x0

    .line 488
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_72

    .line 489
    new-instance v0, Lcom/caverock/androidsvg/SVG$Image;

    .line 490
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 491
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 492
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 493
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 494
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 495
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 496
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    .line 497
    :goto_1d
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_71

    .line 498
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_6e

    if-eq v4, v12, :cond_6c

    const/16 v7, 0x30

    if-eq v4, v7, :cond_6b

    packed-switch v4, :pswitch_data_9

    goto :goto_1e

    .line 500
    :pswitch_30
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Image;->q:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1e

    .line 501
    :pswitch_31
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Image;->p:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1e

    .line 502
    :pswitch_32
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Image;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 503
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_1e

    .line 504
    :cond_6a
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 505
    invoke-direct {v0, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 506
    throw v0

    .line 507
    :cond_6b
    invoke-static {v0, v3}, Lcom/caverock/androidsvg/SVGParser;->y(Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;Ljava/lang/String;)V

    goto :goto_1e

    .line 508
    :cond_6c
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 509
    :cond_6d
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Image;->o:Ljava/lang/String;

    goto :goto_1e

    .line 510
    :cond_6e
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Image;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 511
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_70

    :cond_6f
    :goto_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 512
    :cond_70
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 513
    invoke-direct {v0, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 514
    throw v0

    .line 515
    :cond_71
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 516
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 517
    :cond_72
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 518
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 519
    throw v0

    :pswitch_33
    const/4 v11, 0x0

    .line 520
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_7a

    .line 521
    new-instance v3, Lcom/caverock/androidsvg/SVG$Ellipse;

    .line 522
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 523
    iget-object v4, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 524
    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 525
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 526
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 527
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 528
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    .line 529
    :goto_1f
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_79

    .line 530
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_78

    const/4 v5, 0x7

    if-eq v4, v5, :cond_77

    if-eq v4, v7, :cond_75

    const/16 v5, 0x39

    if-eq v4, v5, :cond_73

    goto :goto_20

    .line 532
    :cond_73
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 533
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_20

    .line 534
    :cond_74
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <ellipse> element. ry cannot be negative"

    .line 535
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 536
    throw v0

    :cond_75
    const/16 v5, 0x39

    .line 537
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->q:Lcom/caverock/androidsvg/SVG$Length;

    .line 538
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_20

    .line 539
    :cond_76
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <ellipse> element. rx cannot be negative"

    .line 540
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 541
    throw v0

    :cond_77
    const/16 v5, 0x39

    .line 542
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->p:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_20

    :cond_78
    const/16 v5, 0x39

    .line 543
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Ellipse;->o:Lcom/caverock/androidsvg/SVG$Length;

    :goto_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 544
    :cond_79
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 545
    :cond_7a
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 546
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 547
    throw v0

    .line 548
    :pswitch_34
    iput-boolean v4, v1, Lcom/caverock/androidsvg/SVGParser;->e:Z

    .line 549
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->f:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    return-void

    .line 550
    :pswitch_35
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_7b

    .line 551
    new-instance v0, Lcom/caverock/androidsvg/SVG$Defs;

    .line 552
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 553
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 554
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 555
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 556
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 557
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 558
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 559
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 560
    :cond_7b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 561
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 562
    throw v0

    :pswitch_36
    const/4 v11, 0x0

    .line 563
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_80

    .line 564
    new-instance v0, Lcom/caverock/androidsvg/SVG$ClipPath;

    .line 565
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 566
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 567
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 568
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 569
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 570
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 571
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    .line 572
    :goto_21
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_7f

    .line 573
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7c

    goto :goto_22

    .line 575
    :cond_7c
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 576
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->o:Ljava/lang/Boolean;

    goto :goto_22

    .line 577
    :cond_7d
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 578
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$ClipPath;->o:Ljava/lang/Boolean;

    :goto_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 579
    :cond_7e
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid value for attribute clipPathUnits"

    .line 580
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 581
    throw v0

    .line 582
    :cond_7f
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 583
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 584
    :cond_80
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 585
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 586
    throw v0

    :pswitch_37
    const/4 v11, 0x0

    .line 587
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_86

    .line 588
    new-instance v3, Lcom/caverock/androidsvg/SVG$Circle;

    .line 589
    invoke-direct {v3}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    .line 590
    iget-object v4, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 591
    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 592
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 593
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 594
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 595
    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    move v6, v11

    .line 596
    :goto_23
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_85

    .line 597
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_84

    const/4 v7, 0x7

    if-eq v4, v7, :cond_83

    const/16 v8, 0x31

    if-eq v4, v8, :cond_81

    goto :goto_24

    .line 599
    :cond_81
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Circle;->q:Lcom/caverock/androidsvg/SVG$Length;

    .line 600
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v0

    if-nez v0, :cond_82

    goto :goto_24

    .line 601
    :cond_82
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <circle> element. r cannot be negative"

    .line 602
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 603
    throw v0

    :cond_83
    const/16 v8, 0x31

    .line 604
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Circle;->p:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_24

    :cond_84
    const/4 v7, 0x7

    const/16 v8, 0x31

    .line 605
    invoke-static {v0}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v0

    iput-object v0, v3, Lcom/caverock/androidsvg/SVG$Circle;->o:Lcom/caverock/androidsvg/SVG$Length;

    :goto_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 606
    :cond_85
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0, v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    return-void

    .line 607
    :cond_86
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 608
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 609
    throw v0

    .line 610
    :pswitch_38
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v0, :cond_87

    .line 611
    new-instance v0, Lcom/caverock/androidsvg/SVG$Group;

    .line 612
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    .line 613
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 614
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 615
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 616
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 617
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->m(Lcom/caverock/androidsvg/SVG$HasTransform;Lorg/xml/sax/Attributes;)V

    .line 618
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 619
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 620
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    .line 621
    :cond_87
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    .line 622
    invoke-direct {v0, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 623
    throw v0

    :pswitch_39
    const/4 v11, 0x0

    .line 624
    new-instance v0, Lcom/caverock/androidsvg/SVG$Svg;

    .line 625
    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    .line 626
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->a:Lcom/caverock/androidsvg/SVG;

    .line 627
    iget-object v3, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 628
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->h(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 629
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->k(Lcom/caverock/androidsvg/SVG$SvgElementBase;Lorg/xml/sax/Attributes;)V

    .line 630
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->g(Lcom/caverock/androidsvg/SVG$SvgConditional;Lorg/xml/sax/Attributes;)V

    .line 631
    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGParser;->n(Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;Lorg/xml/sax/Attributes;)V

    move v6, v11

    .line 632
    :goto_25
    invoke-interface {v2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v6, v3, :cond_8c

    .line 633
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 634
    invoke-interface {v2, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$SVGAttr;->a(Ljava/lang/String;)Lcom/caverock/androidsvg/SVGParser$SVGAttr;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eq v4, v13, :cond_89

    const/16 v5, 0x4f

    if-eq v4, v5, :cond_8a

    packed-switch v4, :pswitch_data_a

    goto :goto_26

    .line 635
    :pswitch_3a
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Svg;->q:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_26

    .line 636
    :pswitch_3b
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Svg;->p:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_26

    .line 637
    :pswitch_3c
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Svg;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 638
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_88

    goto :goto_26

    .line 639
    :cond_88
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <svg> element. width cannot be negative"

    .line 640
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 641
    throw v0

    .line 642
    :cond_89
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGParser;->t(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Svg;->s:Lcom/caverock/androidsvg/SVG$Length;

    .line 643
    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Length;->f()Z

    move-result v3

    if-nez v3, :cond_8b

    :cond_8a
    :goto_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 644
    :cond_8b
    new-instance v0, Lcom/caverock/androidsvg/SVGParseException;

    const-string v2, "Invalid <svg> element. height cannot be negative"

    .line 645
    invoke-direct {v0, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 646
    throw v0

    .line 647
    :cond_8c
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v2, :cond_8d

    .line 648
    iget-object v2, v1, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    .line 649
    iput-object v0, v2, Lcom/caverock/androidsvg/SVG;->a:Lcom/caverock/androidsvg/SVG$Svg;

    goto :goto_27

    .line 650
    :cond_8d
    invoke-interface {v2, v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 651
    :goto_27
    iput-object v0, v1, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_38
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_1c
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_34
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x51
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x51
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x51
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x20
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x54
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x54
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x51
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x51
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch
.end method

.method public final H(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->g:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->g:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->g:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->h:Z

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->i:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->i:Ljava/lang/StringBuilder;

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->i:Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 57
    .line 58
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->a(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_0
    return-void
.end method

.method public final I([CII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->g:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->g:Ljava/lang/StringBuilder;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->g:Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->h:Z

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->i:Ljava/lang/StringBuilder;

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->i:Ljava/lang/StringBuilder;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->i:Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 49
    .line 50
    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    new-instance v0, Ljava/lang/String;

    .line 55
    .line 56
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->a(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 2
    .line 3
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->i:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->i:Ljava/util/List;

    .line 16
    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 24
    .line 25
    :goto_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1, v2, p1}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->c:Ljava/lang/String;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 46
    .line 47
    new-instance v1, Lcom/caverock/androidsvg/SVG$TextSequence;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, v1, Lcom/caverock/androidsvg/SVG$TextSequence;->c:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v0, v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->c(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/caverock/androidsvg/SVGParser;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser;->d:I

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser;->d:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->c:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string v0, "http://www.w3.org/2000/svg"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object p2, p3

    .line 43
    :goto_0
    sget-object p1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->i:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 50
    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    sget-object p1, Lcom/caverock/androidsvg/SVGParser$SVGElem;->h:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 55
    .line 56
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    packed-switch p1, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    :pswitch_0
    goto :goto_3

    .line 64
    :pswitch_1
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->i:Ljava/lang/StringBuilder;

    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->h:Z

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Lcom/caverock/androidsvg/CSSParser;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-boolean v1, p2, Lcom/caverock/androidsvg/CSSParser;->c:Z

    .line 80
    .line 81
    sget-object p3, Lcom/caverock/androidsvg/CSSParser$MediaType;->f:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 82
    .line 83
    iput-object p3, p2, Lcom/caverock/androidsvg/CSSParser;->a:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 84
    .line 85
    sget-object p3, Lcom/caverock/androidsvg/CSSParser$Source;->c:Lcom/caverock/androidsvg/CSSParser$Source;

    .line 86
    .line 87
    iput-object p3, p2, Lcom/caverock/androidsvg/CSSParser;->b:Lcom/caverock/androidsvg/CSSParser$Source;

    .line 88
    .line 89
    iget-object p3, p0, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    .line 90
    .line 91
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    .line 92
    .line 93
    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/CSSParser;->e(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p2, p3, Lcom/caverock/androidsvg/SVG;->b:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->b(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->i:Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_2
    iput-boolean v1, p0, Lcom/caverock/androidsvg/SVGParser;->e:Z

    .line 115
    .line 116
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->g:Ljava/lang/StringBuilder;

    .line 117
    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->f:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 121
    .line 122
    sget-object p2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->g:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 123
    .line 124
    if-ne p1, p2, :cond_4

    .line 125
    .line 126
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    sget-object p2, Lcom/caverock/androidsvg/SVGParser$SVGElem;->c:Lcom/caverock/androidsvg/SVGParser$SVGElem;

    .line 133
    .line 134
    if-ne p1, p2, :cond_5

    .line 135
    .line 136
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->g:Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_3
    return-void

    .line 147
    :pswitch_3
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 148
    .line 149
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 152
    .line 153
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 154
    .line 155
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final f(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;
    .locals 4

    .line 1
    const-string v0, "Exception thrown closing input stream"

    .line 2
    .line 3
    const-string v1, "SVGParser"

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 12
    .line 13
    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    move-object p1, v2

    .line 17
    :cond_0
    const/4 v2, 0x3

    .line 18
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    shl-int/lit8 v3, v3, 0x8

    .line 30
    .line 31
    add-int/2addr v2, v3

    .line 32
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 33
    .line 34
    .line 35
    const v3, 0x8b1f

    .line 36
    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 41
    .line 42
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    .line 43
    .line 44
    invoke-direct {v3, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    move-object p1, v2

    .line 51
    :catch_0
    :cond_1
    const/16 v2, 0x1000

    .line 52
    .line 53
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVGParser;->C(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGParser;->a:Lcom/caverock/androidsvg/SVG;

    .line 67
    .line 68
    return-object p1

    .line 69
    :catchall_0
    move-exception v2

    .line 70
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :goto_1
    throw v2
.end method
