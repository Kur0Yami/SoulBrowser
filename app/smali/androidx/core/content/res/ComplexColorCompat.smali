.class public final Landroidx/core/content/res/ComplexColorCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field public final a:Landroid/graphics/Shader;

.field public final b:Landroid/content/res/ColorStateList;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/core/content/res/ComplexColorCompat;->b:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    iput p3, p0, Landroidx/core/content/res/ComplexColorCompat;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public static a(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 27

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x2

    .line 21
    if-eq v4, v6, :cond_0

    .line 22
    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-ne v4, v6, :cond_22

    .line 27
    .line 28
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v7, "gradient"

    .line 36
    .line 37
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    const/4 v9, 0x0

    .line 42
    if-nez v8, :cond_2

    .line 43
    .line 44
    const-string v5, "selector"

    .line 45
    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-static {v2, v1, v3, v0}, Landroidx/core/content/res/ColorStateListInflaterCompat;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Landroidx/core/content/res/ComplexColorCompat;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-direct {v1, v9, v0, v2}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ": unsupported complex color tag "

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_21

    .line 105
    .line 106
    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    .line 107
    .line 108
    invoke-static {v2, v0, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->d(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startX:I

    .line 113
    .line 114
    const-string v8, "http://schemas.android.com/apk/res/android"

    .line 115
    .line 116
    const-string v10, "startX"

    .line 117
    .line 118
    invoke-interface {v1, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const/4 v11, 0x0

    .line 123
    if-eqz v10, :cond_3

    .line 124
    .line 125
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    move v13, v7

    .line 130
    goto :goto_1

    .line 131
    :cond_3
    move v13, v11

    .line 132
    :goto_1
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_startY:I

    .line 133
    .line 134
    const-string v10, "startY"

    .line 135
    .line 136
    invoke-interface {v1, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    if-eqz v10, :cond_4

    .line 141
    .line 142
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    move v14, v7

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    move v14, v11

    .line 149
    :goto_2
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_endX:I

    .line 150
    .line 151
    const-string v10, "endX"

    .line 152
    .line 153
    invoke-interface {v1, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    if-eqz v10, :cond_5

    .line 158
    .line 159
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    move v15, v7

    .line 164
    goto :goto_3

    .line 165
    :cond_5
    move v15, v11

    .line 166
    :goto_3
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_endY:I

    .line 167
    .line 168
    const-string v10, "endY"

    .line 169
    .line 170
    invoke-interface {v1, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    if-eqz v10, :cond_6

    .line 175
    .line 176
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    move/from16 v16, v7

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    move/from16 v16, v11

    .line 184
    .line 185
    :goto_4
    sget v7, Landroidx/core/R$styleable;->GradientColor_android_centerX:I

    .line 186
    .line 187
    const-string v10, "centerX"

    .line 188
    .line 189
    invoke-interface {v1, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    if-eqz v10, :cond_7

    .line 194
    .line 195
    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    goto :goto_5

    .line 200
    :cond_7
    move v7, v11

    .line 201
    :goto_5
    sget v10, Landroidx/core/R$styleable;->GradientColor_android_centerY:I

    .line 202
    .line 203
    const-string v12, "centerY"

    .line 204
    .line 205
    invoke-interface {v1, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v12

    .line 209
    if-eqz v12, :cond_8

    .line 210
    .line 211
    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    goto :goto_6

    .line 216
    :cond_8
    move v10, v11

    .line 217
    :goto_6
    sget v12, Landroidx/core/R$styleable;->GradientColor_android_type:I

    .line 218
    .line 219
    const-string v9, "type"

    .line 220
    .line 221
    invoke-interface {v1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    const/4 v6, 0x0

    .line 226
    if-eqz v9, :cond_9

    .line 227
    .line 228
    invoke-virtual {v4, v12, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 229
    .line 230
    .line 231
    move-result v9

    .line 232
    goto :goto_7

    .line 233
    :cond_9
    move v9, v6

    .line 234
    :goto_7
    sget v12, Landroidx/core/R$styleable;->GradientColor_android_startColor:I

    .line 235
    .line 236
    move/from16 v18, v5

    .line 237
    .line 238
    const-string v5, "startColor"

    .line 239
    .line 240
    invoke-interface {v1, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    if-eqz v5, :cond_a

    .line 245
    .line 246
    invoke-virtual {v4, v12, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 247
    .line 248
    .line 249
    move-result v5

    .line 250
    goto :goto_8

    .line 251
    :cond_a
    move v5, v6

    .line 252
    :goto_8
    const-string v12, "centerColor"

    .line 253
    .line 254
    invoke-interface {v1, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v19

    .line 258
    if-eqz v19, :cond_b

    .line 259
    .line 260
    move/from16 v19, v18

    .line 261
    .line 262
    goto :goto_9

    .line 263
    :cond_b
    move/from16 v19, v6

    .line 264
    .line 265
    :goto_9
    sget v11, Landroidx/core/R$styleable;->GradientColor_android_centerColor:I

    .line 266
    .line 267
    invoke-interface {v1, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    if-eqz v12, :cond_c

    .line 272
    .line 273
    invoke-virtual {v4, v11, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 274
    .line 275
    .line 276
    move-result v11

    .line 277
    goto :goto_a

    .line 278
    :cond_c
    move v11, v6

    .line 279
    :goto_a
    sget v12, Landroidx/core/R$styleable;->GradientColor_android_endColor:I

    .line 280
    .line 281
    const-string v6, "endColor"

    .line 282
    .line 283
    invoke-interface {v1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    if-eqz v6, :cond_d

    .line 288
    .line 289
    const/4 v6, 0x0

    .line 290
    invoke-virtual {v4, v12, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 291
    .line 292
    .line 293
    move-result v24

    .line 294
    move/from16 v12, v24

    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_d
    const/4 v6, 0x0

    .line 298
    move v12, v6

    .line 299
    :goto_b
    sget v6, Landroidx/core/R$styleable;->GradientColor_android_tileMode:I

    .line 300
    .line 301
    move/from16 v21, v13

    .line 302
    .line 303
    const-string v13, "tileMode"

    .line 304
    .line 305
    invoke-interface {v1, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v13

    .line 309
    if-eqz v13, :cond_e

    .line 310
    .line 311
    const/4 v13, 0x0

    .line 312
    invoke-virtual {v4, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 313
    .line 314
    .line 315
    move-result v6

    .line 316
    goto :goto_c

    .line 317
    :cond_e
    const/4 v6, 0x0

    .line 318
    :goto_c
    sget v13, Landroidx/core/R$styleable;->GradientColor_android_gradientRadius:I

    .line 319
    .line 320
    move/from16 v22, v14

    .line 321
    .line 322
    const-string v14, "gradientRadius"

    .line 323
    .line 324
    invoke-interface {v1, v8, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    if-eqz v8, :cond_f

    .line 329
    .line 330
    const/4 v8, 0x0

    .line 331
    invoke-virtual {v4, v13, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    move v8, v13

    .line 336
    goto :goto_d

    .line 337
    :cond_f
    const/4 v8, 0x0

    .line 338
    :goto_d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 339
    .line 340
    .line 341
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    add-int/lit8 v4, v4, 0x1

    .line 346
    .line 347
    new-instance v13, Ljava/util/ArrayList;

    .line 348
    .line 349
    const/16 v14, 0x14

    .line 350
    .line 351
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .line 353
    .line 354
    move-object/from16 v23, v1

    .line 355
    .line 356
    new-instance v1, Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-direct {v1, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    .line 360
    .line 361
    :goto_e
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 362
    .line 363
    .line 364
    move-result v14

    .line 365
    move/from16 v25, v8

    .line 366
    .line 367
    move/from16 v8, v18

    .line 368
    .line 369
    if-eq v14, v8, :cond_15

    .line 370
    .line 371
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    move/from16 v26, v15

    .line 376
    .line 377
    if-ge v8, v4, :cond_10

    .line 378
    .line 379
    const/4 v15, 0x3

    .line 380
    if-eq v14, v15, :cond_16

    .line 381
    .line 382
    :cond_10
    const/4 v15, 0x2

    .line 383
    if-eq v14, v15, :cond_11

    .line 384
    .line 385
    :goto_f
    move/from16 v8, v25

    .line 386
    .line 387
    move/from16 v15, v26

    .line 388
    .line 389
    const/16 v18, 0x1

    .line 390
    .line 391
    goto :goto_e

    .line 392
    :cond_11
    if-gt v8, v4, :cond_13

    .line 393
    .line 394
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v8

    .line 398
    const-string v14, "item"

    .line 399
    .line 400
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    if-nez v8, :cond_12

    .line 405
    .line 406
    goto :goto_f

    .line 407
    :cond_12
    sget-object v8, Landroidx/core/R$styleable;->GradientColorItem:[I

    .line 408
    .line 409
    invoke-static {v2, v0, v3, v8}, Landroidx/core/content/res/TypedArrayUtils;->d(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    sget v14, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    .line 414
    .line 415
    invoke-virtual {v8, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 416
    .line 417
    .line 418
    move-result v14

    .line 419
    sget v15, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    .line 420
    .line 421
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 422
    .line 423
    .line 424
    move-result v15

    .line 425
    if-eqz v14, :cond_14

    .line 426
    .line 427
    if-eqz v15, :cond_14

    .line 428
    .line 429
    sget v14, Landroidx/core/R$styleable;->GradientColorItem_android_color:I

    .line 430
    .line 431
    const/4 v15, 0x0

    .line 432
    invoke-virtual {v8, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 433
    .line 434
    .line 435
    move-result v14

    .line 436
    sget v15, Landroidx/core/R$styleable;->GradientColorItem_android_offset:I

    .line 437
    .line 438
    const/4 v0, 0x0

    .line 439
    invoke-virtual {v8, v15, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 440
    .line 441
    .line 442
    move-result v15

    .line 443
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 444
    .line 445
    .line 446
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    :cond_13
    move-object/from16 v0, p1

    .line 461
    .line 462
    goto :goto_f

    .line 463
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 464
    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v2, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 478
    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    throw v0

    .line 490
    :cond_15
    move/from16 v26, v15

    .line 491
    .line 492
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-lez v0, :cond_17

    .line 497
    .line 498
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 499
    .line 500
    invoke-direct {v0, v1, v13}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 501
    .line 502
    .line 503
    goto :goto_10

    .line 504
    :cond_17
    const/4 v0, 0x0

    .line 505
    :goto_10
    if-eqz v0, :cond_18

    .line 506
    .line 507
    :goto_11
    const/4 v8, 0x1

    .line 508
    goto :goto_12

    .line 509
    :cond_18
    if-eqz v19, :cond_19

    .line 510
    .line 511
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 512
    .line 513
    invoke-direct {v0, v5, v11, v12}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    .line 514
    .line 515
    .line 516
    goto :goto_11

    .line 517
    :cond_19
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 518
    .line 519
    invoke-direct {v0, v5, v12}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    .line 520
    .line 521
    .line 522
    goto :goto_11

    .line 523
    :goto_12
    if-eq v9, v8, :cond_1d

    .line 524
    .line 525
    const/4 v15, 0x2

    .line 526
    if-eq v9, v15, :cond_1c

    .line 527
    .line 528
    new-instance v12, Landroid/graphics/LinearGradient;

    .line 529
    .line 530
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->a:[I

    .line 531
    .line 532
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->b:[F

    .line 533
    .line 534
    if-eq v6, v8, :cond_1b

    .line 535
    .line 536
    if-eq v6, v15, :cond_1a

    .line 537
    .line 538
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 539
    .line 540
    :goto_13
    move-object/from16 v18, v0

    .line 541
    .line 542
    move-object/from16 v17, v1

    .line 543
    .line 544
    move-object/from16 v19, v2

    .line 545
    .line 546
    move/from16 v13, v21

    .line 547
    .line 548
    move/from16 v14, v22

    .line 549
    .line 550
    move/from16 v15, v26

    .line 551
    .line 552
    goto :goto_14

    .line 553
    :cond_1a
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 554
    .line 555
    goto :goto_13

    .line 556
    :cond_1b
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 557
    .line 558
    goto :goto_13

    .line 559
    :goto_14
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 560
    .line 561
    .line 562
    goto :goto_17

    .line 563
    :cond_1c
    new-instance v12, Landroid/graphics/SweepGradient;

    .line 564
    .line 565
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->a:[I

    .line 566
    .line 567
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->b:[F

    .line 568
    .line 569
    invoke-direct {v12, v7, v10, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 570
    .line 571
    .line 572
    goto :goto_17

    .line 573
    :cond_1d
    const/16 v20, 0x0

    .line 574
    .line 575
    cmpg-float v1, v25, v20

    .line 576
    .line 577
    if-lez v1, :cond_20

    .line 578
    .line 579
    const/4 v15, 0x2

    .line 580
    new-instance v17, Landroid/graphics/RadialGradient;

    .line 581
    .line 582
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->a:[I

    .line 583
    .line 584
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->b:[F

    .line 585
    .line 586
    const/4 v8, 0x1

    .line 587
    if-eq v6, v8, :cond_1f

    .line 588
    .line 589
    if-eq v6, v15, :cond_1e

    .line 590
    .line 591
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 592
    .line 593
    :goto_15
    move-object/from16 v22, v0

    .line 594
    .line 595
    move-object/from16 v21, v1

    .line 596
    .line 597
    move-object/from16 v23, v2

    .line 598
    .line 599
    move/from16 v18, v7

    .line 600
    .line 601
    move/from16 v19, v10

    .line 602
    .line 603
    move/from16 v20, v25

    .line 604
    .line 605
    goto :goto_16

    .line 606
    :cond_1e
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 607
    .line 608
    goto :goto_15

    .line 609
    :cond_1f
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 610
    .line 611
    goto :goto_15

    .line 612
    :goto_16
    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 613
    .line 614
    .line 615
    move-object/from16 v12, v17

    .line 616
    .line 617
    :goto_17
    new-instance v0, Landroidx/core/content/res/ComplexColorCompat;

    .line 618
    .line 619
    const/4 v1, 0x0

    .line 620
    const/4 v13, 0x0

    .line 621
    invoke-direct {v0, v12, v1, v13}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 622
    .line 623
    .line 624
    return-object v0

    .line 625
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 626
    .line 627
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 628
    .line 629
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    throw v0

    .line 633
    :cond_21
    move-object/from16 v23, v1

    .line 634
    .line 635
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 636
    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    .line 638
    .line 639
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    .line 641
    .line 642
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v2, ": invalid gradient color tag "

    .line 650
    .line 651
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    throw v0

    .line 665
    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 666
    .line 667
    const-string v1, "No start tag found"

    .line 668
    .line 669
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    throw v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/content/res/ComplexColorCompat;->b:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method
