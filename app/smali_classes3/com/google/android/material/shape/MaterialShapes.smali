.class public final Lcom/google/android/material/shape/MaterialShapes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;
    }
.end annotation


# static fields
.field public static final a:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final b:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final c:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final d:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final e:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final f:Landroidx/graphics/shapes/RoundedPolygon;

.field public static final g:Landroidx/graphics/shapes/RoundedPolygon;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Landroidx/graphics/shapes/CornerRounding;

    .line 2
    .line 3
    const v1, 0x3e19999a    # 0.15f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroidx/graphics/shapes/CornerRounding;

    .line 11
    .line 12
    const v3, 0x3e4ccccd    # 0.2f

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v3, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Landroidx/graphics/shapes/CornerRounding;

    .line 19
    .line 20
    const v4, 0x3e99999a    # 0.3f

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v4, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 27
    .line 28
    const/high16 v5, 0x3f000000    # 0.5f

    .line 29
    .line 30
    invoke-direct {v4, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Landroidx/graphics/shapes/CornerRounding;

    .line 34
    .line 35
    const/high16 v7, 0x3f800000    # 1.0f

    .line 36
    .line 37
    invoke-direct {v6, v7, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 38
    .line 39
    .line 40
    sget-object v8, Landroidx/graphics/shapes/RoundedPolygon;->e:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    .line 41
    .line 42
    const-string v9, "<this>"

    .line 43
    .line 44
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/16 v10, 0xe

    .line 48
    .line 49
    invoke-static {v10}, Landroidx/graphics/shapes/ShapesKt;->a(I)Landroidx/graphics/shapes/RoundedPolygon;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-static {v10}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 54
    .line 55
    .line 56
    const/4 v10, 0x0

    .line 57
    invoke-static {v7, v3, v10}, Landroidx/graphics/shapes/ShapesKt;->b(FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 62
    .line 63
    .line 64
    new-instance v3, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v11, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 70
    .line 71
    new-instance v12, Landroid/graphics/PointF;

    .line 72
    .line 73
    const v13, 0x3f7851ec    # 0.97f

    .line 74
    .line 75
    .line 76
    const v14, 0x3f6d0e56    # 0.926f

    .line 77
    .line 78
    .line 79
    invoke-direct {v12, v14, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 80
    .line 81
    .line 82
    new-instance v13, Landroidx/graphics/shapes/CornerRounding;

    .line 83
    .line 84
    const v15, 0x3e418937    # 0.189f

    .line 85
    .line 86
    .line 87
    const v14, 0x3f4f9db2    # 0.811f

    .line 88
    .line 89
    .line 90
    invoke-direct {v13, v15, v14}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v11, v12, v13}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    new-instance v11, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 100
    .line 101
    new-instance v12, Landroid/graphics/PointF;

    .line 102
    .line 103
    const v13, -0x4353f7cf    # -0.021f

    .line 104
    .line 105
    .line 106
    const v14, 0x3f778d50    # 0.967f

    .line 107
    .line 108
    .line 109
    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 110
    .line 111
    .line 112
    new-instance v13, Landroidx/graphics/shapes/CornerRounding;

    .line 113
    .line 114
    const v14, 0x3d6978d5    # 0.057f

    .line 115
    .line 116
    .line 117
    const v15, 0x3e3f7cee    # 0.187f

    .line 118
    .line 119
    .line 120
    invoke-direct {v13, v15, v14}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v11, v12, v13}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    const/4 v11, 0x2

    .line 130
    const/4 v12, 0x0

    .line 131
    invoke-static {v11, v3, v12}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 136
    .line 137
    .line 138
    sget-object v3, Landroidx/graphics/shapes/CornerRounding;->c:Landroidx/graphics/shapes/CornerRounding;

    .line 139
    .line 140
    const/4 v13, 0x4

    .line 141
    new-array v14, v13, [Landroidx/graphics/shapes/CornerRounding;

    .line 142
    .line 143
    aput-object v6, v14, v12

    .line 144
    .line 145
    const/4 v15, 0x1

    .line 146
    aput-object v6, v14, v15

    .line 147
    .line 148
    aput-object v1, v14, v11

    .line 149
    .line 150
    const/4 v10, 0x3

    .line 151
    aput-object v1, v14, v10

    .line 152
    .line 153
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    invoke-static {v13, v7, v3, v14}, Landroidx/graphics/shapes/RoundedPolygonKt;->a(IFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    const/high16 v17, -0x3cf90000    # -135.0f

    .line 162
    .line 163
    move/from16 v18, v10

    .line 164
    .line 165
    invoke-static/range {v17 .. v17}, Lcom/google/android/material/shape/MaterialShapes;->a(F)Landroid/graphics/Matrix;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-static {v14, v10}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-static {v10}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 174
    .line 175
    .line 176
    new-instance v10, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v14, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 182
    .line 183
    move/from16 v17, v11

    .line 184
    .line 185
    new-instance v11, Landroid/graphics/PointF;

    .line 186
    .line 187
    invoke-direct {v11, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 188
    .line 189
    .line 190
    new-instance v13, Landroidx/graphics/shapes/CornerRounding;

    .line 191
    .line 192
    const v5, 0x3ed58106    # 0.417f

    .line 193
    .line 194
    .line 195
    const v12, 0x3e178d50    # 0.148f

    .line 196
    .line 197
    .line 198
    invoke-direct {v13, v12, v5}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 199
    .line 200
    .line 201
    invoke-direct {v14, v11, v13}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 208
    .line 209
    new-instance v11, Landroid/graphics/PointF;

    .line 210
    .line 211
    invoke-direct {v11, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 212
    .line 213
    .line 214
    new-instance v13, Landroidx/graphics/shapes/CornerRounding;

    .line 215
    .line 216
    const v14, 0x3e1a9fbe    # 0.151f

    .line 217
    .line 218
    .line 219
    invoke-direct {v13, v14, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 220
    .line 221
    .line 222
    invoke-direct {v5, v11, v13}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 229
    .line 230
    new-instance v11, Landroid/graphics/PointF;

    .line 231
    .line 232
    invoke-direct {v11, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 233
    .line 234
    .line 235
    new-instance v13, Landroidx/graphics/shapes/CornerRounding;

    .line 236
    .line 237
    invoke-direct {v13, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 238
    .line 239
    .line 240
    invoke-direct {v5, v11, v13}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 247
    .line 248
    new-instance v11, Landroid/graphics/PointF;

    .line 249
    .line 250
    const v13, 0x3f7a5e35    # 0.978f

    .line 251
    .line 252
    .line 253
    const v12, 0x3ca3d70a    # 0.02f

    .line 254
    .line 255
    .line 256
    invoke-direct {v11, v13, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 257
    .line 258
    .line 259
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 260
    .line 261
    const v13, 0x3f4d9168    # 0.803f

    .line 262
    .line 263
    .line 264
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 265
    .line 266
    .line 267
    invoke-direct {v5, v11, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    const/4 v5, 0x0

    .line 274
    invoke-static {v15, v10, v5}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-static {v10}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 279
    .line 280
    .line 281
    new-instance v5, Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .line 285
    .line 286
    new-instance v10, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 287
    .line 288
    new-instance v11, Landroid/graphics/PointF;

    .line 289
    .line 290
    const v12, 0x3f645a1d    # 0.892f

    .line 291
    .line 292
    .line 293
    const/high16 v13, 0x3f000000    # 0.5f

    .line 294
    .line 295
    invoke-direct {v11, v13, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 296
    .line 297
    .line 298
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 299
    .line 300
    const v13, 0x3ea04189    # 0.313f

    .line 301
    .line 302
    .line 303
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 304
    .line 305
    .line 306
    invoke-direct {v10, v11, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    new-instance v10, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 313
    .line 314
    new-instance v11, Landroid/graphics/PointF;

    .line 315
    .line 316
    const v12, -0x41a2d0e5    # -0.216f

    .line 317
    .line 318
    .line 319
    const v13, 0x3f866666    # 1.05f

    .line 320
    .line 321
    .line 322
    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 323
    .line 324
    .line 325
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 326
    .line 327
    const v13, 0x3e53f7cf    # 0.207f

    .line 328
    .line 329
    .line 330
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 331
    .line 332
    .line 333
    invoke-direct {v10, v11, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    new-instance v10, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 340
    .line 341
    new-instance v11, Landroid/graphics/PointF;

    .line 342
    .line 343
    const v12, -0x41dc28f6    # -0.16f

    .line 344
    .line 345
    .line 346
    const v13, 0x3eff7cee    # 0.499f

    .line 347
    .line 348
    .line 349
    invoke-direct {v11, v13, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 350
    .line 351
    .line 352
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 353
    .line 354
    const v13, 0x3e5c28f6    # 0.215f

    .line 355
    .line 356
    .line 357
    invoke-direct {v12, v13, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 358
    .line 359
    .line 360
    invoke-direct {v10, v11, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    new-instance v10, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 367
    .line 368
    new-instance v11, Landroid/graphics/PointF;

    .line 369
    .line 370
    const v12, 0x3f9ccccd    # 1.225f

    .line 371
    .line 372
    .line 373
    const v13, 0x3f87ae14    # 1.06f

    .line 374
    .line 375
    .line 376
    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 377
    .line 378
    .line 379
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 380
    .line 381
    const v13, 0x3e581062    # 0.211f

    .line 382
    .line 383
    .line 384
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 385
    .line 386
    .line 387
    invoke-direct {v10, v11, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    const/4 v10, 0x0

    .line 394
    invoke-static {v15, v5, v10}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    invoke-static {v5}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 399
    .line 400
    .line 401
    const/4 v5, 0x4

    .line 402
    new-array v11, v5, [Landroidx/graphics/shapes/CornerRounding;

    .line 403
    .line 404
    aput-object v1, v11, v10

    .line 405
    .line 406
    aput-object v1, v11, v15

    .line 407
    .line 408
    aput-object v6, v11, v17

    .line 409
    .line 410
    aput-object v6, v11, v18

    .line 411
    .line 412
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    const v10, 0x3fcccccd    # 1.6f

    .line 417
    .line 418
    .line 419
    invoke-static {v10, v3, v5}, Landroidx/graphics/shapes/ShapesKt;->b(FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-static {v3}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 424
    .line 425
    .line 426
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    const/16 v3, 0xf

    .line 430
    .line 431
    invoke-static {v3}, Landroidx/graphics/shapes/ShapesKt;->a(I)Landroidx/graphics/shapes/RoundedPolygon;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    new-instance v8, Landroid/graphics/Matrix;

    .line 436
    .line 437
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 438
    .line 439
    .line 440
    const v9, 0x3f23d70a    # 0.64f

    .line 441
    .line 442
    .line 443
    invoke-virtual {v8, v7, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 444
    .line 445
    .line 446
    invoke-static {v5, v8}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    const/high16 v8, -0x3dcc0000    # -45.0f

    .line 451
    .line 452
    invoke-static {v8}, Lcom/google/android/material/shape/MaterialShapes;->a(F)Landroid/graphics/Matrix;

    .line 453
    .line 454
    .line 455
    move-result-object v8

    .line 456
    invoke-static {v5, v8}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    invoke-static {v5}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    sput-object v5, Lcom/google/android/material/shape/MaterialShapes;->a:Landroidx/graphics/shapes/RoundedPolygon;

    .line 465
    .line 466
    new-instance v5, Ljava/util/ArrayList;

    .line 467
    .line 468
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .line 470
    .line 471
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 472
    .line 473
    new-instance v9, Landroid/graphics/PointF;

    .line 474
    .line 475
    const v10, 0x3f760419    # 0.961f

    .line 476
    .line 477
    .line 478
    const v11, 0x3d1fbe77    # 0.039f

    .line 479
    .line 480
    .line 481
    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 482
    .line 483
    .line 484
    new-instance v10, Landroidx/graphics/shapes/CornerRounding;

    .line 485
    .line 486
    const v11, 0x3eda1cac    # 0.426f

    .line 487
    .line 488
    .line 489
    invoke-direct {v10, v11, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 490
    .line 491
    .line 492
    invoke-direct {v8, v9, v10}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 499
    .line 500
    new-instance v9, Landroid/graphics/PointF;

    .line 501
    .line 502
    const v10, 0x3f8020c5    # 1.001f

    .line 503
    .line 504
    .line 505
    const v12, 0x3edb22d1    # 0.428f

    .line 506
    .line 507
    .line 508
    invoke-direct {v9, v10, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 509
    .line 510
    .line 511
    invoke-direct {v8, v9}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 518
    .line 519
    new-instance v9, Landroid/graphics/PointF;

    .line 520
    .line 521
    const v10, 0x3f1be76d    # 0.609f

    .line 522
    .line 523
    .line 524
    invoke-direct {v9, v7, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 525
    .line 526
    .line 527
    invoke-direct {v8, v9, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move/from16 v8, v17

    .line 534
    .line 535
    invoke-static {v8, v5, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-static {v5}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    sput-object v5, Lcom/google/android/material/shape/MaterialShapes;->b:Landroidx/graphics/shapes/RoundedPolygon;

    .line 544
    .line 545
    const-string v5, "rounding"

    .line 546
    .line 547
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    move/from16 v8, v18

    .line 551
    .line 552
    const/4 v5, 0x0

    .line 553
    invoke-static {v8, v7, v1, v5}, Landroidx/graphics/shapes/RoundedPolygonKt;->a(IFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 558
    .line 559
    invoke-static {v5}, Lcom/google/android/material/shape/MaterialShapes;->a(F)Landroid/graphics/Matrix;

    .line 560
    .line 561
    .line 562
    move-result-object v8

    .line 563
    invoke-static {v1, v8}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 568
    .line 569
    .line 570
    new-instance v1, Ljava/util/ArrayList;

    .line 571
    .line 572
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .line 574
    .line 575
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 576
    .line 577
    new-instance v9, Landroid/graphics/PointF;

    .line 578
    .line 579
    const v10, 0x3f8c49ba    # 1.096f

    .line 580
    .line 581
    .line 582
    const/high16 v13, 0x3f000000    # 0.5f

    .line 583
    .line 584
    invoke-direct {v9, v13, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 585
    .line 586
    .line 587
    new-instance v10, Landroidx/graphics/shapes/CornerRounding;

    .line 588
    .line 589
    const v12, 0x3f0624dd    # 0.524f

    .line 590
    .line 591
    .line 592
    invoke-direct {v10, v14, v12}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 593
    .line 594
    .line 595
    invoke-direct {v8, v9, v10}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 602
    .line 603
    new-instance v9, Landroid/graphics/PointF;

    .line 604
    .line 605
    const v10, 0x3d23d70a    # 0.04f

    .line 606
    .line 607
    .line 608
    invoke-direct {v9, v10, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 609
    .line 610
    .line 611
    new-instance v10, Landroidx/graphics/shapes/CornerRounding;

    .line 612
    .line 613
    const v12, 0x3e22d0e5    # 0.159f

    .line 614
    .line 615
    .line 616
    invoke-direct {v10, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 617
    .line 618
    .line 619
    invoke-direct {v8, v9, v10}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    const/4 v8, 0x2

    .line 626
    const/4 v10, 0x0

    .line 627
    invoke-static {v8, v1, v10}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 632
    .line 633
    .line 634
    new-instance v1, Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .line 638
    .line 639
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 640
    .line 641
    new-instance v9, Landroid/graphics/PointF;

    .line 642
    .line 643
    const v10, 0x3e2f1aa0    # 0.171f

    .line 644
    .line 645
    .line 646
    const v13, 0x3f574bc7    # 0.841f

    .line 647
    .line 648
    .line 649
    invoke-direct {v9, v10, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 650
    .line 651
    .line 652
    new-instance v10, Landroidx/graphics/shapes/CornerRounding;

    .line 653
    .line 654
    invoke-direct {v10, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 655
    .line 656
    .line 657
    invoke-direct {v8, v9, v10}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 664
    .line 665
    new-instance v9, Landroid/graphics/PointF;

    .line 666
    .line 667
    const v10, -0x435c28f6    # -0.02f

    .line 668
    .line 669
    .line 670
    const/high16 v13, 0x3f000000    # 0.5f

    .line 671
    .line 672
    invoke-direct {v9, v10, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 673
    .line 674
    .line 675
    new-instance v10, Landroidx/graphics/shapes/CornerRounding;

    .line 676
    .line 677
    const v13, 0x3e0f5c29    # 0.14f

    .line 678
    .line 679
    .line 680
    invoke-direct {v10, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 681
    .line 682
    .line 683
    invoke-direct {v8, v9, v10}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 690
    .line 691
    new-instance v9, Landroid/graphics/PointF;

    .line 692
    .line 693
    const v10, 0x3e2e147b    # 0.17f

    .line 694
    .line 695
    .line 696
    invoke-direct {v9, v10, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 697
    .line 698
    .line 699
    new-instance v13, Landroidx/graphics/shapes/CornerRounding;

    .line 700
    .line 701
    invoke-direct {v13, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 702
    .line 703
    .line 704
    invoke-direct {v8, v9, v13}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    const/4 v8, 0x2

    .line 711
    const/4 v9, 0x0

    .line 712
    invoke-static {v8, v1, v9}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 713
    .line 714
    .line 715
    move-result-object v1

    .line 716
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 717
    .line 718
    .line 719
    new-instance v1, Ljava/util/ArrayList;

    .line 720
    .line 721
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .line 723
    .line 724
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 725
    .line 726
    new-instance v9, Landroid/graphics/PointF;

    .line 727
    .line 728
    const v12, -0x43ec8b44    # -0.009f

    .line 729
    .line 730
    .line 731
    const/high16 v13, 0x3f000000    # 0.5f

    .line 732
    .line 733
    invoke-direct {v9, v13, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 734
    .line 735
    .line 736
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 737
    .line 738
    const v13, 0x3e3020c5    # 0.172f

    .line 739
    .line 740
    .line 741
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 742
    .line 743
    .line 744
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    const/4 v8, 0x5

    .line 751
    const/4 v9, 0x0

    .line 752
    invoke-static {v8, v1, v9}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    sput-object v1, Lcom/google/android/material/shape/MaterialShapes;->c:Landroidx/graphics/shapes/RoundedPolygon;

    .line 761
    .line 762
    new-instance v1, Ljava/util/ArrayList;

    .line 763
    .line 764
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .line 766
    .line 767
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 768
    .line 769
    new-instance v9, Landroid/graphics/PointF;

    .line 770
    .line 771
    const v12, 0x3f82f1aa    # 1.023f

    .line 772
    .line 773
    .line 774
    const v13, 0x3eff7cee    # 0.499f

    .line 775
    .line 776
    .line 777
    invoke-direct {v9, v13, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 778
    .line 779
    .line 780
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 781
    .line 782
    const v13, 0x3e76c8b4    # 0.241f

    .line 783
    .line 784
    .line 785
    const v14, 0x3f472b02    # 0.778f

    .line 786
    .line 787
    .line 788
    invoke-direct {v12, v13, v14}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 789
    .line 790
    .line 791
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 798
    .line 799
    new-instance v9, Landroid/graphics/PointF;

    .line 800
    .line 801
    const v12, -0x445c28f6    # -0.005f

    .line 802
    .line 803
    .line 804
    const v13, 0x3f4ac083    # 0.792f

    .line 805
    .line 806
    .line 807
    invoke-direct {v9, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 808
    .line 809
    .line 810
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 811
    .line 812
    const v14, 0x3e54fdf4    # 0.208f

    .line 813
    .line 814
    .line 815
    invoke-direct {v12, v14, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 816
    .line 817
    .line 818
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 825
    .line 826
    new-instance v9, Landroid/graphics/PointF;

    .line 827
    .line 828
    const v12, 0x3d958106    # 0.073f

    .line 829
    .line 830
    .line 831
    const v14, 0x3e841893    # 0.258f

    .line 832
    .line 833
    .line 834
    invoke-direct {v9, v12, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 835
    .line 836
    .line 837
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 838
    .line 839
    move/from16 v16, v5

    .line 840
    .line 841
    const v5, 0x3e6978d5    # 0.228f

    .line 842
    .line 843
    .line 844
    invoke-direct {v12, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 845
    .line 846
    .line 847
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 854
    .line 855
    new-instance v8, Landroid/graphics/PointF;

    .line 856
    .line 857
    const v9, 0x3eddb22d    # 0.433f

    .line 858
    .line 859
    .line 860
    const/high16 v12, -0x80000000

    .line 861
    .line 862
    invoke-direct {v8, v9, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 863
    .line 864
    .line 865
    new-instance v9, Landroidx/graphics/shapes/CornerRounding;

    .line 866
    .line 867
    const v12, 0x3efb645a    # 0.491f

    .line 868
    .line 869
    .line 870
    invoke-direct {v9, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 871
    .line 872
    .line 873
    invoke-direct {v5, v8, v9}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    .line 878
    .line 879
    invoke-static {v15, v1, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    invoke-static/range {v16 .. v16}, Lcom/google/android/material/shape/MaterialShapes;->a(F)Landroid/graphics/Matrix;

    .line 884
    .line 885
    .line 886
    move-result-object v5

    .line 887
    invoke-static {v1, v5}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    invoke-static {v1}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 892
    .line 893
    .line 894
    const/16 v1, 0x8

    .line 895
    .line 896
    const v5, 0x3f4ccccd    # 0.8f

    .line 897
    .line 898
    .line 899
    invoke-static {v1, v5, v0}, Landroidx/graphics/shapes/ShapesKt;->c(IFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 904
    .line 905
    .line 906
    move-result-object v0

    .line 907
    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->d:Landroidx/graphics/shapes/RoundedPolygon;

    .line 908
    .line 909
    new-instance v0, Ljava/util/ArrayList;

    .line 910
    .line 911
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 912
    .line 913
    .line 914
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 915
    .line 916
    new-instance v9, Landroid/graphics/PointF;

    .line 917
    .line 918
    const v12, 0x3f8a3d71    # 1.08f

    .line 919
    .line 920
    .line 921
    const/high16 v13, 0x3f000000    # 0.5f

    .line 922
    .line 923
    invoke-direct {v9, v13, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 924
    .line 925
    .line 926
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 927
    .line 928
    const v13, 0x3dae147b    # 0.085f

    .line 929
    .line 930
    .line 931
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 932
    .line 933
    .line 934
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 935
    .line 936
    .line 937
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 941
    .line 942
    new-instance v9, Landroid/graphics/PointF;

    .line 943
    .line 944
    const v12, 0x3eb74bc7    # 0.358f

    .line 945
    .line 946
    .line 947
    const v10, 0x3f57ced9    # 0.843f

    .line 948
    .line 949
    .line 950
    invoke-direct {v9, v12, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 951
    .line 952
    .line 953
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 954
    .line 955
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 956
    .line 957
    .line 958
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    const/4 v9, 0x0

    .line 965
    invoke-static {v1, v0, v9}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 970
    .line 971
    .line 972
    new-instance v0, Ljava/util/ArrayList;

    .line 973
    .line 974
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 975
    .line 976
    .line 977
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 978
    .line 979
    new-instance v9, Landroid/graphics/PointF;

    .line 980
    .line 981
    const v12, 0x3f9e5604    # 1.237f

    .line 982
    .line 983
    .line 984
    const v13, 0x3f9e353f    # 1.236f

    .line 985
    .line 986
    .line 987
    invoke-direct {v9, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 988
    .line 989
    .line 990
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 991
    .line 992
    invoke-direct {v12, v14, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 993
    .line 994
    .line 995
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 996
    .line 997
    .line 998
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    .line 1000
    .line 1001
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1002
    .line 1003
    new-instance v9, Landroid/graphics/PointF;

    .line 1004
    .line 1005
    const v12, 0x3f6b020c    # 0.918f

    .line 1006
    .line 1007
    .line 1008
    const/high16 v13, 0x3f000000    # 0.5f

    .line 1009
    .line 1010
    invoke-direct {v9, v13, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1011
    .line 1012
    .line 1013
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 1014
    .line 1015
    const v13, 0x3e6e978d    # 0.233f

    .line 1016
    .line 1017
    .line 1018
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1019
    .line 1020
    .line 1021
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    .line 1026
    .line 1027
    const/4 v8, 0x4

    .line 1028
    const/4 v9, 0x0

    .line 1029
    invoke-static {v8, v0, v9}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->e:Landroidx/graphics/shapes/RoundedPolygon;

    .line 1038
    .line 1039
    new-instance v0, Ljava/util/ArrayList;

    .line 1040
    .line 1041
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1042
    .line 1043
    .line 1044
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1045
    .line 1046
    new-instance v9, Landroid/graphics/PointF;

    .line 1047
    .line 1048
    const v12, 0x3f391687    # 0.723f

    .line 1049
    .line 1050
    .line 1051
    const v13, 0x3f624dd3    # 0.884f

    .line 1052
    .line 1053
    .line 1054
    invoke-direct {v9, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1055
    .line 1056
    .line 1057
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 1058
    .line 1059
    const v13, 0x3ec9ba5e    # 0.394f

    .line 1060
    .line 1061
    .line 1062
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1063
    .line 1064
    .line 1065
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    .line 1070
    .line 1071
    new-instance v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1072
    .line 1073
    new-instance v9, Landroid/graphics/PointF;

    .line 1074
    .line 1075
    const v12, 0x3f8cac08    # 1.099f

    .line 1076
    .line 1077
    .line 1078
    const/high16 v13, 0x3f000000    # 0.5f

    .line 1079
    .line 1080
    invoke-direct {v9, v13, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1081
    .line 1082
    .line 1083
    new-instance v12, Landroidx/graphics/shapes/CornerRounding;

    .line 1084
    .line 1085
    const v13, 0x3ecbc6a8    # 0.398f

    .line 1086
    .line 1087
    .line 1088
    invoke-direct {v12, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1089
    .line 1090
    .line 1091
    invoke-direct {v8, v9, v12}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    .line 1096
    .line 1097
    const/4 v8, 0x6

    .line 1098
    const/4 v9, 0x0

    .line 1099
    invoke-static {v8, v0, v9}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1104
    .line 1105
    .line 1106
    const/4 v0, 0x7

    .line 1107
    const/high16 v8, 0x3f400000    # 0.75f

    .line 1108
    .line 1109
    invoke-static {v0, v8, v4}, Landroidx/graphics/shapes/ShapesKt;->c(IFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    invoke-static/range {v16 .. v16}, Lcom/google/android/material/shape/MaterialShapes;->a(F)Landroid/graphics/Matrix;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v8

    .line 1117
    invoke-static {v0, v8}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1122
    .line 1123
    .line 1124
    const/16 v0, 0x9

    .line 1125
    .line 1126
    invoke-static {v0, v5, v4}, Landroidx/graphics/shapes/ShapesKt;->c(IFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    invoke-static/range {v16 .. v16}, Lcom/google/android/material/shape/MaterialShapes;->a(F)Landroid/graphics/Matrix;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v8

    .line 1134
    invoke-static {v0, v8}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v0

    .line 1138
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v0

    .line 1142
    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->f:Landroidx/graphics/shapes/RoundedPolygon;

    .line 1143
    .line 1144
    const/16 v0, 0xc

    .line 1145
    .line 1146
    invoke-static {v0, v5, v4}, Landroidx/graphics/shapes/ShapesKt;->c(IFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v4

    .line 1150
    invoke-static/range {v16 .. v16}, Lcom/google/android/material/shape/MaterialShapes;->a(F)Landroid/graphics/Matrix;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v5

    .line 1154
    invoke-static {v4, v5}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v4

    .line 1158
    invoke-static {v4}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1159
    .line 1160
    .line 1161
    new-instance v4, Ljava/util/ArrayList;

    .line 1162
    .line 1163
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .line 1165
    .line 1166
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1167
    .line 1168
    new-instance v8, Landroid/graphics/PointF;

    .line 1169
    .line 1170
    const/high16 v13, 0x3f000000    # 0.5f

    .line 1171
    .line 1172
    invoke-direct {v8, v13, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1173
    .line 1174
    .line 1175
    invoke-direct {v5, v8, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    .line 1180
    .line 1181
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1182
    .line 1183
    new-instance v8, Landroid/graphics/PointF;

    .line 1184
    .line 1185
    invoke-direct {v8, v7, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1186
    .line 1187
    .line 1188
    invoke-direct {v5, v8, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1195
    .line 1196
    new-instance v8, Landroid/graphics/PointF;

    .line 1197
    .line 1198
    const v9, 0x3f91eb85    # 1.14f

    .line 1199
    .line 1200
    .line 1201
    invoke-direct {v8, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1202
    .line 1203
    .line 1204
    new-instance v9, Landroidx/graphics/shapes/CornerRounding;

    .line 1205
    .line 1206
    const v12, 0x3e820c4a    # 0.254f

    .line 1207
    .line 1208
    .line 1209
    const v13, 0x3dd91687    # 0.106f

    .line 1210
    .line 1211
    .line 1212
    invoke-direct {v9, v12, v13}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1213
    .line 1214
    .line 1215
    invoke-direct {v5, v8, v9}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    .line 1220
    .line 1221
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1222
    .line 1223
    new-instance v8, Landroid/graphics/PointF;

    .line 1224
    .line 1225
    const v9, 0x3f133333    # 0.575f

    .line 1226
    .line 1227
    .line 1228
    const v12, 0x3f67ef9e    # 0.906f

    .line 1229
    .line 1230
    .line 1231
    invoke-direct {v8, v9, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1232
    .line 1233
    .line 1234
    new-instance v9, Landroidx/graphics/shapes/CornerRounding;

    .line 1235
    .line 1236
    const v12, 0x3e818937    # 0.253f

    .line 1237
    .line 1238
    .line 1239
    invoke-direct {v9, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1240
    .line 1241
    .line 1242
    invoke-direct {v5, v8, v9}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    .line 1247
    .line 1248
    invoke-static {v15, v4, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v4

    .line 1252
    invoke-static {v4}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1253
    .line 1254
    .line 1255
    new-instance v4, Ljava/util/ArrayList;

    .line 1256
    .line 1257
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1258
    .line 1259
    .line 1260
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1261
    .line 1262
    new-instance v8, Landroid/graphics/PointF;

    .line 1263
    .line 1264
    const v9, 0x3d978d50    # 0.074f

    .line 1265
    .line 1266
    .line 1267
    const/high16 v13, 0x3f000000    # 0.5f

    .line 1268
    .line 1269
    invoke-direct {v8, v13, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1270
    .line 1271
    .line 1272
    invoke-direct {v5, v8}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    .line 1277
    .line 1278
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1279
    .line 1280
    new-instance v8, Landroid/graphics/PointF;

    .line 1281
    .line 1282
    const v9, 0x3f39999a    # 0.725f

    .line 1283
    .line 1284
    .line 1285
    const v12, -0x42353f7d    # -0.099f

    .line 1286
    .line 1287
    .line 1288
    invoke-direct {v8, v9, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1289
    .line 1290
    .line 1291
    new-instance v9, Landroidx/graphics/shapes/CornerRounding;

    .line 1292
    .line 1293
    const v12, 0x3ef3b646    # 0.476f

    .line 1294
    .line 1295
    .line 1296
    invoke-direct {v9, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1297
    .line 1298
    .line 1299
    invoke-direct {v5, v8, v9}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    .line 1304
    .line 1305
    const/4 v5, 0x4

    .line 1306
    invoke-static {v5, v4, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v4

    .line 1310
    invoke-static {v4}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1311
    .line 1312
    .line 1313
    new-instance v4, Ljava/util/ArrayList;

    .line 1314
    .line 1315
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    .line 1317
    .line 1318
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1319
    .line 1320
    new-instance v8, Landroid/graphics/PointF;

    .line 1321
    .line 1322
    const v9, 0x3d1374bc    # 0.036f

    .line 1323
    .line 1324
    .line 1325
    const/high16 v13, 0x3f000000    # 0.5f

    .line 1326
    .line 1327
    invoke-direct {v8, v13, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1328
    .line 1329
    .line 1330
    invoke-direct {v5, v8}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1337
    .line 1338
    new-instance v8, Landroid/graphics/PointF;

    .line 1339
    .line 1340
    const v9, 0x3f420c4a    # 0.758f

    .line 1341
    .line 1342
    .line 1343
    const v12, -0x423126e9    # -0.101f

    .line 1344
    .line 1345
    .line 1346
    invoke-direct {v8, v9, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1347
    .line 1348
    .line 1349
    new-instance v9, Landroidx/graphics/shapes/CornerRounding;

    .line 1350
    .line 1351
    const v12, 0x3e560419    # 0.209f

    .line 1352
    .line 1353
    .line 1354
    invoke-direct {v9, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1355
    .line 1356
    .line 1357
    invoke-direct {v5, v8, v9}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    .line 1362
    .line 1363
    const/4 v9, 0x0

    .line 1364
    invoke-static {v1, v4, v9}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v4

    .line 1368
    invoke-static {v4}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1369
    .line 1370
    .line 1371
    new-instance v4, Ljava/util/ArrayList;

    .line 1372
    .line 1373
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .line 1375
    .line 1376
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1377
    .line 1378
    new-instance v8, Landroid/graphics/PointF;

    .line 1379
    .line 1380
    const v9, -0x443b645a    # -0.006f

    .line 1381
    .line 1382
    .line 1383
    const/high16 v13, 0x3f000000    # 0.5f

    .line 1384
    .line 1385
    invoke-direct {v8, v13, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1386
    .line 1387
    .line 1388
    new-instance v9, Landroidx/graphics/shapes/CornerRounding;

    .line 1389
    .line 1390
    const v12, 0x3bc49ba6    # 0.006f

    .line 1391
    .line 1392
    .line 1393
    invoke-direct {v9, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1394
    .line 1395
    .line 1396
    invoke-direct {v5, v8, v9}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    .line 1401
    .line 1402
    new-instance v5, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1403
    .line 1404
    new-instance v8, Landroid/graphics/PointF;

    .line 1405
    .line 1406
    const v9, 0x3f178d50    # 0.592f

    .line 1407
    .line 1408
    .line 1409
    const v13, 0x3e21cac1    # 0.158f

    .line 1410
    .line 1411
    .line 1412
    invoke-direct {v8, v9, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1413
    .line 1414
    .line 1415
    new-instance v9, Landroidx/graphics/shapes/CornerRounding;

    .line 1416
    .line 1417
    invoke-direct {v9, v12, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1418
    .line 1419
    .line 1420
    invoke-direct {v5, v8, v9}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    .line 1425
    .line 1426
    const/4 v9, 0x0

    .line 1427
    invoke-static {v0, v4, v9}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v0

    .line 1431
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1432
    .line 1433
    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    .line 1435
    .line 1436
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    .line 1438
    .line 1439
    new-instance v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1440
    .line 1441
    new-instance v5, Landroid/graphics/PointF;

    .line 1442
    .line 1443
    const v8, 0x3e45a1cb    # 0.193f

    .line 1444
    .line 1445
    .line 1446
    const v9, 0x3e8dd2f2    # 0.277f

    .line 1447
    .line 1448
    .line 1449
    invoke-direct {v5, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1450
    .line 1451
    .line 1452
    new-instance v8, Landroidx/graphics/shapes/CornerRounding;

    .line 1453
    .line 1454
    const v9, 0x3d591687    # 0.053f

    .line 1455
    .line 1456
    .line 1457
    invoke-direct {v8, v9, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1458
    .line 1459
    .line 1460
    invoke-direct {v4, v5, v8}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    .line 1465
    .line 1466
    new-instance v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1467
    .line 1468
    new-instance v5, Landroid/graphics/PointF;

    .line 1469
    .line 1470
    const v8, 0x3e343958    # 0.176f

    .line 1471
    .line 1472
    .line 1473
    const v12, 0x3d6147ae    # 0.055f

    .line 1474
    .line 1475
    .line 1476
    invoke-direct {v5, v8, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1477
    .line 1478
    .line 1479
    new-instance v8, Landroidx/graphics/shapes/CornerRounding;

    .line 1480
    .line 1481
    invoke-direct {v8, v9, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1482
    .line 1483
    .line 1484
    invoke-direct {v4, v5, v8}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    const/16 v4, 0xa

    .line 1491
    .line 1492
    const/4 v5, 0x0

    .line 1493
    invoke-static {v4, v0, v5}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v0

    .line 1497
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v0

    .line 1501
    sput-object v0, Lcom/google/android/material/shape/MaterialShapes;->g:Landroidx/graphics/shapes/RoundedPolygon;

    .line 1502
    .line 1503
    new-instance v0, Ljava/util/ArrayList;

    .line 1504
    .line 1505
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .line 1507
    .line 1508
    new-instance v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1509
    .line 1510
    new-instance v5, Landroid/graphics/PointF;

    .line 1511
    .line 1512
    const v8, 0x3ee9fbe7    # 0.457f

    .line 1513
    .line 1514
    .line 1515
    const v12, 0x3e978d50    # 0.296f

    .line 1516
    .line 1517
    .line 1518
    invoke-direct {v5, v8, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1519
    .line 1520
    .line 1521
    new-instance v8, Landroidx/graphics/shapes/CornerRounding;

    .line 1522
    .line 1523
    const v13, 0x3be56042    # 0.007f

    .line 1524
    .line 1525
    .line 1526
    invoke-direct {v8, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1527
    .line 1528
    .line 1529
    invoke-direct {v4, v5, v8}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    .line 1534
    .line 1535
    new-instance v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1536
    .line 1537
    new-instance v5, Landroid/graphics/PointF;

    .line 1538
    .line 1539
    const v8, -0x42af1aa0    # -0.051f

    .line 1540
    .line 1541
    .line 1542
    const/high16 v14, 0x3f000000    # 0.5f

    .line 1543
    .line 1544
    invoke-direct {v5, v14, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1545
    .line 1546
    .line 1547
    new-instance v8, Landroidx/graphics/shapes/CornerRounding;

    .line 1548
    .line 1549
    invoke-direct {v8, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1550
    .line 1551
    .line 1552
    invoke-direct {v4, v5, v8}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1553
    .line 1554
    .line 1555
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1556
    .line 1557
    .line 1558
    const/4 v5, 0x0

    .line 1559
    invoke-static {v3, v0, v5}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v0

    .line 1563
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1564
    .line 1565
    .line 1566
    new-instance v0, Ljava/util/ArrayList;

    .line 1567
    .line 1568
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1569
    .line 1570
    .line 1571
    new-instance v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1572
    .line 1573
    new-instance v4, Landroid/graphics/PointF;

    .line 1574
    .line 1575
    const v5, 0x3f3ba5e3    # 0.733f

    .line 1576
    .line 1577
    .line 1578
    const v8, 0x3ee872b0    # 0.454f

    .line 1579
    .line 1580
    .line 1581
    invoke-direct {v4, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1582
    .line 1583
    .line 1584
    invoke-direct {v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1588
    .line 1589
    .line 1590
    new-instance v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1591
    .line 1592
    new-instance v4, Landroid/graphics/PointF;

    .line 1593
    .line 1594
    const v5, 0x3f56c8b4    # 0.839f

    .line 1595
    .line 1596
    .line 1597
    const v8, 0x3edfbe77    # 0.437f

    .line 1598
    .line 1599
    .line 1600
    invoke-direct {v4, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1601
    .line 1602
    .line 1603
    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    .line 1604
    .line 1605
    const v13, 0x3f083127    # 0.532f

    .line 1606
    .line 1607
    .line 1608
    invoke-direct {v5, v13, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1609
    .line 1610
    .line 1611
    invoke-direct {v3, v4, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    .line 1616
    .line 1617
    new-instance v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1618
    .line 1619
    new-instance v4, Landroid/graphics/PointF;

    .line 1620
    .line 1621
    const v5, 0x3f72f1aa    # 0.949f

    .line 1622
    .line 1623
    .line 1624
    const v13, 0x3ee5e354    # 0.449f

    .line 1625
    .line 1626
    .line 1627
    invoke-direct {v4, v5, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1628
    .line 1629
    .line 1630
    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    .line 1631
    .line 1632
    const v13, 0x3ee0c49c    # 0.439f

    .line 1633
    .line 1634
    .line 1635
    invoke-direct {v5, v13, v7}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1636
    .line 1637
    .line 1638
    invoke-direct {v3, v4, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1639
    .line 1640
    .line 1641
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    .line 1643
    .line 1644
    new-instance v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1645
    .line 1646
    new-instance v4, Landroid/graphics/PointF;

    .line 1647
    .line 1648
    const v5, 0x3f7f7cee    # 0.998f

    .line 1649
    .line 1650
    .line 1651
    const v14, 0x3ef4bc6a    # 0.478f

    .line 1652
    .line 1653
    .line 1654
    invoke-direct {v4, v5, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1655
    .line 1656
    .line 1657
    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    .line 1658
    .line 1659
    const v14, 0x3e322d0e    # 0.174f

    .line 1660
    .line 1661
    .line 1662
    invoke-direct {v5, v14, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1663
    .line 1664
    .line 1665
    invoke-direct {v3, v4, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1666
    .line 1667
    .line 1668
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    .line 1670
    .line 1671
    const/16 v3, 0x10

    .line 1672
    .line 1673
    invoke-static {v3, v0, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v0

    .line 1677
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1678
    .line 1679
    .line 1680
    new-instance v0, Ljava/util/ArrayList;

    .line 1681
    .line 1682
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1683
    .line 1684
    .line 1685
    new-instance v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1686
    .line 1687
    new-instance v4, Landroid/graphics/PointF;

    .line 1688
    .line 1689
    const v5, 0x3ebd70a4    # 0.37f

    .line 1690
    .line 1691
    .line 1692
    const v14, 0x3e3f7cee    # 0.187f

    .line 1693
    .line 1694
    .line 1695
    invoke-direct {v4, v5, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1696
    .line 1697
    .line 1698
    invoke-direct {v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 1699
    .line 1700
    .line 1701
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    .line 1703
    .line 1704
    new-instance v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1705
    .line 1706
    new-instance v4, Landroid/graphics/PointF;

    .line 1707
    .line 1708
    const v5, 0x3ed4fdf4    # 0.416f

    .line 1709
    .line 1710
    .line 1711
    const v14, 0x3d48b439    # 0.049f

    .line 1712
    .line 1713
    .line 1714
    invoke-direct {v4, v5, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1715
    .line 1716
    .line 1717
    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    .line 1718
    .line 1719
    const v14, 0x3ec3126f    # 0.381f

    .line 1720
    .line 1721
    .line 1722
    invoke-direct {v5, v14, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1723
    .line 1724
    .line 1725
    invoke-direct {v3, v4, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1729
    .line 1730
    .line 1731
    new-instance v3, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1732
    .line 1733
    new-instance v4, Landroid/graphics/PointF;

    .line 1734
    .line 1735
    const v5, 0x3ef53f7d    # 0.479f

    .line 1736
    .line 1737
    .line 1738
    invoke-direct {v4, v5, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1739
    .line 1740
    .line 1741
    new-instance v5, Landroidx/graphics/shapes/CornerRounding;

    .line 1742
    .line 1743
    const v14, 0x3dc28f5c    # 0.095f

    .line 1744
    .line 1745
    .line 1746
    invoke-direct {v5, v14, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1747
    .line 1748
    .line 1749
    invoke-direct {v3, v4, v5}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    .line 1754
    .line 1755
    invoke-static {v1, v0, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v0

    .line 1759
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 1760
    .line 1761
    .line 1762
    new-instance v0, Ljava/util/ArrayList;

    .line 1763
    .line 1764
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    .line 1766
    .line 1767
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1768
    .line 1769
    new-instance v3, Landroid/graphics/PointF;

    .line 1770
    .line 1771
    const/high16 v14, 0x3f000000    # 0.5f

    .line 1772
    .line 1773
    invoke-direct {v3, v14, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1774
    .line 1775
    .line 1776
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 1777
    .line 1778
    .line 1779
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    .line 1781
    .line 1782
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1783
    .line 1784
    new-instance v3, Landroid/graphics/PointF;

    .line 1785
    .line 1786
    const v4, 0x3f0b851f    # 0.545f

    .line 1787
    .line 1788
    .line 1789
    const v5, -0x42dc28f6    # -0.04f

    .line 1790
    .line 1791
    .line 1792
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1793
    .line 1794
    .line 1795
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 1796
    .line 1797
    const v5, 0x3ecf5c29    # 0.405f

    .line 1798
    .line 1799
    .line 1800
    invoke-direct {v4, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1801
    .line 1802
    .line 1803
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    .line 1808
    .line 1809
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1810
    .line 1811
    new-instance v3, Landroid/graphics/PointF;

    .line 1812
    .line 1813
    const v4, 0x3f2b851f    # 0.67f

    .line 1814
    .line 1815
    .line 1816
    const v5, -0x42f0a3d7    # -0.035f

    .line 1817
    .line 1818
    .line 1819
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1820
    .line 1821
    .line 1822
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 1823
    .line 1824
    invoke-direct {v4, v11, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1825
    .line 1826
    .line 1827
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1828
    .line 1829
    .line 1830
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    .line 1832
    .line 1833
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1834
    .line 1835
    new-instance v3, Landroid/graphics/PointF;

    .line 1836
    .line 1837
    const v4, 0x3f378d50    # 0.717f

    .line 1838
    .line 1839
    .line 1840
    const v5, 0x3d872b02    # 0.066f

    .line 1841
    .line 1842
    .line 1843
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1844
    .line 1845
    .line 1846
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 1847
    .line 1848
    const v5, 0x3f12f1aa    # 0.574f

    .line 1849
    .line 1850
    .line 1851
    invoke-direct {v4, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1852
    .line 1853
    .line 1854
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1855
    .line 1856
    .line 1857
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1858
    .line 1859
    .line 1860
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1861
    .line 1862
    new-instance v3, Landroid/graphics/PointF;

    .line 1863
    .line 1864
    const v4, 0x3f38d4fe    # 0.722f

    .line 1865
    .line 1866
    .line 1867
    const v5, 0x3e03126f    # 0.128f

    .line 1868
    .line 1869
    .line 1870
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1871
    .line 1872
    .line 1873
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1877
    .line 1878
    .line 1879
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1880
    .line 1881
    new-instance v3, Landroid/graphics/PointF;

    .line 1882
    .line 1883
    const v4, 0x3f46e979    # 0.777f

    .line 1884
    .line 1885
    .line 1886
    const v5, 0x3b03126f    # 0.002f

    .line 1887
    .line 1888
    .line 1889
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1890
    .line 1891
    .line 1892
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 1893
    .line 1894
    const v5, 0x3eb851ec    # 0.36f

    .line 1895
    .line 1896
    .line 1897
    invoke-direct {v4, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1898
    .line 1899
    .line 1900
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1901
    .line 1902
    .line 1903
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1904
    .line 1905
    .line 1906
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1907
    .line 1908
    new-instance v3, Landroid/graphics/PointF;

    .line 1909
    .line 1910
    const v4, 0x3f69fbe7    # 0.914f

    .line 1911
    .line 1912
    .line 1913
    const v5, 0x3e189375    # 0.149f

    .line 1914
    .line 1915
    .line 1916
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1917
    .line 1918
    .line 1919
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 1920
    .line 1921
    const v5, 0x3f28f5c3    # 0.66f

    .line 1922
    .line 1923
    .line 1924
    invoke-direct {v4, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1925
    .line 1926
    .line 1927
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1928
    .line 1929
    .line 1930
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    .line 1932
    .line 1933
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1934
    .line 1935
    new-instance v3, Landroid/graphics/PointF;

    .line 1936
    .line 1937
    const v4, 0x3e93f7cf    # 0.289f

    .line 1938
    .line 1939
    .line 1940
    const v9, 0x3f6d0e56    # 0.926f

    .line 1941
    .line 1942
    .line 1943
    invoke-direct {v3, v9, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1944
    .line 1945
    .line 1946
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 1947
    .line 1948
    invoke-direct {v4, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1949
    .line 1950
    .line 1951
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1955
    .line 1956
    .line 1957
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1958
    .line 1959
    new-instance v3, Landroid/graphics/PointF;

    .line 1960
    .line 1961
    const v4, 0x3f618937    # 0.881f

    .line 1962
    .line 1963
    .line 1964
    const v5, 0x3eb126e9    # 0.346f

    .line 1965
    .line 1966
    .line 1967
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1968
    .line 1969
    .line 1970
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    .line 1975
    .line 1976
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 1977
    .line 1978
    new-instance v3, Landroid/graphics/PointF;

    .line 1979
    .line 1980
    const v4, 0x3f70a3d7    # 0.94f

    .line 1981
    .line 1982
    .line 1983
    const v5, 0x3eb020c5    # 0.344f

    .line 1984
    .line 1985
    .line 1986
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1987
    .line 1988
    .line 1989
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 1990
    .line 1991
    const v9, 0x3e010625    # 0.126f

    .line 1992
    .line 1993
    .line 1994
    invoke-direct {v4, v9, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 1995
    .line 1996
    .line 1997
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 1998
    .line 1999
    .line 2000
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2001
    .line 2002
    .line 2003
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2004
    .line 2005
    new-instance v3, Landroid/graphics/PointF;

    .line 2006
    .line 2007
    const v4, 0x3f80624e    # 1.003f

    .line 2008
    .line 2009
    .line 2010
    invoke-direct {v3, v4, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2011
    .line 2012
    .line 2013
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 2014
    .line 2015
    const v8, 0x3e828f5c    # 0.255f

    .line 2016
    .line 2017
    .line 2018
    invoke-direct {v4, v8, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 2019
    .line 2020
    .line 2021
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2022
    .line 2023
    .line 2024
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    .line 2026
    .line 2027
    const/4 v8, 0x2

    .line 2028
    invoke-static {v8, v0, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v0

    .line 2032
    new-instance v1, Landroid/graphics/Matrix;

    .line 2033
    .line 2034
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 2035
    .line 2036
    .line 2037
    const v3, 0x3f3df3b6    # 0.742f

    .line 2038
    .line 2039
    .line 2040
    invoke-virtual {v1, v7, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2041
    .line 2042
    .line 2043
    invoke-static {v0, v1}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v0

    .line 2047
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2048
    .line 2049
    .line 2050
    new-instance v0, Ljava/util/ArrayList;

    .line 2051
    .line 2052
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2053
    .line 2054
    .line 2055
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2056
    .line 2057
    new-instance v3, Landroid/graphics/PointF;

    .line 2058
    .line 2059
    const v4, 0x3f5eb852    # 0.87f

    .line 2060
    .line 2061
    .line 2062
    const v8, 0x3e051eb8    # 0.13f

    .line 2063
    .line 2064
    .line 2065
    invoke-direct {v3, v4, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2066
    .line 2067
    .line 2068
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 2069
    .line 2070
    const v8, 0x3e158106    # 0.146f

    .line 2071
    .line 2072
    .line 2073
    invoke-direct {v4, v8, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 2074
    .line 2075
    .line 2076
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2077
    .line 2078
    .line 2079
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2080
    .line 2081
    .line 2082
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2083
    .line 2084
    new-instance v3, Landroid/graphics/PointF;

    .line 2085
    .line 2086
    const v4, 0x3f516873    # 0.818f

    .line 2087
    .line 2088
    .line 2089
    const v8, 0x3eb6c8b4    # 0.357f

    .line 2090
    .line 2091
    .line 2092
    invoke-direct {v3, v4, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2093
    .line 2094
    .line 2095
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2096
    .line 2097
    .line 2098
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2099
    .line 2100
    .line 2101
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2102
    .line 2103
    new-instance v3, Landroid/graphics/PointF;

    .line 2104
    .line 2105
    const v4, 0x3ea9fbe7    # 0.332f

    .line 2106
    .line 2107
    .line 2108
    invoke-direct {v3, v7, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2109
    .line 2110
    .line 2111
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 2112
    .line 2113
    const v8, 0x3f5a5e35    # 0.853f

    .line 2114
    .line 2115
    .line 2116
    invoke-direct {v4, v8, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 2117
    .line 2118
    .line 2119
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2120
    .line 2121
    .line 2122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2123
    .line 2124
    .line 2125
    const/4 v1, 0x4

    .line 2126
    invoke-static {v1, v0, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v0

    .line 2130
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2131
    .line 2132
    .line 2133
    new-instance v0, Ljava/util/ArrayList;

    .line 2134
    .line 2135
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2136
    .line 2137
    .line 2138
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2139
    .line 2140
    new-instance v3, Landroid/graphics/PointF;

    .line 2141
    .line 2142
    const/high16 v14, 0x3f000000    # 0.5f

    .line 2143
    .line 2144
    invoke-direct {v3, v14, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2145
    .line 2146
    .line 2147
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2148
    .line 2149
    .line 2150
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2151
    .line 2152
    .line 2153
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2154
    .line 2155
    new-instance v3, Landroid/graphics/PointF;

    .line 2156
    .line 2157
    const v4, 0x3f343958    # 0.704f

    .line 2158
    .line 2159
    .line 2160
    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2161
    .line 2162
    .line 2163
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2164
    .line 2165
    .line 2166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2167
    .line 2168
    .line 2169
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2170
    .line 2171
    new-instance v3, Landroid/graphics/PointF;

    .line 2172
    .line 2173
    const v9, 0x3d851eb8    # 0.065f

    .line 2174
    .line 2175
    .line 2176
    invoke-direct {v3, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2177
    .line 2178
    .line 2179
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2180
    .line 2181
    .line 2182
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    .line 2184
    .line 2185
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2186
    .line 2187
    new-instance v3, Landroid/graphics/PointF;

    .line 2188
    .line 2189
    invoke-direct {v3, v10, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2190
    .line 2191
    .line 2192
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2193
    .line 2194
    .line 2195
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    .line 2197
    .line 2198
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2199
    .line 2200
    new-instance v3, Landroid/graphics/PointF;

    .line 2201
    .line 2202
    const v4, 0x3e178d50    # 0.148f

    .line 2203
    .line 2204
    .line 2205
    invoke-direct {v3, v10, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2206
    .line 2207
    .line 2208
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2209
    .line 2210
    .line 2211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2212
    .line 2213
    .line 2214
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2215
    .line 2216
    new-instance v3, Landroid/graphics/PointF;

    .line 2217
    .line 2218
    const v9, 0x3f6d0e56    # 0.926f

    .line 2219
    .line 2220
    .line 2221
    invoke-direct {v3, v9, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2222
    .line 2223
    .line 2224
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2225
    .line 2226
    .line 2227
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2228
    .line 2229
    .line 2230
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2231
    .line 2232
    new-instance v3, Landroid/graphics/PointF;

    .line 2233
    .line 2234
    invoke-direct {v3, v9, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2235
    .line 2236
    .line 2237
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2238
    .line 2239
    .line 2240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2241
    .line 2242
    .line 2243
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2244
    .line 2245
    new-instance v3, Landroid/graphics/PointF;

    .line 2246
    .line 2247
    invoke-direct {v3, v7, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2248
    .line 2249
    .line 2250
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2251
    .line 2252
    .line 2253
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2254
    .line 2255
    .line 2256
    const/4 v1, 0x2

    .line 2257
    invoke-static {v1, v0, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v0

    .line 2261
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2262
    .line 2263
    .line 2264
    new-instance v0, Ljava/util/ArrayList;

    .line 2265
    .line 2266
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2267
    .line 2268
    .line 2269
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2270
    .line 2271
    new-instance v3, Landroid/graphics/PointF;

    .line 2272
    .line 2273
    const v4, 0x3de147ae    # 0.11f

    .line 2274
    .line 2275
    .line 2276
    const/high16 v14, 0x3f000000    # 0.5f

    .line 2277
    .line 2278
    invoke-direct {v3, v4, v14}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2279
    .line 2280
    .line 2281
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2282
    .line 2283
    .line 2284
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2285
    .line 2286
    .line 2287
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2288
    .line 2289
    new-instance v3, Landroid/graphics/PointF;

    .line 2290
    .line 2291
    const v4, 0x3de76c8b    # 0.113f

    .line 2292
    .line 2293
    .line 2294
    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2295
    .line 2296
    .line 2297
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2298
    .line 2299
    .line 2300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2301
    .line 2302
    .line 2303
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2304
    .line 2305
    new-instance v3, Landroid/graphics/PointF;

    .line 2306
    .line 2307
    const v4, 0x3e92f1aa    # 0.287f

    .line 2308
    .line 2309
    .line 2310
    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2311
    .line 2312
    .line 2313
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2314
    .line 2315
    .line 2316
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2317
    .line 2318
    .line 2319
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2320
    .line 2321
    new-instance v3, Landroid/graphics/PointF;

    .line 2322
    .line 2323
    const v9, 0x3db22d0e    # 0.087f

    .line 2324
    .line 2325
    .line 2326
    invoke-direct {v3, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2327
    .line 2328
    .line 2329
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2330
    .line 2331
    .line 2332
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    .line 2334
    .line 2335
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2336
    .line 2337
    new-instance v3, Landroid/graphics/PointF;

    .line 2338
    .line 2339
    const v4, 0x3ed78d50    # 0.421f

    .line 2340
    .line 2341
    .line 2342
    invoke-direct {v3, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2343
    .line 2344
    .line 2345
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2346
    .line 2347
    .line 2348
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2349
    .line 2350
    .line 2351
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2352
    .line 2353
    new-instance v3, Landroid/graphics/PointF;

    .line 2354
    .line 2355
    const v9, 0x3e2e147b    # 0.17f

    .line 2356
    .line 2357
    .line 2358
    invoke-direct {v3, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2359
    .line 2360
    .line 2361
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2362
    .line 2363
    .line 2364
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    .line 2366
    .line 2367
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2368
    .line 2369
    new-instance v3, Landroid/graphics/PointF;

    .line 2370
    .line 2371
    const v4, 0x3f0f5c29    # 0.56f

    .line 2372
    .line 2373
    .line 2374
    invoke-direct {v3, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2375
    .line 2376
    .line 2377
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2378
    .line 2379
    .line 2380
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2381
    .line 2382
    .line 2383
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2384
    .line 2385
    new-instance v3, Landroid/graphics/PointF;

    .line 2386
    .line 2387
    const v9, 0x3e87ae14    # 0.265f

    .line 2388
    .line 2389
    .line 2390
    invoke-direct {v3, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2391
    .line 2392
    .line 2393
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2394
    .line 2395
    .line 2396
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    .line 2398
    .line 2399
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2400
    .line 2401
    new-instance v3, Landroid/graphics/PointF;

    .line 2402
    .line 2403
    const v4, 0x3f2c8b44    # 0.674f

    .line 2404
    .line 2405
    .line 2406
    invoke-direct {v3, v4, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2407
    .line 2408
    .line 2409
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2410
    .line 2411
    .line 2412
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2413
    .line 2414
    .line 2415
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2416
    .line 2417
    new-instance v3, Landroid/graphics/PointF;

    .line 2418
    .line 2419
    const v4, 0x3f2ccccd    # 0.675f

    .line 2420
    .line 2421
    .line 2422
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2423
    .line 2424
    .line 2425
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2426
    .line 2427
    .line 2428
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2429
    .line 2430
    .line 2431
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2432
    .line 2433
    new-instance v3, Landroid/graphics/PointF;

    .line 2434
    .line 2435
    const v4, 0x3f49fbe7    # 0.789f

    .line 2436
    .line 2437
    .line 2438
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2439
    .line 2440
    .line 2441
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2442
    .line 2443
    .line 2444
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2445
    .line 2446
    .line 2447
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2448
    .line 2449
    new-instance v3, Landroid/graphics/PointF;

    .line 2450
    .line 2451
    invoke-direct {v3, v4, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2452
    .line 2453
    .line 2454
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2455
    .line 2456
    .line 2457
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2458
    .line 2459
    .line 2460
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2461
    .line 2462
    new-instance v3, Landroid/graphics/PointF;

    .line 2463
    .line 2464
    const v4, 0x3f6353f8    # 0.888f

    .line 2465
    .line 2466
    .line 2467
    invoke-direct {v3, v4, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2468
    .line 2469
    .line 2470
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2471
    .line 2472
    .line 2473
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2474
    .line 2475
    .line 2476
    invoke-static {v15, v0, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2477
    .line 2478
    .line 2479
    move-result-object v0

    .line 2480
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2481
    .line 2482
    .line 2483
    new-instance v0, Ljava/util/ArrayList;

    .line 2484
    .line 2485
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2486
    .line 2487
    .line 2488
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2489
    .line 2490
    new-instance v3, Landroid/graphics/PointF;

    .line 2491
    .line 2492
    const v4, 0x3f4bc6a8    # 0.796f

    .line 2493
    .line 2494
    .line 2495
    const/high16 v13, 0x3f000000    # 0.5f

    .line 2496
    .line 2497
    invoke-direct {v3, v4, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2498
    .line 2499
    .line 2500
    invoke-direct {v1, v3}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;)V

    .line 2501
    .line 2502
    .line 2503
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2504
    .line 2505
    .line 2506
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2507
    .line 2508
    new-instance v3, Landroid/graphics/PointF;

    .line 2509
    .line 2510
    const v4, 0x3f049ba6    # 0.518f

    .line 2511
    .line 2512
    .line 2513
    invoke-direct {v3, v8, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2514
    .line 2515
    .line 2516
    invoke-direct {v1, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2517
    .line 2518
    .line 2519
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2520
    .line 2521
    .line 2522
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2523
    .line 2524
    new-instance v3, Landroid/graphics/PointF;

    .line 2525
    .line 2526
    const v4, 0x3f7df3b6    # 0.992f

    .line 2527
    .line 2528
    .line 2529
    const v5, 0x3f218937    # 0.631f

    .line 2530
    .line 2531
    .line 2532
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2533
    .line 2534
    .line 2535
    invoke-direct {v1, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2536
    .line 2537
    .line 2538
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    .line 2540
    .line 2541
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2542
    .line 2543
    new-instance v3, Landroid/graphics/PointF;

    .line 2544
    .line 2545
    const v4, 0x3f77ced9    # 0.968f

    .line 2546
    .line 2547
    .line 2548
    invoke-direct {v3, v4, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2549
    .line 2550
    .line 2551
    invoke-direct {v1, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2552
    .line 2553
    .line 2554
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2555
    .line 2556
    .line 2557
    const/4 v8, 0x2

    .line 2558
    invoke-static {v8, v0, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2559
    .line 2560
    .line 2561
    move-result-object v0

    .line 2562
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2563
    .line 2564
    .line 2565
    new-instance v0, Ljava/util/ArrayList;

    .line 2566
    .line 2567
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2568
    .line 2569
    .line 2570
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2571
    .line 2572
    new-instance v3, Landroid/graphics/PointF;

    .line 2573
    .line 2574
    const v4, 0x3e89374c    # 0.268f

    .line 2575
    .line 2576
    .line 2577
    const/high16 v13, 0x3f000000    # 0.5f

    .line 2578
    .line 2579
    invoke-direct {v3, v13, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2580
    .line 2581
    .line 2582
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 2583
    .line 2584
    const v5, 0x3c83126f    # 0.016f

    .line 2585
    .line 2586
    .line 2587
    invoke-direct {v4, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 2588
    .line 2589
    .line 2590
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2591
    .line 2592
    .line 2593
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    .line 2595
    .line 2596
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2597
    .line 2598
    new-instance v3, Landroid/graphics/PointF;

    .line 2599
    .line 2600
    const v4, -0x4278d4fe    # -0.066f

    .line 2601
    .line 2602
    .line 2603
    const v5, 0x3f4ac083    # 0.792f

    .line 2604
    .line 2605
    .line 2606
    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2607
    .line 2608
    .line 2609
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 2610
    .line 2611
    const v5, 0x3f753f7d    # 0.958f

    .line 2612
    .line 2613
    .line 2614
    invoke-direct {v4, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 2615
    .line 2616
    .line 2617
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2618
    .line 2619
    .line 2620
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2621
    .line 2622
    .line 2623
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2624
    .line 2625
    new-instance v3, Landroid/graphics/PointF;

    .line 2626
    .line 2627
    const v4, 0x3f883127    # 1.064f

    .line 2628
    .line 2629
    .line 2630
    const v5, 0x3e8d4fdf    # 0.276f

    .line 2631
    .line 2632
    .line 2633
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2634
    .line 2635
    .line 2636
    invoke-direct {v1, v3, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2637
    .line 2638
    .line 2639
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2640
    .line 2641
    .line 2642
    new-instance v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 2643
    .line 2644
    new-instance v3, Landroid/graphics/PointF;

    .line 2645
    .line 2646
    const v4, 0x3f004189    # 0.501f

    .line 2647
    .line 2648
    .line 2649
    const v5, 0x3f722d0e    # 0.946f

    .line 2650
    .line 2651
    .line 2652
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2653
    .line 2654
    .line 2655
    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    .line 2656
    .line 2657
    const v5, 0x3e041893    # 0.129f

    .line 2658
    .line 2659
    .line 2660
    invoke-direct {v4, v5, v2}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    .line 2661
    .line 2662
    .line 2663
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 2664
    .line 2665
    .line 2666
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    .line 2668
    .line 2669
    invoke-static {v15, v0, v15}, Lcom/google/android/material/shape/MaterialShapes;->b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2670
    .line 2671
    .line 2672
    move-result-object v0

    .line 2673
    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapes;->c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 2674
    .line 2675
    .line 2676
    return-void
.end method

.method public static a(F)Landroid/graphics/Matrix;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static b(ILjava/util/ArrayList;Z)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    check-cast v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 26
    .line 27
    const/high16 v5, -0x41000000    # -0.5f

    .line 28
    .line 29
    invoke-virtual {v4, v5, v5}, Landroid/graphics/PointF;->offset(FF)V

    .line 30
    .line 31
    .line 32
    iget v5, v4, Landroid/graphics/PointF;->y:F

    .line 33
    .line 34
    float-to-double v5, v5

    .line 35
    iget v7, v4, Landroid/graphics/PointF;->x:F

    .line 36
    .line 37
    float-to-double v7, v7

    .line 38
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    double-to-float v5, v5

    .line 43
    iget v6, v4, Landroid/graphics/PointF;->x:F

    .line 44
    .line 45
    float-to-double v6, v6

    .line 46
    iget v8, v4, Landroid/graphics/PointF;->y:F

    .line 47
    .line 48
    float-to-double v8, v8

    .line 49
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    double-to-float v6, v6

    .line 54
    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 55
    .line 56
    iput v6, v4, Landroid/graphics/PointF;->y:F

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    int-to-double v5, p0

    .line 65
    div-double/2addr v3, v5

    .line 66
    double-to-float v1, v3

    .line 67
    const/4 v3, 0x1

    .line 68
    if-eqz p2, :cond_7

    .line 69
    .line 70
    mul-int/lit8 p0, p0, 0x2

    .line 71
    .line 72
    const/high16 p2, 0x40000000    # 2.0f

    .line 73
    .line 74
    div-float/2addr v1, p2

    .line 75
    move v4, v2

    .line 76
    :goto_1
    if-ge v4, p0, :cond_9

    .line 77
    .line 78
    move v5, v2

    .line 79
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ge v5, v6, :cond_6

    .line 84
    .line 85
    rem-int/lit8 v6, v4, 0x2

    .line 86
    .line 87
    if-eqz v6, :cond_1

    .line 88
    .line 89
    move v6, v3

    .line 90
    goto :goto_3

    .line 91
    :cond_1
    move v6, v2

    .line 92
    :goto_3
    if-eqz v6, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    sub-int/2addr v7, v3

    .line 99
    sub-int/2addr v7, v5

    .line 100
    goto :goto_4

    .line 101
    :cond_2
    move v7, v5

    .line 102
    :goto_4
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 107
    .line 108
    if-gtz v7, :cond_3

    .line 109
    .line 110
    if-nez v6, :cond_5

    .line 111
    .line 112
    :cond_3
    int-to-float v7, v4

    .line 113
    mul-float/2addr v7, v1

    .line 114
    if-eqz v6, :cond_4

    .line 115
    .line 116
    iget-object v6, v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 117
    .line 118
    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 119
    .line 120
    sub-float v6, v1, v6

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    check-cast v9, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 127
    .line 128
    iget-object v9, v9, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 129
    .line 130
    iget v9, v9, Landroid/graphics/PointF;->x:F

    .line 131
    .line 132
    mul-float/2addr v9, p2

    .line 133
    add-float/2addr v9, v6

    .line 134
    goto :goto_5

    .line 135
    :cond_4
    iget-object v6, v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 136
    .line 137
    iget v9, v6, Landroid/graphics/PointF;->x:F

    .line 138
    .line 139
    :goto_5
    add-float/2addr v7, v9

    .line 140
    new-instance v6, Landroid/graphics/PointF;

    .line 141
    .line 142
    iget-object v9, v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 143
    .line 144
    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 145
    .line 146
    invoke-direct {v6, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 147
    .line 148
    .line 149
    new-instance v7, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 150
    .line 151
    iget-object v8, v8, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->b:Landroidx/graphics/shapes/CornerRounding;

    .line 152
    .line 153
    invoke-direct {v7, v6, v8}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    move p2, v2

    .line 166
    :goto_6
    if-ge p2, p0, :cond_9

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    move v5, v2

    .line 173
    :goto_7
    if-ge v5, v4, :cond_8

    .line 174
    .line 175
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    add-int/lit8 v5, v5, 0x1

    .line 180
    .line 181
    check-cast v6, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 182
    .line 183
    int-to-float v7, p2

    .line 184
    mul-float/2addr v7, v1

    .line 185
    iget-object v8, v6, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 186
    .line 187
    iget v8, v8, Landroid/graphics/PointF;->x:F

    .line 188
    .line 189
    add-float/2addr v7, v8

    .line 190
    new-instance v8, Landroid/graphics/PointF;

    .line 191
    .line 192
    iget-object v9, v6, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 193
    .line 194
    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 195
    .line 196
    invoke-direct {v8, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 197
    .line 198
    .line 199
    new-instance v7, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 200
    .line 201
    iget-object v6, v6, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->b:Landroidx/graphics/shapes/CornerRounding;

    .line 202
    .line 203
    invoke-direct {v7, v8, v6}, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;-><init>(Landroid/graphics/PointF;Landroidx/graphics/shapes/CornerRounding;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    goto :goto_7

    .line 210
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    move p1, v2

    .line 218
    :goto_8
    const/high16 p2, 0x3f000000    # 0.5f

    .line 219
    .line 220
    if-ge p1, p0, :cond_a

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    add-int/lit8 p1, p1, 0x1

    .line 227
    .line 228
    check-cast v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 229
    .line 230
    iget-object v1, v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 231
    .line 232
    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 233
    .line 234
    float-to-double v4, v4

    .line 235
    iget v6, v1, Landroid/graphics/PointF;->x:F

    .line 236
    .line 237
    float-to-double v6, v6

    .line 238
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 239
    .line 240
    .line 241
    move-result-wide v6

    .line 242
    mul-double/2addr v6, v4

    .line 243
    float-to-double v4, p2

    .line 244
    add-double/2addr v6, v4

    .line 245
    double-to-float p2, v6

    .line 246
    iget v6, v1, Landroid/graphics/PointF;->y:F

    .line 247
    .line 248
    float-to-double v6, v6

    .line 249
    iget v8, v1, Landroid/graphics/PointF;->x:F

    .line 250
    .line 251
    float-to-double v8, v8

    .line 252
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 253
    .line 254
    .line 255
    move-result-wide v8

    .line 256
    mul-double/2addr v8, v6

    .line 257
    add-double/2addr v8, v4

    .line 258
    double-to-float v4, v8

    .line 259
    iput p2, v1, Landroid/graphics/PointF;->x:F

    .line 260
    .line 261
    iput v4, v1, Landroid/graphics/PointF;->y:F

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    mul-int/lit8 p0, p0, 0x2

    .line 269
    .line 270
    new-array p0, p0, [F

    .line 271
    .line 272
    move p1, v2

    .line 273
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-ge p1, v1, :cond_b

    .line 278
    .line 279
    mul-int/lit8 v1, p1, 0x2

    .line 280
    .line 281
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    check-cast v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 286
    .line 287
    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 288
    .line 289
    iget v4, v4, Landroid/graphics/PointF;->x:F

    .line 290
    .line 291
    aput v4, p0, v1

    .line 292
    .line 293
    add-int/2addr v1, v3

    .line 294
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    check-cast v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 299
    .line 300
    iget-object v4, v4, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->a:Landroid/graphics/PointF;

    .line 301
    .line 302
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 303
    .line 304
    aput v4, p0, v1

    .line 305
    .line 306
    add-int/lit8 p1, p1, 0x1

    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    .line 310
    .line 311
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .line 313
    .line 314
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-ge v2, v1, :cond_c

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    check-cast v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;

    .line 325
    .line 326
    iget-object v1, v1, Lcom/google/android/material/shape/MaterialShapes$VertexAndRounding;->b:Landroidx/graphics/shapes/CornerRounding;

    .line 327
    .line 328
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    add-int/lit8 v2, v2, 0x1

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_c
    sget-object v0, Landroidx/graphics/shapes/CornerRounding;->c:Landroidx/graphics/shapes/CornerRounding;

    .line 335
    .line 336
    invoke-static {p0, v0, p1, p2, p2}, Landroidx/graphics/shapes/RoundedPolygonKt;->b([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    return-object p0
.end method

.method public static c(Landroidx/graphics/shapes/RoundedPolygon;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapes;->d(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static d(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/RectF;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->d:Ljava/util/List;

    .line 5
    .line 6
    iget v2, p0, Landroidx/graphics/shapes/RoundedPolygon;->c:F

    .line 7
    .line 8
    iget v3, p0, Landroidx/graphics/shapes/RoundedPolygon;->b:F

    .line 9
    .line 10
    const-string v4, "bounds"

    .line 11
    .line 12
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    move v7, v5

    .line 22
    :goto_0
    const/4 v8, 0x1

    .line 23
    if-ge v7, v4, :cond_0

    .line 24
    .line 25
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    check-cast v9, Landroidx/graphics/shapes/Cubic;

    .line 30
    .line 31
    iget-object v10, v9, Landroidx/graphics/shapes/Cubic;->a:[F

    .line 32
    .line 33
    aget v11, v10, v5

    .line 34
    .line 35
    sub-float/2addr v11, v3

    .line 36
    aget v8, v10, v8

    .line 37
    .line 38
    sub-float/2addr v8, v2

    .line 39
    sget v10, Landroidx/graphics/shapes/Utils;->b:F

    .line 40
    .line 41
    mul-float/2addr v11, v11

    .line 42
    mul-float/2addr v8, v8

    .line 43
    add-float/2addr v8, v11

    .line 44
    const/high16 v10, 0x3f000000    # 0.5f

    .line 45
    .line 46
    invoke-virtual {v9, v10}, Landroidx/graphics/shapes/Cubic;->c(F)J

    .line 47
    .line 48
    .line 49
    move-result-wide v9

    .line 50
    invoke-static {v9, v10}, Landroidx/graphics/shapes/PointKt;->d(J)F

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    sub-float/2addr v11, v3

    .line 55
    invoke-static {v9, v10}, Landroidx/graphics/shapes/PointKt;->e(J)F

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    sub-float/2addr v9, v2

    .line 60
    mul-float/2addr v11, v11

    .line 61
    mul-float/2addr v9, v9

    .line 62
    add-float/2addr v9, v11

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    float-to-double v6, v6

    .line 75
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    double-to-float v1, v6

    .line 80
    sub-float v4, v3, v1

    .line 81
    .line 82
    aput v4, v0, v5

    .line 83
    .line 84
    sub-float v4, v2, v1

    .line 85
    .line 86
    aput v4, v0, v8

    .line 87
    .line 88
    add-float/2addr v3, v1

    .line 89
    const/4 v4, 0x2

    .line 90
    aput v3, v0, v4

    .line 91
    .line 92
    add-float/2addr v2, v1

    .line 93
    const/4 v1, 0x3

    .line 94
    aput v2, v0, v1

    .line 95
    .line 96
    new-instance v2, Landroid/graphics/RectF;

    .line 97
    .line 98
    aget v3, v0, v5

    .line 99
    .line 100
    aget v5, v0, v8

    .line 101
    .line 102
    aget v4, v0, v4

    .line 103
    .line 104
    aget v0, v0, v1

    .line 105
    .line 106
    invoke-direct {v2, v3, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    div-float/2addr v0, v1

    .line 118
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    div-float/2addr v1, v3

    .line 127
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    new-instance v1, Landroid/graphics/Matrix;

    .line 132
    .line 133
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    neg-float v0, v0

    .line 144
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    neg-float v2, v2

    .line 149
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 161
    .line 162
    .line 163
    invoke-static {p0, v1}, Landroidx/graphics/shapes/Shapes_androidKt;->a(Landroidx/graphics/shapes/RoundedPolygon;Landroid/graphics/Matrix;)Landroidx/graphics/shapes/RoundedPolygon;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    return-object p0
.end method
