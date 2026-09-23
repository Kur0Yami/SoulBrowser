.class Lcom/mycompany/app/dialog/DialogSeekWebText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWebText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$2;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$2;->c:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->b0:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->a0:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->g0:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    if-eqz v3, :cond_5

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    const/high16 v4, -0x1000000

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 24
    .line 25
    const v5, -0x4f4f50

    .line 26
    .line 27
    .line 28
    sget v6, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 29
    .line 30
    invoke-virtual {v3, v5, v6}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->i0:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->m0:Lcom/mycompany/app/view/MyLineRelative;

    .line 46
    .line 47
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->p0:Lcom/mycompany/app/view/MyRoundItem;

    .line 53
    .line 54
    const v4, -0xdededf

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->w0:Lcom/mycompany/app/view/MyRoundItem;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    const v4, -0x50506

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    const v5, -0x3e3e3f

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 99
    .line 100
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 106
    .line 107
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 111
    .line 112
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 113
    .line 114
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 115
    .line 116
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    .line 123
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 124
    .line 125
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 126
    .line 127
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 128
    .line 129
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 134
    .line 135
    .line 136
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 147
    .line 148
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 149
    .line 150
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 151
    .line 152
    .line 153
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 154
    .line 155
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 156
    .line 157
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 158
    .line 159
    .line 160
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 161
    .line 162
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 163
    .line 164
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 165
    .line 166
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    .line 173
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 174
    .line 175
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 176
    .line 177
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 178
    .line 179
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 189
    .line 190
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 191
    .line 192
    .line 193
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->D0:Lcom/mycompany/app/view/MyLineText;

    .line 194
    .line 195
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 196
    .line 197
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 198
    .line 199
    .line 200
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    .line 204
    .line 205
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->D0:Lcom/mycompany/app/view/MyLineText;

    .line 206
    .line 207
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 211
    .line 212
    const v4, -0xc0c0c1

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 216
    .line 217
    .line 218
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 219
    .line 220
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 221
    .line 222
    .line 223
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 224
    .line 225
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 226
    .line 227
    .line 228
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 229
    .line 230
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 236
    .line 237
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 238
    .line 239
    invoke-virtual {v3, v4, v5}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 240
    .line 241
    .line 242
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 243
    .line 244
    const v5, -0x70708

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 248
    .line 249
    .line 250
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->i0:Landroid/widget/RelativeLayout;

    .line 251
    .line 252
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 253
    .line 254
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 255
    .line 256
    .line 257
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->m0:Lcom/mycompany/app/view/MyLineRelative;

    .line 258
    .line 259
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 260
    .line 261
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 262
    .line 263
    .line 264
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->p0:Lcom/mycompany/app/view/MyRoundItem;

    .line 265
    .line 266
    const/4 v5, -0x1

    .line 267
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 268
    .line 269
    .line 270
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->w0:Lcom/mycompany/app/view/MyRoundItem;

    .line 271
    .line 272
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 273
    .line 274
    .line 275
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    .line 279
    .line 280
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 281
    .line 282
    const v5, -0x9e9e9f

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    .line 287
    .line 288
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 289
    .line 290
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    .line 292
    .line 293
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 294
    .line 295
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    .line 297
    .line 298
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    .line 302
    .line 303
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 304
    .line 305
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 306
    .line 307
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 308
    .line 309
    .line 310
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 311
    .line 312
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 313
    .line 314
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 315
    .line 316
    .line 317
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 318
    .line 319
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 320
    .line 321
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 322
    .line 323
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    .line 329
    .line 330
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 331
    .line 332
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 333
    .line 334
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 335
    .line 336
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 341
    .line 342
    .line 343
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 344
    .line 345
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 346
    .line 347
    .line 348
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    .line 350
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    .line 352
    .line 353
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 354
    .line 355
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 356
    .line 357
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 358
    .line 359
    .line 360
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 361
    .line 362
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 363
    .line 364
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 365
    .line 366
    .line 367
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 368
    .line 369
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 370
    .line 371
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 372
    .line 373
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    .line 379
    .line 380
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 381
    .line 382
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 383
    .line 384
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 385
    .line 386
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 391
    .line 392
    .line 393
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 394
    .line 395
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 396
    .line 397
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 398
    .line 399
    .line 400
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->D0:Lcom/mycompany/app/view/MyLineText;

    .line 401
    .line 402
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 403
    .line 404
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 405
    .line 406
    .line 407
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 408
    .line 409
    const v5, -0xe19938

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    .line 414
    .line 415
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->D0:Lcom/mycompany/app/view/MyLineText;

    .line 416
    .line 417
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 418
    .line 419
    .line 420
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 421
    .line 422
    const v4, -0x1f1f20

    .line 423
    .line 424
    .line 425
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 426
    .line 427
    .line 428
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 429
    .line 430
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 431
    .line 432
    .line 433
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 434
    .line 435
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 436
    .line 437
    .line 438
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 439
    .line 440
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 441
    .line 442
    .line 443
    :goto_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->p0:Lcom/mycompany/app/view/MyRoundItem;

    .line 444
    .line 445
    const/4 v4, 0x0

    .line 446
    const/4 v5, 0x1

    .line 447
    invoke-virtual {v3, v4, v5}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 448
    .line 449
    .line 450
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->w0:Lcom/mycompany/app/view/MyRoundItem;

    .line 451
    .line 452
    invoke-virtual {v3, v5, v4}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 453
    .line 454
    .line 455
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 456
    .line 457
    sget v5, Lnet/kaki87/soul2/testing/R$string;->zoom_icon:I

    .line 458
    .line 459
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 460
    .line 461
    .line 462
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 463
    .line 464
    sget v5, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 465
    .line 466
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 467
    .line 468
    .line 469
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 470
    .line 471
    sget v5, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 472
    .line 473
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 474
    .line 475
    .line 476
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 477
    .line 478
    sget v5, Lnet/kaki87/soul2/testing/R$string;->zoom_size:I

    .line 479
    .line 480
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 481
    .line 482
    .line 483
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->G0:Z

    .line 484
    .line 485
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogSeekWebText;->H(Z)V

    .line 486
    .line 487
    .line 488
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->j0:Lcom/mycompany/app/view/MySwitchView;

    .line 489
    .line 490
    iget-boolean v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->G0:Z

    .line 491
    .line 492
    invoke-virtual {v3, v5, v4}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 493
    .line 494
    .line 495
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->i0:Landroid/widget/RelativeLayout;

    .line 496
    .line 497
    new-instance v5, Lcom/mycompany/app/dialog/DialogSeekWebText$3;

    .line 498
    .line 499
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$3;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    .line 504
    .line 505
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->j0:Lcom/mycompany/app/view/MySwitchView;

    .line 506
    .line 507
    new-instance v5, Lcom/mycompany/app/dialog/DialogSeekWebText$4;

    .line 508
    .line 509
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$4;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    .line 514
    .line 515
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->o0:Lcom/mycompany/app/view/MyButtonView;

    .line 516
    .line 517
    sget v5, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 518
    .line 519
    sget v6, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 520
    .line 521
    invoke-static {v5, v6}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 522
    .line 523
    .line 524
    move-result v5

    .line 525
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonView;->setBgNorColor(I)V

    .line 526
    .line 527
    .line 528
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->o0:Lcom/mycompany/app/view/MyButtonView;

    .line 529
    .line 530
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 531
    .line 532
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonView;->d(I)V

    .line 533
    .line 534
    .line 535
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->m0:Lcom/mycompany/app/view/MyLineRelative;

    .line 536
    .line 537
    new-instance v5, Lcom/mycompany/app/dialog/DialogSeekWebText$5;

    .line 538
    .line 539
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$5;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    .line 544
    .line 545
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 546
    .line 547
    new-instance v5, Ljava/lang/StringBuilder;

    .line 548
    .line 549
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .line 551
    .line 552
    iget v6, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->H0:I

    .line 553
    .line 554
    const-string v7, "%"

    .line 555
    .line 556
    invoke-static {v5, v6, v7, v3}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 557
    .line 558
    .line 559
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 560
    .line 561
    invoke-virtual {v3, v4}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 562
    .line 563
    .line 564
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 565
    .line 566
    sub-int/2addr v1, v2

    .line 567
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 568
    .line 569
    .line 570
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 571
    .line 572
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->H0:I

    .line 573
    .line 574
    sub-int/2addr v5, v2

    .line 575
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 576
    .line 577
    .line 578
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 579
    .line 580
    new-instance v5, Lcom/mycompany/app/dialog/DialogSeekWebText$6;

    .line 581
    .line 582
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$6;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 586
    .line 587
    .line 588
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 589
    .line 590
    new-instance v5, Lcom/mycompany/app/dialog/DialogSeekWebText$7;

    .line 591
    .line 592
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$7;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    .line 597
    .line 598
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 599
    .line 600
    new-instance v5, Lcom/mycompany/app/dialog/DialogSeekWebText$8;

    .line 601
    .line 602
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$8;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    .line 607
    .line 608
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 609
    .line 610
    sget v5, Lnet/kaki87/soul2/testing/R$string;->default_size:I

    .line 611
    .line 612
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 613
    .line 614
    .line 615
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 616
    .line 617
    new-instance v5, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .line 621
    .line 622
    iget v6, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->I0:I

    .line 623
    .line 624
    invoke-static {v5, v6, v7, v3}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 625
    .line 626
    .line 627
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 628
    .line 629
    invoke-virtual {v3, v4}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 630
    .line 631
    .line 632
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 633
    .line 634
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 635
    .line 636
    .line 637
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 638
    .line 639
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->I0:I

    .line 640
    .line 641
    sub-int/2addr v3, v2

    .line 642
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 643
    .line 644
    .line 645
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 646
    .line 647
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$9;

    .line 648
    .line 649
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$9;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 653
    .line 654
    .line 655
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 656
    .line 657
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$10;

    .line 658
    .line 659
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$10;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    .line 664
    .line 665
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 666
    .line 667
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$11;

    .line 668
    .line 669
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$11;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    .line 674
    .line 675
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->E0:Landroid/widget/FrameLayout;

    .line 676
    .line 677
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$12;

    .line 678
    .line 679
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$12;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    .line 684
    .line 685
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 686
    .line 687
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$13;

    .line 688
    .line 689
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$13;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    .line 694
    .line 695
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->D0:Lcom/mycompany/app/view/MyLineText;

    .line 696
    .line 697
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$14;

    .line 698
    .line 699
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$14;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 706
    .line 707
    .line 708
    move-result v1

    .line 709
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->E0:Landroid/widget/FrameLayout;

    .line 710
    .line 711
    if-nez v2, :cond_2

    .line 712
    .line 713
    goto :goto_1

    .line 714
    :cond_2
    if-eqz v1, :cond_3

    .line 715
    .line 716
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->E0:Landroid/widget/FrameLayout;

    .line 721
    .line 722
    if-eqz v1, :cond_4

    .line 723
    .line 724
    const/16 v4, 0x8

    .line 725
    .line 726
    :cond_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 727
    .line 728
    .line 729
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWebText;->g0:Landroid/widget/RelativeLayout;

    .line 730
    .line 731
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWebText$15;

    .line 732
    .line 733
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWebText$15;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 737
    .line 738
    .line 739
    :cond_5
    :goto_2
    return-void
.end method
