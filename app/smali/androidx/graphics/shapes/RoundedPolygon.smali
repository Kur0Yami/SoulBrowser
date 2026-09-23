.class public final Landroidx/graphics/shapes/RoundedPolygon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/RoundedPolygon$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "",
        "Companion",
        "graphics-shapes_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,686:1\n108#2,4:687\n108#2,4:691\n108#2,4:695\n1#3:699\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n*L\n93#1:687,4\n96#1:691,4\n101#1:695,4\n*E\n"
    }
.end annotation


# static fields
.field public static final e:Landroidx/graphics/shapes/RoundedPolygon$Companion;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:F

.field public final c:F

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/graphics/shapes/RoundedPolygon;->e:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/List;FF)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "features"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Landroidx/graphics/shapes/RoundedPolygon;->a:Ljava/util/List;

    .line 14
    .line 15
    move/from16 v2, p2

    .line 16
    .line 17
    iput v2, v0, Landroidx/graphics/shapes/RoundedPolygon;->b:F

    .line 18
    .line 19
    move/from16 v2, p3

    .line 20
    .line 21
    iput v2, v0, Landroidx/graphics/shapes/RoundedPolygon;->c:F

    .line 22
    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x3

    .line 32
    const/4 v5, 0x2

    .line 33
    const/4 v6, 0x1

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    if-lez v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroidx/graphics/shapes/Feature;

    .line 43
    .line 44
    iget-object v3, v3, Landroidx/graphics/shapes/Feature;->a:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-ne v3, v4, :cond_0

    .line 51
    .line 52
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroidx/graphics/shapes/Feature;

    .line 57
    .line 58
    iget-object v3, v3, Landroidx/graphics/shapes/Feature;->a:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroidx/graphics/shapes/Cubic;

    .line 65
    .line 66
    const/high16 v9, 0x3f000000    # 0.5f

    .line 67
    .line 68
    invoke-virtual {v3, v9}, Landroidx/graphics/shapes/Cubic;->d(F)Lkotlin/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    check-cast v9, Landroidx/graphics/shapes/Cubic;

    .line 77
    .line 78
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroidx/graphics/shapes/Cubic;

    .line 83
    .line 84
    new-array v10, v5, [Landroidx/graphics/shapes/Cubic;

    .line 85
    .line 86
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    check-cast v11, Landroidx/graphics/shapes/Feature;

    .line 91
    .line 92
    iget-object v11, v11, Landroidx/graphics/shapes/Feature;->a:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    aput-object v11, v10, v7

    .line 99
    .line 100
    aput-object v9, v10, v6

    .line 101
    .line 102
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    new-array v10, v5, [Landroidx/graphics/shapes/Cubic;

    .line 107
    .line 108
    aput-object v3, v10, v7

    .line 109
    .line 110
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Landroidx/graphics/shapes/Feature;

    .line 115
    .line 116
    iget-object v3, v3, Landroidx/graphics/shapes/Feature;->a:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    aput-object v3, v10, v6

    .line 123
    .line 124
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    goto :goto_0

    .line 129
    :cond_0
    move-object v3, v8

    .line 130
    move-object v9, v3

    .line 131
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ltz v1, :cond_b

    .line 136
    .line 137
    move v11, v7

    .line 138
    move-object v10, v8

    .line 139
    :goto_1
    if-nez v11, :cond_1

    .line 140
    .line 141
    if-eqz v3, :cond_1

    .line 142
    .line 143
    move-object v12, v3

    .line 144
    goto :goto_2

    .line 145
    :cond_1
    iget-object v12, v0, Landroidx/graphics/shapes/RoundedPolygon;->a:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result v12

    .line 151
    if-ne v11, v12, :cond_4

    .line 152
    .line 153
    if-nez v9, :cond_3

    .line 154
    .line 155
    move/from16 p2, v4

    .line 156
    .line 157
    :cond_2
    move-object v1, v8

    .line 158
    move-object v8, v10

    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_3
    move-object v12, v9

    .line 162
    goto :goto_2

    .line 163
    :cond_4
    iget-object v12, v0, Landroidx/graphics/shapes/RoundedPolygon;->a:Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    check-cast v12, Landroidx/graphics/shapes/Feature;

    .line 170
    .line 171
    iget-object v12, v12, Landroidx/graphics/shapes/Feature;->a:Ljava/util/List;

    .line 172
    .line 173
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    move v14, v7

    .line 178
    :goto_3
    if-ge v14, v13, :cond_a

    .line 179
    .line 180
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v15

    .line 184
    check-cast v15, Landroidx/graphics/shapes/Cubic;

    .line 185
    .line 186
    move/from16 p2, v4

    .line 187
    .line 188
    iget-object v4, v15, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 189
    .line 190
    const/16 v16, 0x0

    .line 191
    .line 192
    aget v17, v4, v16

    .line 193
    .line 194
    invoke-virtual {v15}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 195
    .line 196
    .line 197
    move-result v18

    .line 198
    sub-float v17, v17, v18

    .line 199
    .line 200
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    .line 201
    .line 202
    .line 203
    move-result v17

    .line 204
    const v18, 0x38d1b717    # 1.0E-4f

    .line 205
    .line 206
    .line 207
    cmpg-float v17, v17, v18

    .line 208
    .line 209
    if-gez v17, :cond_5

    .line 210
    .line 211
    const/16 v17, 0x1

    .line 212
    .line 213
    aget v4, v4, v17

    .line 214
    .line 215
    invoke-virtual {v15}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 216
    .line 217
    .line 218
    move-result v19

    .line 219
    sub-float v4, v4, v19

    .line 220
    .line 221
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    cmpg-float v4, v4, v18

    .line 226
    .line 227
    if-gez v4, :cond_5

    .line 228
    .line 229
    move/from16 v16, v17

    .line 230
    .line 231
    :cond_5
    if-nez v16, :cond_8

    .line 232
    .line 233
    if-eqz v10, :cond_6

    .line 234
    .line 235
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    :cond_6
    if-nez v8, :cond_7

    .line 239
    .line 240
    move-object v8, v15

    .line 241
    move-object v10, v8

    .line 242
    goto :goto_4

    .line 243
    :cond_7
    move-object v10, v15

    .line 244
    goto :goto_4

    .line 245
    :cond_8
    if-eqz v10, :cond_9

    .line 246
    .line 247
    iget-object v4, v10, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 248
    .line 249
    const/16 v16, 0x6

    .line 250
    .line 251
    invoke-virtual {v15}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 252
    .line 253
    .line 254
    move-result v17

    .line 255
    aput v17, v4, v16

    .line 256
    .line 257
    const/16 v16, 0x7

    .line 258
    .line 259
    invoke-virtual {v15}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    aput v15, v4, v16

    .line 264
    .line 265
    :cond_9
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 266
    .line 267
    move/from16 v4, p2

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_a
    move/from16 p2, v4

    .line 271
    .line 272
    if-eq v11, v1, :cond_2

    .line 273
    .line 274
    add-int/lit8 v11, v11, 0x1

    .line 275
    .line 276
    move/from16 v4, p2

    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_b
    move/from16 p2, v4

    .line 281
    .line 282
    move-object v1, v8

    .line 283
    :goto_5
    if-eqz v8, :cond_c

    .line 284
    .line 285
    if-eqz v1, :cond_c

    .line 286
    .line 287
    iget-object v3, v8, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 288
    .line 289
    aget v8, v3, v7

    .line 290
    .line 291
    aget v9, v3, v6

    .line 292
    .line 293
    aget v10, v3, v5

    .line 294
    .line 295
    aget v11, v3, p2

    .line 296
    .line 297
    const/4 v4, 0x4

    .line 298
    aget v12, v3, v4

    .line 299
    .line 300
    const/4 v4, 0x5

    .line 301
    aget v13, v3, v4

    .line 302
    .line 303
    iget-object v1, v1, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 304
    .line 305
    aget v14, v1, v7

    .line 306
    .line 307
    aget v15, v1, v6

    .line 308
    .line 309
    invoke-static/range {v8 .. v15}, Landroidx/graphics/shapes/CubicKt;->a(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :cond_c
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    iput-object v1, v0, Landroidx/graphics/shapes/RoundedPolygon;->d:Ljava/util/List;

    .line 321
    .line 322
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    sub-int/2addr v2, v6

    .line 327
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    move v3, v7

    .line 336
    :goto_6
    if-ge v3, v1, :cond_e

    .line 337
    .line 338
    iget-object v4, v0, Landroidx/graphics/shapes/RoundedPolygon;->d:Ljava/util/List;

    .line 339
    .line 340
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Landroidx/graphics/shapes/Cubic;

    .line 345
    .line 346
    iget-object v5, v4, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 347
    .line 348
    aget v5, v5, v7

    .line 349
    .line 350
    check-cast v2, Landroidx/graphics/shapes/Cubic;

    .line 351
    .line 352
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->a()F

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    sub-float/2addr v5, v8

    .line 357
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    const v8, 0x38d1b717    # 1.0E-4f

    .line 362
    .line 363
    .line 364
    cmpl-float v5, v5, v8

    .line 365
    .line 366
    if-gtz v5, :cond_d

    .line 367
    .line 368
    iget-object v5, v4, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 369
    .line 370
    aget v5, v5, v6

    .line 371
    .line 372
    invoke-virtual {v2}, Landroidx/graphics/shapes/Cubic;->b()F

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    sub-float/2addr v5, v2

    .line 377
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    cmpl-float v2, v2, v8

    .line 382
    .line 383
    if-gtz v2, :cond_d

    .line 384
    .line 385
    add-int/lit8 v3, v3, 0x1

    .line 386
    .line 387
    move-object v2, v4

    .line 388
    goto :goto_6

    .line 389
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 390
    .line 391
    const-string v2, "RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics"

    .line 392
    .line 393
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    throw v1

    .line 397
    :cond_e
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/graphics/shapes/RoundedPolygon;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Landroidx/graphics/shapes/RoundedPolygon;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/graphics/shapes/RoundedPolygon;->a:Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[RoundedPolygon. Cubics = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/16 v7, 0x3f

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/graphics/shapes/RoundedPolygon;->d:Ljava/util/List;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->n(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " || Features = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Landroidx/graphics/shapes/RoundedPolygon;->a:Ljava/util/List;

    .line 29
    .line 30
    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->n(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " || Center = ("

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->b:F

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->c:F

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ")]"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
