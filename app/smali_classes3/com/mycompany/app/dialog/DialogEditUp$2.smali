.class Lcom/mycompany/app/dialog/DialogEditUp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditUp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditUp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp$2;->c:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp$2;->c:Lcom/mycompany/app/dialog/DialogEditUp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_b

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const v2, -0x1f1f20

    .line 16
    .line 17
    .line 18
    const v3, -0xc0c0c1

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    const v4, -0x50506

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 39
    .line 40
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 51
    .line 52
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 53
    .line 54
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 55
    .line 56
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 64
    .line 65
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 66
    .line 67
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 68
    .line 69
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v1, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 84
    .line 85
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 86
    .line 87
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 96
    .line 97
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->h0:Lcom/mycompany/app/view/MyLineRelative;

    .line 111
    .line 112
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 113
    .line 114
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    const v4, -0x4e3a0c

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    const v4, -0x3e3e3f

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    const/high16 v4, -0x1000000

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 154
    .line 155
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 159
    .line 160
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 161
    .line 162
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 166
    .line 167
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 168
    .line 169
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 170
    .line 171
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 179
    .line 180
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 181
    .line 182
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 183
    .line 184
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-virtual {v1, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 192
    .line 193
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 194
    .line 195
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 199
    .line 200
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 201
    .line 202
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    const v5, -0xe19938

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 214
    .line 215
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 219
    .line 220
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->h0:Lcom/mycompany/app/view/MyLineRelative;

    .line 229
    .line 230
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 231
    .line 232
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 236
    .line 237
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 241
    .line 242
    const v4, -0xc0ae4b

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 249
    .line 250
    const v4, -0x9e9e9f

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 257
    .line 258
    const/4 v4, 0x0

    .line 259
    invoke-virtual {v1, v4}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 263
    .line 264
    const/16 v5, 0x8

    .line 265
    .line 266
    if-eqz v1, :cond_4

    .line 267
    .line 268
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 269
    .line 270
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 274
    .line 275
    sget v6, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 276
    .line 277
    int-to-float v6, v6

    .line 278
    sget v7, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 279
    .line 280
    int-to-float v7, v7

    .line 281
    invoke-virtual {v1, v6, v7}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 282
    .line 283
    .line 284
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 285
    .line 286
    if-eqz v1, :cond_2

    .line 287
    .line 288
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 289
    .line 290
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_upward_dark_24:I

    .line 291
    .line 292
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    const v2, -0x1e1e1f

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 300
    .line 301
    .line 302
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 303
    .line 304
    iget v6, v0, Lcom/mycompany/app/dialog/DialogEditUp;->x0:I

    .line 305
    .line 306
    invoke-virtual {v2, v6, v3}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 307
    .line 308
    .line 309
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 310
    .line 311
    const v3, -0x3f8a8a8b

    .line 312
    .line 313
    .line 314
    sget v6, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 315
    .line 316
    invoke-virtual {v2, v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 317
    .line 318
    .line 319
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 320
    .line 321
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    .line 323
    .line 324
    goto :goto_1

    .line 325
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 326
    .line 327
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditUp;->x0:I

    .line 328
    .line 329
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 333
    .line 334
    const v2, -0x7f8a8a8b

    .line 335
    .line 336
    .line 337
    sget v3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 338
    .line 339
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->m(II)V

    .line 340
    .line 341
    .line 342
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 343
    .line 344
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_upward_black_24:I

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 347
    .line 348
    .line 349
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 350
    .line 351
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 352
    .line 353
    if-nez v2, :cond_3

    .line 354
    .line 355
    move v2, v5

    .line 356
    goto :goto_2

    .line 357
    :cond_3
    move v2, v4

    .line 358
    :goto_2
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 359
    .line 360
    .line 361
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 362
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 369
    .line 370
    const-string v6, "%"

    .line 371
    .line 372
    invoke-static {v2, v3, v6, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 376
    .line 377
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->a0:I

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 383
    .line 384
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 390
    .line 391
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$3;

    .line 392
    .line 393
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$3;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 397
    .line 398
    .line 399
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 400
    .line 401
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$4;

    .line 402
    .line 403
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$4;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 410
    .line 411
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$5;

    .line 412
    .line 413
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$5;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    .line 418
    .line 419
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 420
    .line 421
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-eqz v2, :cond_5

    .line 426
    .line 427
    move v2, v5

    .line 428
    goto :goto_3

    .line 429
    :cond_5
    move v2, v4

    .line 430
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    .line 432
    .line 433
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 434
    .line 435
    if-nez v1, :cond_6

    .line 436
    .line 437
    goto :goto_4

    .line 438
    :cond_6
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$13;

    .line 439
    .line 440
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$13;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 444
    .line 445
    .line 446
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditUp$14;

    .line 447
    .line 448
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogEditUp$14;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 452
    .line 453
    .line 454
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 455
    .line 456
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$6;

    .line 457
    .line 458
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    .line 463
    .line 464
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 465
    .line 466
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$7;

    .line 467
    .line 468
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$7;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 472
    .line 473
    .line 474
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 475
    .line 476
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$8;

    .line 477
    .line 478
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$8;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMoveFrame;->setMoveListener(Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 482
    .line 483
    .line 484
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 485
    .line 486
    sget v2, Lnet/kaki87/soul2/testing/R$string;->location:I

    .line 487
    .line 488
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 489
    .line 490
    .line 491
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 492
    .line 493
    sget v2, Lnet/kaki87/soul2/testing/R$string;->long_move_guide:I

    .line 494
    .line 495
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 496
    .line 497
    .line 498
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 499
    .line 500
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/dialog/DialogEditUp;->E(IZ)V

    .line 501
    .line 502
    .line 503
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->h0:Lcom/mycompany/app/view/MyLineRelative;

    .line 504
    .line 505
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$9;

    .line 506
    .line 507
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$9;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    .line 512
    .line 513
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 514
    .line 515
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$10;

    .line 516
    .line 517
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$10;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    .line 522
    .line 523
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 524
    .line 525
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$11;

    .line 526
    .line 527
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$11;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    .line 532
    .line 533
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->w0:I

    .line 534
    .line 535
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 536
    .line 537
    invoke-static {v1, v2}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    iput v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->x0:I

    .line 542
    .line 543
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 544
    .line 545
    if-eqz v2, :cond_7

    .line 546
    .line 547
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 548
    .line 549
    .line 550
    :cond_7
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    if-eqz v1, :cond_a

    .line 555
    .line 556
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 557
    .line 558
    if-nez v1, :cond_8

    .line 559
    .line 560
    goto :goto_5

    .line 561
    :cond_8
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 566
    .line 567
    if-eqz v1, :cond_9

    .line 568
    .line 569
    move v4, v5

    .line 570
    :cond_9
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 571
    .line 572
    .line 573
    :cond_a
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUp;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 574
    .line 575
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUp$12;

    .line 576
    .line 577
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUp$12;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 581
    .line 582
    .line 583
    :cond_b
    :goto_6
    return-void
.end method
