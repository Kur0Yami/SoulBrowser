.class Lcom/mycompany/app/dialog/DialogSetBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar$2;->c:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetBar$2;->c:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 4
    .line 5
    iget v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->b0:I

    .line 6
    .line 7
    iget v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->f0:I

    .line 8
    .line 9
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    if-eqz v4, :cond_e

    .line 12
    .line 13
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_a

    .line 18
    .line 19
    :cond_0
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 20
    .line 21
    const v5, -0x1f1f20

    .line 22
    .line 23
    .line 24
    const v6, -0xc0c0c1

    .line 25
    .line 26
    .line 27
    const/high16 v7, -0x1000000

    .line 28
    .line 29
    const v8, -0x50506

    .line 30
    .line 31
    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 47
    .line 48
    invoke-virtual {v4, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 54
    .line 55
    invoke-virtual {v4, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 56
    .line 57
    .line 58
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 59
    .line 60
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 61
    .line 62
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 63
    .line 64
    invoke-static {v9, v10}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 72
    .line 73
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 74
    .line 75
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 76
    .line 77
    invoke-static {v9, v10}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    invoke-virtual {v4, v9}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 87
    .line 88
    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 89
    .line 90
    .line 91
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 94
    .line 95
    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 104
    .line 105
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 109
    .line 110
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    .line 126
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 132
    .line 133
    invoke-virtual {v4, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 134
    .line 135
    .line 136
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 137
    .line 138
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 139
    .line 140
    invoke-virtual {v4, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 144
    .line 145
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 146
    .line 147
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 148
    .line 149
    invoke-static {v9, v10}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v4, v9}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .line 155
    .line 156
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 157
    .line 158
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 159
    .line 160
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 161
    .line 162
    invoke-static {v9, v10}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-virtual {v4, v9}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 172
    .line 173
    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 174
    .line 175
    .line 176
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 177
    .line 178
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 179
    .line 180
    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 181
    .line 182
    .line 183
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    const v9, -0xe19938

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 192
    .line 193
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    .line 195
    .line 196
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 197
    .line 198
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 199
    .line 200
    .line 201
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 202
    .line 203
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 204
    .line 205
    .line 206
    :goto_0
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->i0:Landroid/widget/FrameLayout;

    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    const/4 v10, 0x0

    .line 213
    if-eqz v9, :cond_2

    .line 214
    .line 215
    const/16 v9, 0x8

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_2
    move v9, v10

    .line 219
    :goto_1
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .line 221
    .line 222
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 223
    .line 224
    if-nez v4, :cond_3

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_3
    new-instance v9, Lcom/mycompany/app/dialog/DialogSetBar$12;

    .line 228
    .line 229
    invoke-direct {v9, v1}, Lcom/mycompany/app/dialog/DialogSetBar$12;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v9}, Lcom/mycompany/app/view/MyRoundImage;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 233
    .line 234
    .line 235
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetBar$13;

    .line 236
    .line 237
    invoke-direct {v4, v1}, Lcom/mycompany/app/dialog/DialogSetBar$13;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 241
    .line 242
    .line 243
    :goto_2
    iget-object v13, v1, Lcom/mycompany/app/dialog/DialogSetBar;->g0:[I

    .line 244
    .line 245
    const/4 v4, 0x2

    .line 246
    if-eqz v13, :cond_a

    .line 247
    .line 248
    array-length v9, v13

    .line 249
    if-nez v9, :cond_4

    .line 250
    .line 251
    goto/16 :goto_8

    .line 252
    .line 253
    :cond_4
    invoke-static {v10, v10}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 254
    .line 255
    .line 256
    move-result v21

    .line 257
    new-instance v11, Lcom/mycompany/app/view/MyBarView;

    .line 258
    .line 259
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 260
    .line 261
    invoke-direct {v11, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    iput-object v11, v1, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 265
    .line 266
    iget-object v12, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 267
    .line 268
    const/16 v22, 0x0

    .line 269
    .line 270
    iget v9, v1, Lcom/mycompany/app/dialog/DialogSetBar;->f0:I

    .line 271
    .line 272
    const/4 v14, 0x0

    .line 273
    const/4 v15, 0x0

    .line 274
    const/16 v16, 0x0

    .line 275
    .line 276
    const/16 v17, 0x0

    .line 277
    .line 278
    const/16 v18, 0x0

    .line 279
    .line 280
    const/16 v19, 0x1

    .line 281
    .line 282
    const/16 v20, 0x0

    .line 283
    .line 284
    const/16 v23, 0x0

    .line 285
    .line 286
    move/from16 v24, v9

    .line 287
    .line 288
    invoke-virtual/range {v11 .. v24}, Lcom/mycompany/app/view/MyBarView;->a(Landroid/content/Context;[ILjava/lang/String;Ljava/lang/String;IZIIZIIII)V

    .line 289
    .line 290
    .line 291
    const/4 v9, -0x1

    .line 292
    if-ne v3, v4, :cond_6

    .line 293
    .line 294
    iget-object v11, v1, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 295
    .line 296
    sget-boolean v12, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 297
    .line 298
    if-eqz v12, :cond_5

    .line 299
    .line 300
    move v12, v7

    .line 301
    goto :goto_3

    .line 302
    :cond_5
    move v12, v9

    .line 303
    :goto_3
    iget v13, v1, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 304
    .line 305
    invoke-static {v12, v13}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_6
    iget-object v11, v1, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 314
    .line 315
    sget-boolean v12, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 316
    .line 317
    if-eqz v12, :cond_7

    .line 318
    .line 319
    move v12, v7

    .line 320
    goto :goto_4

    .line 321
    :cond_7
    move v12, v9

    .line 322
    :goto_4
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 323
    .line 324
    .line 325
    :goto_5
    iget v11, v1, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 326
    .line 327
    sget v12, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 328
    .line 329
    mul-int/2addr v11, v12

    .line 330
    int-to-float v11, v11

    .line 331
    const/high16 v12, 0x42c80000    # 100.0f

    .line 332
    .line 333
    div-float/2addr v11, v12

    .line 334
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    sget v12, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 339
    .line 340
    int-to-float v12, v12

    .line 341
    const/high16 v13, 0x40000000    # 2.0f

    .line 342
    .line 343
    div-float/2addr v12, v13

    .line 344
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 345
    .line 346
    .line 347
    move-result v12

    .line 348
    if-ge v11, v12, :cond_8

    .line 349
    .line 350
    :goto_6
    move v11, v12

    .line 351
    goto :goto_7

    .line 352
    :cond_8
    sget v12, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 353
    .line 354
    mul-int/2addr v12, v4

    .line 355
    if-le v11, v12, :cond_9

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_9
    :goto_7
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 359
    .line 360
    const/16 v13, 0x10

    .line 361
    .line 362
    invoke-direct {v12, v9, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 363
    .line 364
    .line 365
    iput-object v12, v1, Lcom/mycompany/app/dialog/DialogSetBar;->l0:Landroid/widget/FrameLayout$LayoutParams;

    .line 366
    .line 367
    iget-object v9, v1, Lcom/mycompany/app/dialog/DialogSetBar;->i0:Landroid/widget/FrameLayout;

    .line 368
    .line 369
    iget-object v11, v1, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 370
    .line 371
    invoke-virtual {v9, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    .line 373
    .line 374
    :cond_a
    :goto_8
    const-string v9, "%"

    .line 375
    .line 376
    if-ne v3, v4, :cond_d

    .line 377
    .line 378
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 379
    .line 380
    if-nez v3, :cond_b

    .line 381
    .line 382
    goto/16 :goto_a

    .line 383
    .line 384
    :cond_b
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 385
    .line 386
    if-eqz v4, :cond_c

    .line 387
    .line 388
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    .line 390
    .line 391
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 392
    .line 393
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    .line 395
    .line 396
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 397
    .line 398
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 399
    .line 400
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 401
    .line 402
    .line 403
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 404
    .line 405
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 406
    .line 407
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 408
    .line 409
    .line 410
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 411
    .line 412
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 413
    .line 414
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 415
    .line 416
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    .line 422
    .line 423
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 424
    .line 425
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 426
    .line 427
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 428
    .line 429
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    invoke-virtual {v3, v4}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 434
    .line 435
    .line 436
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 437
    .line 438
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 439
    .line 440
    .line 441
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 442
    .line 443
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 444
    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_c
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    .line 449
    .line 450
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 451
    .line 452
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    .line 454
    .line 455
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 456
    .line 457
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 458
    .line 459
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 460
    .line 461
    .line 462
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 463
    .line 464
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 465
    .line 466
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 467
    .line 468
    .line 469
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 470
    .line 471
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 472
    .line 473
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 474
    .line 475
    invoke-static {v4, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 480
    .line 481
    .line 482
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 483
    .line 484
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 485
    .line 486
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 487
    .line 488
    invoke-static {v4, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    invoke-virtual {v3, v4}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 493
    .line 494
    .line 495
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 496
    .line 497
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 498
    .line 499
    .line 500
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 501
    .line 502
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 503
    .line 504
    .line 505
    :goto_9
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 506
    .line 507
    sget v4, Lnet/kaki87/soul2/testing/R$string;->color_alpha:I

    .line 508
    .line 509
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 510
    .line 511
    .line 512
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 513
    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .line 518
    .line 519
    iget v5, v1, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 520
    .line 521
    invoke-static {v4, v5, v9, v3}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 522
    .line 523
    .line 524
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 525
    .line 526
    invoke-virtual {v3, v10}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 527
    .line 528
    .line 529
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 530
    .line 531
    iget v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->a0:I

    .line 532
    .line 533
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 534
    .line 535
    .line 536
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 537
    .line 538
    iget v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 539
    .line 540
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 541
    .line 542
    .line 543
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 544
    .line 545
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetBar$3;

    .line 546
    .line 547
    invoke-direct {v4, v1}, Lcom/mycompany/app/dialog/DialogSetBar$3;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 551
    .line 552
    .line 553
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 554
    .line 555
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetBar$4;

    .line 556
    .line 557
    invoke-direct {v4, v1}, Lcom/mycompany/app/dialog/DialogSetBar$4;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    .line 562
    .line 563
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 564
    .line 565
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetBar$5;

    .line 566
    .line 567
    invoke-direct {v4, v1}, Lcom/mycompany/app/dialog/DialogSetBar$5;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    .line 572
    .line 573
    :cond_d
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 574
    .line 575
    invoke-virtual {v3, v10}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 576
    .line 577
    .line 578
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 579
    .line 580
    iget v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->c0:I

    .line 581
    .line 582
    sub-int/2addr v4, v2

    .line 583
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 584
    .line 585
    .line 586
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 587
    .line 588
    iget v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 589
    .line 590
    sub-int/2addr v4, v2

    .line 591
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 592
    .line 593
    .line 594
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 595
    .line 596
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetBar$6;

    .line 597
    .line 598
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetBar$6;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 602
    .line 603
    .line 604
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 605
    .line 606
    sget v3, Lnet/kaki87/soul2/testing/R$string;->size_height:I

    .line 607
    .line 608
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 609
    .line 610
    .line 611
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 612
    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    iget v4, v1, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 619
    .line 620
    invoke-static {v3, v4, v9, v2}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 621
    .line 622
    .line 623
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 624
    .line 625
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetBar$7;

    .line 626
    .line 627
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetBar$7;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    .line 632
    .line 633
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 634
    .line 635
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetBar$8;

    .line 636
    .line 637
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetBar$8;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    .line 642
    .line 643
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 644
    .line 645
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetBar$9;

    .line 646
    .line 647
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetBar$9;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    .line 652
    .line 653
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 654
    .line 655
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetBar$10;

    .line 656
    .line 657
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetBar$10;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    .line 662
    .line 663
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetBar;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 664
    .line 665
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetBar$11;

    .line 666
    .line 667
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetBar$11;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 671
    .line 672
    .line 673
    :cond_e
    :goto_a
    return-void
.end method
