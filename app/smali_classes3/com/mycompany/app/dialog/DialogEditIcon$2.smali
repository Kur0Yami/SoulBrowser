.class Lcom/mycompany/app/dialog/DialogEditIcon$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditIcon;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditIcon$2;->c:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditIcon$2;->c:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->a0:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->e0:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 8
    .line 9
    if-eqz v3, :cond_b

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    const/high16 v4, -0x1000000

    .line 20
    .line 21
    const v5, -0xc0c0c1

    .line 22
    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    const v6, -0x50506

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 35
    .line 36
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 42
    .line 43
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 49
    .line 50
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 54
    .line 55
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 56
    .line 57
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 58
    .line 59
    invoke-static {v7, v8}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 67
    .line 68
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 69
    .line 70
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 71
    .line 72
    invoke-static {v7, v8}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v3, v7}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 82
    .line 83
    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 87
    .line 88
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 89
    .line 90
    invoke-virtual {v3, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 91
    .line 92
    .line 93
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 94
    .line 95
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 99
    .line 100
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 109
    .line 110
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 125
    .line 126
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 127
    .line 128
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 129
    .line 130
    .line 131
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 134
    .line 135
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 136
    .line 137
    .line 138
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 139
    .line 140
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 141
    .line 142
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 143
    .line 144
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 152
    .line 153
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->d0:Landroid/content/Context;

    .line 154
    .line 155
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 156
    .line 157
    invoke-static {v6, v7}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v3, v6}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 167
    .line 168
    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 169
    .line 170
    .line 171
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 172
    .line 173
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 174
    .line 175
    invoke-virtual {v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 176
    .line 177
    .line 178
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 179
    .line 180
    const v6, -0xe19938

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 187
    .line 188
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 192
    .line 193
    const v6, -0x1f1f20

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 197
    .line 198
    .line 199
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 200
    .line 201
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 202
    .line 203
    .line 204
    :goto_0
    const/4 v3, 0x5

    .line 205
    if-ne v2, v3, :cond_3

    .line 206
    .line 207
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 208
    .line 209
    if-eqz v3, :cond_2

    .line 210
    .line 211
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 212
    .line 213
    const v4, -0x4f4f50

    .line 214
    .line 215
    .line 216
    sget v6, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 217
    .line 218
    invoke-virtual {v3, v4, v6}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 223
    .line 224
    sget v6, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 225
    .line 226
    invoke-virtual {v3, v4, v6}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 227
    .line 228
    .line 229
    :goto_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 230
    .line 231
    iget v4, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 232
    .line 233
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyDialogLinear;->setFilterColor(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_3
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 238
    .line 239
    if-eqz v3, :cond_4

    .line 240
    .line 241
    iget v4, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->v0:I

    .line 242
    .line 243
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 244
    .line 245
    .line 246
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 247
    .line 248
    sget v4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 249
    .line 250
    invoke-virtual {v3, v5, v4}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 251
    .line 252
    .line 253
    :cond_4
    :goto_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 254
    .line 255
    const/4 v4, 0x0

    .line 256
    invoke-virtual {v3, v4}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 257
    .line 258
    .line 259
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 260
    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    iget v7, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 267
    .line 268
    const-string v8, "%"

    .line 269
    .line 270
    invoke-static {v6, v7, v8, v3}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 271
    .line 272
    .line 273
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 274
    .line 275
    iget v6, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->b0:I

    .line 276
    .line 277
    sub-int/2addr v6, v1

    .line 278
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 279
    .line 280
    .line 281
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 282
    .line 283
    iget v6, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->t0:I

    .line 284
    .line 285
    sub-int/2addr v6, v1

    .line 286
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->l0:Landroid/widget/SeekBar;

    .line 290
    .line 291
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditIcon$3;

    .line 292
    .line 293
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditIcon$3;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 300
    .line 301
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditIcon$4;

    .line 302
    .line 303
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditIcon$4;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 310
    .line 311
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditIcon$5;

    .line 312
    .line 313
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditIcon$5;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    const/4 v1, 0x4

    .line 320
    if-ne v2, v1, :cond_5

    .line 321
    .line 322
    sget-object v3, Lcom/mycompany/app/main/MainConst;->r:[I

    .line 323
    .line 324
    array-length v3, v3

    .line 325
    goto :goto_3

    .line 326
    :cond_5
    sget-object v3, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 327
    .line 328
    array-length v3, v3

    .line 329
    :goto_3
    move v6, v4

    .line 330
    :goto_4
    if-ge v6, v3, :cond_8

    .line 331
    .line 332
    if-ne v2, v1, :cond_7

    .line 333
    .line 334
    sget-object v7, Lcom/mycompany/app/main/MainConst;->r:[I

    .line 335
    .line 336
    aget v7, v7, v6

    .line 337
    .line 338
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 339
    .line 340
    aget-object v8, v8, v6

    .line 341
    .line 342
    invoke-virtual {v8, v7, v7}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 343
    .line 344
    .line 345
    const/4 v7, 0x3

    .line 346
    if-ne v6, v7, :cond_6

    .line 347
    .line 348
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 349
    .line 350
    aget-object v7, v7, v6

    .line 351
    .line 352
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 353
    .line 354
    invoke-virtual {v7, v8, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 355
    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_6
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 359
    .line 360
    aget-object v7, v7, v6

    .line 361
    .line 362
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 363
    .line 364
    invoke-virtual {v7, v8, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 365
    .line 366
    .line 367
    goto :goto_5

    .line 368
    :cond_7
    sget-object v7, Lcom/mycompany/app/main/MainConst;->q:[I

    .line 369
    .line 370
    aget v7, v7, v6

    .line 371
    .line 372
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 373
    .line 374
    aget-object v8, v8, v6

    .line 375
    .line 376
    invoke-virtual {v8, v7, v7}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 377
    .line 378
    .line 379
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 380
    .line 381
    aget-object v7, v7, v6

    .line 382
    .line 383
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 384
    .line 385
    invoke-virtual {v7, v8, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 386
    .line 387
    .line 388
    :goto_5
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 389
    .line 390
    aget-object v7, v7, v6

    .line 391
    .line 392
    sget v8, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 393
    .line 394
    invoke-virtual {v7, v5, v8}, Lcom/mycompany/app/view/MyButtonCheck;->n(II)V

    .line 395
    .line 396
    .line 397
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->o0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 398
    .line 399
    aget-object v7, v7, v6

    .line 400
    .line 401
    new-instance v8, Lcom/mycompany/app/dialog/DialogEditIcon$6;

    .line 402
    .line 403
    invoke-direct {v8, v0, v6, v3}, Lcom/mycompany/app/dialog/DialogEditIcon$6;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;II)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    .line 408
    .line 409
    add-int/lit8 v6, v6, 0x1

    .line 410
    .line 411
    goto :goto_4

    .line 412
    :cond_8
    if-ne v2, v1, :cond_9

    .line 413
    .line 414
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 415
    .line 416
    const/4 v2, 0x2

    .line 417
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyPaletteView;->setType(I)V

    .line 418
    .line 419
    .line 420
    goto :goto_6

    .line 421
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 422
    .line 423
    const/4 v2, 0x1

    .line 424
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyPaletteView;->setType(I)V

    .line 425
    .line 426
    .line 427
    :goto_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 428
    .line 429
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditIcon$7;

    .line 430
    .line 431
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditIcon$7;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyPaletteView;->setListener(Lcom/mycompany/app/view/MyPaletteView$PaletteListener;)V

    .line 435
    .line 436
    .line 437
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 438
    .line 439
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditIcon$8;

    .line 440
    .line 441
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditIcon$8;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    .line 446
    .line 447
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->r0:Lcom/mycompany/app/view/MyLineText;

    .line 448
    .line 449
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditIcon$9;

    .line 450
    .line 451
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditIcon$9;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->E()V

    .line 458
    .line 459
    .line 460
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 461
    .line 462
    if-eqz v1, :cond_a

    .line 463
    .line 464
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyPaletteView;->setBorder(I)V

    .line 465
    .line 466
    .line 467
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->p0:Lcom/mycompany/app/view/MyPaletteView;

    .line 468
    .line 469
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->u0:I

    .line 470
    .line 471
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->w0:F

    .line 472
    .line 473
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyPaletteView;->b(FI)V

    .line 474
    .line 475
    .line 476
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditIcon;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 477
    .line 478
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditIcon$10;

    .line 479
    .line 480
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditIcon$10;-><init>(Lcom/mycompany/app/dialog/DialogEditIcon;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 484
    .line 485
    .line 486
    :cond_b
    :goto_7
    return-void
.end method
