.class public Lcom/mycompany/app/editor/core/PhotoTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;,
        Lcom/mycompany/app/editor/core/PhotoTouchListener$PhotoObjectListener;,
        Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;
    }
.end annotation


# instance fields
.field public c:F

.field public f:Lcom/mycompany/app/editor/core/ScaleGestureDetector;

.field public g:Landroid/view/GestureDetector;

.field public h:Lcom/mycompany/app/editor/core/PhotoTouchListener$PhotoObjectListener;

.field public i:Landroid/widget/ImageView;

.field public j:Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public o:F

.field public p:F

.field public q:F

.field public r:F


# direct methods
.method public static a(Landroid/view/View;FF)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [F

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aput p1, v0, v1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    aput p2, v0, p1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    aget v1, v0, v1

    .line 25
    .line 26
    add-float/2addr p2, v1

    .line 27
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    aget p1, v0, p1

    .line 35
    .line 36
    add-float/2addr p2, p1

    .line 37
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18

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
    iget-object v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->i:Landroid/widget/ImageView;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->h:Lcom/mycompany/app/editor/core/PhotoTouchListener$PhotoObjectListener;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->f:Lcom/mycompany/app/editor/core/ScaleGestureDetector;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    move/from16 v17, v6

    .line 17
    .line 18
    goto/16 :goto_f

    .line 19
    .line 20
    :cond_0
    iget-object v7, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->a:Lcom/mycompany/app/editor/core/ScaleGestureDetector$OnScaleGestureListener;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-nez v8, :cond_1

    .line 27
    .line 28
    invoke-virtual {v5}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-boolean v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->q:Z

    .line 32
    .line 33
    const/4 v11, 0x3

    .line 34
    const/4 v12, 0x5

    .line 35
    const/4 v13, 0x2

    .line 36
    const/4 v14, -0x1

    .line 37
    const/4 v15, 0x1

    .line 38
    if-eqz v9, :cond_3

    .line 39
    .line 40
    :cond_2
    :goto_0
    move/from16 v17, v6

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_3
    iget-boolean v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b:Z

    .line 45
    .line 46
    if-nez v9, :cond_a

    .line 47
    .line 48
    if-eqz v8, :cond_9

    .line 49
    .line 50
    if-eq v8, v15, :cond_8

    .line 51
    .line 52
    if-eq v8, v12, :cond_4

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iget-object v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 56
    .line 57
    if-eqz v8, :cond_5

    .line 58
    .line 59
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 60
    .line 61
    .line 62
    :cond_5
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    iput-object v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    iget v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 73
    .line 74
    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    iput v10, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 83
    .line 84
    if-ltz v9, :cond_6

    .line 85
    .line 86
    if-ne v9, v8, :cond_7

    .line 87
    .line 88
    :cond_6
    invoke-static {v10, v14, v2}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->a(IILandroid/view/MotionEvent;)I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    iput v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 97
    .line 98
    :cond_7
    iput-boolean v6, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->t:Z

    .line 99
    .line 100
    invoke-virtual {v5, v2, v1}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    check-cast v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;

    .line 104
    .line 105
    invoke-virtual {v7, v5}, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->a(Lcom/mycompany/app/editor/core/ScaleGestureDetector;)V

    .line 106
    .line 107
    .line 108
    iput-boolean v15, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b:Z

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_8
    invoke-virtual {v5}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b()V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_9
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    iput v7, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 120
    .line 121
    iput-boolean v15, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->t:Z

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_a
    if-eq v8, v15, :cond_1f

    .line 125
    .line 126
    if-eq v8, v13, :cond_16

    .line 127
    .line 128
    if-eq v8, v11, :cond_15

    .line 129
    .line 130
    if-eq v8, v12, :cond_11

    .line 131
    .line 132
    const/4 v9, 0x6

    .line 133
    if-eq v8, v9, :cond_b

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_b
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    invoke-virtual {v2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-le v8, v13, :cond_f

    .line 149
    .line 150
    iget v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 151
    .line 152
    if-ne v10, v8, :cond_c

    .line 153
    .line 154
    iget v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 155
    .line 156
    invoke-static {v8, v9, v2}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->a(IILandroid/view/MotionEvent;)I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-ltz v8, :cond_d

    .line 161
    .line 162
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    iput v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 167
    .line 168
    iput-boolean v15, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->t:Z

    .line 169
    .line 170
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    iput-object v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 175
    .line 176
    invoke-virtual {v5, v2, v1}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 177
    .line 178
    .line 179
    check-cast v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;

    .line 180
    .line 181
    invoke-virtual {v7, v5}, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->a(Lcom/mycompany/app/editor/core/ScaleGestureDetector;)V

    .line 182
    .line 183
    .line 184
    iput-boolean v15, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b:Z

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_c
    iget v12, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 188
    .line 189
    if-ne v10, v12, :cond_e

    .line 190
    .line 191
    invoke-static {v8, v9, v2}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->a(IILandroid/view/MotionEvent;)I

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    if-ltz v8, :cond_d

    .line 196
    .line 197
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    iput v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 202
    .line 203
    iput-boolean v6, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->t:Z

    .line 204
    .line 205
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    iput-object v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 210
    .line 211
    invoke-virtual {v5, v2, v1}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    check-cast v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;

    .line 215
    .line 216
    invoke-virtual {v7, v5}, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->a(Lcom/mycompany/app/editor/core/ScaleGestureDetector;)V

    .line 217
    .line 218
    .line 219
    iput-boolean v15, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b:Z

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_d
    move v7, v15

    .line 223
    goto :goto_2

    .line 224
    :cond_e
    :goto_1
    move v7, v6

    .line 225
    :goto_2
    iget-object v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 226
    .line 227
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 228
    .line 229
    .line 230
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    iput-object v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 235
    .line 236
    invoke-virtual {v5, v2, v1}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_f
    move v7, v15

    .line 241
    :goto_3
    if-eqz v7, :cond_2

    .line 242
    .line 243
    invoke-virtual {v5, v2, v1}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    iget v7, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 247
    .line 248
    if-ne v10, v7, :cond_10

    .line 249
    .line 250
    iget v7, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 251
    .line 252
    :cond_10
    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getX(I)F

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    iput v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->f:F

    .line 261
    .line 262
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getY(I)F

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    iput v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->g:F

    .line 267
    .line 268
    invoke-virtual {v5}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b()V

    .line 269
    .line 270
    .line 271
    iput v7, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 272
    .line 273
    iput-boolean v15, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->t:Z

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_11
    iget v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 278
    .line 279
    iget v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 280
    .line 281
    invoke-virtual {v5}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b()V

    .line 282
    .line 283
    .line 284
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    iput-object v10, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c:Landroid/view/MotionEvent;

    .line 289
    .line 290
    iget-boolean v10, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->t:Z

    .line 291
    .line 292
    if-eqz v10, :cond_12

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_12
    move v8, v9

    .line 296
    :goto_4
    iput v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 297
    .line 298
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    iput v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 307
    .line 308
    iput-boolean v6, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->t:Z

    .line 309
    .line 310
    iget v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 311
    .line 312
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 313
    .line 314
    .line 315
    move-result v8

    .line 316
    if-ltz v8, :cond_13

    .line 317
    .line 318
    iget v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 319
    .line 320
    iget v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 321
    .line 322
    if-ne v8, v9, :cond_14

    .line 323
    .line 324
    :cond_13
    iget v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->s:I

    .line 325
    .line 326
    invoke-static {v8, v14, v2}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->a(IILandroid/view/MotionEvent;)I

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    iput v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->r:I

    .line 335
    .line 336
    :cond_14
    invoke-virtual {v5, v2, v1}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 337
    .line 338
    .line 339
    check-cast v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;

    .line 340
    .line 341
    invoke-virtual {v7, v5}, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->a(Lcom/mycompany/app/editor/core/ScaleGestureDetector;)V

    .line 342
    .line 343
    .line 344
    iput-boolean v15, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b:Z

    .line 345
    .line 346
    goto/16 :goto_0

    .line 347
    .line 348
    :cond_15
    invoke-virtual {v5}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b()V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_16
    invoke-virtual {v5, v2, v1}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->c(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 354
    .line 355
    .line 356
    iget v8, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->o:F

    .line 357
    .line 358
    iget v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->p:F

    .line 359
    .line 360
    div-float/2addr v8, v9

    .line 361
    const v9, 0x3f2b851f    # 0.67f

    .line 362
    .line 363
    .line 364
    cmpl-float v8, v8, v9

    .line 365
    .line 366
    if-lez v8, :cond_2

    .line 367
    .line 368
    check-cast v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;

    .line 369
    .line 370
    iget-object v8, v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->d:Lcom/mycompany/app/editor/core/PhotoTouchListener;

    .line 371
    .line 372
    iget-boolean v8, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener;->k:Z

    .line 373
    .line 374
    if-nez v8, :cond_17

    .line 375
    .line 376
    goto/16 :goto_0

    .line 377
    .line 378
    :cond_17
    new-instance v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;

    .line 379
    .line 380
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 381
    .line 382
    .line 383
    iget v9, v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->a:F

    .line 384
    .line 385
    iput v9, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->a:F

    .line 386
    .line 387
    iget v10, v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->b:F

    .line 388
    .line 389
    iput v10, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->b:F

    .line 390
    .line 391
    iget v12, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->f:F

    .line 392
    .line 393
    sub-float/2addr v12, v9

    .line 394
    iput v12, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->c:F

    .line 395
    .line 396
    iget v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->g:F

    .line 397
    .line 398
    sub-float/2addr v9, v10

    .line 399
    iput v9, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->d:F

    .line 400
    .line 401
    iget v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->n:F

    .line 402
    .line 403
    const/high16 v10, -0x40800000    # -1.0f

    .line 404
    .line 405
    cmpl-float v9, v9, v10

    .line 406
    .line 407
    if-nez v9, :cond_1a

    .line 408
    .line 409
    iget v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->l:F

    .line 410
    .line 411
    cmpl-float v9, v9, v10

    .line 412
    .line 413
    if-nez v9, :cond_18

    .line 414
    .line 415
    iget v9, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->j:F

    .line 416
    .line 417
    iget v12, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->k:F

    .line 418
    .line 419
    mul-float/2addr v9, v9

    .line 420
    mul-float/2addr v12, v12

    .line 421
    add-float/2addr v12, v9

    .line 422
    move/from16 v16, v10

    .line 423
    .line 424
    float-to-double v10, v12

    .line 425
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 426
    .line 427
    .line 428
    move-result-wide v10

    .line 429
    double-to-float v10, v10

    .line 430
    iput v10, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->l:F

    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_18
    move/from16 v16, v10

    .line 434
    .line 435
    :goto_5
    iget v10, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->l:F

    .line 436
    .line 437
    iget v11, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->m:F

    .line 438
    .line 439
    cmpl-float v11, v11, v16

    .line 440
    .line 441
    if-nez v11, :cond_19

    .line 442
    .line 443
    iget v11, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->h:F

    .line 444
    .line 445
    iget v12, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->i:F

    .line 446
    .line 447
    mul-float/2addr v11, v11

    .line 448
    mul-float/2addr v12, v12

    .line 449
    add-float/2addr v12, v11

    .line 450
    float-to-double v11, v12

    .line 451
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 452
    .line 453
    .line 454
    move-result-wide v11

    .line 455
    double-to-float v11, v11

    .line 456
    iput v11, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->m:F

    .line 457
    .line 458
    :cond_19
    iget v11, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->m:F

    .line 459
    .line 460
    div-float/2addr v10, v11

    .line 461
    iput v10, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->n:F

    .line 462
    .line 463
    :cond_1a
    iget v10, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->n:F

    .line 464
    .line 465
    iput v10, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->e:F

    .line 466
    .line 467
    iget-object v7, v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;->c:Lcom/mycompany/app/editor/core/Vector2D;

    .line 468
    .line 469
    iget-object v10, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->e:Lcom/mycompany/app/editor/core/Vector2D;

    .line 470
    .line 471
    sget v11, Lcom/mycompany/app/editor/core/Vector2D;->c:I

    .line 472
    .line 473
    iget v11, v7, Landroid/graphics/PointF;->x:F

    .line 474
    .line 475
    mul-float/2addr v11, v11

    .line 476
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 477
    .line 478
    mul-float/2addr v12, v12

    .line 479
    add-float/2addr v12, v11

    .line 480
    float-to-double v11, v12

    .line 481
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 482
    .line 483
    .line 484
    move-result-wide v11

    .line 485
    double-to-float v11, v11

    .line 486
    iget v12, v7, Landroid/graphics/PointF;->x:F

    .line 487
    .line 488
    div-float/2addr v12, v11

    .line 489
    iput v12, v7, Landroid/graphics/PointF;->x:F

    .line 490
    .line 491
    iget v12, v7, Landroid/graphics/PointF;->y:F

    .line 492
    .line 493
    div-float/2addr v12, v11

    .line 494
    iput v12, v7, Landroid/graphics/PointF;->y:F

    .line 495
    .line 496
    iget v11, v10, Landroid/graphics/PointF;->x:F

    .line 497
    .line 498
    mul-float/2addr v11, v11

    .line 499
    iget v12, v10, Landroid/graphics/PointF;->y:F

    .line 500
    .line 501
    mul-float/2addr v12, v12

    .line 502
    add-float/2addr v12, v11

    .line 503
    float-to-double v11, v12

    .line 504
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 505
    .line 506
    .line 507
    move-result-wide v11

    .line 508
    double-to-float v11, v11

    .line 509
    iget v12, v10, Landroid/graphics/PointF;->x:F

    .line 510
    .line 511
    div-float/2addr v12, v11

    .line 512
    iput v12, v10, Landroid/graphics/PointF;->x:F

    .line 513
    .line 514
    iget v9, v10, Landroid/graphics/PointF;->y:F

    .line 515
    .line 516
    div-float/2addr v9, v11

    .line 517
    iput v9, v10, Landroid/graphics/PointF;->y:F

    .line 518
    .line 519
    float-to-double v9, v9

    .line 520
    float-to-double v11, v12

    .line 521
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    .line 522
    .line 523
    .line 524
    move-result-wide v9

    .line 525
    iget v11, v7, Landroid/graphics/PointF;->y:F

    .line 526
    .line 527
    float-to-double v11, v11

    .line 528
    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 529
    .line 530
    move/from16 v17, v6

    .line 531
    .line 532
    float-to-double v6, v7

    .line 533
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    .line 534
    .line 535
    .line 536
    move-result-wide v6

    .line 537
    sub-double/2addr v9, v6

    .line 538
    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    mul-double/2addr v9, v6

    .line 544
    double-to-float v6, v9

    .line 545
    iput v6, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->f:F

    .line 546
    .line 547
    if-nez v1, :cond_1b

    .line 548
    .line 549
    goto/16 :goto_8

    .line 550
    .line 551
    :cond_1b
    iget v6, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->a:F

    .line 552
    .line 553
    iget v7, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->b:F

    .line 554
    .line 555
    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    .line 556
    .line 557
    .line 558
    move-result v9

    .line 559
    cmpl-float v9, v9, v6

    .line 560
    .line 561
    if-nez v9, :cond_1c

    .line 562
    .line 563
    invoke-virtual {v1}, Landroid/view/View;->getPivotY()F

    .line 564
    .line 565
    .line 566
    move-result v9

    .line 567
    cmpl-float v9, v9, v7

    .line 568
    .line 569
    if-nez v9, :cond_1c

    .line 570
    .line 571
    goto :goto_6

    .line 572
    :cond_1c
    new-array v9, v13, [F

    .line 573
    .line 574
    fill-array-data v9, :array_0

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 578
    .line 579
    .line 580
    move-result-object v10

    .line 581
    invoke-virtual {v10, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v6}, Landroid/view/View;->setPivotX(F)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 588
    .line 589
    .line 590
    new-array v6, v13, [F

    .line 591
    .line 592
    fill-array-data v6, :array_1

    .line 593
    .line 594
    .line 595
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 600
    .line 601
    .line 602
    aget v7, v6, v17

    .line 603
    .line 604
    aget v10, v9, v17

    .line 605
    .line 606
    sub-float/2addr v7, v10

    .line 607
    aget v6, v6, v15

    .line 608
    .line 609
    aget v9, v9, v15

    .line 610
    .line 611
    sub-float/2addr v6, v9

    .line 612
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 613
    .line 614
    .line 615
    move-result v9

    .line 616
    sub-float/2addr v9, v7

    .line 617
    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    sub-float/2addr v7, v6

    .line 625
    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 626
    .line 627
    .line 628
    :goto_6
    iget v6, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->c:F

    .line 629
    .line 630
    iget v7, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->d:F

    .line 631
    .line 632
    invoke-static {v1, v6, v7}, Lcom/mycompany/app/editor/core/PhotoTouchListener;->a(Landroid/view/View;FF)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    .line 636
    .line 637
    .line 638
    move-result v6

    .line 639
    iget v7, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->e:F

    .line 640
    .line 641
    mul-float/2addr v6, v7

    .line 642
    const/high16 v7, 0x41200000    # 10.0f

    .line 643
    .line 644
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    .line 645
    .line 646
    .line 647
    move-result v6

    .line 648
    const/high16 v7, 0x3f000000    # 0.5f

    .line 649
    .line 650
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    .line 651
    .line 652
    .line 653
    move-result v6

    .line 654
    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    .line 661
    .line 662
    .line 663
    move-result v6

    .line 664
    iget v7, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$TransformInfo;->f:F

    .line 665
    .line 666
    add-float/2addr v6, v7

    .line 667
    const/high16 v7, 0x43340000    # 180.0f

    .line 668
    .line 669
    cmpl-float v7, v6, v7

    .line 670
    .line 671
    const/high16 v8, 0x43b40000    # 360.0f

    .line 672
    .line 673
    if-lez v7, :cond_1d

    .line 674
    .line 675
    sub-float/2addr v6, v8

    .line 676
    goto :goto_7

    .line 677
    :cond_1d
    const/high16 v7, -0x3ccc0000    # -180.0f

    .line 678
    .line 679
    cmpg-float v7, v6, v7

    .line 680
    .line 681
    if-gez v7, :cond_1e

    .line 682
    .line 683
    add-float/2addr v6, v8

    .line 684
    :cond_1e
    :goto_7
    invoke-virtual {v1, v6}, Landroid/view/View;->setRotation(F)V

    .line 685
    .line 686
    .line 687
    goto :goto_8

    .line 688
    :cond_1f
    move/from16 v17, v6

    .line 689
    .line 690
    invoke-virtual {v5}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b()V

    .line 691
    .line 692
    .line 693
    :goto_8
    iget-object v6, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->g:Landroid/view/GestureDetector;

    .line 694
    .line 695
    invoke-virtual {v6, v2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 696
    .line 697
    .line 698
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 699
    .line 700
    .line 701
    move-result v6

    .line 702
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 703
    .line 704
    .line 705
    move-result v7

    .line 706
    float-to-int v7, v7

    .line 707
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 708
    .line 709
    .line 710
    move-result v8

    .line 711
    float-to-int v8, v8

    .line 712
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 713
    .line 714
    .line 715
    move-result v9

    .line 716
    and-int/2addr v9, v6

    .line 717
    if-eqz v9, :cond_2b

    .line 718
    .line 719
    if-eq v9, v15, :cond_24

    .line 720
    .line 721
    if-eq v9, v13, :cond_25

    .line 722
    .line 723
    const/4 v10, 0x3

    .line 724
    if-eq v9, v10, :cond_24

    .line 725
    .line 726
    const/4 v5, 0x5

    .line 727
    if-eq v9, v5, :cond_23

    .line 728
    .line 729
    const/4 v1, 0x6

    .line 730
    if-eq v9, v1, :cond_20

    .line 731
    .line 732
    goto/16 :goto_c

    .line 733
    .line 734
    :cond_20
    const v1, 0xff00

    .line 735
    .line 736
    .line 737
    and-int/2addr v1, v6

    .line 738
    shr-int/lit8 v1, v1, 0x8

    .line 739
    .line 740
    if-nez v1, :cond_21

    .line 741
    .line 742
    move/from16 v3, v17

    .line 743
    .line 744
    iput-boolean v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->k:Z

    .line 745
    .line 746
    return v15

    .line 747
    :cond_21
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 748
    .line 749
    .line 750
    move-result v3

    .line 751
    iget v4, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->m:I

    .line 752
    .line 753
    if-ne v3, v4, :cond_2a

    .line 754
    .line 755
    if-nez v1, :cond_22

    .line 756
    .line 757
    move v6, v15

    .line 758
    goto :goto_9

    .line 759
    :cond_22
    const/4 v6, 0x0

    .line 760
    :goto_9
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    iput v1, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->q:F

    .line 765
    .line 766
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 767
    .line 768
    .line 769
    move-result v1

    .line 770
    iput v1, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->r:F

    .line 771
    .line 772
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 773
    .line 774
    .line 775
    move-result v1

    .line 776
    iput v1, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->m:I

    .line 777
    .line 778
    return v15

    .line 779
    :cond_23
    iput-boolean v15, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->n:Z

    .line 780
    .line 781
    return v15

    .line 782
    :cond_24
    const/4 v2, 0x0

    .line 783
    goto :goto_b

    .line 784
    :cond_25
    iget-boolean v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->k:Z

    .line 785
    .line 786
    if-nez v3, :cond_26

    .line 787
    .line 788
    goto :goto_c

    .line 789
    :cond_26
    iget-boolean v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->l:Z

    .line 790
    .line 791
    if-nez v3, :cond_28

    .line 792
    .line 793
    iget v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->q:F

    .line 794
    .line 795
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    .line 796
    .line 797
    .line 798
    move-result v4

    .line 799
    iget v6, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->r:F

    .line 800
    .line 801
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    .line 802
    .line 803
    .line 804
    move-result v7

    .line 805
    invoke-static {v3, v4, v6, v7}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    iget v4, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->c:F

    .line 810
    .line 811
    cmpl-float v3, v3, v4

    .line 812
    .line 813
    if-lez v3, :cond_27

    .line 814
    .line 815
    move v6, v15

    .line 816
    goto :goto_a

    .line 817
    :cond_27
    const/4 v6, 0x0

    .line 818
    :goto_a
    iput-boolean v6, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->l:Z

    .line 819
    .line 820
    :cond_28
    iget-boolean v3, v5, Lcom/mycompany/app/editor/core/ScaleGestureDetector;->b:Z

    .line 821
    .line 822
    if-nez v3, :cond_2a

    .line 823
    .line 824
    iget v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->m:I

    .line 825
    .line 826
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 827
    .line 828
    .line 829
    move-result v3

    .line 830
    if-eq v3, v14, :cond_2a

    .line 831
    .line 832
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 833
    .line 834
    .line 835
    move-result v4

    .line 836
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 837
    .line 838
    .line 839
    move-result v2

    .line 840
    iget v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->q:F

    .line 841
    .line 842
    sub-float/2addr v4, v3

    .line 843
    iget v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->r:F

    .line 844
    .line 845
    sub-float/2addr v2, v3

    .line 846
    invoke-static {v1, v4, v2}, Lcom/mycompany/app/editor/core/PhotoTouchListener;->a(Landroid/view/View;FF)V

    .line 847
    .line 848
    .line 849
    return v15

    .line 850
    :goto_b
    iput-boolean v2, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->k:Z

    .line 851
    .line 852
    iput-boolean v2, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->l:Z

    .line 853
    .line 854
    iput v14, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->m:I

    .line 855
    .line 856
    iput-boolean v2, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->n:Z

    .line 857
    .line 858
    invoke-static {v7, v8, v2, v3}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    if-nez v2, :cond_29

    .line 863
    .line 864
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 865
    .line 866
    .line 867
    move-result-object v1

    .line 868
    iget v2, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->o:F

    .line 869
    .line 870
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    iget v2, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->p:F

    .line 875
    .line 876
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 877
    .line 878
    .line 879
    :cond_29
    if-eqz v4, :cond_2a

    .line 880
    .line 881
    if-eqz v3, :cond_2a

    .line 882
    .line 883
    new-instance v1, Lcom/mycompany/app/editor/core/PhotoTouchListener$3;

    .line 884
    .line 885
    invoke-direct {v1, v0}, Lcom/mycompany/app/editor/core/PhotoTouchListener$3;-><init>(Lcom/mycompany/app/editor/core/PhotoTouchListener;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v3, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 889
    .line 890
    .line 891
    :cond_2a
    :goto_c
    return v15

    .line 892
    :cond_2b
    if-eqz v4, :cond_2d

    .line 893
    .line 894
    check-cast v4, Lcom/mycompany/app/editor/core/PhotoEditor$3;

    .line 895
    .line 896
    iget-object v3, v4, Lcom/mycompany/app/editor/core/PhotoEditor$3;->b:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 897
    .line 898
    iget v3, v3, Lcom/mycompany/app/editor/core/PhotoEditor;->h:I

    .line 899
    .line 900
    if-eqz v3, :cond_2c

    .line 901
    .line 902
    move v3, v15

    .line 903
    goto :goto_d

    .line 904
    :cond_2c
    const/4 v3, 0x0

    .line 905
    :goto_d
    if-eqz v3, :cond_2e

    .line 906
    .line 907
    :cond_2d
    const/16 v17, 0x0

    .line 908
    .line 909
    goto :goto_f

    .line 910
    :cond_2e
    iput-boolean v15, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->k:Z

    .line 911
    .line 912
    const/4 v3, 0x0

    .line 913
    iput-boolean v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->l:Z

    .line 914
    .line 915
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 916
    .line 917
    .line 918
    move-result v5

    .line 919
    iput v5, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->m:I

    .line 920
    .line 921
    if-lez v5, :cond_2f

    .line 922
    .line 923
    move v6, v15

    .line 924
    goto :goto_e

    .line 925
    :cond_2f
    const/4 v6, 0x0

    .line 926
    :goto_e
    iput-boolean v6, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->n:Z

    .line 927
    .line 928
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    iput v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->o:F

    .line 933
    .line 934
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 935
    .line 936
    .line 937
    move-result v3

    .line 938
    iput v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->p:F

    .line 939
    .line 940
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    .line 941
    .line 942
    .line 943
    move-result v3

    .line 944
    iput v3, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->q:F

    .line 945
    .line 946
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    .line 947
    .line 948
    .line 949
    move-result v2

    .line 950
    iput v2, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->r:F

    .line 951
    .line 952
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 953
    .line 954
    .line 955
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoTouchListener;->j:Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 956
    .line 957
    invoke-virtual {v4, v1, v15}, Lcom/mycompany/app/editor/core/PhotoEditor$3;->a(Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;Z)V

    .line 958
    .line 959
    .line 960
    return v15

    .line 961
    :goto_f
    return v17

    .line 962
    nop

    .line 963
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
