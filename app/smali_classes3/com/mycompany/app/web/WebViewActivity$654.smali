.class Lcom/mycompany/app/web/WebViewActivity$654;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$654;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$654;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v0, v0, Lcom/mycompany/app/web/WebViewActivity;->ha:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->t:I

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->u:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->v:I

    .line 21
    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v1, 0x4

    .line 24
    if-ne v0, v1, :cond_3

    .line 25
    .line 26
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->w:I

    .line 27
    .line 28
    return v0

    .line 29
    :cond_3
    sget v0, Lcom/mycompany/app/pref/PrefZtwo;->x:I

    .line 30
    .line 31
    return v0
.end method

.method public final b()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    const/16 v2, 0xc8

    .line 8
    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const/16 v3, 0x64

    .line 13
    .line 14
    const/high16 v4, 0x40000000    # 2.0f

    .line 15
    .line 16
    if-ge v0, v3, :cond_1

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    div-float v2, v1, v4

    .line 20
    .line 21
    rsub-int v3, v0, 0xc8

    .line 22
    .line 23
    int-to-float v3, v3

    .line 24
    mul-float/2addr v2, v3

    .line 25
    int-to-float v0, v0

    .line 26
    const/high16 v3, 0x42c80000    # 100.0f

    .line 27
    .line 28
    div-float/2addr v0, v3

    .line 29
    const v3, 0x40066666    # 2.1f

    .line 30
    .line 31
    .line 32
    sub-float/2addr v3, v0

    .line 33
    mul-float/2addr v3, v2

    .line 34
    add-float/2addr v3, v1

    .line 35
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    return v0

    .line 40
    :cond_1
    int-to-float v1, v1

    .line 41
    div-float v3, v1, v4

    .line 42
    .line 43
    sub-int/2addr v2, v0

    .line 44
    int-to-float v0, v2

    .line 45
    mul-float/2addr v3, v0

    .line 46
    add-float/2addr v3, v1

    .line 47
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$654;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_30

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_c

    .line 13
    .line 14
    :cond_0
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Pg:I

    .line 15
    .line 16
    const/4 v3, 0x2

    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->M2:Lcom/mycompany/app/pull/MyPullView;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/pull/MyPullView;->e()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 27
    .line 28
    const/4 v4, 0x3

    .line 29
    const/4 v5, 0x1

    .line 30
    if-ne v1, v4, :cond_4

    .line 31
    .line 32
    const/high16 v2, 0x44e10000    # 1800.0f

    .line 33
    .line 34
    cmpl-float v2, p4, v2

    .line 35
    .line 36
    if-lez v2, :cond_2

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q2:Lcom/mycompany/app/web/WebNestFrame;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->getTabY()F

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1, v5}, Lcom/mycompany/app/web/WebViewActivity;->T6(FZ)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->Z6(I)V

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_4
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ga:I

    .line 59
    .line 60
    const/4 v6, -0x1

    .line 61
    const/4 v7, 0x4

    .line 62
    const/4 v8, 0x0

    .line 63
    if-nez v4, :cond_1a

    .line 64
    .line 65
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ca:Z

    .line 66
    .line 67
    const/16 v9, 0x64

    .line 68
    .line 69
    if-eqz v4, :cond_8

    .line 70
    .line 71
    if-ne v1, v5, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->a()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ge v1, v9, :cond_5

    .line 78
    .line 79
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    cmpl-float v1, v1, v4

    .line 88
    .line 89
    if-lez v1, :cond_8

    .line 90
    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    int-to-float v1, v1

    .line 96
    cmpl-float v1, p3, v1

    .line 97
    .line 98
    if-lez v1, :cond_8

    .line 99
    .line 100
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    if-ne v1, v3, :cond_8

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->a()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ge v1, v9, :cond_7

    .line 111
    .line 112
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    cmpl-float v1, v1, v4

    .line 121
    .line 122
    if-lez v1, :cond_8

    .line 123
    .line 124
    :cond_7
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    neg-int v1, v1

    .line 129
    int-to-float v1, v1

    .line 130
    cmpg-float v1, p3, v1

    .line 131
    .line 132
    if-gez v1, :cond_8

    .line 133
    .line 134
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->na:Z

    .line 138
    .line 139
    iput v6, v0, Lcom/mycompany/app/web/WebViewActivity;->oa:I

    .line 140
    .line 141
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->pa:Landroid/view/View;

    .line 142
    .line 143
    iput v6, v0, Lcom/mycompany/app/web/WebViewActivity;->qa:I

    .line 144
    .line 145
    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    return p1

    .line 150
    :cond_8
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->E:Z

    .line 151
    .line 152
    if-eqz v1, :cond_10

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->d2()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    xor-int/lit8 v4, v1, 0x1

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->c2()Z

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    xor-int/lit8 v11, v10, 0x1

    .line 165
    .line 166
    iget v12, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 167
    .line 168
    if-ne v12, v5, :cond_c

    .line 169
    .line 170
    iget-boolean v12, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 171
    .line 172
    if-eqz v12, :cond_a

    .line 173
    .line 174
    if-nez v10, :cond_11

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->E5()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    int-to-float v1, v1

    .line 187
    cmpl-float v1, p3, v1

    .line 188
    .line 189
    if-lez v1, :cond_9

    .line 190
    .line 191
    invoke-virtual {v0, v7, v2}, Lcom/mycompany/app/web/WebViewActivity;->S7(IZ)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_9
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->Y6(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_a
    if-nez v1, :cond_11

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->E5()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_b

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    int-to-float v1, v1

    .line 215
    cmpl-float v1, p3, v1

    .line 216
    .line 217
    if-lez v1, :cond_b

    .line 218
    .line 219
    invoke-virtual {v0, v7, v5}, Lcom/mycompany/app/web/WebViewActivity;->S7(IZ)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_b
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->Y6(I)V

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_c
    if-ne v12, v3, :cond_11

    .line 230
    .line 231
    iget-boolean v12, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 232
    .line 233
    if-eqz v12, :cond_e

    .line 234
    .line 235
    if-nez v1, :cond_11

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->E5()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_d

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    neg-int v1, v1

    .line 248
    int-to-float v1, v1

    .line 249
    cmpg-float v1, p3, v1

    .line 250
    .line 251
    if-gez v1, :cond_d

    .line 252
    .line 253
    invoke-virtual {v0, v7, v5}, Lcom/mycompany/app/web/WebViewActivity;->S7(IZ)V

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_d
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->Y6(I)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_e
    if-nez v10, :cond_11

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->E5()Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_f

    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    neg-int v1, v1

    .line 276
    int-to-float v1, v1

    .line 277
    cmpg-float v1, p3, v1

    .line 278
    .line 279
    if-gez v1, :cond_f

    .line 280
    .line 281
    invoke-virtual {v0, v7, v2}, Lcom/mycompany/app/web/WebViewActivity;->S7(IZ)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_f
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->Y6(I)V

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_10
    move v4, v2

    .line 292
    move v11, v4

    .line 293
    :cond_11
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->a()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-ge v1, v9, :cond_12

    .line 298
    .line 299
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    cmpl-float v1, v1, v7

    .line 308
    .line 309
    if-lez v1, :cond_2f

    .line 310
    .line 311
    :cond_12
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 312
    .line 313
    if-ne v1, v5, :cond_16

    .line 314
    .line 315
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 316
    .line 317
    if-eqz v1, :cond_14

    .line 318
    .line 319
    if-nez v11, :cond_2f

    .line 320
    .line 321
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 322
    .line 323
    if-nez v1, :cond_13

    .line 324
    .line 325
    move v1, v2

    .line 326
    goto :goto_3

    .line 327
    :cond_13
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    :goto_3
    if-eqz v1, :cond_2f

    .line 332
    .line 333
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    int-to-float v1, v1

    .line 338
    cmpl-float v1, p3, v1

    .line 339
    .line 340
    if-lez v1, :cond_2f

    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Q7()V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_b

    .line 346
    .line 347
    :cond_14
    if-nez v4, :cond_2f

    .line 348
    .line 349
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 350
    .line 351
    if-nez v1, :cond_15

    .line 352
    .line 353
    move v1, v2

    .line 354
    goto :goto_4

    .line 355
    :cond_15
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    :goto_4
    if-eqz v1, :cond_2f

    .line 360
    .line 361
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    int-to-float v1, v1

    .line 366
    cmpl-float v1, p3, v1

    .line 367
    .line 368
    if-lez v1, :cond_2f

    .line 369
    .line 370
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_b

    .line 374
    .line 375
    :cond_16
    if-ne v1, v3, :cond_2f

    .line 376
    .line 377
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 378
    .line 379
    if-eqz v1, :cond_18

    .line 380
    .line 381
    if-nez v4, :cond_2f

    .line 382
    .line 383
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 384
    .line 385
    if-nez v1, :cond_17

    .line 386
    .line 387
    move v1, v2

    .line 388
    goto :goto_5

    .line 389
    :cond_17
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    :goto_5
    if-eqz v1, :cond_2f

    .line 394
    .line 395
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    neg-int v1, v1

    .line 400
    int-to-float v1, v1

    .line 401
    cmpg-float v1, p3, v1

    .line 402
    .line 403
    if-gez v1, :cond_2f

    .line 404
    .line 405
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_b

    .line 409
    .line 410
    :cond_18
    if-nez v11, :cond_2f

    .line 411
    .line 412
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f4:Lcom/mycompany/app/view/MyScrollNavi;

    .line 413
    .line 414
    if-nez v1, :cond_19

    .line 415
    .line 416
    move v1, v2

    .line 417
    goto :goto_6

    .line 418
    :cond_19
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    :goto_6
    if-eqz v1, :cond_2f

    .line 423
    .line 424
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    neg-int v1, v1

    .line 429
    int-to-float v1, v1

    .line 430
    cmpg-float v1, p3, v1

    .line 431
    .line 432
    if-gez v1, :cond_2f

    .line 433
    .line 434
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->Q7()V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_b

    .line 438
    .line 439
    :cond_1a
    const/4 v4, 0x0

    .line 440
    if-ne v1, v5, :cond_21

    .line 441
    .line 442
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q2:Lcom/mycompany/app/web/WebNestFrame;

    .line 443
    .line 444
    if-eqz v1, :cond_1b

    .line 445
    .line 446
    iget v1, v1, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 447
    .line 448
    cmpl-float v1, v1, v4

    .line 449
    .line 450
    if-lez v1, :cond_1c

    .line 451
    .line 452
    :goto_7
    move v1, v5

    .line 453
    goto :goto_8

    .line 454
    :cond_1b
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R2:Lcom/mycompany/app/web/WebNestFrame;

    .line 455
    .line 456
    if-eqz v1, :cond_1c

    .line 457
    .line 458
    iget v1, v1, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 459
    .line 460
    cmpl-float v1, v1, v4

    .line 461
    .line 462
    if-lez v1, :cond_1c

    .line 463
    .line 464
    goto :goto_7

    .line 465
    :cond_1c
    move v1, v2

    .line 466
    :goto_8
    if-eqz v1, :cond_1f

    .line 467
    .line 468
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    int-to-float v1, v1

    .line 473
    cmpl-float v1, p3, v1

    .line 474
    .line 475
    if-lez v1, :cond_1f

    .line 476
    .line 477
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 478
    .line 479
    if-eqz v1, :cond_1d

    .line 480
    .line 481
    invoke-virtual {v0, v7, v2}, Lcom/mycompany/app/web/WebViewActivity;->p8(IZ)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_b

    .line 485
    .line 486
    :cond_1d
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Aa:Z

    .line 487
    .line 488
    if-eqz v1, :cond_1e

    .line 489
    .line 490
    invoke-virtual {v0, v3, v5}, Lcom/mycompany/app/web/WebViewActivity;->p8(IZ)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_b

    .line 494
    .line 495
    :cond_1e
    invoke-virtual {v0, v7, v5}, Lcom/mycompany/app/web/WebViewActivity;->p8(IZ)V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_b

    .line 499
    .line 500
    :cond_1f
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ca:Z

    .line 501
    .line 502
    if-eqz v1, :cond_20

    .line 503
    .line 504
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Aa:Z

    .line 505
    .line 506
    if-eqz v1, :cond_20

    .line 507
    .line 508
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    int-to-float v1, v1

    .line 513
    cmpl-float v1, p3, v1

    .line 514
    .line 515
    if-lez v1, :cond_20

    .line 516
    .line 517
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_b

    .line 521
    .line 522
    :cond_20
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->Z6(I)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_b

    .line 528
    .line 529
    :cond_21
    if-ne v1, v3, :cond_28

    .line 530
    .line 531
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q2:Lcom/mycompany/app/web/WebNestFrame;

    .line 532
    .line 533
    if-eqz v1, :cond_22

    .line 534
    .line 535
    iget v1, v1, Lcom/mycompany/app/web/WebNestFrame;->A:F

    .line 536
    .line 537
    cmpl-float v1, v1, v4

    .line 538
    .line 539
    if-lez v1, :cond_23

    .line 540
    .line 541
    :goto_9
    move v1, v5

    .line 542
    goto :goto_a

    .line 543
    :cond_22
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R2:Lcom/mycompany/app/web/WebNestFrame;

    .line 544
    .line 545
    if-eqz v1, :cond_23

    .line 546
    .line 547
    iget v1, v1, Lcom/mycompany/app/web/WebNestFrame;->x:F

    .line 548
    .line 549
    cmpl-float v1, v1, v4

    .line 550
    .line 551
    if-lez v1, :cond_23

    .line 552
    .line 553
    goto :goto_9

    .line 554
    :cond_23
    move v1, v2

    .line 555
    :goto_a
    if-eqz v1, :cond_26

    .line 556
    .line 557
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    neg-int v1, v1

    .line 562
    int-to-float v1, v1

    .line 563
    cmpg-float v1, p3, v1

    .line 564
    .line 565
    if-gez v1, :cond_26

    .line 566
    .line 567
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j1:Z

    .line 568
    .line 569
    if-eqz v1, :cond_25

    .line 570
    .line 571
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Aa:Z

    .line 572
    .line 573
    if-eqz v1, :cond_24

    .line 574
    .line 575
    invoke-virtual {v0, v3, v5}, Lcom/mycompany/app/web/WebViewActivity;->p8(IZ)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_b

    .line 579
    .line 580
    :cond_24
    invoke-virtual {v0, v7, v5}, Lcom/mycompany/app/web/WebViewActivity;->p8(IZ)V

    .line 581
    .line 582
    .line 583
    goto/16 :goto_b

    .line 584
    .line 585
    :cond_25
    invoke-virtual {v0, v7, v2}, Lcom/mycompany/app/web/WebViewActivity;->p8(IZ)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_b

    .line 589
    .line 590
    :cond_26
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ca:Z

    .line 591
    .line 592
    if-eqz v1, :cond_27

    .line 593
    .line 594
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Aa:Z

    .line 595
    .line 596
    if-eqz v1, :cond_27

    .line 597
    .line 598
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebViewActivity$654;->b()I

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    neg-int v1, v1

    .line 603
    int-to-float v1, v1

    .line 604
    cmpg-float v1, p3, v1

    .line 605
    .line 606
    if-gez v1, :cond_27

    .line 607
    .line 608
    invoke-virtual {v0, v8}, Lcom/mycompany/app/web/WebViewActivity;->Y7(Lcom/mycompany/app/web/WebViewActivity$PrevBackListener;)V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_b

    .line 612
    .line 613
    :cond_27
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ia:I

    .line 614
    .line 615
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->Z6(I)V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_b

    .line 619
    .line 620
    :cond_28
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->na:Z

    .line 621
    .line 622
    const/high16 v4, -0x3c380000    # -400.0f

    .line 623
    .line 624
    if-eqz v1, :cond_2e

    .line 625
    .line 626
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    .line 631
    .line 632
    .line 633
    move-result v5

    .line 634
    cmpl-float v1, v1, v5

    .line 635
    .line 636
    if-lez v1, :cond_2f

    .line 637
    .line 638
    cmpg-float v1, p4, v4

    .line 639
    .line 640
    const/16 v4, 0x26

    .line 641
    .line 642
    const/16 v5, 0x4b

    .line 643
    .line 644
    if-gez v1, :cond_2b

    .line 645
    .line 646
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 647
    .line 648
    if-ltz v1, :cond_2f

    .line 649
    .line 650
    if-ge v1, v5, :cond_2f

    .line 651
    .line 652
    if-eqz v1, :cond_2f

    .line 653
    .line 654
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->V9:F

    .line 659
    .line 660
    sub-float/2addr v1, v5

    .line 661
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 662
    .line 663
    .line 664
    move-result v1

    .line 665
    sget v5, Lcom/mycompany/app/web/WebViewActivity;->Go:I

    .line 666
    .line 667
    int-to-float v5, v5

    .line 668
    cmpg-float v1, v1, v5

    .line 669
    .line 670
    if-ltz v1, :cond_29

    .line 671
    .line 672
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->W9:F

    .line 677
    .line 678
    sub-float/2addr v1, v5

    .line 679
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    sget v5, Lcom/mycompany/app/main/MainApp;->s1:I

    .line 684
    .line 685
    mul-int/2addr v5, v3

    .line 686
    int-to-float v3, v5

    .line 687
    cmpl-float v1, v1, v3

    .line 688
    .line 689
    if-lez v1, :cond_2f

    .line 690
    .line 691
    :cond_29
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->C:I

    .line 692
    .line 693
    if-ne v1, v4, :cond_2a

    .line 694
    .line 695
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->oa:I

    .line 696
    .line 697
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->k3:I

    .line 698
    .line 699
    invoke-static {v0, v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->E1(Lcom/mycompany/app/web/WebViewActivity;II)V

    .line 700
    .line 701
    .line 702
    goto :goto_b

    .line 703
    :cond_2a
    invoke-virtual {v0, v8, v1}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 704
    .line 705
    .line 706
    goto :goto_b

    .line 707
    :cond_2b
    const/high16 v1, 0x43c80000    # 400.0f

    .line 708
    .line 709
    cmpl-float v1, p4, v1

    .line 710
    .line 711
    if-lez v1, :cond_2f

    .line 712
    .line 713
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 714
    .line 715
    if-ltz v1, :cond_2f

    .line 716
    .line 717
    if-ge v1, v5, :cond_2f

    .line 718
    .line 719
    if-eqz v1, :cond_2f

    .line 720
    .line 721
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->V9:F

    .line 726
    .line 727
    sub-float/2addr v1, v5

    .line 728
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 729
    .line 730
    .line 731
    move-result v1

    .line 732
    sget v5, Lcom/mycompany/app/web/WebViewActivity;->Go:I

    .line 733
    .line 734
    int-to-float v5, v5

    .line 735
    cmpg-float v1, v1, v5

    .line 736
    .line 737
    if-ltz v1, :cond_2c

    .line 738
    .line 739
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 740
    .line 741
    .line 742
    move-result v1

    .line 743
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->W9:F

    .line 744
    .line 745
    sub-float/2addr v1, v5

    .line 746
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    sget v5, Lcom/mycompany/app/main/MainApp;->s1:I

    .line 751
    .line 752
    mul-int/2addr v5, v3

    .line 753
    int-to-float v3, v5

    .line 754
    cmpl-float v1, v1, v3

    .line 755
    .line 756
    if-lez v1, :cond_2f

    .line 757
    .line 758
    :cond_2c
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->D:I

    .line 759
    .line 760
    if-ne v1, v4, :cond_2d

    .line 761
    .line 762
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->oa:I

    .line 763
    .line 764
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->k3:I

    .line 765
    .line 766
    invoke-static {v0, v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->E1(Lcom/mycompany/app/web/WebViewActivity;II)V

    .line 767
    .line 768
    .line 769
    goto :goto_b

    .line 770
    :cond_2d
    invoke-virtual {v0, v8, v1}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 771
    .line 772
    .line 773
    goto :goto_b

    .line 774
    :cond_2e
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->pa:Landroid/view/View;

    .line 775
    .line 776
    if-eqz v1, :cond_2f

    .line 777
    .line 778
    iget v3, v0, Lcom/mycompany/app/web/WebViewActivity;->qa:I

    .line 779
    .line 780
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->pa:Landroid/view/View;

    .line 781
    .line 782
    iput v6, v0, Lcom/mycompany/app/web/WebViewActivity;->qa:I

    .line 783
    .line 784
    cmpg-float v4, p4, v4

    .line 785
    .line 786
    if-gez v4, :cond_2f

    .line 787
    .line 788
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 789
    .line 790
    .line 791
    :cond_2f
    :goto_b
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->na:Z

    .line 792
    .line 793
    iput v6, v0, Lcom/mycompany/app/web/WebViewActivity;->oa:I

    .line 794
    .line 795
    iput-object v8, v0, Lcom/mycompany/app/web/WebViewActivity;->pa:Landroid/view/View;

    .line 796
    .line 797
    iput v6, v0, Lcom/mycompany/app/web/WebViewActivity;->qa:I

    .line 798
    .line 799
    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 800
    .line 801
    .line 802
    move-result p1

    .line 803
    return p1

    .line 804
    :cond_30
    :goto_c
    return v2
.end method
