.class Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerCornerShadowOperation"
.end annotation


# instance fields
.field public final c:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field public final d:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->c:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->d:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->e:F

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->f:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move-object/from16 v3, p4

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->b()F

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->c()F

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    sub-float/2addr v4, v5

    .line 20
    const/high16 v5, 0x43b40000    # 360.0f

    .line 21
    .line 22
    add-float/2addr v4, v5

    .line 23
    rem-float/2addr v4, v5

    .line 24
    const/high16 v6, 0x43340000    # 180.0f

    .line 25
    .line 26
    cmpg-float v6, v4, v6

    .line 27
    .line 28
    if-gtz v6, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sub-float/2addr v4, v5

    .line 32
    :goto_0
    const/4 v10, 0x0

    .line 33
    cmpl-float v5, v4, v10

    .line 34
    .line 35
    if-lez v5, :cond_1

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_1
    iget-object v11, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->c:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 40
    .line 41
    iget v6, v11, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->b:F

    .line 42
    .line 43
    iget v7, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->e:F

    .line 44
    .line 45
    sub-float/2addr v6, v7

    .line 46
    float-to-double v12, v6

    .line 47
    iget v6, v11, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->c:F

    .line 48
    .line 49
    iget v8, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->f:F

    .line 50
    .line 51
    sub-float/2addr v6, v8

    .line 52
    float-to-double v14, v6

    .line 53
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 54
    .line 55
    .line 56
    move-result-wide v12

    .line 57
    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->d:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 58
    .line 59
    iget v14, v6, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->b:F

    .line 60
    .line 61
    iget v15, v11, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->b:F

    .line 62
    .line 63
    sub-float/2addr v14, v15

    .line 64
    float-to-double v14, v14

    .line 65
    iget v6, v6, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->c:F

    .line 66
    .line 67
    iget v10, v11, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->c:F

    .line 68
    .line 69
    sub-float/2addr v6, v10

    .line 70
    move v10, v5

    .line 71
    float-to-double v5, v6

    .line 72
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 73
    .line 74
    .line 75
    move-result-wide v14

    .line 76
    int-to-double v5, v9

    .line 77
    move/from16 v17, v10

    .line 78
    .line 79
    move-object/from16 v16, v11

    .line 80
    .line 81
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    .line 82
    .line 83
    .line 84
    move-result-wide v10

    .line 85
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(DD)D

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    double-to-float v5, v5

    .line 90
    float-to-double v10, v5

    .line 91
    neg-float v6, v4

    .line 92
    const/high16 v18, 0x40000000    # 2.0f

    .line 93
    .line 94
    move/from16 v19, v4

    .line 95
    .line 96
    div-float v4, v6, v18

    .line 97
    .line 98
    move-wide/from16 v20, v10

    .line 99
    .line 100
    float-to-double v10, v4

    .line 101
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v10

    .line 105
    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    .line 106
    .line 107
    .line 108
    move-result-wide v10

    .line 109
    mul-double v10, v10, v20

    .line 110
    .line 111
    cmpl-double v4, v12, v10

    .line 112
    .line 113
    move/from16 v22, v4

    .line 114
    .line 115
    iget-object v4, v0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->a:Landroid/graphics/Matrix;

    .line 116
    .line 117
    if-lez v22, :cond_2

    .line 118
    .line 119
    new-instance v0, Landroid/graphics/RectF;

    .line 120
    .line 121
    sub-double/2addr v12, v10

    .line 122
    double-to-float v12, v12

    .line 123
    const/4 v13, 0x0

    .line 124
    invoke-direct {v0, v13, v13, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->c()F

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v3, v4, v0, v9}, Lcom/google/android/material/shadow/ShadowRenderer;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    const/4 v13, 0x0

    .line 145
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    .line 146
    .line 147
    mul-float v7, v5, v18

    .line 148
    .line 149
    invoke-direct {v0, v13, v13, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 153
    .line 154
    .line 155
    move-object/from16 v12, v16

    .line 156
    .line 157
    iget v8, v12, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->b:F

    .line 158
    .line 159
    iget v13, v12, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->c:F

    .line 160
    .line 161
    invoke-virtual {v4, v8, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->c()F

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 169
    .line 170
    .line 171
    neg-double v2, v10

    .line 172
    sub-double v2, v2, v20

    .line 173
    .line 174
    double-to-float v2, v2

    .line 175
    const/high16 v3, -0x40000000    # -2.0f

    .line 176
    .line 177
    mul-float/2addr v3, v5

    .line 178
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 179
    .line 180
    .line 181
    float-to-int v2, v5

    .line 182
    move v5, v2

    .line 183
    add-double v2, v20, v10

    .line 184
    .line 185
    double-to-float v2, v2

    .line 186
    const/4 v3, 0x2

    .line 187
    new-array v13, v3, [F

    .line 188
    .line 189
    const/16 v16, 0x0

    .line 190
    .line 191
    aput v2, v13, v16

    .line 192
    .line 193
    const/16 v18, 0x1

    .line 194
    .line 195
    aput v7, v13, v18

    .line 196
    .line 197
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    const/high16 v2, 0x43e10000    # 450.0f

    .line 201
    .line 202
    if-lez v17, :cond_3

    .line 203
    .line 204
    add-float v2, v2, v19

    .line 205
    .line 206
    move v8, v6

    .line 207
    move-object/from16 v3, p4

    .line 208
    .line 209
    move v7, v2

    .line 210
    move-object/from16 v2, p2

    .line 211
    .line 212
    move v6, v5

    .line 213
    :goto_2
    move-object v5, v0

    .line 214
    goto :goto_3

    .line 215
    :cond_3
    move/from16 v8, v19

    .line 216
    .line 217
    move-object/from16 v3, p4

    .line 218
    .line 219
    move v7, v2

    .line 220
    move v6, v5

    .line 221
    move-object/from16 v2, p2

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :goto_3
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shadow/ShadowRenderer;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    .line 225
    .line 226
    .line 227
    move v0, v7

    .line 228
    move v6, v8

    .line 229
    iget-object v7, v2, Lcom/google/android/material/shadow/ShadowRenderer;->g:Landroid/graphics/Path;

    .line 230
    .line 231
    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    .line 232
    .line 233
    .line 234
    aget v8, v13, v16

    .line 235
    .line 236
    aget v13, v13, v18

    .line 237
    .line 238
    invoke-virtual {v7, v8, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v5, v0, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    div-float/2addr v0, v5

    .line 262
    const/high16 v5, 0x3f800000    # 1.0f

    .line 263
    .line 264
    invoke-virtual {v3, v5, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 265
    .line 266
    .line 267
    iget-object v0, v2, Lcom/google/android/material/shadow/ShadowRenderer;->h:Landroid/graphics/Paint;

    .line 268
    .line 269
    invoke-virtual {v3, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, v2, Lcom/google/android/material/shadow/ShadowRenderer;->a:Landroid/graphics/Paint;

    .line 273
    .line 274
    invoke-virtual {v3, v7, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 278
    .line 279
    .line 280
    cmpl-double v0, v14, v10

    .line 281
    .line 282
    if-lez v0, :cond_4

    .line 283
    .line 284
    new-instance v0, Landroid/graphics/RectF;

    .line 285
    .line 286
    sub-double/2addr v14, v10

    .line 287
    double-to-float v5, v14

    .line 288
    const/4 v13, 0x0

    .line 289
    invoke-direct {v0, v13, v13, v5, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 293
    .line 294
    .line 295
    iget v1, v12, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->b:F

    .line 296
    .line 297
    iget v5, v12, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->c:F

    .line 298
    .line 299
    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 300
    .line 301
    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->b()F

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 307
    .line 308
    .line 309
    double-to-float v1, v10

    .line 310
    invoke-virtual {v4, v1, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2, v3, v4, v0, v9}, Lcom/google/android/material/shadow/ShadowRenderer;->b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    .line 314
    .line 315
    .line 316
    :cond_4
    :goto_4
    return-void
.end method

.method public final b()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->d:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->c:F

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->c:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 6
    .line 7
    iget v3, v2, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->c:F

    .line 8
    .line 9
    sub-float/2addr v1, v3

    .line 10
    iget v0, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->b:F

    .line 11
    .line 12
    iget v2, v2, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->b:F

    .line 13
    .line 14
    sub-float/2addr v0, v2

    .line 15
    div-float/2addr v1, v0

    .line 16
    float-to-double v0, v1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    double-to-float v0, v0

    .line 26
    return v0
.end method

.method public final c()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->c:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->c:F

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->f:F

    .line 6
    .line 7
    sub-float/2addr v1, v2

    .line 8
    iget v0, v0, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->b:F

    .line 9
    .line 10
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->e:F

    .line 11
    .line 12
    sub-float/2addr v0, v2

    .line 13
    div-float/2addr v1, v0

    .line 14
    float-to-double v0, v1

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    double-to-float v0, v0

    .line 24
    return v0
.end method
