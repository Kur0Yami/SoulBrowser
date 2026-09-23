.class public Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
    }
.end annotation


# instance fields
.field public final a:[Lcom/google/android/material/shape/ShapePath;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:Lcom/google/android/material/shape/ShapePath;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    .line 8
    .line 9
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    .line 12
    .line 13
    new-array v1, v0, [Landroid/graphics/Matrix;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/PointF;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->d:Landroid/graphics/PointF;

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/Path;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->e:Landroid/graphics/Path;

    .line 30
    .line 31
    new-instance v1, Landroid/graphics/Path;

    .line 32
    .line 33
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->f:Landroid/graphics/Path;

    .line 37
    .line 38
    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->g:Lcom/google/android/material/shape/ShapePath;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    new-array v2, v1, [F

    .line 47
    .line 48
    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->h:[F

    .line 49
    .line 50
    new-array v1, v1, [F

    .line 51
    .line 52
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->i:[F

    .line 53
    .line 54
    new-instance v1, Landroid/graphics/Path;

    .line 55
    .line 56
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->j:Landroid/graphics/Path;

    .line 60
    .line 61
    new-instance v1, Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->k:Landroid/graphics/Path;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->l:Z

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    .line 75
    .line 76
    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    .line 77
    .line 78
    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    .line 79
    .line 80
    .line 81
    aput-object v3, v2, v1

    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    .line 84
    .line 85
    new-instance v3, Landroid/graphics/Matrix;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .line 89
    .line 90
    aput-object v3, v2, v1

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    .line 93
    .line 94
    new-instance v3, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .line 98
    .line 99
    aput-object v3, v2, v1

    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public static b()Lcom/google/android/material/shape/ShapeAppearancePathProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;->a:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/material/shape/ShapeAppearanceModel;[FFLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 21

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
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move-object/from16 v5, p6

    .line 12
    .line 13
    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 14
    .line 15
    .line 16
    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->e:Landroid/graphics/Path;

    .line 17
    .line 18
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    .line 19
    .line 20
    .line 21
    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->f:Landroid/graphics/Path;

    .line 22
    .line 23
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 24
    .line 25
    .line 26
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 27
    .line 28
    invoke-virtual {v7, v3, v8}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 29
    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    :goto_0
    iget-object v10, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    .line 33
    .line 34
    const/4 v11, 0x2

    .line 35
    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->h:[F

    .line 36
    .line 37
    const/4 v14, 0x4

    .line 38
    iget-object v15, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    .line 39
    .line 40
    const/16 v16, 0x0

    .line 41
    .line 42
    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    .line 43
    .line 44
    const/4 v12, 0x1

    .line 45
    if-ge v9, v14, :cond_a

    .line 46
    .line 47
    if-nez p2, :cond_3

    .line 48
    .line 49
    if-eq v9, v12, :cond_2

    .line 50
    .line 51
    if-eq v9, v11, :cond_1

    .line 52
    .line 53
    const/4 v14, 0x3

    .line 54
    if-eq v9, v14, :cond_0

    .line 55
    .line 56
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->f:Lcom/google/android/material/shape/CornerSize;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->e:Lcom/google/android/material/shape/CornerSize;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->h:Lcom/google/android/material/shape/CornerSize;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object v14, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->g:Lcom/google/android/material/shape/CornerSize;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    new-instance v14, Lcom/google/android/material/shape/ClampedCornerSize;

    .line 69
    .line 70
    aget v11, p2, v9

    .line 71
    .line 72
    invoke-direct {v14, v11}, Lcom/google/android/material/shape/ClampedCornerSize;-><init>(F)V

    .line 73
    .line 74
    .line 75
    :goto_1
    if-eq v9, v12, :cond_6

    .line 76
    .line 77
    const/4 v11, 0x2

    .line 78
    if-eq v9, v11, :cond_5

    .line 79
    .line 80
    const/4 v11, 0x3

    .line 81
    if-eq v9, v11, :cond_4

    .line 82
    .line 83
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->b:Lcom/google/android/material/shape/CornerTreatment;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->a:Lcom/google/android/material/shape/CornerTreatment;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->d:Lcom/google/android/material/shape/CornerTreatment;

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    iget-object v11, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->c:Lcom/google/android/material/shape/CornerTreatment;

    .line 93
    .line 94
    :goto_2
    aget-object v12, v15, v9

    .line 95
    .line 96
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-interface {v14, v3}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    .line 100
    .line 101
    .line 102
    move-result v14

    .line 103
    invoke-virtual {v11, v12, v2, v14}, Lcom/google/android/material/shape/CornerTreatment;->a(Lcom/google/android/material/shape/ShapePath;FF)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v11, v9, 0x1

    .line 107
    .line 108
    rem-int/lit8 v12, v11, 0x4

    .line 109
    .line 110
    mul-int/lit8 v12, v12, 0x5a

    .line 111
    .line 112
    int-to-float v12, v12

    .line 113
    aget-object v14, v8, v9

    .line 114
    .line 115
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    .line 116
    .line 117
    .line 118
    iget-object v14, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->d:Landroid/graphics/PointF;

    .line 119
    .line 120
    move-object/from16 v19, v8

    .line 121
    .line 122
    const/4 v8, 0x1

    .line 123
    if-eq v9, v8, :cond_9

    .line 124
    .line 125
    const/4 v8, 0x2

    .line 126
    if-eq v9, v8, :cond_8

    .line 127
    .line 128
    const/4 v8, 0x3

    .line 129
    if-eq v9, v8, :cond_7

    .line 130
    .line 131
    iget v8, v3, Landroid/graphics/RectF;->right:F

    .line 132
    .line 133
    move/from16 v17, v9

    .line 134
    .line 135
    iget v9, v3, Landroid/graphics/RectF;->top:F

    .line 136
    .line 137
    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    move/from16 v17, v9

    .line 142
    .line 143
    iget v8, v3, Landroid/graphics/RectF;->left:F

    .line 144
    .line 145
    iget v9, v3, Landroid/graphics/RectF;->top:F

    .line 146
    .line 147
    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    move/from16 v17, v9

    .line 152
    .line 153
    iget v8, v3, Landroid/graphics/RectF;->left:F

    .line 154
    .line 155
    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    .line 156
    .line 157
    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    move/from16 v17, v9

    .line 162
    .line 163
    iget v8, v3, Landroid/graphics/RectF;->right:F

    .line 164
    .line 165
    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    .line 166
    .line 167
    invoke-virtual {v14, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 168
    .line 169
    .line 170
    :goto_3
    aget-object v8, v19, v17

    .line 171
    .line 172
    iget v9, v14, Landroid/graphics/PointF;->x:F

    .line 173
    .line 174
    iget v14, v14, Landroid/graphics/PointF;->y:F

    .line 175
    .line 176
    invoke-virtual {v8, v9, v14}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 177
    .line 178
    .line 179
    aget-object v8, v19, v17

    .line 180
    .line 181
    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 182
    .line 183
    .line 184
    aget-object v8, v15, v17

    .line 185
    .line 186
    iget v9, v8, Lcom/google/android/material/shape/ShapePath;->c:F

    .line 187
    .line 188
    aput v9, v13, v16

    .line 189
    .line 190
    iget v8, v8, Lcom/google/android/material/shape/ShapePath;->d:F

    .line 191
    .line 192
    const/16 v18, 0x1

    .line 193
    .line 194
    aput v8, v13, v18

    .line 195
    .line 196
    aget-object v8, v19, v17

    .line 197
    .line 198
    invoke-virtual {v8, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 199
    .line 200
    .line 201
    aget-object v8, v10, v17

    .line 202
    .line 203
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 204
    .line 205
    .line 206
    aget-object v8, v10, v17

    .line 207
    .line 208
    aget v9, v13, v16

    .line 209
    .line 210
    aget v13, v13, v18

    .line 211
    .line 212
    invoke-virtual {v8, v9, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 213
    .line 214
    .line 215
    aget-object v8, v10, v17

    .line 216
    .line 217
    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 218
    .line 219
    .line 220
    move v9, v11

    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_a
    move-object/from16 v19, v8

    .line 224
    .line 225
    move/from16 v18, v12

    .line 226
    .line 227
    move/from16 v8, v16

    .line 228
    .line 229
    :goto_4
    if-ge v8, v14, :cond_14

    .line 230
    .line 231
    aget-object v9, v15, v8

    .line 232
    .line 233
    iget v11, v9, Lcom/google/android/material/shape/ShapePath;->a:F

    .line 234
    .line 235
    aput v11, v13, v16

    .line 236
    .line 237
    iget v9, v9, Lcom/google/android/material/shape/ShapePath;->b:F

    .line 238
    .line 239
    aput v9, v13, v18

    .line 240
    .line 241
    aget-object v9, v19, v8

    .line 242
    .line 243
    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 244
    .line 245
    .line 246
    if-nez v8, :cond_b

    .line 247
    .line 248
    aget v9, v13, v16

    .line 249
    .line 250
    aget v11, v13, v18

    .line 251
    .line 252
    invoke-virtual {v5, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_b
    aget v9, v13, v16

    .line 257
    .line 258
    aget v11, v13, v18

    .line 259
    .line 260
    invoke-virtual {v5, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    .line 262
    .line 263
    :goto_5
    aget-object v9, v15, v8

    .line 264
    .line 265
    aget-object v11, v19, v8

    .line 266
    .line 267
    invoke-virtual {v9, v11, v5}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 268
    .line 269
    .line 270
    if-eqz v4, :cond_c

    .line 271
    .line 272
    aget-object v9, v15, v8

    .line 273
    .line 274
    aget-object v11, v19, v8

    .line 275
    .line 276
    invoke-interface {v4, v9, v11, v8}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->a(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    .line 277
    .line 278
    .line 279
    :cond_c
    add-int/lit8 v9, v8, 0x1

    .line 280
    .line 281
    rem-int/lit8 v11, v9, 0x4

    .line 282
    .line 283
    aget-object v12, v15, v8

    .line 284
    .line 285
    iget v14, v12, Lcom/google/android/material/shape/ShapePath;->c:F

    .line 286
    .line 287
    aput v14, v13, v16

    .line 288
    .line 289
    iget v12, v12, Lcom/google/android/material/shape/ShapePath;->d:F

    .line 290
    .line 291
    const/16 v18, 0x1

    .line 292
    .line 293
    aput v12, v13, v18

    .line 294
    .line 295
    aget-object v12, v19, v8

    .line 296
    .line 297
    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 298
    .line 299
    .line 300
    aget-object v12, v15, v11

    .line 301
    .line 302
    iget v14, v12, Lcom/google/android/material/shape/ShapePath;->a:F

    .line 303
    .line 304
    iget-object v3, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->i:[F

    .line 305
    .line 306
    aput v14, v3, v16

    .line 307
    .line 308
    iget v12, v12, Lcom/google/android/material/shape/ShapePath;->b:F

    .line 309
    .line 310
    aput v12, v3, v18

    .line 311
    .line 312
    aget-object v12, v19, v11

    .line 313
    .line 314
    invoke-virtual {v12, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 315
    .line 316
    .line 317
    aget v12, v13, v16

    .line 318
    .line 319
    aget v14, v3, v16

    .line 320
    .line 321
    sub-float/2addr v12, v14

    .line 322
    move/from16 p2, v9

    .line 323
    .line 324
    move-object v14, v10

    .line 325
    float-to-double v9, v12

    .line 326
    aget v12, v13, v18

    .line 327
    .line 328
    aget v3, v3, v18

    .line 329
    .line 330
    sub-float/2addr v12, v3

    .line 331
    move-object/from16 v20, v14

    .line 332
    .line 333
    move-object v3, v15

    .line 334
    float-to-double v14, v12

    .line 335
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 336
    .line 337
    .line 338
    move-result-wide v9

    .line 339
    double-to-float v9, v9

    .line 340
    const v10, 0x3a83126f    # 0.001f

    .line 341
    .line 342
    .line 343
    sub-float/2addr v9, v10

    .line 344
    const/4 v10, 0x0

    .line 345
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    .line 346
    .line 347
    .line 348
    move-result v9

    .line 349
    aget-object v12, v3, v8

    .line 350
    .line 351
    iget v14, v12, Lcom/google/android/material/shape/ShapePath;->c:F

    .line 352
    .line 353
    aput v14, v13, v16

    .line 354
    .line 355
    iget v12, v12, Lcom/google/android/material/shape/ShapePath;->d:F

    .line 356
    .line 357
    const/4 v14, 0x1

    .line 358
    aput v12, v13, v14

    .line 359
    .line 360
    aget-object v12, v19, v8

    .line 361
    .line 362
    invoke-virtual {v12, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 363
    .line 364
    .line 365
    if-eq v8, v14, :cond_d

    .line 366
    .line 367
    const/4 v12, 0x3

    .line 368
    if-eq v8, v12, :cond_d

    .line 369
    .line 370
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerY()F

    .line 371
    .line 372
    .line 373
    move-result v12

    .line 374
    aget v15, v13, v14

    .line 375
    .line 376
    sub-float/2addr v12, v15

    .line 377
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    goto :goto_6

    .line 382
    :cond_d
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    .line 383
    .line 384
    .line 385
    move-result v12

    .line 386
    aget v14, v13, v16

    .line 387
    .line 388
    sub-float/2addr v12, v14

    .line 389
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 390
    .line 391
    .line 392
    move-result v12

    .line 393
    :goto_6
    const/high16 v14, 0x43870000    # 270.0f

    .line 394
    .line 395
    iget-object v15, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->g:Lcom/google/android/material/shape/ShapePath;

    .line 396
    .line 397
    invoke-virtual {v15, v10, v10, v14, v10}, Lcom/google/android/material/shape/ShapePath;->e(FFFF)V

    .line 398
    .line 399
    .line 400
    const/4 v14, 0x1

    .line 401
    if-eq v8, v14, :cond_10

    .line 402
    .line 403
    const/4 v10, 0x2

    .line 404
    if-eq v8, v10, :cond_f

    .line 405
    .line 406
    const/4 v14, 0x3

    .line 407
    if-eq v8, v14, :cond_e

    .line 408
    .line 409
    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->j:Lcom/google/android/material/shape/EdgeTreatment;

    .line 410
    .line 411
    goto :goto_7

    .line 412
    :cond_e
    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->i:Lcom/google/android/material/shape/EdgeTreatment;

    .line 413
    .line 414
    goto :goto_7

    .line 415
    :cond_f
    const/4 v14, 0x3

    .line 416
    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->l:Lcom/google/android/material/shape/EdgeTreatment;

    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_10
    const/4 v14, 0x3

    .line 420
    iget-object v10, v1, Lcom/google/android/material/shape/ShapeAppearanceModel;->k:Lcom/google/android/material/shape/EdgeTreatment;

    .line 421
    .line 422
    :goto_7
    invoke-virtual {v10, v9, v12, v2, v15}, Lcom/google/android/material/shape/EdgeTreatment;->b(FFFLcom/google/android/material/shape/ShapePath;)V

    .line 423
    .line 424
    .line 425
    iget-object v9, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->j:Landroid/graphics/Path;

    .line 426
    .line 427
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 428
    .line 429
    .line 430
    aget-object v12, v20, v8

    .line 431
    .line 432
    invoke-virtual {v15, v12, v9}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 433
    .line 434
    .line 435
    iget-boolean v12, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->l:Z

    .line 436
    .line 437
    if-eqz v12, :cond_11

    .line 438
    .line 439
    invoke-virtual {v10}, Lcom/google/android/material/shape/EdgeTreatment;->a()Z

    .line 440
    .line 441
    .line 442
    move-result v10

    .line 443
    if-nez v10, :cond_12

    .line 444
    .line 445
    invoke-virtual {v0, v9, v8}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c(Landroid/graphics/Path;I)Z

    .line 446
    .line 447
    .line 448
    move-result v10

    .line 449
    if-nez v10, :cond_12

    .line 450
    .line 451
    invoke-virtual {v0, v9, v11}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c(Landroid/graphics/Path;I)Z

    .line 452
    .line 453
    .line 454
    move-result v10

    .line 455
    if-eqz v10, :cond_11

    .line 456
    .line 457
    goto :goto_8

    .line 458
    :cond_11
    const/16 v18, 0x1

    .line 459
    .line 460
    goto :goto_9

    .line 461
    :cond_12
    :goto_8
    sget-object v10, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 462
    .line 463
    invoke-virtual {v9, v9, v7, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 464
    .line 465
    .line 466
    iget v9, v15, Lcom/google/android/material/shape/ShapePath;->a:F

    .line 467
    .line 468
    aput v9, v13, v16

    .line 469
    .line 470
    iget v9, v15, Lcom/google/android/material/shape/ShapePath;->b:F

    .line 471
    .line 472
    const/16 v18, 0x1

    .line 473
    .line 474
    aput v9, v13, v18

    .line 475
    .line 476
    aget-object v9, v20, v8

    .line 477
    .line 478
    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 479
    .line 480
    .line 481
    aget v9, v13, v16

    .line 482
    .line 483
    aget v10, v13, v18

    .line 484
    .line 485
    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 486
    .line 487
    .line 488
    aget-object v9, v20, v8

    .line 489
    .line 490
    invoke-virtual {v15, v9, v6}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 491
    .line 492
    .line 493
    goto :goto_a

    .line 494
    :goto_9
    aget-object v9, v20, v8

    .line 495
    .line 496
    invoke-virtual {v15, v9, v5}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 497
    .line 498
    .line 499
    :goto_a
    if-eqz v4, :cond_13

    .line 500
    .line 501
    aget-object v9, v20, v8

    .line 502
    .line 503
    invoke-interface {v4, v15, v9, v8}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->b(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    .line 504
    .line 505
    .line 506
    :cond_13
    move/from16 v8, p2

    .line 507
    .line 508
    move-object v15, v3

    .line 509
    move-object/from16 v10, v20

    .line 510
    .line 511
    const/4 v14, 0x4

    .line 512
    move-object/from16 v3, p4

    .line 513
    .line 514
    goto/16 :goto_4

    .line 515
    .line 516
    :cond_14
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v6}, Landroid/graphics/Path;->isEmpty()Z

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    if-nez v1, :cond_15

    .line 527
    .line 528
    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    .line 529
    .line 530
    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 531
    .line 532
    .line 533
    :cond_15
    return-void
.end method

.method public final c(Landroid/graphics/Path;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->k:Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    .line 7
    .line 8
    aget-object v1, v1, p2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    .line 11
    .line 12
    aget-object p2, v2, p2

    .line 13
    .line 14
    invoke-virtual {v1, p2, v0}, Lcom/google/android/material/shape/ShapePath;->b(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Landroid/graphics/RectF;

    .line 18
    .line 19
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    .line 49
    cmpl-float p1, p1, v0

    .line 50
    .line 51
    if-lez p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    cmpl-float p1, p1, v0

    .line 58
    .line 59
    if-lez p1, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 p1, 0x0

    .line 63
    return p1

    .line 64
    :cond_1
    :goto_0
    return v1
.end method
