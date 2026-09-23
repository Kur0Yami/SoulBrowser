.class Landroidx/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiListener"
.end annotation


# instance fields
.field public c:Landroidx/transition/Transition;

.field public f:Landroid/view/ViewGroup;


# virtual methods
.method public final onPreDraw()Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/transition/TransitionManager$MultiListener;->c:Landroidx/transition/Transition;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/transition/TransitionManager$MultiListener;->f:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 15
    .line 16
    .line 17
    sget-object v3, Landroidx/transition/TransitionManager;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v7, 0x1

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    return v7

    .line 27
    :cond_0
    invoke-static {}, Landroidx/transition/TransitionManager;->b()Landroidx/collection/ArrayMap;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/util/ArrayList;

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v2, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    const/4 v6, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-lez v6, :cond_1

    .line 54
    .line 55
    new-instance v6, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance v4, Landroidx/transition/TransitionManager$MultiListener$1;

    .line 64
    .line 65
    invoke-direct {v4, v0, v3}, Landroidx/transition/TransitionManager$MultiListener$1;-><init>(Landroidx/transition/TransitionManager$MultiListener;Landroidx/collection/ArrayMap;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$TransitionListener;)V

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v1, v2, v3}, Landroidx/transition/Transition;->i(Landroid/view/ViewGroup;Z)V

    .line 73
    .line 74
    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    move v8, v3

    .line 82
    :goto_1
    if-ge v8, v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    add-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    check-cast v9, Landroidx/transition/Transition;

    .line 91
    .line 92
    invoke-virtual {v9, v2}, Landroidx/transition/Transition;->D(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v4, v1, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 102
    .line 103
    new-instance v4, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v4, v1, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 109
    .line 110
    iget-object v4, v1, Landroidx/transition/Transition;->l:Landroidx/transition/TransitionValuesMaps;

    .line 111
    .line 112
    iget-object v6, v1, Landroidx/transition/Transition;->m:Landroidx/transition/TransitionValuesMaps;

    .line 113
    .line 114
    new-instance v8, Landroidx/collection/ArrayMap;

    .line 115
    .line 116
    iget-object v9, v4, Landroidx/transition/TransitionValuesMaps;->a:Landroidx/collection/ArrayMap;

    .line 117
    .line 118
    invoke-direct {v8, v9}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 119
    .line 120
    .line 121
    new-instance v9, Landroidx/collection/ArrayMap;

    .line 122
    .line 123
    iget-object v10, v6, Landroidx/transition/TransitionValuesMaps;->a:Landroidx/collection/ArrayMap;

    .line 124
    .line 125
    invoke-direct {v9, v10}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 126
    .line 127
    .line 128
    move v10, v3

    .line 129
    :goto_2
    iget-object v11, v1, Landroidx/transition/Transition;->o:[I

    .line 130
    .line 131
    array-length v12, v11

    .line 132
    if-ge v10, v12, :cond_f

    .line 133
    .line 134
    aget v11, v11, v10

    .line 135
    .line 136
    if-eq v11, v7, :cond_c

    .line 137
    .line 138
    const/4 v12, 0x2

    .line 139
    if-eq v11, v12, :cond_a

    .line 140
    .line 141
    const/4 v12, 0x3

    .line 142
    if-eq v11, v12, :cond_8

    .line 143
    .line 144
    const/4 v12, 0x4

    .line 145
    if-eq v11, v12, :cond_4

    .line 146
    .line 147
    move-object v5, v6

    .line 148
    move/from16 v18, v7

    .line 149
    .line 150
    goto/16 :goto_9

    .line 151
    .line 152
    :cond_4
    iget-object v11, v4, Landroidx/transition/TransitionValuesMaps;->c:Landroidx/collection/LongSparseArray;

    .line 153
    .line 154
    iget-object v12, v6, Landroidx/transition/TransitionValuesMaps;->c:Landroidx/collection/LongSparseArray;

    .line 155
    .line 156
    invoke-virtual {v11}, Landroidx/collection/LongSparseArray;->h()I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    move v14, v3

    .line 161
    :goto_3
    if-ge v14, v13, :cond_7

    .line 162
    .line 163
    invoke-virtual {v11, v14}, Landroidx/collection/LongSparseArray;->i(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    check-cast v15, Landroid/view/View;

    .line 168
    .line 169
    if-eqz v15, :cond_6

    .line 170
    .line 171
    invoke-virtual {v1, v15}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 172
    .line 173
    .line 174
    move-result v16

    .line 175
    if-eqz v16, :cond_6

    .line 176
    .line 177
    move-object/from16 v17, v6

    .line 178
    .line 179
    invoke-virtual {v11, v14}, Landroidx/collection/LongSparseArray;->f(I)J

    .line 180
    .line 181
    .line 182
    move-result-wide v5

    .line 183
    invoke-virtual {v12, v5, v6}, Landroidx/collection/LongSparseArray;->d(J)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Landroid/view/View;

    .line 188
    .line 189
    if-eqz v5, :cond_5

    .line 190
    .line 191
    invoke-virtual {v1, v5}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_5

    .line 196
    .line 197
    invoke-virtual {v8, v15}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    check-cast v6, Landroidx/transition/TransitionValues;

    .line 202
    .line 203
    invoke-virtual {v9, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v18

    .line 207
    move-object/from16 v3, v18

    .line 208
    .line 209
    check-cast v3, Landroidx/transition/TransitionValues;

    .line 210
    .line 211
    if-eqz v6, :cond_5

    .line 212
    .line 213
    if-eqz v3, :cond_5

    .line 214
    .line 215
    move/from16 v18, v7

    .line 216
    .line 217
    iget-object v7, v1, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    iget-object v6, v1, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8, v15}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_5
    :goto_4
    move/from16 v18, v7

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_6
    move-object/from16 v17, v6

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 241
    .line 242
    move-object/from16 v6, v17

    .line 243
    .line 244
    move/from16 v7, v18

    .line 245
    .line 246
    const/4 v3, 0x0

    .line 247
    goto :goto_3

    .line 248
    :cond_7
    move/from16 v18, v7

    .line 249
    .line 250
    move-object v5, v6

    .line 251
    goto/16 :goto_9

    .line 252
    .line 253
    :cond_8
    move-object/from16 v17, v6

    .line 254
    .line 255
    move/from16 v18, v7

    .line 256
    .line 257
    iget-object v3, v4, Landroidx/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    .line 258
    .line 259
    move-object/from16 v5, v17

    .line 260
    .line 261
    iget-object v6, v5, Landroidx/transition/TransitionValuesMaps;->b:Landroid/util/SparseArray;

    .line 262
    .line 263
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    const/4 v11, 0x0

    .line 268
    :goto_6
    if-ge v11, v7, :cond_e

    .line 269
    .line 270
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v12

    .line 274
    check-cast v12, Landroid/view/View;

    .line 275
    .line 276
    if-eqz v12, :cond_9

    .line 277
    .line 278
    invoke-virtual {v1, v12}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    if-eqz v13, :cond_9

    .line 283
    .line 284
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 285
    .line 286
    .line 287
    move-result v13

    .line 288
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    check-cast v13, Landroid/view/View;

    .line 293
    .line 294
    if-eqz v13, :cond_9

    .line 295
    .line 296
    invoke-virtual {v1, v13}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 297
    .line 298
    .line 299
    move-result v14

    .line 300
    if-eqz v14, :cond_9

    .line 301
    .line 302
    invoke-virtual {v8, v12}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v14

    .line 306
    check-cast v14, Landroidx/transition/TransitionValues;

    .line 307
    .line 308
    invoke-virtual {v9, v13}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v15

    .line 312
    check-cast v15, Landroidx/transition/TransitionValues;

    .line 313
    .line 314
    if-eqz v14, :cond_9

    .line 315
    .line 316
    if-eqz v15, :cond_9

    .line 317
    .line 318
    iget-object v0, v1, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    iget-object v0, v1, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v12}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v9, v13}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 335
    .line 336
    move-object/from16 v0, p0

    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_a
    move-object v5, v6

    .line 340
    move/from16 v18, v7

    .line 341
    .line 342
    iget-object v0, v4, Landroidx/transition/TransitionValuesMaps;->d:Landroidx/collection/ArrayMap;

    .line 343
    .line 344
    iget-object v3, v5, Landroidx/transition/TransitionValuesMaps;->d:Landroidx/collection/ArrayMap;

    .line 345
    .line 346
    iget v6, v0, Landroidx/collection/SimpleArrayMap;->g:I

    .line 347
    .line 348
    const/4 v7, 0x0

    .line 349
    :goto_7
    if-ge v7, v6, :cond_e

    .line 350
    .line 351
    invoke-virtual {v0, v7}, Landroidx/collection/SimpleArrayMap;->j(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    check-cast v11, Landroid/view/View;

    .line 356
    .line 357
    if-eqz v11, :cond_b

    .line 358
    .line 359
    invoke-virtual {v1, v11}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    if-eqz v12, :cond_b

    .line 364
    .line 365
    invoke-virtual {v0, v7}, Landroidx/collection/SimpleArrayMap;->f(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v12

    .line 369
    invoke-virtual {v3, v12}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v12

    .line 373
    check-cast v12, Landroid/view/View;

    .line 374
    .line 375
    if-eqz v12, :cond_b

    .line 376
    .line 377
    invoke-virtual {v1, v12}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    if-eqz v13, :cond_b

    .line 382
    .line 383
    invoke-virtual {v8, v11}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v13

    .line 387
    check-cast v13, Landroidx/transition/TransitionValues;

    .line 388
    .line 389
    invoke-virtual {v9, v12}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v14

    .line 393
    check-cast v14, Landroidx/transition/TransitionValues;

    .line 394
    .line 395
    if-eqz v13, :cond_b

    .line 396
    .line 397
    if-eqz v14, :cond_b

    .line 398
    .line 399
    iget-object v15, v1, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 400
    .line 401
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    iget-object v13, v1, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    invoke-virtual {v8, v11}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v9, v12}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_c
    move-object v5, v6

    .line 419
    move/from16 v18, v7

    .line 420
    .line 421
    iget v0, v8, Landroidx/collection/SimpleArrayMap;->g:I

    .line 422
    .line 423
    add-int/lit8 v0, v0, -0x1

    .line 424
    .line 425
    :goto_8
    if-ltz v0, :cond_e

    .line 426
    .line 427
    invoke-virtual {v8, v0}, Landroidx/collection/SimpleArrayMap;->f(I)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    check-cast v3, Landroid/view/View;

    .line 432
    .line 433
    if-eqz v3, :cond_d

    .line 434
    .line 435
    invoke-virtual {v1, v3}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    if-eqz v6, :cond_d

    .line 440
    .line 441
    invoke-virtual {v9, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    check-cast v3, Landroidx/transition/TransitionValues;

    .line 446
    .line 447
    if-eqz v3, :cond_d

    .line 448
    .line 449
    iget-object v6, v3, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 450
    .line 451
    invoke-virtual {v1, v6}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    if-eqz v6, :cond_d

    .line 456
    .line 457
    invoke-virtual {v8, v0}, Landroidx/collection/SimpleArrayMap;->h(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v6

    .line 461
    check-cast v6, Landroidx/transition/TransitionValues;

    .line 462
    .line 463
    iget-object v7, v1, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    iget-object v6, v1, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 469
    .line 470
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 474
    .line 475
    goto :goto_8

    .line 476
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 477
    .line 478
    move-object/from16 v0, p0

    .line 479
    .line 480
    move-object v6, v5

    .line 481
    move/from16 v7, v18

    .line 482
    .line 483
    const/4 v3, 0x0

    .line 484
    goto/16 :goto_2

    .line 485
    .line 486
    :cond_f
    move/from16 v18, v7

    .line 487
    .line 488
    const/4 v0, 0x0

    .line 489
    :goto_a
    iget v3, v8, Landroidx/collection/SimpleArrayMap;->g:I

    .line 490
    .line 491
    if-ge v0, v3, :cond_11

    .line 492
    .line 493
    invoke-virtual {v8, v0}, Landroidx/collection/SimpleArrayMap;->j(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    check-cast v3, Landroidx/transition/TransitionValues;

    .line 498
    .line 499
    iget-object v4, v3, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 500
    .line 501
    invoke-virtual {v1, v4}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 502
    .line 503
    .line 504
    move-result v4

    .line 505
    if-eqz v4, :cond_10

    .line 506
    .line 507
    iget-object v4, v1, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 508
    .line 509
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    iget-object v3, v1, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 513
    .line 514
    const/4 v4, 0x0

    .line 515
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 519
    .line 520
    goto :goto_a

    .line 521
    :cond_11
    const/4 v3, 0x0

    .line 522
    :goto_b
    iget v0, v9, Landroidx/collection/SimpleArrayMap;->g:I

    .line 523
    .line 524
    if-ge v3, v0, :cond_13

    .line 525
    .line 526
    invoke-virtual {v9, v3}, Landroidx/collection/SimpleArrayMap;->j(I)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    check-cast v0, Landroidx/transition/TransitionValues;

    .line 531
    .line 532
    iget-object v4, v0, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 533
    .line 534
    invoke-virtual {v1, v4}, Landroidx/transition/Transition;->w(Landroid/view/View;)Z

    .line 535
    .line 536
    .line 537
    move-result v4

    .line 538
    if-eqz v4, :cond_12

    .line 539
    .line 540
    iget-object v4, v1, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 541
    .line 542
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    iget-object v0, v1, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 546
    .line 547
    const/4 v4, 0x0

    .line 548
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    goto :goto_c

    .line 552
    :cond_12
    const/4 v4, 0x0

    .line 553
    :goto_c
    add-int/lit8 v3, v3, 0x1

    .line 554
    .line 555
    goto :goto_b

    .line 556
    :cond_13
    invoke-static {}, Landroidx/transition/Transition;->r()Landroidx/collection/ArrayMap;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    iget v3, v0, Landroidx/collection/SimpleArrayMap;->g:I

    .line 561
    .line 562
    invoke-virtual {v2}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    add-int/lit8 v3, v3, -0x1

    .line 567
    .line 568
    :goto_d
    if-ltz v3, :cond_19

    .line 569
    .line 570
    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->f(I)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    check-cast v5, Landroid/animation/Animator;

    .line 575
    .line 576
    if-eqz v5, :cond_18

    .line 577
    .line 578
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    check-cast v6, Landroidx/transition/Transition$AnimationInfo;

    .line 583
    .line 584
    if-eqz v6, :cond_18

    .line 585
    .line 586
    iget-object v7, v6, Landroidx/transition/Transition$AnimationInfo;->e:Landroidx/transition/Transition;

    .line 587
    .line 588
    iget-object v8, v6, Landroidx/transition/Transition$AnimationInfo;->a:Landroid/view/View;

    .line 589
    .line 590
    if-eqz v8, :cond_18

    .line 591
    .line 592
    iget-object v9, v6, Landroidx/transition/Transition$AnimationInfo;->d:Landroid/view/WindowId;

    .line 593
    .line 594
    invoke-virtual {v4, v9}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v9

    .line 598
    if-eqz v9, :cond_18

    .line 599
    .line 600
    iget-object v6, v6, Landroidx/transition/Transition$AnimationInfo;->c:Landroidx/transition/TransitionValues;

    .line 601
    .line 602
    move/from16 v9, v18

    .line 603
    .line 604
    invoke-virtual {v1, v8, v9}, Landroidx/transition/Transition;->t(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 605
    .line 606
    .line 607
    move-result-object v10

    .line 608
    invoke-virtual {v1, v8, v9}, Landroidx/transition/Transition;->p(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    .line 609
    .line 610
    .line 611
    move-result-object v11

    .line 612
    if-nez v10, :cond_14

    .line 613
    .line 614
    if-nez v11, :cond_14

    .line 615
    .line 616
    iget-object v9, v1, Landroidx/transition/Transition;->m:Landroidx/transition/TransitionValuesMaps;

    .line 617
    .line 618
    iget-object v9, v9, Landroidx/transition/TransitionValuesMaps;->a:Landroidx/collection/ArrayMap;

    .line 619
    .line 620
    invoke-virtual {v9, v8}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    move-object v11, v8

    .line 625
    check-cast v11, Landroidx/transition/TransitionValues;

    .line 626
    .line 627
    :cond_14
    if-nez v10, :cond_15

    .line 628
    .line 629
    if-eqz v11, :cond_18

    .line 630
    .line 631
    :cond_15
    invoke-virtual {v7, v6, v11}, Landroidx/transition/Transition;->v(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    .line 632
    .line 633
    .line 634
    move-result v6

    .line 635
    if-eqz v6, :cond_18

    .line 636
    .line 637
    invoke-virtual {v7}, Landroidx/transition/Transition;->q()Landroidx/transition/Transition;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v5}, Landroid/animation/Animator;->isRunning()Z

    .line 645
    .line 646
    .line 647
    move-result v6

    .line 648
    if-nez v6, :cond_17

    .line 649
    .line 650
    invoke-virtual {v5}, Landroid/animation/Animator;->isStarted()Z

    .line 651
    .line 652
    .line 653
    move-result v6

    .line 654
    if-eqz v6, :cond_16

    .line 655
    .line 656
    goto :goto_e

    .line 657
    :cond_16
    invoke-virtual {v0, v5}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    goto :goto_f

    .line 661
    :cond_17
    :goto_e
    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 662
    .line 663
    .line 664
    :cond_18
    :goto_f
    add-int/lit8 v3, v3, -0x1

    .line 665
    .line 666
    const/16 v18, 0x1

    .line 667
    .line 668
    goto :goto_d

    .line 669
    :cond_19
    iget-object v3, v1, Landroidx/transition/Transition;->l:Landroidx/transition/TransitionValuesMaps;

    .line 670
    .line 671
    iget-object v4, v1, Landroidx/transition/Transition;->m:Landroidx/transition/TransitionValuesMaps;

    .line 672
    .line 673
    iget-object v5, v1, Landroidx/transition/Transition;->p:Ljava/util/ArrayList;

    .line 674
    .line 675
    iget-object v6, v1, Landroidx/transition/Transition;->q:Ljava/util/ArrayList;

    .line 676
    .line 677
    invoke-virtual/range {v1 .. v6}, Landroidx/transition/Transition;->m(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1}, Landroidx/transition/Transition;->E()V

    .line 681
    .line 682
    .line 683
    const/16 v18, 0x1

    .line 684
    .line 685
    return v18
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/transition/TransitionManager$MultiListener;->f:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Landroidx/transition/TransitionManager;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/transition/TransitionManager;->b()Landroidx/collection/ArrayMap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-lez v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    check-cast v3, Landroidx/transition/Transition;

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Landroidx/transition/Transition;->D(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Landroidx/transition/TransitionManager$MultiListener;->c:Landroidx/transition/Transition;

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->j(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
