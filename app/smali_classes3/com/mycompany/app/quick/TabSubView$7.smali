.class Lcom/mycompany/app/quick/TabSubView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$7;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$7;->c:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/quick/TabSubView;->i:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    move v4, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget v1, v0, Lcom/mycompany/app/quick/TabSubView;->B:I

    .line 16
    .line 17
    iget v3, v0, Lcom/mycompany/app/quick/TabSubView;->C:I

    .line 18
    .line 19
    div-int v4, v1, v3

    .line 20
    .line 21
    rem-int/2addr v1, v3

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    add-int/lit8 v4, v4, 0x1

    .line 25
    .line 26
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/quick/TabSubView;->f:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    sget v6, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 41
    .line 42
    sub-int v7, v5, v6

    .line 43
    .line 44
    sub-int/2addr v7, v6

    .line 45
    sget v6, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 46
    .line 47
    const/4 v8, 0x2

    .line 48
    if-nez v6, :cond_3

    .line 49
    .line 50
    sget v6, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 51
    .line 52
    mul-int/2addr v6, v8

    .line 53
    iget v9, v0, Lcom/mycompany/app/quick/TabSubView;->C:I

    .line 54
    .line 55
    mul-int/2addr v6, v9

    .line 56
    sget v9, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 57
    .line 58
    mul-int/2addr v9, v8

    .line 59
    add-int/2addr v9, v6

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    int-to-float v6, v3

    .line 62
    const v9, 0x3f666666    # 0.9f

    .line 63
    .line 64
    .line 65
    mul-float/2addr v6, v9

    .line 66
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    :goto_1
    if-le v9, v3, :cond_4

    .line 71
    .line 72
    move v9, v3

    .line 73
    :cond_4
    sget v6, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 74
    .line 75
    if-nez v6, :cond_5

    .line 76
    .line 77
    iget v6, v0, Lcom/mycompany/app/quick/TabSubView;->l:I

    .line 78
    .line 79
    mul-int/2addr v6, v4

    .line 80
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 81
    .line 82
    :goto_2
    add-int/2addr v6, v4

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    iget v6, v0, Lcom/mycompany/app/quick/TabSubView;->l:I

    .line 85
    .line 86
    mul-int/2addr v6, v4

    .line 87
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_3
    if-le v6, v7, :cond_6

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_6
    move v7, v6

    .line 94
    :goto_4
    iget v4, v0, Lcom/mycompany/app/quick/TabSubView;->j:I

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    if-gez v4, :cond_7

    .line 98
    .line 99
    iput v6, v0, Lcom/mycompany/app/quick/TabSubView;->j:I

    .line 100
    .line 101
    move v4, v6

    .line 102
    goto :goto_5

    .line 103
    :cond_7
    sub-int v10, v3, v9

    .line 104
    .line 105
    if-le v4, v10, :cond_8

    .line 106
    .line 107
    sub-int/2addr v4, v10

    .line 108
    iput v4, v0, Lcom/mycompany/app/quick/TabSubView;->j:I

    .line 109
    .line 110
    move v4, v10

    .line 111
    goto :goto_5

    .line 112
    :cond_8
    iput v6, v0, Lcom/mycompany/app/quick/TabSubView;->j:I

    .line 113
    .line 114
    :goto_5
    if-eqz v1, :cond_9

    .line 115
    .line 116
    iget v10, v0, Lcom/mycompany/app/quick/TabSubView;->j:I

    .line 117
    .line 118
    sub-int v10, v9, v10

    .line 119
    .line 120
    iput v10, v0, Lcom/mycompany/app/quick/TabSubView;->j:I

    .line 121
    .line 122
    :cond_9
    iget v10, v0, Lcom/mycompany/app/quick/TabSubView;->j:I

    .line 123
    .line 124
    if-gez v10, :cond_a

    .line 125
    .line 126
    iput v6, v0, Lcom/mycompany/app/quick/TabSubView;->j:I

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_a
    if-le v10, v9, :cond_b

    .line 130
    .line 131
    iput v9, v0, Lcom/mycompany/app/quick/TabSubView;->j:I

    .line 132
    .line 133
    :cond_b
    :goto_6
    sget-boolean v10, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 134
    .line 135
    if-eqz v10, :cond_c

    .line 136
    .line 137
    new-array v8, v8, [I

    .line 138
    .line 139
    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 140
    .line 141
    .line 142
    iget v10, v0, Lcom/mycompany/app/quick/TabSubView;->k:I

    .line 143
    .line 144
    aget v2, v8, v2

    .line 145
    .line 146
    sub-int/2addr v10, v2

    .line 147
    iput v10, v0, Lcom/mycompany/app/quick/TabSubView;->k:I

    .line 148
    .line 149
    :cond_c
    iget v2, v0, Lcom/mycompany/app/quick/TabSubView;->k:I

    .line 150
    .line 151
    sub-int v8, v2, v7

    .line 152
    .line 153
    sget v10, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 154
    .line 155
    if-ge v8, v10, :cond_d

    .line 156
    .line 157
    move v8, v10

    .line 158
    goto :goto_7

    .line 159
    :cond_d
    sub-int/2addr v5, v10

    .line 160
    sub-int/2addr v5, v7

    .line 161
    if-le v8, v5, :cond_e

    .line 162
    .line 163
    move v8, v5

    .line 164
    :cond_e
    :goto_7
    sub-int/2addr v2, v8

    .line 165
    iput v2, v0, Lcom/mycompany/app/quick/TabSubView;->k:I

    .line 166
    .line 167
    if-gez v2, :cond_f

    .line 168
    .line 169
    iput v6, v0, Lcom/mycompany/app/quick/TabSubView;->k:I

    .line 170
    .line 171
    goto :goto_8

    .line 172
    :cond_f
    if-le v2, v7, :cond_10

    .line 173
    .line 174
    iput v7, v0, Lcom/mycompany/app/quick/TabSubView;->k:I

    .line 175
    .line 176
    :cond_10
    :goto_8
    if-eqz v1, :cond_11

    .line 177
    .line 178
    sub-int/2addr v3, v4

    .line 179
    sub-int/2addr v3, v9

    .line 180
    iput v3, v0, Lcom/mycompany/app/quick/TabSubView;->g0:I

    .line 181
    .line 182
    iput v8, v0, Lcom/mycompany/app/quick/TabSubView;->h0:I

    .line 183
    .line 184
    add-int/2addr v3, v9

    .line 185
    iput v3, v0, Lcom/mycompany/app/quick/TabSubView;->i0:I

    .line 186
    .line 187
    add-int v2, v8, v7

    .line 188
    .line 189
    iput v2, v0, Lcom/mycompany/app/quick/TabSubView;->j0:I

    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_11
    iput v4, v0, Lcom/mycompany/app/quick/TabSubView;->g0:I

    .line 193
    .line 194
    iput v8, v0, Lcom/mycompany/app/quick/TabSubView;->h0:I

    .line 195
    .line 196
    add-int v2, v4, v9

    .line 197
    .line 198
    iput v2, v0, Lcom/mycompany/app/quick/TabSubView;->i0:I

    .line 199
    .line 200
    add-int v2, v8, v7

    .line 201
    .line 202
    iput v2, v0, Lcom/mycompany/app/quick/TabSubView;->j0:I

    .line 203
    .line 204
    :goto_9
    iget-object v2, v0, Lcom/mycompany/app/quick/TabSubView;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 205
    .line 206
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 211
    .line 212
    if-eqz v2, :cond_13

    .line 213
    .line 214
    if-eqz v1, :cond_12

    .line 215
    .line 216
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_12
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 220
    .line 221
    :goto_a
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 222
    .line 223
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 224
    .line 225
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 226
    .line 227
    :cond_13
    sget v2, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 228
    .line 229
    if-nez v2, :cond_14

    .line 230
    .line 231
    iget-object v2, v0, Lcom/mycompany/app/quick/TabSubView;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 232
    .line 233
    sget v3, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 234
    .line 235
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 236
    .line 237
    sget v6, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 238
    .line 239
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 240
    .line 241
    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 242
    .line 243
    .line 244
    goto :goto_b

    .line 245
    :cond_14
    iget-object v2, v0, Lcom/mycompany/app/quick/TabSubView;->A:Lcom/mycompany/app/view/MyRecyclerView;

    .line 246
    .line 247
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 248
    .line 249
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 250
    .line 251
    .line 252
    :goto_b
    iget-object v2, v0, Lcom/mycompany/app/quick/TabSubView;->r:Landroid/widget/RelativeLayout;

    .line 253
    .line 254
    if-nez v2, :cond_15

    .line 255
    .line 256
    goto/16 :goto_10

    .line 257
    .line 258
    :cond_15
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 259
    .line 260
    int-to-float v2, v2

    .line 261
    int-to-float v3, v8

    .line 262
    add-float/2addr v3, v2

    .line 263
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    iget-object v3, v0, Lcom/mycompany/app/quick/TabSubView;->r:Landroid/widget/RelativeLayout;

    .line 268
    .line 269
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 274
    .line 275
    if-nez v3, :cond_16

    .line 276
    .line 277
    goto :goto_10

    .line 278
    :cond_16
    if-eqz v1, :cond_17

    .line 279
    .line 280
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 281
    .line 282
    goto :goto_c

    .line 283
    :cond_17
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 284
    .line 285
    :goto_c
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 286
    .line 287
    sub-int v5, v2, v5

    .line 288
    .line 289
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 290
    .line 291
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 292
    .line 293
    iget-object v3, v0, Lcom/mycompany/app/quick/TabSubView;->u:Landroid/view/View;

    .line 294
    .line 295
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 300
    .line 301
    if-nez v3, :cond_18

    .line 302
    .line 303
    goto :goto_10

    .line 304
    :cond_18
    if-eqz v1, :cond_19

    .line 305
    .line 306
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 307
    .line 308
    goto :goto_d

    .line 309
    :cond_19
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 310
    .line 311
    :goto_d
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 312
    .line 313
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 314
    .line 315
    iget-object v3, v0, Lcom/mycompany/app/quick/TabSubView;->v:Landroid/view/View;

    .line 316
    .line 317
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 322
    .line 323
    if-nez v3, :cond_1a

    .line 324
    .line 325
    goto :goto_10

    .line 326
    :cond_1a
    if-eqz v1, :cond_1b

    .line 327
    .line 328
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 329
    .line 330
    goto :goto_e

    .line 331
    :cond_1b
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 332
    .line 333
    :goto_e
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 334
    .line 335
    iget-object v3, v0, Lcom/mycompany/app/quick/TabSubView;->w:Landroid/view/View;

    .line 336
    .line 337
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    .line 343
    if-nez v3, :cond_1c

    .line 344
    .line 345
    goto :goto_10

    .line 346
    :cond_1c
    if-eqz v1, :cond_1d

    .line 347
    .line 348
    add-int/2addr v4, v9

    .line 349
    sget v1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 350
    .line 351
    sub-int/2addr v4, v1

    .line 352
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 353
    .line 354
    goto :goto_f

    .line 355
    :cond_1d
    add-int/2addr v4, v9

    .line 356
    sget v1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 357
    .line 358
    sub-int/2addr v4, v1

    .line 359
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 360
    .line 361
    :goto_f
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 362
    .line 363
    :goto_10
    new-instance v1, Lcom/mycompany/app/quick/TabSubView$7$1;

    .line 364
    .line 365
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/TabSubView$7$1;-><init>(Lcom/mycompany/app/quick/TabSubView$7;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 369
    .line 370
    .line 371
    return-void
.end method
