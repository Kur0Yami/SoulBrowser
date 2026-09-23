.class Lcom/mycompany/app/dialog/DialogSeekSimple$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekSimple;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$2;->c:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple$2;->c:Lcom/mycompany/app/dialog/DialogSeekSimple;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->t0:I

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->f0:I

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    if-eqz v4, :cond_1e

    .line 12
    .line 13
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

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
    const/high16 v5, -0x1000000

    .line 22
    .line 23
    const v6, -0x50506

    .line 24
    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 41
    .line 42
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 48
    .line 49
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 55
    .line 56
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    const v7, -0xc0c0c1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 89
    .line 90
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 91
    .line 92
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 93
    .line 94
    .line 95
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 98
    .line 99
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 100
    .line 101
    .line 102
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 103
    .line 104
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 105
    .line 106
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 107
    .line 108
    .line 109
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 110
    .line 111
    const v7, -0xe19938

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 118
    .line 119
    const v7, -0x1f1f20

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 128
    .line 129
    .line 130
    :goto_0
    const/4 v4, 0x2

    .line 131
    const-string v7, "\n"

    .line 132
    .line 133
    const/4 v8, 0x0

    .line 134
    const/4 v9, 0x1

    .line 135
    if-ne v3, v9, :cond_4

    .line 136
    .line 137
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 138
    .line 139
    if-nez v10, :cond_2

    .line 140
    .line 141
    goto/16 :goto_a

    .line 142
    .line 143
    :cond_2
    iget v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 144
    .line 145
    if-le v10, v2, :cond_3

    .line 146
    .line 147
    move v2, v9

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    move v2, v8

    .line 150
    :goto_1
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->D()V

    .line 153
    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 161
    .line 162
    sget v11, Lnet/kaki87/soul2/testing/R$string;->fast_down_guide:I

    .line 163
    .line 164
    invoke-static {v10, v11, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 168
    .line 169
    sget v10, Lnet/kaki87/soul2/testing/R$string;->dark_mode_info_2:I

    .line 170
    .line 171
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_4

    .line 188
    .line 189
    :cond_4
    if-ne v3, v4, :cond_8

    .line 190
    .line 191
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 192
    .line 193
    if-nez v10, :cond_5

    .line 194
    .line 195
    goto/16 :goto_a

    .line 196
    .line 197
    :cond_5
    sget-boolean v11, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 198
    .line 199
    if-eqz v11, :cond_6

    .line 200
    .line 201
    const v11, -0x3e3e3f

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_6
    const v11, -0x9e9e9f

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    :goto_2
    iget v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 215
    .line 216
    if-le v10, v2, :cond_7

    .line 217
    .line 218
    move v2, v9

    .line 219
    goto :goto_3

    .line 220
    :cond_7
    move v2, v8

    .line 221
    :goto_3
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->D()V

    .line 224
    .line 225
    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 232
    .line 233
    sget v11, Lnet/kaki87/soul2/testing/R$string;->fast_down_guide:I

    .line 234
    .line 235
    invoke-static {v10, v11, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 239
    .line 240
    sget v11, Lnet/kaki87/soul2/testing/R$string;->dark_mode_info_2:I

    .line 241
    .line 242
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .line 257
    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 264
    .line 265
    sget v11, Lnet/kaki87/soul2/testing/R$string;->ocr_zoom_info_1:I

    .line 266
    .line 267
    invoke-static {v10, v11, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 271
    .line 272
    sget v10, Lnet/kaki87/soul2/testing/R$string;->ocr_zoom_info_2:I

    .line 273
    .line 274
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 292
    .line 293
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 294
    .line 295
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 296
    .line 297
    invoke-static {v7, v10}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    .line 303
    .line 304
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 305
    .line 306
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 307
    .line 308
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 309
    .line 310
    invoke-static {v7, v10}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v2, v7}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 315
    .line 316
    .line 317
    :goto_4
    const/16 v2, 0xc

    .line 318
    .line 319
    const/4 v7, 0x6

    .line 320
    const/4 v10, 0x3

    .line 321
    if-nez v3, :cond_9

    .line 322
    .line 323
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 324
    .line 325
    sget v12, Lnet/kaki87/soul2/testing/R$string;->swipe_sense:I

    .line 326
    .line 327
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_5

    .line 331
    .line 332
    :cond_9
    if-ne v3, v9, :cond_a

    .line 333
    .line 334
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 335
    .line 336
    sget v12, Lnet/kaki87/soul2/testing/R$string;->multi:I

    .line 337
    .line 338
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_5

    .line 342
    .line 343
    :cond_a
    if-ne v3, v4, :cond_b

    .line 344
    .line 345
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 346
    .line 347
    sget v12, Lnet/kaki87/soul2/testing/R$string;->zoom_title:I

    .line 348
    .line 349
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_5

    .line 353
    .line 354
    :cond_b
    if-ne v3, v10, :cond_c

    .line 355
    .line 356
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 357
    .line 358
    sget v12, Lnet/kaki87/soul2/testing/R$string;->img_bright:I

    .line 359
    .line 360
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_c
    const/4 v11, 0x4

    .line 365
    if-ne v3, v11, :cond_d

    .line 366
    .line 367
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 368
    .line 369
    sget v12, Lnet/kaki87/soul2/testing/R$string;->retry_count:I

    .line 370
    .line 371
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 372
    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_d
    const/4 v11, 0x5

    .line 376
    if-ne v3, v11, :cond_e

    .line 377
    .line 378
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 379
    .line 380
    sget v12, Lnet/kaki87/soul2/testing/R$string;->down_limit:I

    .line 381
    .line 382
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 383
    .line 384
    .line 385
    goto :goto_5

    .line 386
    :cond_e
    if-ne v3, v7, :cond_f

    .line 387
    .line 388
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 389
    .line 390
    sget v12, Lnet/kaki87/soul2/testing/R$string;->time_limit:I

    .line 391
    .line 392
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 393
    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_f
    const/4 v11, 0x7

    .line 397
    if-ne v3, v11, :cond_10

    .line 398
    .line 399
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 400
    .line 401
    sget v12, Lnet/kaki87/soul2/testing/R$string;->recent_search:I

    .line 402
    .line 403
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_10
    const/16 v11, 0x8

    .line 408
    .line 409
    if-ne v3, v11, :cond_11

    .line 410
    .line 411
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 412
    .line 413
    sget v12, Lnet/kaki87/soul2/testing/R$string;->recent_lang:I

    .line 414
    .line 415
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 416
    .line 417
    .line 418
    goto :goto_5

    .line 419
    :cond_11
    const/16 v11, 0xa

    .line 420
    .line 421
    if-ne v3, v11, :cond_12

    .line 422
    .line 423
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 424
    .line 425
    sget v12, Lnet/kaki87/soul2/testing/R$string;->open_limit:I

    .line 426
    .line 427
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_12
    const/16 v11, 0xb

    .line 432
    .line 433
    if-ne v3, v11, :cond_13

    .line 434
    .line 435
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 436
    .line 437
    sget v12, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 438
    .line 439
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 440
    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_13
    if-ne v3, v2, :cond_14

    .line 444
    .line 445
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 446
    .line 447
    sget v12, Lnet/kaki87/soul2/testing/R$string;->mem_keep:I

    .line 448
    .line 449
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 450
    .line 451
    .line 452
    goto :goto_5

    .line 453
    :cond_14
    iget-object v11, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 454
    .line 455
    sget v12, Lnet/kaki87/soul2/testing/R$string;->mem_limit:I

    .line 456
    .line 457
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 458
    .line 459
    .line 460
    :goto_5
    const-string v11, "%"

    .line 461
    .line 462
    if-nez v3, :cond_15

    .line 463
    .line 464
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 465
    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 472
    .line 473
    invoke-static {v3, v4, v11, v2}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 474
    .line 475
    .line 476
    goto :goto_7

    .line 477
    :cond_15
    const-string v12, "x"

    .line 478
    .line 479
    if-ne v3, v9, :cond_16

    .line 480
    .line 481
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 482
    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 489
    .line 490
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 491
    .line 492
    .line 493
    goto :goto_7

    .line 494
    :cond_16
    if-ne v3, v4, :cond_17

    .line 495
    .line 496
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 497
    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 504
    .line 505
    invoke-static {v4}, Lcom/mycompany/app/ocr/OcrDetector;->x(I)F

    .line 506
    .line 507
    .line 508
    move-result v4

    .line 509
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    .line 518
    .line 519
    goto :goto_7

    .line 520
    :cond_17
    if-ne v3, v10, :cond_18

    .line 521
    .line 522
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 523
    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .line 528
    .line 529
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 530
    .line 531
    invoke-static {v3, v4, v11, v2}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 532
    .line 533
    .line 534
    goto :goto_7

    .line 535
    :cond_18
    if-eq v3, v7, :cond_1a

    .line 536
    .line 537
    if-ne v3, v2, :cond_19

    .line 538
    .line 539
    goto :goto_6

    .line 540
    :cond_19
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 541
    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    const-string v4, ""

    .line 545
    .line 546
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 550
    .line 551
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 552
    .line 553
    .line 554
    goto :goto_7

    .line 555
    :cond_1a
    :goto_6
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 556
    .line 557
    new-instance v3, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .line 561
    .line 562
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 563
    .line 564
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->v0:Ljava/lang/String;

    .line 568
    .line 569
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    .line 578
    .line 579
    :goto_7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 580
    .line 581
    invoke-virtual {v2, v8}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 582
    .line 583
    .line 584
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 585
    .line 586
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 587
    .line 588
    sub-int/2addr v3, v1

    .line 589
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 590
    .line 591
    .line 592
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 593
    .line 594
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 595
    .line 596
    sub-int/2addr v3, v1

    .line 597
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 598
    .line 599
    .line 600
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 601
    .line 602
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSimple$3;

    .line 603
    .line 604
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSimple$3;-><init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 608
    .line 609
    .line 610
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 611
    .line 612
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSimple$4;

    .line 613
    .line 614
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSimple$4;-><init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    .line 619
    .line 620
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 621
    .line 622
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSimple$5;

    .line 623
    .line 624
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSimple$5;-><init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    .line 629
    .line 630
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 631
    .line 632
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSimple$6;

    .line 633
    .line 634
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSimple$6;-><init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    .line 639
    .line 640
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 641
    .line 642
    if-eqz v1, :cond_1c

    .line 643
    .line 644
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 645
    .line 646
    if-eqz v2, :cond_1b

    .line 647
    .line 648
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 649
    .line 650
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 651
    .line 652
    .line 653
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 654
    .line 655
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 656
    .line 657
    .line 658
    goto :goto_8

    .line 659
    :cond_1b
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 660
    .line 661
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 662
    .line 663
    .line 664
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 665
    .line 666
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    .line 668
    .line 669
    :goto_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 670
    .line 671
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSimple$7;

    .line 672
    .line 673
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSimple$7;-><init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    .line 678
    .line 679
    :cond_1c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->i0:Lcom/mycompany/app/view/MyImageFilter;

    .line 680
    .line 681
    if-nez v1, :cond_1d

    .line 682
    .line 683
    goto :goto_9

    .line 684
    :cond_1d
    new-instance v1, Lcom/mycompany/app/dialog/DialogSeekSimple$9;

    .line 685
    .line 686
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogSeekSimple$9;-><init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 690
    .line 691
    .line 692
    :goto_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekSimple;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 693
    .line 694
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekSimple$8;

    .line 695
    .line 696
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekSimple$8;-><init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 700
    .line 701
    .line 702
    :cond_1e
    :goto_a
    return-void
.end method
