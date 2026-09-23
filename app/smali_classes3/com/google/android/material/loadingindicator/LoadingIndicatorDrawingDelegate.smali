.class Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate$IndicatorState;
    }
.end annotation


# static fields
.field public static final a:[Landroidx/graphics/shapes/RoundedPolygon;

.field public static final b:[Landroidx/graphics/shapes/Morph;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    sget-object v0, Lcom/google/android/material/shape/MaterialShapes;->g:Landroidx/graphics/shapes/RoundedPolygon;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/RectF;

    .line 4
    .line 5
    const/high16 v2, -0x40800000    # -1.0f

    .line 6
    .line 7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    .line 9
    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/material/shape/MaterialShapes;->d(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/google/android/material/shape/MaterialShapes;->f:Landroidx/graphics/shapes/RoundedPolygon;

    .line 17
    .line 18
    new-instance v4, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v4, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v4}, Lcom/google/android/material/shape/MaterialShapes;->d(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v4, Lcom/google/android/material/shape/MaterialShapes;->c:Landroidx/graphics/shapes/RoundedPolygon;

    .line 28
    .line 29
    new-instance v5, Landroid/graphics/RectF;

    .line 30
    .line 31
    invoke-direct {v5, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v5}, Lcom/google/android/material/shape/MaterialShapes;->d(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    sget-object v5, Lcom/google/android/material/shape/MaterialShapes;->b:Landroidx/graphics/shapes/RoundedPolygon;

    .line 39
    .line 40
    new-instance v6, Landroid/graphics/RectF;

    .line 41
    .line 42
    invoke-direct {v6, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 43
    .line 44
    .line 45
    invoke-static {v5, v6}, Lcom/google/android/material/shape/MaterialShapes;->d(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    sget-object v6, Lcom/google/android/material/shape/MaterialShapes;->d:Landroidx/graphics/shapes/RoundedPolygon;

    .line 50
    .line 51
    new-instance v7, Landroid/graphics/RectF;

    .line 52
    .line 53
    invoke-direct {v7, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    .line 55
    .line 56
    invoke-static {v6, v7}, Lcom/google/android/material/shape/MaterialShapes;->d(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    sget-object v7, Lcom/google/android/material/shape/MaterialShapes;->e:Landroidx/graphics/shapes/RoundedPolygon;

    .line 61
    .line 62
    new-instance v8, Landroid/graphics/RectF;

    .line 63
    .line 64
    invoke-direct {v8, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 65
    .line 66
    .line 67
    invoke-static {v7, v8}, Lcom/google/android/material/shape/MaterialShapes;->d(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    sget-object v8, Lcom/google/android/material/shape/MaterialShapes;->a:Landroidx/graphics/shapes/RoundedPolygon;

    .line 72
    .line 73
    new-instance v9, Landroid/graphics/RectF;

    .line 74
    .line 75
    invoke-direct {v9, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    .line 77
    .line 78
    invoke-static {v8, v9}, Lcom/google/android/material/shape/MaterialShapes;->d(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const/4 v8, 0x7

    .line 83
    new-array v9, v8, [Landroidx/graphics/shapes/RoundedPolygon;

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    aput-object v0, v9, v10

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    aput-object v1, v9, v0

    .line 90
    .line 91
    const/4 v1, 0x2

    .line 92
    aput-object v4, v9, v1

    .line 93
    .line 94
    const/4 v4, 0x3

    .line 95
    aput-object v5, v9, v4

    .line 96
    .line 97
    const/4 v4, 0x4

    .line 98
    aput-object v6, v9, v4

    .line 99
    .line 100
    const/4 v4, 0x5

    .line 101
    aput-object v7, v9, v4

    .line 102
    .line 103
    const/4 v4, 0x6

    .line 104
    aput-object v2, v9, v4

    .line 105
    .line 106
    sput-object v9, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->a:[Landroidx/graphics/shapes/RoundedPolygon;

    .line 107
    .line 108
    new-array v2, v8, [Landroidx/graphics/shapes/Morph;

    .line 109
    .line 110
    sput-object v2, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->b:[Landroidx/graphics/shapes/Morph;

    .line 111
    .line 112
    move v2, v10

    .line 113
    :goto_0
    sget-object v4, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->a:[Landroidx/graphics/shapes/RoundedPolygon;

    .line 114
    .line 115
    array-length v5, v4

    .line 116
    if-ge v2, v5, :cond_15

    .line 117
    .line 118
    sget-object v5, Lcom/google/android/material/loadingindicator/LoadingIndicatorDrawingDelegate;->b:[Landroidx/graphics/shapes/Morph;

    .line 119
    .line 120
    new-instance v6, Landroidx/graphics/shapes/Morph;

    .line 121
    .line 122
    aget-object v7, v4, v2

    .line 123
    .line 124
    add-int/lit8 v8, v2, 0x1

    .line 125
    .line 126
    array-length v9, v4

    .line 127
    rem-int v9, v8, v9

    .line 128
    .line 129
    aget-object v4, v4, v9

    .line 130
    .line 131
    const-string v9, "start"

    .line 132
    .line 133
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v9, "end"

    .line 137
    .line 138
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v9, "p1"

    .line 145
    .line 146
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v9, "p2"

    .line 150
    .line 151
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    sget v9, Landroidx/graphics/shapes/MeasuredPolygon;->h:I

    .line 155
    .line 156
    new-instance v9, Landroidx/graphics/shapes/AngleMeasurer;

    .line 157
    .line 158
    iget v11, v7, Landroidx/graphics/shapes/RoundedPolygon;->b:F

    .line 159
    .line 160
    iget v12, v7, Landroidx/graphics/shapes/RoundedPolygon;->c:F

    .line 161
    .line 162
    invoke-direct {v9, v11, v12}, Landroidx/graphics/shapes/AngleMeasurer;-><init>(FF)V

    .line 163
    .line 164
    .line 165
    invoke-static {v9, v7}, Landroidx/graphics/shapes/MeasuredPolygon$Companion;->a(Landroidx/graphics/shapes/AngleMeasurer;Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/MeasuredPolygon;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    new-instance v9, Landroidx/graphics/shapes/AngleMeasurer;

    .line 170
    .line 171
    iget v11, v4, Landroidx/graphics/shapes/RoundedPolygon;->b:F

    .line 172
    .line 173
    iget v12, v4, Landroidx/graphics/shapes/RoundedPolygon;->c:F

    .line 174
    .line 175
    invoke-direct {v9, v11, v12}, Landroidx/graphics/shapes/AngleMeasurer;-><init>(FF)V

    .line 176
    .line 177
    .line 178
    invoke-static {v9, v4}, Landroidx/graphics/shapes/MeasuredPolygon$Companion;->a(Landroidx/graphics/shapes/AngleMeasurer;Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/MeasuredPolygon;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    iget-object v9, v7, Landroidx/graphics/shapes/MeasuredPolygon;->g:Ljava/util/List;

    .line 183
    .line 184
    iget-object v11, v4, Landroidx/graphics/shapes/MeasuredPolygon;->g:Ljava/util/List;

    .line 185
    .line 186
    const-string v12, "features1"

    .line 187
    .line 188
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v12, "features2"

    .line 192
    .line 193
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    move v14, v10

    .line 205
    :goto_1
    if-ge v14, v13, :cond_1

    .line 206
    .line 207
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v15

    .line 211
    check-cast v15, Landroidx/graphics/shapes/ProgressableFeature;

    .line 212
    .line 213
    iget-object v15, v15, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 214
    .line 215
    instance-of v15, v15, Landroidx/graphics/shapes/Feature$Corner;

    .line 216
    .line 217
    if-eqz v15, :cond_0

    .line 218
    .line 219
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_1
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 238
    .line 239
    .line 240
    move-result v13

    .line 241
    move v14, v10

    .line 242
    :goto_2
    if-ge v14, v13, :cond_3

    .line 243
    .line 244
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v15

    .line 248
    check-cast v15, Landroidx/graphics/shapes/ProgressableFeature;

    .line 249
    .line 250
    iget-object v15, v15, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 251
    .line 252
    instance-of v15, v15, Landroidx/graphics/shapes/Feature$Corner;

    .line 253
    .line 254
    if-eqz v15, :cond_2

    .line 255
    .line 256
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v15

    .line 260
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_3
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v14

    .line 278
    if-le v13, v14, :cond_4

    .line 279
    .line 280
    invoke-static {v12, v9}, Landroidx/graphics/shapes/FeatureMappingKt;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v9

    .line 284
    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    goto :goto_3

    .line 289
    :cond_4
    invoke-static {v9, v12}, Landroidx/graphics/shapes/FeatureMappingKt;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    :goto_3
    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    check-cast v12, Ljava/util/List;

    .line 302
    .line 303
    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v9

    .line 307
    check-cast v9, Ljava/util/List;

    .line 308
    .line 309
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 314
    .line 315
    .line 316
    move-result v14

    .line 317
    move v15, v10

    .line 318
    :goto_4
    move/from16 v16, v1

    .line 319
    .line 320
    if-ge v15, v14, :cond_5

    .line 321
    .line 322
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eq v15, v1, :cond_5

    .line 327
    .line 328
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    check-cast v1, Landroidx/graphics/shapes/ProgressableFeature;

    .line 333
    .line 334
    iget v1, v1, Landroidx/graphics/shapes/ProgressableFeature;->a:F

    .line 335
    .line 336
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v17

    .line 344
    move/from16 v18, v3

    .line 345
    .line 346
    move-object/from16 v3, v17

    .line 347
    .line 348
    check-cast v3, Landroidx/graphics/shapes/ProgressableFeature;

    .line 349
    .line 350
    iget v3, v3, Landroidx/graphics/shapes/ProgressableFeature;->a:F

    .line 351
    .line 352
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    add-int/lit8 v15, v15, 0x1

    .line 364
    .line 365
    move/from16 v1, v16

    .line 366
    .line 367
    move/from16 v3, v18

    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_5
    move/from16 v18, v3

    .line 371
    .line 372
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    new-instance v3, Landroidx/graphics/shapes/DoubleMapper;

    .line 377
    .line 378
    new-array v9, v10, [Lkotlin/Pair;

    .line 379
    .line 380
    invoke-interface {v1, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    check-cast v1, [Lkotlin/Pair;

    .line 385
    .line 386
    array-length v9, v1

    .line 387
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, [Lkotlin/Pair;

    .line 392
    .line 393
    invoke-direct {v3, v1}, Landroidx/graphics/shapes/DoubleMapper;-><init>([Lkotlin/Pair;)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v3, Landroidx/graphics/shapes/DoubleMapper;->a:Landroidx/collection/MutableFloatList;

    .line 397
    .line 398
    iget-object v3, v3, Landroidx/graphics/shapes/DoubleMapper;->b:Landroidx/collection/MutableFloatList;

    .line 399
    .line 400
    const/4 v9, 0x0

    .line 401
    invoke-static {v1, v3, v9}, Landroidx/graphics/shapes/FloatMappingKt;->a(Landroidx/collection/FloatList;Landroidx/collection/FloatList;F)F

    .line 402
    .line 403
    .line 404
    move-result v12

    .line 405
    iget-object v13, v4, Landroidx/graphics/shapes/MeasuredPolygon;->f:Ljava/util/ArrayList;

    .line 406
    .line 407
    cmpg-float v14, v9, v12

    .line 408
    .line 409
    if-gtz v14, :cond_14

    .line 410
    .line 411
    cmpg-float v14, v12, v18

    .line 412
    .line 413
    if-gtz v14, :cond_14

    .line 414
    .line 415
    const v14, 0x38d1b717    # 1.0E-4f

    .line 416
    .line 417
    .line 418
    cmpg-float v14, v12, v14

    .line 419
    .line 420
    if-gez v14, :cond_6

    .line 421
    .line 422
    move/from16 v19, v0

    .line 423
    .line 424
    move/from16 v23, v2

    .line 425
    .line 426
    move-object/from16 v21, v5

    .line 427
    .line 428
    move/from16 v20, v10

    .line 429
    .line 430
    goto/16 :goto_b

    .line 431
    .line 432
    :cond_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 433
    .line 434
    .line 435
    move-result v14

    .line 436
    move v9, v10

    .line 437
    move v15, v9

    .line 438
    :goto_5
    if-ge v9, v14, :cond_8

    .line 439
    .line 440
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v19

    .line 444
    add-int/lit8 v9, v9, 0x1

    .line 445
    .line 446
    move/from16 v20, v10

    .line 447
    .line 448
    move-object/from16 v10, v19

    .line 449
    .line 450
    check-cast v10, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 451
    .line 452
    iget v0, v10, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->c:F

    .line 453
    .line 454
    iget v10, v10, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->d:F

    .line 455
    .line 456
    cmpg-float v10, v12, v10

    .line 457
    .line 458
    if-gtz v10, :cond_7

    .line 459
    .line 460
    cmpg-float v0, v0, v12

    .line 461
    .line 462
    if-gtz v0, :cond_7

    .line 463
    .line 464
    goto :goto_6

    .line 465
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 466
    .line 467
    move/from16 v10, v20

    .line 468
    .line 469
    const/4 v0, 0x1

    .line 470
    goto :goto_5

    .line 471
    :cond_8
    move/from16 v20, v10

    .line 472
    .line 473
    const/4 v15, -0x1

    .line 474
    :goto_6
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    check-cast v0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 479
    .line 480
    invoke-virtual {v0, v12}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->a(F)Lkotlin/Pair;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v9

    .line 488
    check-cast v9, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 489
    .line 490
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    check-cast v0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 495
    .line 496
    iget-object v0, v0, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->a:Landroidx/graphics/shapes/Cubic;

    .line 497
    .line 498
    const/4 v10, 0x1

    .line 499
    new-array v14, v10, [Landroidx/graphics/shapes/Cubic;

    .line 500
    .line 501
    aput-object v0, v14, v20

    .line 502
    .line 503
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 508
    .line 509
    .line 510
    move-result v10

    .line 511
    const/4 v14, 0x1

    .line 512
    :goto_7
    if-ge v14, v10, :cond_9

    .line 513
    .line 514
    add-int v21, v14, v15

    .line 515
    .line 516
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 517
    .line 518
    .line 519
    move-result v22

    .line 520
    move/from16 v23, v2

    .line 521
    .line 522
    rem-int v2, v21, v22

    .line 523
    .line 524
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    check-cast v2, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 529
    .line 530
    iget-object v2, v2, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->a:Landroidx/graphics/shapes/Cubic;

    .line 531
    .line 532
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    add-int/lit8 v14, v14, 0x1

    .line 536
    .line 537
    move/from16 v2, v23

    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_9
    move/from16 v23, v2

    .line 541
    .line 542
    iget-object v2, v9, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->a:Landroidx/graphics/shapes/Cubic;

    .line 543
    .line 544
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    new-instance v2, Landroidx/collection/MutableFloatList;

    .line 548
    .line 549
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 550
    .line 551
    .line 552
    move-result v9

    .line 553
    add-int/lit8 v9, v9, 0x2

    .line 554
    .line 555
    invoke-direct {v2, v9}, Landroidx/collection/MutableFloatList;-><init>(I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 559
    .line 560
    .line 561
    move-result v9

    .line 562
    add-int/lit8 v9, v9, 0x2

    .line 563
    .line 564
    move/from16 v10, v20

    .line 565
    .line 566
    :goto_8
    if-ge v10, v9, :cond_c

    .line 567
    .line 568
    if-nez v10, :cond_a

    .line 569
    .line 570
    move-object/from16 v21, v5

    .line 571
    .line 572
    const/4 v14, 0x0

    .line 573
    const/16 v19, 0x1

    .line 574
    .line 575
    goto :goto_9

    .line 576
    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 577
    .line 578
    .line 579
    move-result v14

    .line 580
    const/16 v19, 0x1

    .line 581
    .line 582
    add-int/lit8 v14, v14, 0x1

    .line 583
    .line 584
    if-ne v10, v14, :cond_b

    .line 585
    .line 586
    move-object/from16 v21, v5

    .line 587
    .line 588
    move/from16 v14, v18

    .line 589
    .line 590
    goto :goto_9

    .line 591
    :cond_b
    add-int v14, v15, v10

    .line 592
    .line 593
    add-int/lit8 v14, v14, -0x1

    .line 594
    .line 595
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 596
    .line 597
    .line 598
    move-result v21

    .line 599
    rem-int v14, v14, v21

    .line 600
    .line 601
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v14

    .line 605
    check-cast v14, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 606
    .line 607
    iget v14, v14, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->d:F

    .line 608
    .line 609
    sub-float/2addr v14, v12

    .line 610
    move-object/from16 v21, v5

    .line 611
    .line 612
    move/from16 v5, v18

    .line 613
    .line 614
    invoke-static {v14, v5}, Landroidx/graphics/shapes/Utils;->d(FF)F

    .line 615
    .line 616
    .line 617
    move-result v14

    .line 618
    :goto_9
    invoke-virtual {v2, v14}, Landroidx/collection/MutableFloatList;->c(F)V

    .line 619
    .line 620
    .line 621
    add-int/lit8 v10, v10, 0x1

    .line 622
    .line 623
    move-object/from16 v5, v21

    .line 624
    .line 625
    const/high16 v18, 0x3f800000    # 1.0f

    .line 626
    .line 627
    goto :goto_8

    .line 628
    :cond_c
    move-object/from16 v21, v5

    .line 629
    .line 630
    const/16 v19, 0x1

    .line 631
    .line 632
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 637
    .line 638
    .line 639
    move-result v9

    .line 640
    move/from16 v10, v20

    .line 641
    .line 642
    :goto_a
    if-ge v10, v9, :cond_d

    .line 643
    .line 644
    new-instance v13, Landroidx/graphics/shapes/ProgressableFeature;

    .line 645
    .line 646
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v14

    .line 650
    check-cast v14, Landroidx/graphics/shapes/ProgressableFeature;

    .line 651
    .line 652
    iget v14, v14, Landroidx/graphics/shapes/ProgressableFeature;->a:F

    .line 653
    .line 654
    sub-float/2addr v14, v12

    .line 655
    const/high16 v15, 0x3f800000    # 1.0f

    .line 656
    .line 657
    invoke-static {v14, v15}, Landroidx/graphics/shapes/Utils;->d(FF)F

    .line 658
    .line 659
    .line 660
    move-result v14

    .line 661
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v15

    .line 665
    check-cast v15, Landroidx/graphics/shapes/ProgressableFeature;

    .line 666
    .line 667
    iget-object v15, v15, Landroidx/graphics/shapes/ProgressableFeature;->b:Landroidx/graphics/shapes/Feature;

    .line 668
    .line 669
    invoke-direct {v13, v14, v15}, Landroidx/graphics/shapes/ProgressableFeature;-><init>(FLandroidx/graphics/shapes/Feature;)V

    .line 670
    .line 671
    .line 672
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    add-int/lit8 v10, v10, 0x1

    .line 676
    .line 677
    goto :goto_a

    .line 678
    :cond_d
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    new-instance v9, Landroidx/graphics/shapes/MeasuredPolygon;

    .line 683
    .line 684
    iget-object v4, v4, Landroidx/graphics/shapes/MeasuredPolygon;->c:Landroidx/graphics/shapes/Measurer;

    .line 685
    .line 686
    invoke-direct {v9, v4, v5, v0, v2}, Landroidx/graphics/shapes/MeasuredPolygon;-><init>(Landroidx/graphics/shapes/Measurer;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableFloatList;)V

    .line 687
    .line 688
    .line 689
    move-object v4, v9

    .line 690
    :goto_b
    new-instance v0, Ljava/util/ArrayList;

    .line 691
    .line 692
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .line 694
    .line 695
    move/from16 v2, v20

    .line 696
    .line 697
    invoke-static {v7, v2}, Lkotlin/collections/CollectionsKt;->l(Landroidx/graphics/shapes/MeasuredPolygon;I)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    check-cast v5, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 702
    .line 703
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->l(Landroidx/graphics/shapes/MeasuredPolygon;I)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v9

    .line 707
    check-cast v9, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 708
    .line 709
    move/from16 v10, v19

    .line 710
    .line 711
    move v11, v10

    .line 712
    :goto_c
    if-eqz v5, :cond_12

    .line 713
    .line 714
    if-eqz v9, :cond_12

    .line 715
    .line 716
    invoke-virtual {v7}, Lkotlin/collections/AbstractCollection;->size()I

    .line 717
    .line 718
    .line 719
    move-result v13

    .line 720
    if-ne v10, v13, :cond_e

    .line 721
    .line 722
    const/high16 v13, 0x3f800000    # 1.0f

    .line 723
    .line 724
    goto :goto_d

    .line 725
    :cond_e
    iget v13, v5, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->d:F

    .line 726
    .line 727
    :goto_d
    invoke-virtual {v4}, Lkotlin/collections/AbstractCollection;->size()I

    .line 728
    .line 729
    .line 730
    move-result v14

    .line 731
    if-ne v11, v14, :cond_f

    .line 732
    .line 733
    const/high16 v14, 0x3f800000    # 1.0f

    .line 734
    .line 735
    goto :goto_e

    .line 736
    :cond_f
    iget v14, v9, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->d:F

    .line 737
    .line 738
    add-float/2addr v14, v12

    .line 739
    const/high16 v15, 0x3f800000    # 1.0f

    .line 740
    .line 741
    invoke-static {v14, v15}, Landroidx/graphics/shapes/Utils;->d(FF)F

    .line 742
    .line 743
    .line 744
    move-result v14

    .line 745
    invoke-static {v3, v1, v14}, Landroidx/graphics/shapes/FloatMappingKt;->a(Landroidx/collection/FloatList;Landroidx/collection/FloatList;F)F

    .line 746
    .line 747
    .line 748
    move-result v14

    .line 749
    :goto_e
    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    .line 750
    .line 751
    .line 752
    move-result v15

    .line 753
    const v17, 0x358637bd    # 1.0E-6f

    .line 754
    .line 755
    .line 756
    add-float v17, v15, v17

    .line 757
    .line 758
    cmpl-float v13, v13, v17

    .line 759
    .line 760
    if-lez v13, :cond_10

    .line 761
    .line 762
    invoke-virtual {v5, v15}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->a(F)Lkotlin/Pair;

    .line 763
    .line 764
    .line 765
    move-result-object v5

    .line 766
    goto :goto_f

    .line 767
    :cond_10
    add-int/lit8 v13, v10, 0x1

    .line 768
    .line 769
    invoke-static {v7, v10}, Lkotlin/collections/CollectionsKt;->l(Landroidx/graphics/shapes/MeasuredPolygon;I)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v10

    .line 773
    invoke-static {v5, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 774
    .line 775
    .line 776
    move-result-object v5

    .line 777
    move v10, v13

    .line 778
    :goto_f
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v13

    .line 782
    check-cast v13, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 783
    .line 784
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v5

    .line 788
    check-cast v5, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 789
    .line 790
    cmpl-float v14, v14, v17

    .line 791
    .line 792
    if-lez v14, :cond_11

    .line 793
    .line 794
    invoke-static {v1, v3, v15}, Landroidx/graphics/shapes/FloatMappingKt;->a(Landroidx/collection/FloatList;Landroidx/collection/FloatList;F)F

    .line 795
    .line 796
    .line 797
    move-result v14

    .line 798
    sub-float/2addr v14, v12

    .line 799
    const/high16 v15, 0x3f800000    # 1.0f

    .line 800
    .line 801
    invoke-static {v14, v15}, Landroidx/graphics/shapes/Utils;->d(FF)F

    .line 802
    .line 803
    .line 804
    move-result v14

    .line 805
    invoke-virtual {v9, v14}, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->a(F)Lkotlin/Pair;

    .line 806
    .line 807
    .line 808
    move-result-object v9

    .line 809
    goto :goto_10

    .line 810
    :cond_11
    const/high16 v15, 0x3f800000    # 1.0f

    .line 811
    .line 812
    add-int/lit8 v14, v11, 0x1

    .line 813
    .line 814
    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->l(Landroidx/graphics/shapes/MeasuredPolygon;I)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v11

    .line 818
    invoke-static {v9, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 819
    .line 820
    .line 821
    move-result-object v9

    .line 822
    move v11, v14

    .line 823
    :goto_10
    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v14

    .line 827
    check-cast v14, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 828
    .line 829
    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v9

    .line 833
    check-cast v9, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;

    .line 834
    .line 835
    iget-object v13, v13, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->a:Landroidx/graphics/shapes/Cubic;

    .line 836
    .line 837
    iget-object v14, v14, Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;->a:Landroidx/graphics/shapes/Cubic;

    .line 838
    .line 839
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 840
    .line 841
    .line 842
    move-result-object v13

    .line 843
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    goto/16 :goto_c

    .line 847
    .line 848
    :cond_12
    const/high16 v15, 0x3f800000    # 1.0f

    .line 849
    .line 850
    if-nez v5, :cond_13

    .line 851
    .line 852
    if-nez v9, :cond_13

    .line 853
    .line 854
    aput-object v6, v21, v23

    .line 855
    .line 856
    move v10, v2

    .line 857
    move v2, v8

    .line 858
    move v3, v15

    .line 859
    move/from16 v1, v16

    .line 860
    .line 861
    move/from16 v0, v19

    .line 862
    .line 863
    goto/16 :goto_0

    .line 864
    .line 865
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 866
    .line 867
    const-string v1, "Expected both Polygon\'s Cubic to be fully matched"

    .line 868
    .line 869
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    throw v0

    .line 873
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 874
    .line 875
    const-string v1, "Cutting point is expected to be between 0 and 1"

    .line 876
    .line 877
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    throw v0

    .line 881
    :cond_15
    return-void
.end method
