.class Lcom/mycompany/app/main/MainListView$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$23;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView$23;->c:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->w:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    const/16 v4, 0x8

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Landroid/view/View;

    .line 28
    .line 29
    invoke-direct {v5, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    sget v6, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 33
    .line 34
    invoke-virtual {v3, v5, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 35
    .line 36
    .line 37
    new-instance v6, Landroid/view/View;

    .line 38
    .line 39
    invoke-direct {v6, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    sget v8, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 45
    .line 46
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    const v8, 0x800005

    .line 50
    .line 51
    .line 52
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    .line 54
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    new-instance v7, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    invoke-direct {v7, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    .line 68
    .line 69
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .line 71
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 72
    .line 73
    const/4 v11, -0x1

    .line 74
    invoke-direct {v9, v11, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    sget v10, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 78
    .line 79
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 80
    .line 81
    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 85
    .line 86
    invoke-direct {v9, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    const/16 v10, 0x11

    .line 90
    .line 91
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    .line 93
    .line 94
    const/4 v12, 0x1

    .line 95
    const/high16 v13, 0x41800000    # 16.0f

    .line 96
    .line 97
    invoke-virtual {v9, v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    .line 105
    invoke-direct {v14, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .line 107
    .line 108
    const/high16 v15, 0x3f800000    # 1.0f

    .line 109
    .line 110
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 111
    .line 112
    invoke-virtual {v7, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    new-instance v14, Lcom/mycompany/app/view/MyLineText;

    .line 116
    .line 117
    invoke-direct {v14, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v14, v2}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 133
    .line 134
    invoke-direct {v4, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    .line 136
    .line 137
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 138
    .line 139
    invoke-virtual {v7, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 143
    .line 144
    invoke-direct {v4, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    const/16 v12, 0x8

    .line 157
    .line 158
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 162
    .line 163
    invoke-direct {v12, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 164
    .line 165
    .line 166
    iput v15, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 167
    .line 168
    invoke-virtual {v7, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    new-instance v12, Lcom/mycompany/app/view/MyLineText;

    .line 172
    .line 173
    invoke-direct {v12, v2}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    .line 178
    .line 179
    const/4 v10, 0x1

    .line 180
    invoke-virtual {v12, v10, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v12, v2}, Lcom/mycompany/app/view/MyLineText;->r(Landroid/content/Context;)V

    .line 184
    .line 185
    .line 186
    const/16 v2, 0x8

    .line 187
    .line 188
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 192
    .line 193
    invoke-direct {v2, v8, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    .line 195
    .line 196
    iput v15, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 197
    .line 198
    invoke-virtual {v7, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    iput-object v3, v1, Lcom/mycompany/app/main/MainListView;->R:Landroid/widget/FrameLayout;

    .line 202
    .line 203
    iput-object v5, v1, Lcom/mycompany/app/main/MainListView;->S:Landroid/view/View;

    .line 204
    .line 205
    iput-object v6, v1, Lcom/mycompany/app/main/MainListView;->T:Landroid/view/View;

    .line 206
    .line 207
    iput-object v7, v1, Lcom/mycompany/app/main/MainListView;->U:Landroid/widget/LinearLayout;

    .line 208
    .line 209
    iget v2, v1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 210
    .line 211
    const/16 v3, 0x20

    .line 212
    .line 213
    if-ne v2, v3, :cond_2

    .line 214
    .line 215
    iput-object v9, v1, Lcom/mycompany/app/main/MainListView;->W:Lcom/mycompany/app/view/MyLineText;

    .line 216
    .line 217
    iput-object v14, v1, Lcom/mycompany/app/main/MainListView;->X:Lcom/mycompany/app/view/MyLineText;

    .line 218
    .line 219
    iput-object v4, v1, Lcom/mycompany/app/main/MainListView;->Z:Lcom/mycompany/app/view/MyLineText;

    .line 220
    .line 221
    iput-object v12, v1, Lcom/mycompany/app/main/MainListView;->a0:Lcom/mycompany/app/view/MyLineText;

    .line 222
    .line 223
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete_file:I

    .line 224
    .line 225
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 226
    .line 227
    .line 228
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->X:Lcom/mycompany/app/view/MyLineText;

    .line 229
    .line 230
    sget v3, Lnet/kaki87/soul2/testing/R$string;->delete_record:I

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->Z:Lcom/mycompany/app/view/MyLineText;

    .line 236
    .line 237
    sget v3, Lnet/kaki87/soul2/testing/R$string;->rename:I

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 240
    .line 241
    .line 242
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->a0:Lcom/mycompany/app/view/MyLineText;

    .line 243
    .line 244
    sget v3, Lnet/kaki87/soul2/testing/R$string;->share:I

    .line 245
    .line 246
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_2

    .line 250
    .line 251
    :cond_2
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainListView;->e:Z

    .line 252
    .line 253
    if-eqz v2, :cond_9

    .line 254
    .line 255
    iput-object v9, v1, Lcom/mycompany/app/main/MainListView;->W:Lcom/mycompany/app/view/MyLineText;

    .line 256
    .line 257
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 258
    .line 259
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 260
    .line 261
    .line 262
    iget v2, v1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 263
    .line 264
    const/16 v3, 0x13

    .line 265
    .line 266
    if-eq v2, v3, :cond_8

    .line 267
    .line 268
    const/16 v3, 0x14

    .line 269
    .line 270
    if-eq v2, v3, :cond_8

    .line 271
    .line 272
    const/16 v3, 0x15

    .line 273
    .line 274
    if-eq v2, v3, :cond_8

    .line 275
    .line 276
    const/16 v3, 0x16

    .line 277
    .line 278
    if-eq v2, v3, :cond_8

    .line 279
    .line 280
    const/16 v3, 0x17

    .line 281
    .line 282
    if-eq v2, v3, :cond_8

    .line 283
    .line 284
    const/16 v3, 0x18

    .line 285
    .line 286
    if-eq v2, v3, :cond_8

    .line 287
    .line 288
    const/16 v3, 0x1c

    .line 289
    .line 290
    if-eq v2, v3, :cond_8

    .line 291
    .line 292
    const/16 v3, 0x1d

    .line 293
    .line 294
    if-eq v2, v3, :cond_8

    .line 295
    .line 296
    const/16 v3, 0x1e

    .line 297
    .line 298
    if-ne v2, v3, :cond_3

    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_3
    const/16 v3, 0x19

    .line 302
    .line 303
    if-eq v2, v3, :cond_7

    .line 304
    .line 305
    const/16 v3, 0x1b

    .line 306
    .line 307
    if-ne v2, v3, :cond_4

    .line 308
    .line 309
    goto :goto_0

    .line 310
    :cond_4
    const/16 v3, 0x12

    .line 311
    .line 312
    if-ne v2, v3, :cond_5

    .line 313
    .line 314
    iput-object v14, v1, Lcom/mycompany/app/main/MainListView;->a0:Lcom/mycompany/app/view/MyLineText;

    .line 315
    .line 316
    sget v2, Lnet/kaki87/soul2/testing/R$string;->share:I

    .line 317
    .line 318
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(I)V

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_5
    const/16 v3, 0x23

    .line 323
    .line 324
    if-eq v2, v3, :cond_6

    .line 325
    .line 326
    const/16 v3, 0x24

    .line 327
    .line 328
    if-ne v2, v3, :cond_b

    .line 329
    .line 330
    :cond_6
    iput-object v14, v1, Lcom/mycompany/app/main/MainListView;->Y:Lcom/mycompany/app/view/MyLineText;

    .line 331
    .line 332
    iput-object v4, v1, Lcom/mycompany/app/main/MainListView;->a0:Lcom/mycompany/app/view/MyLineText;

    .line 333
    .line 334
    sget v2, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 335
    .line 336
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(I)V

    .line 337
    .line 338
    .line 339
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->a0:Lcom/mycompany/app/view/MyLineText;

    .line 340
    .line 341
    sget v3, Lnet/kaki87/soul2/testing/R$string;->share:I

    .line 342
    .line 343
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 344
    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_7
    :goto_0
    iput-object v14, v1, Lcom/mycompany/app/main/MainListView;->V:Lcom/mycompany/app/view/MyLineText;

    .line 348
    .line 349
    sget v2, Lnet/kaki87/soul2/testing/R$string;->update:I

    .line 350
    .line 351
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(I)V

    .line 352
    .line 353
    .line 354
    goto :goto_2

    .line 355
    :cond_8
    :goto_1
    iput-object v14, v1, Lcom/mycompany/app/main/MainListView;->Y:Lcom/mycompany/app/view/MyLineText;

    .line 356
    .line 357
    sget v2, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 358
    .line 359
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(I)V

    .line 360
    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_9
    iput-object v9, v1, Lcom/mycompany/app/main/MainListView;->W:Lcom/mycompany/app/view/MyLineText;

    .line 364
    .line 365
    iput-object v14, v1, Lcom/mycompany/app/main/MainListView;->Z:Lcom/mycompany/app/view/MyLineText;

    .line 366
    .line 367
    iput-object v4, v1, Lcom/mycompany/app/main/MainListView;->a0:Lcom/mycompany/app/view/MyLineText;

    .line 368
    .line 369
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 370
    .line 371
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    .line 372
    .line 373
    .line 374
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->Z:Lcom/mycompany/app/view/MyLineText;

    .line 375
    .line 376
    sget v3, Lnet/kaki87/soul2/testing/R$string;->rename:I

    .line 377
    .line 378
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 379
    .line 380
    .line 381
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->a0:Lcom/mycompany/app/view/MyLineText;

    .line 382
    .line 383
    sget v3, Lnet/kaki87/soul2/testing/R$string;->share:I

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 386
    .line 387
    .line 388
    iget v2, v1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 389
    .line 390
    const/4 v10, 0x1

    .line 391
    if-eq v2, v10, :cond_a

    .line 392
    .line 393
    const/4 v3, 0x2

    .line 394
    if-eq v2, v3, :cond_a

    .line 395
    .line 396
    const/4 v3, 0x3

    .line 397
    if-ne v2, v3, :cond_b

    .line 398
    .line 399
    :cond_a
    iput-object v12, v1, Lcom/mycompany/app/main/MainListView;->b0:Lcom/mycompany/app/view/MyLineText;

    .line 400
    .line 401
    sget v2, Lnet/kaki87/soul2/testing/R$string;->extract:I

    .line 402
    .line 403
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    .line 404
    .line 405
    .line 406
    :cond_b
    :goto_2
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->h:Landroid/widget/RelativeLayout;

    .line 407
    .line 408
    if-nez v2, :cond_c

    .line 409
    .line 410
    :goto_3
    return-void

    .line 411
    :cond_c
    new-instance v3, Lcom/mycompany/app/main/MainListView$24;

    .line 412
    .line 413
    invoke-direct {v3, v1}, Lcom/mycompany/app/main/MainListView$24;-><init>(Lcom/mycompany/app/main/MainListView;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 417
    .line 418
    .line 419
    return-void
.end method
