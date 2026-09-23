.class Lcom/mycompany/app/quick/QuickSubView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSubView$9;->c:Lcom/mycompany/app/quick/QuickSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSubView$9;->c:Lcom/mycompany/app/quick/QuickSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

    .line 4
    .line 5
    if-eqz v1, :cond_21

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_10

    .line 12
    .line 13
    :cond_0
    iget v1, v0, Lcom/mycompany/app/quick/QuickSubView;->D:I

    .line 14
    .line 15
    iget v2, v0, Lcom/mycompany/app/quick/QuickSubView;->E:I

    .line 16
    .line 17
    div-int v3, v1, v2

    .line 18
    .line 19
    rem-int/2addr v1, v2

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    :cond_1
    const/4 v1, 0x4

    .line 25
    if-le v3, v1, :cond_2

    .line 26
    .line 27
    move v3, v1

    .line 28
    :cond_2
    iget v1, v0, Lcom/mycompany/app/quick/QuickSubView;->i:I

    .line 29
    .line 30
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 31
    .line 32
    mul-int/lit8 v2, v2, 0x5

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget v2, v0, Lcom/mycompany/app/quick/QuickSubView;->E:I

    .line 39
    .line 40
    mul-int/2addr v1, v2

    .line 41
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 42
    .line 43
    add-int/2addr v1, v2

    .line 44
    iget v2, v0, Lcom/mycompany/app/quick/QuickSubView;->j:I

    .line 45
    .line 46
    mul-int/2addr v2, v3

    .line 47
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 48
    .line 49
    add-int/2addr v2, v3

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    sub-int/2addr v4, v5

    .line 63
    sget v5, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 64
    .line 65
    sub-int v6, v4, v5

    .line 66
    .line 67
    sub-int/2addr v6, v5

    .line 68
    iget v7, v0, Lcom/mycompany/app/quick/QuickSubView;->j:I

    .line 69
    .line 70
    add-int/2addr v7, v5

    .line 71
    const/4 v5, 0x0

    .line 72
    if-ge v6, v7, :cond_3

    .line 73
    .line 74
    const/4 v6, 0x1

    .line 75
    move v7, v6

    .line 76
    move v6, v4

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v7, v5

    .line 79
    :goto_0
    if-le v1, v3, :cond_4

    .line 80
    .line 81
    move v1, v3

    .line 82
    :cond_4
    if-le v2, v6, :cond_5

    .line 83
    .line 84
    move v2, v6

    .line 85
    :cond_5
    iget-object v6, v0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    iget v8, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 92
    .line 93
    if-eqz v6, :cond_7

    .line 94
    .line 95
    sget v9, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 96
    .line 97
    if-eqz v9, :cond_9

    .line 98
    .line 99
    iget-object v9, v0, Lcom/mycompany/app/quick/QuickSubView;->f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

    .line 100
    .line 101
    if-nez v9, :cond_6

    .line 102
    .line 103
    iget-object v9, v0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    invoke-interface {v9}, Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;->b()Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    :goto_1
    if-eqz v9, :cond_9

    .line 115
    .line 116
    sget v9, Lcom/mycompany/app/pref/PrefTts;->G:I

    .line 117
    .line 118
    :goto_2
    add-int/2addr v8, v9

    .line 119
    goto :goto_4

    .line 120
    :cond_7
    sget v9, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 121
    .line 122
    if-eqz v9, :cond_9

    .line 123
    .line 124
    iget-object v9, v0, Lcom/mycompany/app/quick/QuickSubView;->f:Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;

    .line 125
    .line 126
    if-nez v9, :cond_8

    .line 127
    .line 128
    iget-object v9, v0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {v9}, Lcom/mycompany/app/main/MainUtil;->N5(Landroid/content/Context;)Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    goto :goto_3

    .line 135
    :cond_8
    invoke-interface {v9}, Lcom/mycompany/app/quick/QuickSubView$QuickSubListener;->b()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    :goto_3
    if-eqz v9, :cond_9

    .line 140
    .line 141
    sget v9, Lcom/mycompany/app/pref/PrefTts;->F:I

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_9
    :goto_4
    if-gez v8, :cond_a

    .line 145
    .line 146
    iput v5, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 147
    .line 148
    move v8, v5

    .line 149
    goto :goto_5

    .line 150
    :cond_a
    sub-int v9, v3, v1

    .line 151
    .line 152
    if-le v8, v9, :cond_b

    .line 153
    .line 154
    iget v8, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 155
    .line 156
    sub-int/2addr v8, v9

    .line 157
    iput v8, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 158
    .line 159
    move v8, v9

    .line 160
    goto :goto_5

    .line 161
    :cond_b
    iput v5, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 162
    .line 163
    :goto_5
    if-eqz v6, :cond_c

    .line 164
    .line 165
    iget v9, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 166
    .line 167
    sub-int v9, v1, v9

    .line 168
    .line 169
    iput v9, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 170
    .line 171
    :cond_c
    iget v9, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 172
    .line 173
    if-gez v9, :cond_d

    .line 174
    .line 175
    iput v5, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_d
    if-le v9, v1, :cond_e

    .line 179
    .line 180
    iput v1, v0, Lcom/mycompany/app/quick/QuickSubView;->g:I

    .line 181
    .line 182
    :cond_e
    :goto_6
    if-eqz v7, :cond_f

    .line 183
    .line 184
    move v7, v5

    .line 185
    goto :goto_7

    .line 186
    :cond_f
    iget v7, v0, Lcom/mycompany/app/quick/QuickSubView;->h:I

    .line 187
    .line 188
    sub-int/2addr v7, v2

    .line 189
    sget v9, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 190
    .line 191
    if-ge v7, v9, :cond_10

    .line 192
    .line 193
    move v7, v9

    .line 194
    goto :goto_7

    .line 195
    :cond_10
    sub-int/2addr v4, v9

    .line 196
    sub-int/2addr v4, v2

    .line 197
    if-le v7, v4, :cond_11

    .line 198
    .line 199
    move v7, v4

    .line 200
    :cond_11
    :goto_7
    iget v4, v0, Lcom/mycompany/app/quick/QuickSubView;->h:I

    .line 201
    .line 202
    sub-int/2addr v4, v7

    .line 203
    iput v4, v0, Lcom/mycompany/app/quick/QuickSubView;->h:I

    .line 204
    .line 205
    if-gez v4, :cond_12

    .line 206
    .line 207
    iput v5, v0, Lcom/mycompany/app/quick/QuickSubView;->h:I

    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_12
    if-le v4, v2, :cond_13

    .line 211
    .line 212
    iput v2, v0, Lcom/mycompany/app/quick/QuickSubView;->h:I

    .line 213
    .line 214
    :cond_13
    :goto_8
    if-eqz v6, :cond_14

    .line 215
    .line 216
    sub-int/2addr v3, v8

    .line 217
    sub-int/2addr v3, v1

    .line 218
    iput v3, v0, Lcom/mycompany/app/quick/QuickSubView;->Q:I

    .line 219
    .line 220
    iput v7, v0, Lcom/mycompany/app/quick/QuickSubView;->R:I

    .line 221
    .line 222
    add-int/2addr v3, v1

    .line 223
    iput v3, v0, Lcom/mycompany/app/quick/QuickSubView;->S:I

    .line 224
    .line 225
    add-int v3, v7, v2

    .line 226
    .line 227
    iput v3, v0, Lcom/mycompany/app/quick/QuickSubView;->T:I

    .line 228
    .line 229
    goto :goto_9

    .line 230
    :cond_14
    iput v8, v0, Lcom/mycompany/app/quick/QuickSubView;->Q:I

    .line 231
    .line 232
    iput v7, v0, Lcom/mycompany/app/quick/QuickSubView;->R:I

    .line 233
    .line 234
    add-int v3, v8, v1

    .line 235
    .line 236
    iput v3, v0, Lcom/mycompany/app/quick/QuickSubView;->S:I

    .line 237
    .line 238
    add-int v3, v7, v2

    .line 239
    .line 240
    iput v3, v0, Lcom/mycompany/app/quick/QuickSubView;->T:I

    .line 241
    .line 242
    :goto_9
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 243
    .line 244
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    .line 250
    if-eqz v3, :cond_16

    .line 251
    .line 252
    if-eqz v6, :cond_15

    .line 253
    .line 254
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_15
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 258
    .line 259
    :goto_a
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 260
    .line 261
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 262
    .line 263
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 264
    .line 265
    :cond_16
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->m:Landroid/widget/RelativeLayout;

    .line 266
    .line 267
    if-nez v2, :cond_17

    .line 268
    .line 269
    goto :goto_f

    .line 270
    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 275
    .line 276
    if-nez v2, :cond_18

    .line 277
    .line 278
    goto :goto_f

    .line 279
    :cond_18
    if-eqz v6, :cond_19

    .line 280
    .line 281
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 282
    .line 283
    goto :goto_b

    .line 284
    :cond_19
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 285
    .line 286
    :goto_b
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 287
    .line 288
    sub-int v3, v7, v3

    .line 289
    .line 290
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 291
    .line 292
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 293
    .line 294
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->p:Landroid/view/View;

    .line 295
    .line 296
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    .line 302
    if-nez v2, :cond_1a

    .line 303
    .line 304
    goto :goto_f

    .line 305
    :cond_1a
    if-eqz v6, :cond_1b

    .line 306
    .line 307
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_1b
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 311
    .line 312
    :goto_c
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 313
    .line 314
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 315
    .line 316
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->q:Landroid/view/View;

    .line 317
    .line 318
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 323
    .line 324
    if-nez v2, :cond_1c

    .line 325
    .line 326
    goto :goto_f

    .line 327
    :cond_1c
    if-eqz v6, :cond_1d

    .line 328
    .line 329
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 330
    .line 331
    goto :goto_d

    .line 332
    :cond_1d
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 333
    .line 334
    :goto_d
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 335
    .line 336
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSubView;->r:Landroid/view/View;

    .line 337
    .line 338
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 343
    .line 344
    if-nez v2, :cond_1e

    .line 345
    .line 346
    goto :goto_f

    .line 347
    :cond_1e
    if-eqz v6, :cond_1f

    .line 348
    .line 349
    add-int/2addr v8, v1

    .line 350
    sget v1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 351
    .line 352
    sub-int/2addr v8, v1

    .line 353
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 354
    .line 355
    goto :goto_e

    .line 356
    :cond_1f
    add-int/2addr v8, v1

    .line 357
    sget v1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 358
    .line 359
    sub-int/2addr v8, v1

    .line 360
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 361
    .line 362
    :goto_e
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 363
    .line 364
    :goto_f
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->x:Lcom/mycompany/app/view/MyRecyclerView;

    .line 365
    .line 366
    if-eqz v1, :cond_21

    .line 367
    .line 368
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->y:Lcom/mycompany/app/quick/QuickAdapter;

    .line 369
    .line 370
    if-nez v1, :cond_20

    .line 371
    .line 372
    goto :goto_10

    .line 373
    :cond_20
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSubView;->c:Landroid/content/Context;

    .line 374
    .line 375
    new-instance v2, Lcom/mycompany/app/quick/QuickSubView$11;

    .line 376
    .line 377
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickSubView$11;-><init>(Lcom/mycompany/app/quick/QuickSubView;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 381
    .line 382
    .line 383
    :cond_21
    :goto_10
    return-void
.end method
