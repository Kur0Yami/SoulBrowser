.class public Landroidx/constraintlayout/core/widgets/Flow;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    }
.end annotation


# instance fields
.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:I

.field public H0:I

.field public I0:I

.field public J0:F

.field public K0:F

.field public L0:F

.field public M0:F

.field public N0:F

.field public O0:F

.field public P0:I

.field public Q0:I

.field public R0:I

.field public S0:I

.field public T0:I

.field public U0:I

.field public V0:I

.field public W0:Ljava/util/ArrayList;

.field public X0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public Y0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public Z0:[I

.field public a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public b1:I


# virtual methods
.method public final O(IIII)V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/Flow;->W0:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget v0, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->r0:I

    .line 10
    .line 11
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 12
    .line 13
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 14
    .line 15
    const/4 v15, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-lez v0, :cond_7

    .line 18
    .line 19
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->B0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 20
    .line 21
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 26
    .line 27
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->u0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-nez v4, :cond_1

    .line 32
    .line 33
    iput v3, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->z0:I

    .line 34
    .line 35
    iput v3, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->A0:I

    .line 36
    .line 37
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->y0:Z

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    move v5, v3

    .line 41
    :goto_1
    iget v6, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->r0:I

    .line 42
    .line 43
    if-ge v5, v6, :cond_7

    .line 44
    .line 45
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 46
    .line 47
    aget-object v6, v6, v5

    .line 48
    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    instance-of v7, v6, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 53
    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v6, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-ne v7, v13, :cond_4

    .line 66
    .line 67
    iget v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 68
    .line 69
    if-eq v3, v15, :cond_4

    .line 70
    .line 71
    if-ne v2, v13, :cond_4

    .line 72
    .line 73
    iget v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 74
    .line 75
    if-eq v3, v15, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    if-ne v7, v13, :cond_5

    .line 79
    .line 80
    move-object v7, v14

    .line 81
    :cond_5
    if-ne v2, v13, :cond_6

    .line 82
    .line 83
    move-object v2, v14

    .line 84
    :cond_6
    iput-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 85
    .line 86
    iput-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 87
    .line 88
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->c:I

    .line 93
    .line 94
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    iput v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->d:I

    .line 99
    .line 100
    invoke-interface {v4, v6, v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 101
    .line 102
    .line 103
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->e:I

    .line 104
    .line 105
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 106
    .line 107
    .line 108
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->f:I

    .line 109
    .line 110
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 111
    .line 112
    .line 113
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->g:I

    .line 114
    .line 115
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E(I)V

    .line 116
    .line 117
    .line 118
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    goto :goto_1

    .line 122
    :cond_7
    iget v0, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->w0:I

    .line 123
    .line 124
    iget v2, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->x0:I

    .line 125
    .line 126
    iget v3, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->s0:I

    .line 127
    .line 128
    iget v4, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->t0:I

    .line 129
    .line 130
    const/4 v5, 0x2

    .line 131
    new-array v6, v5, [I

    .line 132
    .line 133
    sub-int v7, v9, v0

    .line 134
    .line 135
    sub-int/2addr v7, v2

    .line 136
    iget v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->V0:I

    .line 137
    .line 138
    if-ne v5, v15, :cond_8

    .line 139
    .line 140
    sub-int v7, p4, v3

    .line 141
    .line 142
    sub-int/2addr v7, v4

    .line 143
    :cond_8
    const/4 v15, -0x1

    .line 144
    if-nez v5, :cond_a

    .line 145
    .line 146
    iget v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->D0:I

    .line 147
    .line 148
    if-ne v5, v15, :cond_9

    .line 149
    .line 150
    const/4 v5, 0x0

    .line 151
    iput v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->D0:I

    .line 152
    .line 153
    :goto_3
    move/from16 v19, v0

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_9
    const/4 v5, 0x0

    .line 157
    goto :goto_3

    .line 158
    :goto_4
    iget v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->E0:I

    .line 159
    .line 160
    if-ne v0, v15, :cond_c

    .line 161
    .line 162
    iput v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->E0:I

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_a
    move/from16 v19, v0

    .line 166
    .line 167
    const/4 v5, 0x0

    .line 168
    iget v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->D0:I

    .line 169
    .line 170
    if-ne v0, v15, :cond_b

    .line 171
    .line 172
    iput v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->D0:I

    .line 173
    .line 174
    :cond_b
    iget v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->E0:I

    .line 175
    .line 176
    if-ne v0, v15, :cond_c

    .line 177
    .line 178
    iput v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->E0:I

    .line 179
    .line 180
    :cond_c
    :goto_5
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 181
    .line 182
    move-object/from16 v20, v0

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    const/4 v15, 0x0

    .line 186
    :goto_6
    iget v0, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->r0:I

    .line 187
    .line 188
    move/from16 v21, v2

    .line 189
    .line 190
    const/16 v2, 0x8

    .line 191
    .line 192
    if-ge v5, v0, :cond_e

    .line 193
    .line 194
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 195
    .line 196
    aget-object v0, v0, v5

    .line 197
    .line 198
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 199
    .line 200
    if-ne v0, v2, :cond_d

    .line 201
    .line 202
    add-int/lit8 v15, v15, 0x1

    .line 203
    .line 204
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 205
    .line 206
    move/from16 v2, v21

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_e
    if-lez v15, :cond_11

    .line 210
    .line 211
    sub-int/2addr v0, v15

    .line 212
    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 213
    .line 214
    const/4 v5, 0x0

    .line 215
    const/4 v15, 0x0

    .line 216
    :goto_7
    iget v2, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->r0:I

    .line 217
    .line 218
    if-ge v5, v2, :cond_10

    .line 219
    .line 220
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 221
    .line 222
    aget-object v2, v2, v5

    .line 223
    .line 224
    move-object/from16 v20, v0

    .line 225
    .line 226
    iget v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 227
    .line 228
    move-object/from16 v23, v2

    .line 229
    .line 230
    const/16 v2, 0x8

    .line 231
    .line 232
    if-eq v0, v2, :cond_f

    .line 233
    .line 234
    aput-object v23, v20, v15

    .line 235
    .line 236
    add-int/lit8 v15, v15, 0x1

    .line 237
    .line 238
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 239
    .line 240
    move-object/from16 v0, v20

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_10
    move-object/from16 v20, v0

    .line 244
    .line 245
    move v0, v15

    .line 246
    :cond_11
    move-object/from16 v15, v20

    .line 247
    .line 248
    iput-object v15, v1, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 249
    .line 250
    iput v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    .line 251
    .line 252
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->T0:I

    .line 253
    .line 254
    if-eqz v2, :cond_54

    .line 255
    .line 256
    const/4 v5, 0x1

    .line 257
    if-eq v2, v5, :cond_39

    .line 258
    .line 259
    const/4 v5, 0x2

    .line 260
    if-eq v2, v5, :cond_12

    .line 261
    .line 262
    move/from16 v32, v3

    .line 263
    .line 264
    move/from16 v33, v4

    .line 265
    .line 266
    move-object/from16 v34, v6

    .line 267
    .line 268
    move/from16 v17, v19

    .line 269
    .line 270
    move/from16 v18, v21

    .line 271
    .line 272
    const/16 v30, 0x1

    .line 273
    .line 274
    const/16 v35, 0x0

    .line 275
    .line 276
    goto/16 :goto_2d

    .line 277
    .line 278
    :cond_12
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->V0:I

    .line 279
    .line 280
    if-nez v2, :cond_18

    .line 281
    .line 282
    iget v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->U0:I

    .line 283
    .line 284
    if-gtz v5, :cond_17

    .line 285
    .line 286
    const/4 v5, 0x0

    .line 287
    const/4 v12, 0x0

    .line 288
    const/4 v13, 0x0

    .line 289
    :goto_8
    if-ge v5, v0, :cond_16

    .line 290
    .line 291
    if-lez v5, :cond_13

    .line 292
    .line 293
    iget v14, v1, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 294
    .line 295
    add-int/2addr v12, v14

    .line 296
    :cond_13
    aget-object v14, v15, v5

    .line 297
    .line 298
    if-nez v14, :cond_14

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_14
    invoke-virtual {v1, v14, v7}, Landroidx/constraintlayout/core/widgets/Flow;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 302
    .line 303
    .line 304
    move-result v14

    .line 305
    add-int/2addr v14, v12

    .line 306
    if-le v14, v7, :cond_15

    .line 307
    .line 308
    goto :goto_a

    .line 309
    :cond_15
    add-int/lit8 v13, v13, 0x1

    .line 310
    .line 311
    move v12, v14

    .line 312
    :goto_9
    add-int/lit8 v5, v5, 0x1

    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_16
    :goto_a
    move v5, v13

    .line 316
    :cond_17
    const/4 v13, 0x0

    .line 317
    goto :goto_e

    .line 318
    :cond_18
    iget v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->U0:I

    .line 319
    .line 320
    if-gtz v5, :cond_1d

    .line 321
    .line 322
    const/4 v5, 0x0

    .line 323
    const/4 v12, 0x0

    .line 324
    const/4 v13, 0x0

    .line 325
    :goto_b
    if-ge v5, v0, :cond_1c

    .line 326
    .line 327
    if-lez v5, :cond_19

    .line 328
    .line 329
    iget v14, v1, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 330
    .line 331
    add-int/2addr v12, v14

    .line 332
    :cond_19
    aget-object v14, v15, v5

    .line 333
    .line 334
    if-nez v14, :cond_1a

    .line 335
    .line 336
    goto :goto_c

    .line 337
    :cond_1a
    invoke-virtual {v1, v14, v7}, Landroidx/constraintlayout/core/widgets/Flow;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 338
    .line 339
    .line 340
    move-result v14

    .line 341
    add-int/2addr v14, v12

    .line 342
    if-le v14, v7, :cond_1b

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    .line 346
    .line 347
    move v12, v14

    .line 348
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 349
    .line 350
    goto :goto_b

    .line 351
    :cond_1c
    :goto_d
    const/4 v5, 0x0

    .line 352
    goto :goto_e

    .line 353
    :cond_1d
    move v13, v5

    .line 354
    goto :goto_d

    .line 355
    :goto_e
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/Flow;->Z0:[I

    .line 356
    .line 357
    if-nez v12, :cond_1e

    .line 358
    .line 359
    const/4 v12, 0x2

    .line 360
    new-array v12, v12, [I

    .line 361
    .line 362
    iput-object v12, v1, Landroidx/constraintlayout/core/widgets/Flow;->Z0:[I

    .line 363
    .line 364
    :cond_1e
    if-nez v13, :cond_1f

    .line 365
    .line 366
    const/4 v12, 0x1

    .line 367
    if-eq v2, v12, :cond_20

    .line 368
    .line 369
    :cond_1f
    if-nez v5, :cond_21

    .line 370
    .line 371
    if-nez v2, :cond_21

    .line 372
    .line 373
    :cond_20
    const/4 v12, 0x1

    .line 374
    goto :goto_f

    .line 375
    :cond_21
    const/4 v12, 0x0

    .line 376
    :goto_f
    if-nez v12, :cond_38

    .line 377
    .line 378
    if-nez v2, :cond_22

    .line 379
    .line 380
    int-to-float v13, v0

    .line 381
    int-to-float v14, v5

    .line 382
    div-float/2addr v13, v14

    .line 383
    float-to-double v13, v13

    .line 384
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 385
    .line 386
    .line 387
    move-result-wide v13

    .line 388
    double-to-int v13, v13

    .line 389
    move/from16 v18, v3

    .line 390
    .line 391
    move/from16 v20, v4

    .line 392
    .line 393
    goto :goto_10

    .line 394
    :cond_22
    int-to-float v5, v0

    .line 395
    int-to-float v14, v13

    .line 396
    div-float/2addr v5, v14

    .line 397
    move/from16 v18, v3

    .line 398
    .line 399
    move/from16 v20, v4

    .line 400
    .line 401
    float-to-double v3, v5

    .line 402
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 403
    .line 404
    .line 405
    move-result-wide v3

    .line 406
    double-to-int v5, v3

    .line 407
    :goto_10
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->Y0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 408
    .line 409
    if-eqz v3, :cond_23

    .line 410
    .line 411
    array-length v4, v3

    .line 412
    if-ge v4, v5, :cond_24

    .line 413
    .line 414
    :cond_23
    const/4 v4, 0x0

    .line 415
    goto :goto_11

    .line 416
    :cond_24
    const/4 v4, 0x0

    .line 417
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    goto :goto_12

    .line 421
    :goto_11
    new-array v3, v5, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 422
    .line 423
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->Y0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 424
    .line 425
    :goto_12
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->X0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 426
    .line 427
    if-eqz v3, :cond_26

    .line 428
    .line 429
    array-length v14, v3

    .line 430
    if-ge v14, v13, :cond_25

    .line 431
    .line 432
    goto :goto_13

    .line 433
    :cond_25
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    goto :goto_14

    .line 437
    :cond_26
    :goto_13
    new-array v3, v13, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 438
    .line 439
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->X0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 440
    .line 441
    :goto_14
    const/4 v3, 0x0

    .line 442
    :goto_15
    if-ge v3, v5, :cond_2f

    .line 443
    .line 444
    const/4 v4, 0x0

    .line 445
    :goto_16
    if-ge v4, v13, :cond_2e

    .line 446
    .line 447
    mul-int v14, v4, v5

    .line 448
    .line 449
    add-int/2addr v14, v3

    .line 450
    move/from16 v22, v0

    .line 451
    .line 452
    const/4 v0, 0x1

    .line 453
    if-ne v2, v0, :cond_27

    .line 454
    .line 455
    mul-int v0, v3, v13

    .line 456
    .line 457
    add-int v14, v0, v4

    .line 458
    .line 459
    :cond_27
    array-length v0, v15

    .line 460
    if-lt v14, v0, :cond_28

    .line 461
    .line 462
    :goto_17
    move/from16 v23, v2

    .line 463
    .line 464
    goto :goto_18

    .line 465
    :cond_28
    aget-object v0, v15, v14

    .line 466
    .line 467
    if-nez v0, :cond_29

    .line 468
    .line 469
    goto :goto_17

    .line 470
    :cond_29
    invoke-virtual {v1, v0, v7}, Landroidx/constraintlayout/core/widgets/Flow;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 471
    .line 472
    .line 473
    move-result v14

    .line 474
    move/from16 v23, v2

    .line 475
    .line 476
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->Y0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 477
    .line 478
    aget-object v2, v2, v3

    .line 479
    .line 480
    if-eqz v2, :cond_2a

    .line 481
    .line 482
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-ge v2, v14, :cond_2b

    .line 487
    .line 488
    :cond_2a
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->Y0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 489
    .line 490
    aput-object v0, v2, v3

    .line 491
    .line 492
    :cond_2b
    invoke-virtual {v1, v0, v7}, Landroidx/constraintlayout/core/widgets/Flow;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/Flow;->X0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 497
    .line 498
    aget-object v14, v14, v4

    .line 499
    .line 500
    if-eqz v14, :cond_2c

    .line 501
    .line 502
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 503
    .line 504
    .line 505
    move-result v14

    .line 506
    if-ge v14, v2, :cond_2d

    .line 507
    .line 508
    :cond_2c
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->X0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 509
    .line 510
    aput-object v0, v2, v4

    .line 511
    .line 512
    :cond_2d
    :goto_18
    add-int/lit8 v4, v4, 0x1

    .line 513
    .line 514
    move/from16 v0, v22

    .line 515
    .line 516
    move/from16 v2, v23

    .line 517
    .line 518
    goto :goto_16

    .line 519
    :cond_2e
    move/from16 v22, v0

    .line 520
    .line 521
    move/from16 v23, v2

    .line 522
    .line 523
    add-int/lit8 v3, v3, 0x1

    .line 524
    .line 525
    goto :goto_15

    .line 526
    :cond_2f
    move/from16 v22, v0

    .line 527
    .line 528
    move/from16 v23, v2

    .line 529
    .line 530
    const/4 v0, 0x0

    .line 531
    const/4 v2, 0x0

    .line 532
    :goto_19
    if-ge v2, v5, :cond_32

    .line 533
    .line 534
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->Y0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 535
    .line 536
    aget-object v3, v3, v2

    .line 537
    .line 538
    if-eqz v3, :cond_31

    .line 539
    .line 540
    if-lez v2, :cond_30

    .line 541
    .line 542
    iget v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 543
    .line 544
    add-int/2addr v0, v4

    .line 545
    :cond_30
    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/core/widgets/Flow;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    add-int/2addr v3, v0

    .line 550
    move v0, v3

    .line 551
    :cond_31
    add-int/lit8 v2, v2, 0x1

    .line 552
    .line 553
    goto :goto_19

    .line 554
    :cond_32
    const/4 v2, 0x0

    .line 555
    const/4 v3, 0x0

    .line 556
    :goto_1a
    if-ge v3, v13, :cond_35

    .line 557
    .line 558
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->X0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 559
    .line 560
    aget-object v4, v4, v3

    .line 561
    .line 562
    if-eqz v4, :cond_34

    .line 563
    .line 564
    if-lez v3, :cond_33

    .line 565
    .line 566
    iget v14, v1, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 567
    .line 568
    add-int/2addr v2, v14

    .line 569
    :cond_33
    invoke-virtual {v1, v4, v7}, Landroidx/constraintlayout/core/widgets/Flow;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 570
    .line 571
    .line 572
    move-result v4

    .line 573
    add-int/2addr v4, v2

    .line 574
    move v2, v4

    .line 575
    :cond_34
    add-int/lit8 v3, v3, 0x1

    .line 576
    .line 577
    goto :goto_1a

    .line 578
    :cond_35
    const/16 v17, 0x0

    .line 579
    .line 580
    aput v0, v6, v17

    .line 581
    .line 582
    const/4 v3, 0x1

    .line 583
    aput v2, v6, v3

    .line 584
    .line 585
    if-nez v23, :cond_37

    .line 586
    .line 587
    if-le v0, v7, :cond_36

    .line 588
    .line 589
    if-le v5, v3, :cond_36

    .line 590
    .line 591
    add-int/lit8 v5, v5, -0x1

    .line 592
    .line 593
    goto :goto_1b

    .line 594
    :cond_36
    move v12, v3

    .line 595
    goto :goto_1b

    .line 596
    :cond_37
    if-le v2, v7, :cond_36

    .line 597
    .line 598
    if-le v13, v3, :cond_36

    .line 599
    .line 600
    add-int/lit8 v13, v13, -0x1

    .line 601
    .line 602
    :goto_1b
    move/from16 v3, v18

    .line 603
    .line 604
    move/from16 v4, v20

    .line 605
    .line 606
    move/from16 v0, v22

    .line 607
    .line 608
    move/from16 v2, v23

    .line 609
    .line 610
    goto/16 :goto_f

    .line 611
    .line 612
    :cond_38
    move/from16 v18, v3

    .line 613
    .line 614
    move/from16 v20, v4

    .line 615
    .line 616
    const/4 v3, 0x1

    .line 617
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/Flow;->Z0:[I

    .line 618
    .line 619
    const/16 v17, 0x0

    .line 620
    .line 621
    aput v5, v0, v17

    .line 622
    .line 623
    aput v13, v0, v3

    .line 624
    .line 625
    move/from16 v30, v3

    .line 626
    .line 627
    move-object/from16 v34, v6

    .line 628
    .line 629
    move/from16 v35, v17

    .line 630
    .line 631
    move/from16 v32, v18

    .line 632
    .line 633
    move/from16 v17, v19

    .line 634
    .line 635
    move/from16 v33, v20

    .line 636
    .line 637
    move/from16 v18, v21

    .line 638
    .line 639
    goto/16 :goto_2d

    .line 640
    .line 641
    :cond_39
    move/from16 v22, v0

    .line 642
    .line 643
    move/from16 v18, v3

    .line 644
    .line 645
    move/from16 v20, v4

    .line 646
    .line 647
    const/16 v17, 0x0

    .line 648
    .line 649
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->V0:I

    .line 650
    .line 651
    if-nez v22, :cond_3a

    .line 652
    .line 653
    move-object/from16 v34, v6

    .line 654
    .line 655
    move/from16 v35, v17

    .line 656
    .line 657
    move/from16 v32, v18

    .line 658
    .line 659
    move/from16 v17, v19

    .line 660
    .line 661
    move/from16 v33, v20

    .line 662
    .line 663
    move/from16 v18, v21

    .line 664
    .line 665
    goto/16 :goto_2a

    .line 666
    .line 667
    :cond_3a
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 668
    .line 669
    .line 670
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 671
    .line 672
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 673
    .line 674
    move-object v3, v6

    .line 675
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 676
    .line 677
    move-object v4, v3

    .line 678
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 679
    .line 680
    move-object/from16 v16, v4

    .line 681
    .line 682
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 683
    .line 684
    move-object/from16 v31, v15

    .line 685
    .line 686
    move-object/from16 v34, v16

    .line 687
    .line 688
    move/from16 v35, v17

    .line 689
    .line 690
    move/from16 v32, v18

    .line 691
    .line 692
    move/from16 v17, v19

    .line 693
    .line 694
    move/from16 v33, v20

    .line 695
    .line 696
    move/from16 v18, v21

    .line 697
    .line 698
    move/from16 v15, v22

    .line 699
    .line 700
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    if-nez v2, :cond_41

    .line 707
    .line 708
    move/from16 v3, v35

    .line 709
    .line 710
    move v4, v3

    .line 711
    move v5, v4

    .line 712
    :goto_1c
    if-ge v3, v15, :cond_49

    .line 713
    .line 714
    aget-object v6, v31, v3

    .line 715
    .line 716
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/core/widgets/Flow;->R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 717
    .line 718
    .line 719
    move-result v16

    .line 720
    move/from16 v20, v2

    .line 721
    .line 722
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 723
    .line 724
    aget-object v2, v2, v35

    .line 725
    .line 726
    if-ne v2, v13, :cond_3b

    .line 727
    .line 728
    add-int/lit8 v4, v4, 0x1

    .line 729
    .line 730
    :cond_3b
    move/from16 v19, v4

    .line 731
    .line 732
    if-eq v5, v7, :cond_3c

    .line 733
    .line 734
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 735
    .line 736
    add-int/2addr v2, v5

    .line 737
    add-int v2, v2, v16

    .line 738
    .line 739
    if-le v2, v7, :cond_3d

    .line 740
    .line 741
    :cond_3c
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 742
    .line 743
    if-eqz v2, :cond_3d

    .line 744
    .line 745
    const/4 v2, 0x1

    .line 746
    goto :goto_1d

    .line 747
    :cond_3d
    move/from16 v2, v35

    .line 748
    .line 749
    :goto_1d
    if-nez v2, :cond_3e

    .line 750
    .line 751
    if-lez v3, :cond_3e

    .line 752
    .line 753
    iget v4, v1, Landroidx/constraintlayout/core/widgets/Flow;->U0:I

    .line 754
    .line 755
    if-lez v4, :cond_3e

    .line 756
    .line 757
    rem-int v4, v3, v4

    .line 758
    .line 759
    if-nez v4, :cond_3e

    .line 760
    .line 761
    const/4 v2, 0x1

    .line 762
    :cond_3e
    if-eqz v2, :cond_40

    .line 763
    .line 764
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 765
    .line 766
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 767
    .line 768
    move-object v2, v6

    .line 769
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 770
    .line 771
    move v4, v3

    .line 772
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 773
    .line 774
    move/from16 v21, v4

    .line 775
    .line 776
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 777
    .line 778
    move-object v10, v2

    .line 779
    move/from16 v2, v20

    .line 780
    .line 781
    move/from16 v11, v21

    .line 782
    .line 783
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 784
    .line 785
    .line 786
    iput v11, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 787
    .line 788
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    :cond_3f
    move/from16 v5, v16

    .line 792
    .line 793
    goto :goto_1e

    .line 794
    :cond_40
    move v11, v3

    .line 795
    move-object v10, v6

    .line 796
    move/from16 v2, v20

    .line 797
    .line 798
    if-lez v11, :cond_3f

    .line 799
    .line 800
    iget v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 801
    .line 802
    add-int v3, v3, v16

    .line 803
    .line 804
    add-int/2addr v3, v5

    .line 805
    move v5, v3

    .line 806
    :goto_1e
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 807
    .line 808
    .line 809
    add-int/lit8 v3, v11, 0x1

    .line 810
    .line 811
    move/from16 v4, v19

    .line 812
    .line 813
    goto :goto_1c

    .line 814
    :cond_41
    move/from16 v3, v35

    .line 815
    .line 816
    move v4, v3

    .line 817
    move v10, v4

    .line 818
    :goto_1f
    if-ge v10, v15, :cond_48

    .line 819
    .line 820
    aget-object v11, v31, v10

    .line 821
    .line 822
    invoke-virtual {v1, v11, v7}, Landroidx/constraintlayout/core/widgets/Flow;->Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    .line 823
    .line 824
    .line 825
    move-result v16

    .line 826
    iget-object v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 827
    .line 828
    const/16 v30, 0x1

    .line 829
    .line 830
    aget-object v5, v5, v30

    .line 831
    .line 832
    if-ne v5, v13, :cond_42

    .line 833
    .line 834
    add-int/lit8 v3, v3, 0x1

    .line 835
    .line 836
    :cond_42
    move/from16 v19, v3

    .line 837
    .line 838
    if-eq v4, v7, :cond_43

    .line 839
    .line 840
    iget v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 841
    .line 842
    add-int/2addr v3, v4

    .line 843
    add-int v3, v3, v16

    .line 844
    .line 845
    if-le v3, v7, :cond_44

    .line 846
    .line 847
    :cond_43
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 848
    .line 849
    if-eqz v3, :cond_44

    .line 850
    .line 851
    const/4 v3, 0x1

    .line 852
    goto :goto_20

    .line 853
    :cond_44
    move/from16 v3, v35

    .line 854
    .line 855
    :goto_20
    if-nez v3, :cond_45

    .line 856
    .line 857
    if-lez v10, :cond_45

    .line 858
    .line 859
    iget v5, v1, Landroidx/constraintlayout/core/widgets/Flow;->U0:I

    .line 860
    .line 861
    if-lez v5, :cond_45

    .line 862
    .line 863
    rem-int v5, v10, v5

    .line 864
    .line 865
    if-nez v5, :cond_45

    .line 866
    .line 867
    const/4 v3, 0x1

    .line 868
    :cond_45
    if-eqz v3, :cond_47

    .line 869
    .line 870
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 871
    .line 872
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 873
    .line 874
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 875
    .line 876
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 877
    .line 878
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 879
    .line 880
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 881
    .line 882
    .line 883
    iput v10, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 884
    .line 885
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    :cond_46
    move/from16 v4, v16

    .line 889
    .line 890
    goto :goto_21

    .line 891
    :cond_47
    if-lez v10, :cond_46

    .line 892
    .line 893
    iget v3, v1, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 894
    .line 895
    add-int v3, v3, v16

    .line 896
    .line 897
    add-int/2addr v3, v4

    .line 898
    move v4, v3

    .line 899
    :goto_21
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 900
    .line 901
    .line 902
    add-int/lit8 v10, v10, 0x1

    .line 903
    .line 904
    move/from16 v3, v19

    .line 905
    .line 906
    goto :goto_1f

    .line 907
    :cond_48
    move v4, v3

    .line 908
    :cond_49
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    iget v3, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->w0:I

    .line 913
    .line 914
    iget v5, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->s0:I

    .line 915
    .line 916
    iget v6, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->x0:I

    .line 917
    .line 918
    iget v10, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->t0:I

    .line 919
    .line 920
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 921
    .line 922
    aget-object v13, v11, v35

    .line 923
    .line 924
    if-eq v13, v14, :cond_4b

    .line 925
    .line 926
    const/16 v30, 0x1

    .line 927
    .line 928
    aget-object v11, v11, v30

    .line 929
    .line 930
    if-ne v11, v14, :cond_4a

    .line 931
    .line 932
    goto :goto_22

    .line 933
    :cond_4a
    move/from16 v11, v35

    .line 934
    .line 935
    goto :goto_23

    .line 936
    :cond_4b
    :goto_22
    const/4 v11, 0x1

    .line 937
    :goto_23
    if-lez v4, :cond_4d

    .line 938
    .line 939
    if-eqz v11, :cond_4d

    .line 940
    .line 941
    move/from16 v4, v35

    .line 942
    .line 943
    :goto_24
    if-ge v4, v0, :cond_4d

    .line 944
    .line 945
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v11

    .line 949
    check-cast v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 950
    .line 951
    if-nez v2, :cond_4c

    .line 952
    .line 953
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d()I

    .line 954
    .line 955
    .line 956
    move-result v13

    .line 957
    sub-int v13, v7, v13

    .line 958
    .line 959
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->e(I)V

    .line 960
    .line 961
    .line 962
    goto :goto_25

    .line 963
    :cond_4c
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c()I

    .line 964
    .line 965
    .line 966
    move-result v13

    .line 967
    sub-int v13, v7, v13

    .line 968
    .line 969
    invoke-virtual {v11, v13}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->e(I)V

    .line 970
    .line 971
    .line 972
    :goto_25
    add-int/lit8 v4, v4, 0x1

    .line 973
    .line 974
    goto :goto_24

    .line 975
    :cond_4d
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 976
    .line 977
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 978
    .line 979
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 980
    .line 981
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 982
    .line 983
    move/from16 v25, v3

    .line 984
    .line 985
    move-object/from16 v24, v4

    .line 986
    .line 987
    move/from16 v26, v5

    .line 988
    .line 989
    move/from16 v27, v6

    .line 990
    .line 991
    move/from16 v28, v10

    .line 992
    .line 993
    move-object/from16 v23, v11

    .line 994
    .line 995
    move-object/from16 v21, v13

    .line 996
    .line 997
    move-object/from16 v22, v14

    .line 998
    .line 999
    move/from16 v3, v35

    .line 1000
    .line 1001
    move v5, v3

    .line 1002
    move v6, v5

    .line 1003
    :goto_26
    if-ge v3, v0, :cond_53

    .line 1004
    .line 1005
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v10

    .line 1009
    check-cast v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1010
    .line 1011
    if-nez v2, :cond_50

    .line 1012
    .line 1013
    add-int/lit8 v13, v0, -0x1

    .line 1014
    .line 1015
    if-ge v3, v13, :cond_4e

    .line 1016
    .line 1017
    add-int/lit8 v13, v3, 0x1

    .line 1018
    .line 1019
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v13

    .line 1023
    check-cast v13, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1024
    .line 1025
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1026
    .line 1027
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1028
    .line 1029
    move-object/from16 v24, v13

    .line 1030
    .line 1031
    move/from16 v28, v35

    .line 1032
    .line 1033
    goto :goto_27

    .line 1034
    :cond_4e
    iget v13, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->t0:I

    .line 1035
    .line 1036
    move-object/from16 v24, v4

    .line 1037
    .line 1038
    move/from16 v28, v13

    .line 1039
    .line 1040
    :goto_27
    iget-object v13, v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1041
    .line 1042
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1043
    .line 1044
    move/from16 v20, v2

    .line 1045
    .line 1046
    move/from16 v29, v7

    .line 1047
    .line 1048
    move-object/from16 v19, v10

    .line 1049
    .line 1050
    invoke-virtual/range {v19 .. v29}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d()I

    .line 1054
    .line 1055
    .line 1056
    move-result v14

    .line 1057
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    .line 1058
    .line 1059
    .line 1060
    move-result v5

    .line 1061
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c()I

    .line 1062
    .line 1063
    .line 1064
    move-result v10

    .line 1065
    add-int/2addr v6, v10

    .line 1066
    if-lez v3, :cond_4f

    .line 1067
    .line 1068
    iget v10, v1, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 1069
    .line 1070
    add-int/2addr v6, v10

    .line 1071
    :cond_4f
    move-object/from16 v22, v13

    .line 1072
    .line 1073
    move/from16 v26, v35

    .line 1074
    .line 1075
    goto :goto_29

    .line 1076
    :cond_50
    add-int/lit8 v13, v0, -0x1

    .line 1077
    .line 1078
    if-ge v3, v13, :cond_51

    .line 1079
    .line 1080
    add-int/lit8 v13, v3, 0x1

    .line 1081
    .line 1082
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v13

    .line 1086
    check-cast v13, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1087
    .line 1088
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1089
    .line 1090
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1091
    .line 1092
    move-object/from16 v23, v13

    .line 1093
    .line 1094
    move/from16 v27, v35

    .line 1095
    .line 1096
    goto :goto_28

    .line 1097
    :cond_51
    iget v13, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->x0:I

    .line 1098
    .line 1099
    move-object/from16 v23, v11

    .line 1100
    .line 1101
    move/from16 v27, v13

    .line 1102
    .line 1103
    :goto_28
    iget-object v13, v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1104
    .line 1105
    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1106
    .line 1107
    move/from16 v20, v2

    .line 1108
    .line 1109
    move/from16 v29, v7

    .line 1110
    .line 1111
    move-object/from16 v19, v10

    .line 1112
    .line 1113
    invoke-virtual/range {v19 .. v29}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d()I

    .line 1117
    .line 1118
    .line 1119
    move-result v10

    .line 1120
    add-int/2addr v5, v10

    .line 1121
    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c()I

    .line 1122
    .line 1123
    .line 1124
    move-result v10

    .line 1125
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    .line 1126
    .line 1127
    .line 1128
    move-result v6

    .line 1129
    if-lez v3, :cond_52

    .line 1130
    .line 1131
    iget v10, v1, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 1132
    .line 1133
    add-int/2addr v5, v10

    .line 1134
    :cond_52
    move-object/from16 v21, v13

    .line 1135
    .line 1136
    move/from16 v25, v35

    .line 1137
    .line 1138
    :goto_29
    add-int/lit8 v3, v3, 0x1

    .line 1139
    .line 1140
    goto/16 :goto_26

    .line 1141
    .line 1142
    :cond_53
    aput v5, v34, v35

    .line 1143
    .line 1144
    const/16 v30, 0x1

    .line 1145
    .line 1146
    aput v6, v34, v30

    .line 1147
    .line 1148
    :goto_2a
    const/16 v30, 0x1

    .line 1149
    .line 1150
    goto/16 :goto_2d

    .line 1151
    .line 1152
    :cond_54
    move/from16 v32, v3

    .line 1153
    .line 1154
    move/from16 v33, v4

    .line 1155
    .line 1156
    move-object/from16 v34, v6

    .line 1157
    .line 1158
    move-object/from16 v31, v15

    .line 1159
    .line 1160
    move/from16 v17, v19

    .line 1161
    .line 1162
    move/from16 v18, v21

    .line 1163
    .line 1164
    const/16 v35, 0x0

    .line 1165
    .line 1166
    move v15, v0

    .line 1167
    iget v2, v1, Landroidx/constraintlayout/core/widgets/Flow;->V0:I

    .line 1168
    .line 1169
    if-nez v15, :cond_55

    .line 1170
    .line 1171
    goto :goto_2a

    .line 1172
    :cond_55
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 1173
    .line 1174
    .line 1175
    move-result v0

    .line 1176
    if-nez v0, :cond_56

    .line 1177
    .line 1178
    new-instance v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1179
    .line 1180
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1181
    .line 1182
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1183
    .line 1184
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1185
    .line 1186
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1187
    .line 1188
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    .line 1193
    .line 1194
    goto :goto_2b

    .line 1195
    :cond_56
    move/from16 v5, v35

    .line 1196
    .line 1197
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 1202
    .line 1203
    iput v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c:I

    .line 1204
    .line 1205
    const/4 v4, 0x0

    .line 1206
    iput-object v4, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1207
    .line 1208
    iput v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->l:I

    .line 1209
    .line 1210
    iput v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->m:I

    .line 1211
    .line 1212
    iput v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->n:I

    .line 1213
    .line 1214
    iput v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->o:I

    .line 1215
    .line 1216
    iput v5, v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->p:I

    .line 1217
    .line 1218
    iget v3, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->w0:I

    .line 1219
    .line 1220
    iget v4, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->s0:I

    .line 1221
    .line 1222
    iget v5, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->x0:I

    .line 1223
    .line 1224
    iget v6, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->t0:I

    .line 1225
    .line 1226
    iget-object v10, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1227
    .line 1228
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1229
    .line 1230
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1231
    .line 1232
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1233
    .line 1234
    move-object/from16 v19, v0

    .line 1235
    .line 1236
    move/from16 v20, v2

    .line 1237
    .line 1238
    move/from16 v25, v3

    .line 1239
    .line 1240
    move/from16 v26, v4

    .line 1241
    .line 1242
    move/from16 v27, v5

    .line 1243
    .line 1244
    move/from16 v28, v6

    .line 1245
    .line 1246
    move/from16 v29, v7

    .line 1247
    .line 1248
    move-object/from16 v21, v10

    .line 1249
    .line 1250
    move-object/from16 v22, v11

    .line 1251
    .line 1252
    move-object/from16 v23, v12

    .line 1253
    .line 1254
    move-object/from16 v24, v13

    .line 1255
    .line 1256
    invoke-virtual/range {v19 .. v29}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->f(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    .line 1257
    .line 1258
    .line 1259
    :goto_2b
    const/4 v3, 0x0

    .line 1260
    :goto_2c
    if-ge v3, v15, :cond_57

    .line 1261
    .line 1262
    aget-object v2, v31, v3

    .line 1263
    .line 1264
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 1265
    .line 1266
    .line 1267
    add-int/lit8 v3, v3, 0x1

    .line 1268
    .line 1269
    goto :goto_2c

    .line 1270
    :cond_57
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->d()I

    .line 1271
    .line 1272
    .line 1273
    move-result v2

    .line 1274
    const/16 v35, 0x0

    .line 1275
    .line 1276
    aput v2, v34, v35

    .line 1277
    .line 1278
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->c()I

    .line 1279
    .line 1280
    .line 1281
    move-result v0

    .line 1282
    const/16 v30, 0x1

    .line 1283
    .line 1284
    aput v0, v34, v30

    .line 1285
    .line 1286
    :goto_2d
    aget v0, v34, v35

    .line 1287
    .line 1288
    add-int v0, v0, v17

    .line 1289
    .line 1290
    add-int v0, v0, v18

    .line 1291
    .line 1292
    aget v2, v34, v30

    .line 1293
    .line 1294
    add-int v2, v2, v32

    .line 1295
    .line 1296
    add-int v2, v2, v33

    .line 1297
    .line 1298
    const/high16 v3, -0x80000000

    .line 1299
    .line 1300
    const/high16 v4, 0x40000000    # 2.0f

    .line 1301
    .line 1302
    if-ne v8, v4, :cond_58

    .line 1303
    .line 1304
    move/from16 v10, p3

    .line 1305
    .line 1306
    move v0, v9

    .line 1307
    goto :goto_2e

    .line 1308
    :cond_58
    if-ne v8, v3, :cond_59

    .line 1309
    .line 1310
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    .line 1311
    .line 1312
    .line 1313
    move-result v0

    .line 1314
    move/from16 v10, p3

    .line 1315
    .line 1316
    goto :goto_2e

    .line 1317
    :cond_59
    move/from16 v10, p3

    .line 1318
    .line 1319
    if-nez v8, :cond_5a

    .line 1320
    .line 1321
    goto :goto_2e

    .line 1322
    :cond_5a
    move/from16 v0, v35

    .line 1323
    .line 1324
    :goto_2e
    if-ne v10, v4, :cond_5b

    .line 1325
    .line 1326
    move/from16 v2, p4

    .line 1327
    .line 1328
    goto :goto_2f

    .line 1329
    :cond_5b
    if-ne v10, v3, :cond_5c

    .line 1330
    .line 1331
    move/from16 v11, p4

    .line 1332
    .line 1333
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    .line 1334
    .line 1335
    .line 1336
    move-result v2

    .line 1337
    goto :goto_2f

    .line 1338
    :cond_5c
    if-nez v10, :cond_5d

    .line 1339
    .line 1340
    goto :goto_2f

    .line 1341
    :cond_5d
    move/from16 v2, v35

    .line 1342
    .line 1343
    :goto_2f
    iput v0, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->z0:I

    .line 1344
    .line 1345
    iput v2, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->A0:I

    .line 1346
    .line 1347
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 1351
    .line 1352
    .line 1353
    iget v0, v1, Landroidx/constraintlayout/core/widgets/HelperWidget;->r0:I

    .line 1354
    .line 1355
    if-lez v0, :cond_5e

    .line 1356
    .line 1357
    move/from16 v15, v30

    .line 1358
    .line 1359
    goto :goto_30

    .line 1360
    :cond_5e
    move/from16 v15, v35

    .line 1361
    .line 1362
    :goto_30
    iput-boolean v15, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;->y0:Z

    .line 1363
    .line 1364
    return-void
.end method

.method public final Q(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aget-object v1, v1, v2

    .line 9
    .line 10
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    .line 12
    if-ne v1, v3, :cond_5

    .line 13
    .line 14
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v3, 0x2

    .line 20
    if-ne v1, v3, :cond_3

    .line 21
    .line 22
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:F

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v1, p2

    .line 26
    float-to-int v8, v1

    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eq v8, p2, :cond_2

    .line 32
    .line 33
    iput-boolean v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 34
    .line 35
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    aget-object v5, p2, v0

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    move-object v3, p0

    .line 46
    move-object v4, p1

    .line 47
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->P(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return v8

    .line 51
    :cond_3
    move-object v4, p1

    .line 52
    if-ne v1, v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_4
    const/4 p1, 0x3

    .line 60
    if-ne v1, p1, :cond_6

    .line 61
    .line 62
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    int-to-float p1, p1

    .line 67
    iget p2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 68
    .line 69
    mul-float/2addr p1, p2

    .line 70
    const/high16 p2, 0x3f000000    # 0.5f

    .line 71
    .line 72
    add-float/2addr p1, p2

    .line 73
    float-to-int p1, p1

    .line 74
    return p1

    .line 75
    :cond_5
    move-object v4, p1

    .line 76
    :cond_6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1
.end method

.method public final R(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 10
    .line 11
    if-ne v1, v2, :cond_5

    .line 12
    .line 13
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x2

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v0, :cond_3

    .line 21
    .line 22
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:F

    .line 23
    .line 24
    int-to-float p2, p2

    .line 25
    mul-float/2addr v0, p2

    .line 26
    float-to-int v6, v0

    .line 27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eq v6, p2, :cond_2

    .line 32
    .line 33
    iput-boolean v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g:Z

    .line 34
    .line 35
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 36
    .line 37
    aget-object v7, p2, v2

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 44
    .line 45
    move-object v3, p0

    .line 46
    move-object v4, p1

    .line 47
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->P(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return v6

    .line 51
    :cond_3
    move-object v4, p1

    .line 52
    if-ne v1, v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :cond_4
    const/4 p1, 0x3

    .line 60
    if-ne v1, p1, :cond_6

    .line 61
    .line 62
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    int-to-float p1, p1

    .line 67
    iget p2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 68
    .line 69
    mul-float/2addr p1, p2

    .line 70
    const/high16 p2, 0x3f000000    # 0.5f

    .line 71
    .line 72
    add-float/2addr p1, p2

    .line 73
    float-to-int p1, p1

    .line 74
    return p1

    .line 75
    :cond_5
    move-object v4, p1

    .line 76
    :cond_6
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1
.end method

.method public final c(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->W0:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 13
    .line 14
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->v0:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    move p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p1, p2

    .line 21
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->T0:I

    .line 22
    .line 23
    if-eqz v2, :cond_19

    .line 24
    .line 25
    if-eq v2, v1, :cond_17

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    if-eq v2, v0, :cond_1

    .line 29
    .line 30
    goto/16 :goto_c

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->Z0:[I

    .line 33
    .line 34
    if-eqz v0, :cond_1a

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->Y0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 37
    .line 38
    if-eqz v0, :cond_1a

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->X0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto/16 :goto_c

    .line 45
    .line 46
    :cond_2
    move v0, p2

    .line 47
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->b1:I

    .line 48
    .line 49
    if-ge v0, v2, :cond_3

    .line 50
    .line 51
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 52
    .line 53
    aget-object v2, v2, v0

    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B()V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->Z0:[I

    .line 62
    .line 63
    aget v2, v0, p2

    .line 64
    .line 65
    aget v0, v0, v1

    .line 66
    .line 67
    iget v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->J0:F

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    move v5, p2

    .line 71
    :goto_2
    const/16 v6, 0x8

    .line 72
    .line 73
    if-ge v5, v2, :cond_a

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    sub-int v3, v2, v5

    .line 78
    .line 79
    sub-int/2addr v3, v1

    .line 80
    const/high16 v7, 0x3f800000    # 1.0f

    .line 81
    .line 82
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->J0:F

    .line 83
    .line 84
    sub-float/2addr v7, v8

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    move v7, v3

    .line 87
    move v3, v5

    .line 88
    :goto_3
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->Y0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 89
    .line 90
    aget-object v3, v8, v3

    .line 91
    .line 92
    if-eqz v3, :cond_9

    .line 93
    .line 94
    iget-object v8, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    .line 96
    iget v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 97
    .line 98
    if-ne v9, v6, :cond_5

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    if-nez v5, :cond_6

    .line 102
    .line 103
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 104
    .line 105
    iget v9, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->w0:I

    .line 106
    .line 107
    invoke-virtual {v3, v8, v6, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 108
    .line 109
    .line 110
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->D0:I

    .line 111
    .line 112
    iput v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 113
    .line 114
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 115
    .line 116
    :cond_6
    add-int/lit8 v6, v2, -0x1

    .line 117
    .line 118
    if-ne v5, v6, :cond_7

    .line 119
    .line 120
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 121
    .line 122
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 123
    .line 124
    iget v10, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->x0:I

    .line 125
    .line 126
    invoke-virtual {v3, v6, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 127
    .line 128
    .line 129
    :cond_7
    if-lez v5, :cond_8

    .line 130
    .line 131
    if-eqz v4, :cond_8

    .line 132
    .line 133
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 134
    .line 135
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->P0:I

    .line 136
    .line 137
    invoke-virtual {v3, v8, v6, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v6, v8, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 141
    .line 142
    .line 143
    :cond_8
    move-object v4, v3

    .line 144
    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 145
    .line 146
    move v3, v7

    .line 147
    goto :goto_2

    .line 148
    :cond_a
    move p1, p2

    .line 149
    :goto_5
    if-ge p1, v0, :cond_10

    .line 150
    .line 151
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->X0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 152
    .line 153
    aget-object v3, v3, p1

    .line 154
    .line 155
    if-eqz v3, :cond_f

    .line 156
    .line 157
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 158
    .line 159
    iget v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 160
    .line 161
    if-ne v7, v6, :cond_b

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_b
    if-nez p1, :cond_c

    .line 165
    .line 166
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 167
    .line 168
    iget v8, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->s0:I

    .line 169
    .line 170
    invoke-virtual {v3, v5, v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 171
    .line 172
    .line 173
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->E0:I

    .line 174
    .line 175
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:I

    .line 176
    .line 177
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->K0:F

    .line 178
    .line 179
    iput v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 180
    .line 181
    :cond_c
    add-int/lit8 v7, v0, -0x1

    .line 182
    .line 183
    if-ne p1, v7, :cond_d

    .line 184
    .line 185
    iget-object v7, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 186
    .line 187
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 188
    .line 189
    iget v9, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->t0:I

    .line 190
    .line 191
    invoke-virtual {v3, v7, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 192
    .line 193
    .line 194
    :cond_d
    if-lez p1, :cond_e

    .line 195
    .line 196
    if-eqz v4, :cond_e

    .line 197
    .line 198
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 199
    .line 200
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->Q0:I

    .line 201
    .line 202
    invoke-virtual {v3, v5, v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4, v7, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 206
    .line 207
    .line 208
    :cond_e
    move-object v4, v3

    .line 209
    :cond_f
    :goto_6
    add-int/lit8 p1, p1, 0x1

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_10
    move p1, p2

    .line 213
    :goto_7
    if-ge p1, v2, :cond_1a

    .line 214
    .line 215
    move v3, p2

    .line 216
    :goto_8
    if-ge v3, v0, :cond_16

    .line 217
    .line 218
    mul-int v4, v3, v2

    .line 219
    .line 220
    add-int/2addr v4, p1

    .line 221
    iget v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->V0:I

    .line 222
    .line 223
    if-ne v5, v1, :cond_11

    .line 224
    .line 225
    mul-int v4, p1, v0

    .line 226
    .line 227
    add-int/2addr v4, v3

    .line 228
    :cond_11
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->a1:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 229
    .line 230
    array-length v7, v5

    .line 231
    if-lt v4, v7, :cond_12

    .line 232
    .line 233
    goto :goto_9

    .line 234
    :cond_12
    aget-object v4, v5, v4

    .line 235
    .line 236
    if-eqz v4, :cond_15

    .line 237
    .line 238
    iget v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 239
    .line 240
    if-ne v5, v6, :cond_13

    .line 241
    .line 242
    goto :goto_9

    .line 243
    :cond_13
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->Y0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 244
    .line 245
    aget-object v5, v5, p1

    .line 246
    .line 247
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->X0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 248
    .line 249
    aget-object v7, v7, v3

    .line 250
    .line 251
    if-eq v4, v5, :cond_14

    .line 252
    .line 253
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 254
    .line 255
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 256
    .line 257
    invoke-virtual {v4, v8, v9, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 258
    .line 259
    .line 260
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 261
    .line 262
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 263
    .line 264
    invoke-virtual {v4, v8, v5, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 265
    .line 266
    .line 267
    :cond_14
    if-eq v4, v7, :cond_15

    .line 268
    .line 269
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 270
    .line 271
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 272
    .line 273
    invoke-virtual {v4, v5, v8, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 274
    .line 275
    .line 276
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 277
    .line 278
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->L:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 279
    .line 280
    invoke-virtual {v4, v5, v7, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    .line 281
    .line 282
    .line 283
    :cond_15
    :goto_9
    add-int/lit8 v3, v3, 0x1

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_16
    add-int/lit8 p1, p1, 0x1

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    move v3, p2

    .line 294
    :goto_a
    if-ge v3, v2, :cond_1a

    .line 295
    .line 296
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    check-cast v4, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 301
    .line 302
    add-int/lit8 v5, v2, -0x1

    .line 303
    .line 304
    if-ne v3, v5, :cond_18

    .line 305
    .line 306
    move v5, v1

    .line 307
    goto :goto_b

    .line 308
    :cond_18
    move v5, p2

    .line 309
    :goto_b
    invoke-virtual {v4, v3, p1, v5}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b(IZZ)V

    .line 310
    .line 311
    .line 312
    add-int/lit8 v3, v3, 0x1

    .line 313
    .line 314
    goto :goto_a

    .line 315
    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-lez v2, :cond_1a

    .line 320
    .line 321
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    .line 326
    .line 327
    invoke-virtual {v0, p2, p1, v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->b(IZZ)V

    .line 328
    .line 329
    .line 330
    :cond_1a
    :goto_c
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;->y0:Z

    .line 331
    .line 332
    return-void
.end method
