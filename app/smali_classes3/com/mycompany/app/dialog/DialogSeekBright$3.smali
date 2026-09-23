.class Lcom/mycompany/app/dialog/DialogSeekBright$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekBright;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekBright$3;->c:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekBright$3;->c:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const v2, -0x4f4f50

    .line 18
    .line 19
    .line 20
    sget v3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->g0:Lcom/mycompany/app/view/MyLineRelative;

    .line 26
    .line 27
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    const v2, -0x50506

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    const v3, -0x4e3a0c

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    const v3, -0x3e3e3f

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 81
    .line 82
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->b0:Landroid/content/Context;

    .line 83
    .line 84
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 85
    .line 86
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 94
    .line 95
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->b0:Landroid/content/Context;

    .line 96
    .line 97
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 98
    .line 99
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v1, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 114
    .line 115
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    const v2, -0xc0c0c1

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_1
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 146
    .line 147
    const/high16 v3, -0x1000000

    .line 148
    .line 149
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->g0:Lcom/mycompany/app/view/MyLineRelative;

    .line 153
    .line 154
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    .line 161
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    const v2, -0xc0ae4b

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    const v2, -0x9e9e9f

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 191
    .line 192
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 198
    .line 199
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 205
    .line 206
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->b0:Landroid/content/Context;

    .line 207
    .line 208
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 209
    .line 210
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 218
    .line 219
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->b0:Landroid/content/Context;

    .line 220
    .line 221
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 222
    .line 223
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 231
    .line 232
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 238
    .line 239
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 240
    .line 241
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 245
    .line 246
    const v2, -0xe19938

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 253
    .line 254
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 258
    .line 259
    const v2, -0x1f1f20

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 266
    .line 267
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 268
    .line 269
    .line 270
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekBright;->E()V

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->g0:Lcom/mycompany/app/view/MyLineRelative;

    .line 274
    .line 275
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekBright$4;

    .line 276
    .line 277
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekBright$4;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .line 282
    .line 283
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 284
    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->y0:I

    .line 291
    .line 292
    const-string v4, "%"

    .line 293
    .line 294
    invoke-static {v2, v3, v4, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 298
    .line 299
    const/4 v2, 0x0

    .line 300
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 304
    .line 305
    const/16 v2, 0x64

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 308
    .line 309
    .line 310
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 311
    .line 312
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->y0:I

    .line 313
    .line 314
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->o0:Landroid/widget/SeekBar;

    .line 318
    .line 319
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekBright$5;

    .line 320
    .line 321
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekBright$5;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 325
    .line 326
    .line 327
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 328
    .line 329
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekBright$6;

    .line 330
    .line 331
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekBright$6;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 338
    .line 339
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekBright$7;

    .line 340
    .line 341
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekBright$7;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 348
    .line 349
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekBright$8;

    .line 350
    .line 351
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekBright$8;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    .line 356
    .line 357
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 358
    .line 359
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekBright$9;

    .line 360
    .line 361
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekBright$9;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    .line 366
    .line 367
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekBright;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 368
    .line 369
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekBright$10;

    .line 370
    .line 371
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekBright$10;-><init>(Lcom/mycompany/app/dialog/DialogSeekBright;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 375
    .line 376
    .line 377
    :cond_2
    :goto_1
    return-void
.end method
