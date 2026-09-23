.class Lcom/mycompany/app/view/MyPopupMenu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupMenu$4;->c:Lcom/mycompany/app/view/MyPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupMenu$4;->c:Lcom/mycompany/app/view/MyPopupMenu;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/view/MyPopupMenu;->j:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_13

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto/16 :goto_13

    .line 16
    .line 17
    :cond_1
    new-instance v3, Lcom/mycompany/app/view/MyPopupList;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Lcom/mycompany/app/view/MyPopupList;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lcom/mycompany/app/view/MyPopupMenu;->j:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iget-object v4, v1, Lcom/mycompany/app/view/MyPopupMenu;->g:Ljava/util/ArrayList;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    goto/16 :goto_12

    .line 34
    .line 35
    :cond_2
    if-nez v2, :cond_3

    .line 36
    .line 37
    goto/16 :goto_12

    .line 38
    .line 39
    :cond_3
    iget-object v4, v1, Lcom/mycompany/app/view/MyPopupMenu;->d:Landroid/view/View;

    .line 40
    .line 41
    iget-object v6, v1, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 42
    .line 43
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    iget-object v7, v1, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 48
    .line 49
    const/high16 v8, 0x43440000    # 196.0f

    .line 50
    .line 51
    invoke-static {v7, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    float-to-int v7, v7

    .line 56
    iget-object v8, v1, Lcom/mycompany/app/view/MyPopupMenu;->g:Ljava/util/ArrayList;

    .line 57
    .line 58
    const/4 v9, 0x0

    .line 59
    const/4 v10, 0x1

    .line 60
    if-nez v8, :cond_4

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    move v12, v9

    .line 69
    move v13, v12

    .line 70
    :cond_5
    :goto_0
    if-ge v13, v11, :cond_b

    .line 71
    .line 72
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    add-int/lit8 v13, v13, 0x1

    .line 77
    .line 78
    check-cast v14, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 79
    .line 80
    iget v15, v14, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->b:I

    .line 81
    .line 82
    if-eqz v15, :cond_6

    .line 83
    .line 84
    iput-boolean v10, v1, Lcom/mycompany/app/view/MyPopupMenu;->o:Z

    .line 85
    .line 86
    :cond_6
    iget-boolean v15, v14, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->e:Z

    .line 87
    .line 88
    if-nez v15, :cond_7

    .line 89
    .line 90
    iget-boolean v15, v14, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->f:Z

    .line 91
    .line 92
    if-eqz v15, :cond_8

    .line 93
    .line 94
    :cond_7
    iput-boolean v10, v1, Lcom/mycompany/app/view/MyPopupMenu;->p:Z

    .line 95
    .line 96
    :cond_8
    iget v15, v14, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->c:I

    .line 97
    .line 98
    if-eqz v15, :cond_9

    .line 99
    .line 100
    iget-object v14, v1, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 101
    .line 102
    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    goto :goto_1

    .line 107
    :cond_9
    iget-object v14, v14, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->d:Ljava/lang/String;

    .line 108
    .line 109
    :goto_1
    if-nez v14, :cond_a

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_a
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 113
    .line 114
    .line 115
    move-result v15

    .line 116
    if-le v15, v12, :cond_5

    .line 117
    .line 118
    move-object v5, v14

    .line 119
    move v12, v15

    .line 120
    goto :goto_0

    .line 121
    :cond_b
    iget-object v8, v1, Lcom/mycompany/app/view/MyPopupMenu;->G:Ljava/lang/String;

    if-nez v8, :cond_g0

    goto :cond_g1

    :cond_g0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v12, :cond_g2

    goto :cond_g1

    :cond_g2
    move-object v5, v8

    move v12, v11

    :cond_g1
    if-nez v12, :cond_c

    goto :goto_2

    :cond_c
    new-instance v8, Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v11, Landroid/text/TextPaint;

    .line 130
    .line 131
    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    .line 136
    .line 137
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 138
    .line 139
    int-to-float v13, v13

    .line 140
    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v5, v9, v12, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-ge v5, v7, :cond_d

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_d
    iget-object v7, v1, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 154
    .line 155
    const/high16 v8, 0x43820000    # 260.0f

    .line 156
    .line 157
    invoke-static {v7, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    float-to-int v7, v7

    .line 162
    if-le v5, v7, :cond_e

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_e
    move v7, v5

    .line 166
    :goto_2
    iget-object v5, v1, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    .line 167
    .line 168
    const/high16 v8, 0x42500000    # 52.0f

    .line 169
    .line 170
    invoke-static {v5, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    float-to-int v5, v5

    .line 175
    iput v5, v1, Lcom/mycompany/app/view/MyPopupMenu;->n:I

    .line 176
    .line 177
    const/4 v5, 0x2

    .line 178
    new-array v8, v5, [I

    .line 179
    .line 180
    invoke-virtual {v2, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 181
    .line 182
    .line 183
    aget v11, v8, v9

    .line 184
    .line 185
    aget v12, v8, v10

    .line 186
    .line 187
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    if-eqz v4, :cond_f

    .line 196
    .line 197
    invoke-virtual {v4, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 198
    .line 199
    .line 200
    aget v15, v8, v9

    .line 201
    .line 202
    aget v8, v8, v10

    .line 203
    .line 204
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 205
    .line 206
    .line 207
    move-result v16

    .line 208
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    move/from16 v9, v16

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_f
    iget v15, v1, Lcom/mycompany/app/view/MyPopupMenu;->e:I

    .line 216
    .line 217
    iget v8, v1, Lcom/mycompany/app/view/MyPopupMenu;->f:I

    .line 218
    .line 219
    move v4, v10

    .line 220
    move v9, v4

    .line 221
    :goto_3
    iget v5, v1, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 222
    .line 223
    if-ne v5, v10, :cond_10

    .line 224
    .line 225
    div-int/lit8 v5, v7, 0x2

    .line 226
    .line 227
    neg-int v5, v5

    .line 228
    goto :goto_4

    .line 229
    :cond_10
    const/4 v10, 0x3

    .line 230
    if-ne v5, v10, :cond_11

    .line 231
    .line 232
    div-int/lit8 v5, v7, 0x2

    .line 233
    .line 234
    sub-int v5, v9, v5

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_11
    const/4 v10, 0x2

    .line 238
    if-ne v5, v10, :cond_13

    .line 239
    .line 240
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 241
    .line 242
    if-le v9, v5, :cond_12

    .line 243
    .line 244
    sub-int v5, v9, v5

    .line 245
    .line 246
    div-int/2addr v5, v10

    .line 247
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 248
    .line 249
    add-int/2addr v5, v10

    .line 250
    goto :goto_4

    .line 251
    :cond_12
    div-int/lit8 v5, v9, 0x2

    .line 252
    .line 253
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 254
    .line 255
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    goto :goto_4

    .line 260
    :cond_13
    div-int/lit8 v5, v9, 0x2

    .line 261
    .line 262
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 263
    .line 264
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    :goto_4
    sub-int/2addr v15, v11

    .line 269
    if-eqz v6, :cond_14

    .line 270
    .line 271
    add-int/2addr v15, v9

    .line 272
    sub-int/2addr v15, v5

    .line 273
    :goto_5
    const/16 v17, 0x2

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_14
    add-int/2addr v15, v5

    .line 277
    goto :goto_5

    .line 278
    :goto_6
    div-int/lit8 v4, v4, 0x2

    .line 279
    .line 280
    sub-int/2addr v8, v12

    .line 281
    add-int/2addr v8, v4

    .line 282
    iget v5, v1, Lcom/mycompany/app/view/MyPopupMenu;->n:I

    .line 283
    .line 284
    iget-object v9, v1, Lcom/mycompany/app/view/MyPopupMenu;->g:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/2addr v9, v5

    iget-object v10, v1, Lcom/mycompany/app/view/MyPopupMenu;->D:Landroid/view/View;

    if-eqz v10, :cond_normal_pos

    iget v5, v1, Lcom/mycompany/app/view/MyPopupMenu;->E:I

    if-lez v5, :cond_hadd

    iget-object v10, v1, Lcom/mycompany/app/view/MyPopupMenu;->a:Lcom/mycompany/app/main/MainActivity;

    const/high16 v5, 0x42900000    # 72.0f

    invoke-static {v10, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Lcom/mycompany/app/view/MyPopupMenu;->E:I

    :cond_hadd
    add-int/2addr v9, v5

    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    add-int/2addr v9, v5

    move v7, v13

    const/4 v5, 0x0

    move v10, v13

    move v8, v9

    sub-int v11, v14, v8

    if-gez v11, :cond_sheet_ok

    const/4 v11, 0x0

    move v8, v14

    :cond_sheet_ok
    move v12, v14

    move v9, v11

    div-int/lit8 v15, v13, 0x2

    iput v15, v1, Lcom/mycompany/app/view/MyPopupMenu;->r:I

    iput v8, v1, Lcom/mycompany/app/view/MyPopupMenu;->s:I

    goto :goto_sheet_lp

    :cond_normal_pos
    if-eqz v6, :cond_15

    .line 292
    .line 293
    sub-int v5, v15, v7

    .line 294
    .line 295
    move v10, v15

    .line 296
    goto :goto_7

    .line 297
    :cond_15
    add-int v5, v15, v7

    .line 298
    .line 299
    move v10, v5

    .line 300
    move v5, v15

    .line 301
    :goto_7
    div-int/lit8 v11, v14, 0x2

    .line 302
    .line 303
    if-ge v8, v11, :cond_18

    .line 304
    .line 305
    iget v11, v1, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 306
    .line 307
    if-eqz v11, :cond_17

    .line 308
    .line 309
    const/4 v12, 0x2

    .line 310
    if-ne v11, v12, :cond_16

    .line 311
    .line 312
    goto :goto_8

    .line 313
    :cond_16
    const/4 v4, 0x0

    .line 314
    :cond_17
    :goto_8
    add-int v11, v8, v4

    .line 315
    .line 316
    add-int v12, v11, v9

    .line 317
    .line 318
    goto :goto_b

    .line 319
    :cond_18
    const/4 v12, 0x2

    .line 320
    iget v11, v1, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 321
    .line 322
    if-eqz v11, :cond_1a

    .line 323
    .line 324
    if-ne v11, v12, :cond_19

    .line 325
    .line 326
    goto :goto_9

    .line 327
    :cond_19
    const/4 v4, 0x0

    .line 328
    goto :goto_a

    .line 329
    :cond_1a
    :goto_9
    neg-int v4, v4

    .line 330
    :goto_a
    add-int v12, v8, v4

    .line 331
    .line 332
    sub-int v11, v12, v9

    .line 333
    .line 334
    :goto_b
    if-gez v5, :cond_1c

    .line 335
    .line 336
    if-le v7, v13, :cond_1b

    .line 337
    .line 338
    move v10, v13

    .line 339
    :goto_c
    const/4 v5, 0x0

    .line 340
    goto :goto_d

    .line 341
    :cond_1b
    move v10, v7

    .line 342
    goto :goto_c

    .line 343
    :cond_1c
    :goto_d
    if-le v10, v13, :cond_1d

    .line 344
    .line 345
    sub-int v5, v13, v7

    .line 346
    .line 347
    move v10, v13

    .line 348
    if-gez v5, :cond_1d

    .line 349
    .line 350
    const/4 v5, 0x0

    .line 351
    :cond_1d
    if-gez v11, :cond_1f

    .line 352
    .line 353
    if-le v9, v14, :cond_1e

    .line 354
    .line 355
    move v12, v14

    .line 356
    :goto_e
    const/4 v11, 0x0

    .line 357
    goto :goto_f

    .line 358
    :cond_1e
    move v12, v9

    .line 359
    goto :goto_e

    .line 360
    :cond_1f
    :goto_f
    if-le v12, v14, :cond_20

    .line 361
    .line 362
    sub-int v9, v14, v9

    .line 363
    .line 364
    move v12, v14

    .line 365
    if-gez v9, :cond_21

    .line 366
    .line 367
    const/4 v9, 0x0

    .line 368
    goto :goto_10

    .line 369
    :cond_20
    move v9, v11

    .line 370
    :cond_21
    :goto_10
    sub-int/2addr v15, v5

    .line 371
    if-eqz v6, :cond_22

    .line 372
    .line 373
    iget v6, v1, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 374
    .line 375
    const/4 v11, 0x1

    .line 376
    if-ne v6, v11, :cond_23

    .line 377
    .line 378
    sub-int/2addr v15, v7

    .line 379
    goto :goto_11

    .line 380
    :cond_22
    const/4 v11, 0x1

    .line 381
    iget v6, v1, Lcom/mycompany/app/view/MyPopupMenu;->m:I

    .line 382
    .line 383
    if-ne v6, v11, :cond_23

    .line 384
    .line 385
    add-int/2addr v15, v7

    .line 386
    :cond_23
    :goto_11
    iput v15, v1, Lcom/mycompany/app/view/MyPopupMenu;->r:I

    .line 387
    .line 388
    sub-int/2addr v8, v9

    .line 389
    add-int/2addr v8, v4

    .line 390
    iput v8, v1, Lcom/mycompany/app/view/MyPopupMenu;->s:I

    :goto_sheet_lp
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    .line 394
    const/4 v6, -0x1

    .line 395
    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 396
    .line 397
    .line 398
    sub-int/2addr v13, v10

    .line 399
    sub-int/2addr v14, v12

    .line 400
    invoke-virtual {v4, v5, v9, v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 401
    .line 402
    .line 403
    move-object v5, v4

    .line 404
    :goto_12
    iput-object v3, v1, Lcom/mycompany/app/view/MyPopupMenu;->k:Lcom/mycompany/app/view/MyPopupList;

    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyPopupMenu;->f(Lcom/mycompany/app/view/MyPopupList;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    .line 409
    iget-object v2, v1, Lcom/mycompany/app/view/MyPopupMenu;->b:Landroid/os/Handler;

    .line 410
    .line 411
    if-nez v2, :cond_24

    .line 412
    .line 413
    :goto_13
    return-void

    .line 414
    :cond_24
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu$5;

    .line 415
    .line 416
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyPopupMenu$5;-><init>(Lcom/mycompany/app/view/MyPopupMenu;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    .line 421
    .line 422
    return-void
.end method
