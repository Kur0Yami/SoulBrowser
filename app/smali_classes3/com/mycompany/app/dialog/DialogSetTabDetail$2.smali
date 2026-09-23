.class Lcom/mycompany/app/dialog/DialogSetTabDetail$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabDetail;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$2;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$2;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->c0:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a0:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 8
    .line 9
    if-eqz v3, :cond_8

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

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
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 29
    .line 30
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->w0:Lcom/mycompany/app/view/MyLineRelative;

    .line 36
    .line 37
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->A0:Lcom/mycompany/app/view/MyLineFrame;

    .line 43
    .line 44
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    const v4, -0x50506

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    const v5, -0x4e3a0c

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 88
    .line 89
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 90
    .line 91
    .line 92
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 93
    .line 94
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 95
    .line 96
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 97
    .line 98
    .line 99
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 100
    .line 101
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 102
    .line 103
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 104
    .line 105
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 113
    .line 114
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 115
    .line 116
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 117
    .line 118
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 123
    .line 124
    .line 125
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_dark_24:I

    .line 138
    .line 139
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 143
    .line 144
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 145
    .line 146
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 150
    .line 151
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 152
    .line 153
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 154
    .line 155
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    .line 161
    .line 162
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 163
    .line 164
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 165
    .line 166
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 167
    .line 168
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 173
    .line 174
    .line 175
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->N0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 178
    .line 179
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 180
    .line 181
    .line 182
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->O0:Lcom/mycompany/app/view/MyLineText;

    .line 183
    .line 184
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 185
    .line 186
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->N0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 190
    .line 191
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    .line 193
    .line 194
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->O0:Lcom/mycompany/app/view/MyLineText;

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    .line 199
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 200
    .line 201
    const v4, -0xc0c0c1

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 205
    .line 206
    .line 207
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 208
    .line 209
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 210
    .line 211
    .line 212
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 213
    .line 214
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 215
    .line 216
    .line 217
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 218
    .line 219
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 225
    .line 226
    const/4 v5, -0x1

    .line 227
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 228
    .line 229
    .line 230
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 231
    .line 232
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 233
    .line 234
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 235
    .line 236
    .line 237
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->w0:Lcom/mycompany/app/view/MyLineRelative;

    .line 238
    .line 239
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 240
    .line 241
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 242
    .line 243
    .line 244
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->A0:Lcom/mycompany/app/view/MyLineFrame;

    .line 245
    .line 246
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 247
    .line 248
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 249
    .line 250
    .line 251
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 257
    .line 258
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    .line 260
    .line 261
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 262
    .line 263
    const v5, -0xc0ae4b

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    .line 268
    .line 269
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 270
    .line 271
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    .line 273
    .line 274
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 275
    .line 276
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    .line 278
    .line 279
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 280
    .line 281
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    .line 283
    .line 284
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 285
    .line 286
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 287
    .line 288
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 289
    .line 290
    .line 291
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 292
    .line 293
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 294
    .line 295
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 296
    .line 297
    .line 298
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 299
    .line 300
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 301
    .line 302
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 303
    .line 304
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    .line 310
    .line 311
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 312
    .line 313
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 314
    .line 315
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 316
    .line 317
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 322
    .line 323
    .line 324
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 325
    .line 326
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    .line 328
    .line 329
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 330
    .line 331
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    .line 333
    .line 334
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 335
    .line 336
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_black_24:I

    .line 337
    .line 338
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 339
    .line 340
    .line 341
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 342
    .line 343
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 344
    .line 345
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 346
    .line 347
    .line 348
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 349
    .line 350
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 351
    .line 352
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 353
    .line 354
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    .line 360
    .line 361
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 362
    .line 363
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 364
    .line 365
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 366
    .line 367
    invoke-static {v5, v6}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-virtual {v3, v5}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 372
    .line 373
    .line 374
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->N0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 375
    .line 376
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 377
    .line 378
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 379
    .line 380
    .line 381
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->O0:Lcom/mycompany/app/view/MyLineText;

    .line 382
    .line 383
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 384
    .line 385
    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 386
    .line 387
    .line 388
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->N0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 389
    .line 390
    const v5, -0xe19938

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    .line 395
    .line 396
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->O0:Lcom/mycompany/app/view/MyLineText;

    .line 397
    .line 398
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    .line 400
    .line 401
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 402
    .line 403
    const v4, -0x1f1f20

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 407
    .line 408
    .line 409
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 410
    .line 411
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 412
    .line 413
    .line 414
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 415
    .line 416
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 417
    .line 418
    .line 419
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 420
    .line 421
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 422
    .line 423
    .line 424
    :goto_0
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 425
    .line 426
    if-eqz v3, :cond_2

    .line 427
    .line 428
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->h0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 429
    .line 430
    const v4, -0xd8d8d9

    .line 431
    .line 432
    .line 433
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 434
    .line 435
    .line 436
    goto :goto_1

    .line 437
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetTabDetail$3;

    .line 438
    .line 439
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$3;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 443
    .line 444
    .line 445
    :goto_1
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 446
    .line 447
    const/4 v4, 0x2

    .line 448
    const/16 v5, 0x1f

    .line 449
    .line 450
    const/4 v6, 0x0

    .line 451
    if-nez v3, :cond_3

    .line 452
    .line 453
    goto/16 :goto_3

    .line 454
    .line 455
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .line 459
    .line 460
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->j0:Ljava/util/ArrayList;

    .line 461
    .line 462
    move v3, v6

    .line 463
    :goto_2
    const/4 v7, 0x3

    .line 464
    if-ge v3, v7, :cond_4

    .line 465
    .line 466
    new-instance v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 467
    .line 468
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 469
    .line 470
    .line 471
    iput v3, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 472
    .line 473
    const-string v8, "file:///android_asset/shortcut.html"

    .line 474
    .line 475
    iput-object v8, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 476
    .line 477
    const-string v8, "Soul"

    .line 478
    .line 479
    iput-object v8, v7, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->k:Ljava/lang/String;

    .line 480
    .line 481
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->j0:Ljava/util/ArrayList;

    .line 482
    .line 483
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    add-int/lit8 v3, v3, 0x1

    .line 487
    .line 488
    goto :goto_2

    .line 489
    :cond_4
    new-instance v7, Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 490
    .line 491
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 492
    .line 493
    iget-object v9, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->j0:Ljava/util/ArrayList;

    .line 494
    .line 495
    iget v10, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->k0:I

    .line 496
    .line 497
    new-instance v14, Lcom/mycompany/app/dialog/DialogSetTabDetail$18;

    .line 498
    .line 499
    invoke-direct {v14, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$18;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 500
    .line 501
    .line 502
    const/4 v11, 0x0

    .line 503
    const/4 v12, 0x0

    .line 504
    const/4 v13, 0x0

    .line 505
    invoke-direct/range {v7 .. v14}, Lcom/mycompany/app/web/WebTabBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZIILcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;)V

    .line 506
    .line 507
    .line 508
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 509
    .line 510
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 511
    .line 512
    sget v7, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 513
    .line 514
    mul-int/2addr v3, v7

    .line 515
    int-to-float v3, v3

    .line 516
    const/high16 v7, 0x42c80000    # 100.0f

    .line 517
    .line 518
    div-float/2addr v3, v7

    .line 519
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 524
    .line 525
    iget-boolean v9, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->P0:Z

    .line 526
    .line 527
    iget v10, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 528
    .line 529
    iget-boolean v11, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 530
    .line 531
    const/4 v12, 0x1

    .line 532
    iput-boolean v12, v8, Lcom/mycompany/app/web/WebTabBarAdapter;->p:Z

    .line 533
    .line 534
    iput-boolean v9, v8, Lcom/mycompany/app/web/WebTabBarAdapter;->q:Z

    .line 535
    .line 536
    iput v10, v8, Lcom/mycompany/app/web/WebTabBarAdapter;->r:I

    .line 537
    .line 538
    iput-boolean v11, v8, Lcom/mycompany/app/web/WebTabBarAdapter;->s:Z

    .line 539
    .line 540
    iput v3, v8, Lcom/mycompany/app/web/WebTabBarAdapter;->t:I

    .line 541
    .line 542
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 543
    .line 544
    if-ge v3, v5, :cond_5

    .line 545
    .line 546
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 547
    .line 548
    invoke-virtual {v3, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 549
    .line 550
    .line 551
    :cond_5
    new-instance v3, Lcom/mycompany/app/view/MyManagerLinear;

    .line 552
    .line 553
    invoke-direct {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 554
    .line 555
    .line 556
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 557
    .line 558
    invoke-virtual {v8, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 559
    .line 560
    .line 561
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 562
    .line 563
    iget-object v9, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 564
    .line 565
    iput-object v9, v8, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 566
    .line 567
    iput-object v3, v8, Lcom/mycompany/app/web/WebTabBarAdapter;->f:Lcom/mycompany/app/view/MyManagerLinear;

    .line 568
    .line 569
    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E()V

    .line 573
    .line 574
    .line 575
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 576
    .line 577
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->q0:Landroid/view/ViewGroup$LayoutParams;

    .line 582
    .line 583
    iget v8, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 584
    .line 585
    sget v9, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 586
    .line 587
    mul-int/2addr v8, v9

    .line 588
    int-to-float v8, v8

    .line 589
    div-float/2addr v8, v7

    .line 590
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 591
    .line 592
    .line 593
    move-result v7

    .line 594
    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 595
    .line 596
    :goto_3
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 597
    .line 598
    if-nez v3, :cond_6

    .line 599
    .line 600
    goto :goto_4

    .line 601
    :cond_6
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;

    .line 602
    .line 603
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 604
    .line 605
    .line 606
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->v0:Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;

    .line 607
    .line 608
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 609
    .line 610
    if-ge v3, v5, :cond_7

    .line 611
    .line 612
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 613
    .line 614
    invoke-virtual {v3, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 615
    .line 616
    .line 617
    :cond_7
    new-instance v3, Lcom/mycompany/app/view/MyManagerLinear;

    .line 618
    .line 619
    invoke-direct {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 620
    .line 621
    .line 622
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 623
    .line 624
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 625
    .line 626
    .line 627
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 628
    .line 629
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->v0:Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;

    .line 630
    .line 631
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 632
    .line 633
    .line 634
    :goto_4
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 635
    .line 636
    sget v4, Lnet/kaki87/soul2/testing/R$string;->sub_line:I

    .line 637
    .line 638
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 639
    .line 640
    .line 641
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 642
    .line 643
    sget v4, Lnet/kaki87/soul2/testing/R$string;->add_icon:I

    .line 644
    .line 645
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 646
    .line 647
    .line 648
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 649
    .line 650
    sget v4, Lnet/kaki87/soul2/testing/R$string;->close_icon:I

    .line 651
    .line 652
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 653
    .line 654
    .line 655
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 656
    .line 657
    sget v4, Lnet/kaki87/soul2/testing/R$string;->size_width:I

    .line 658
    .line 659
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 660
    .line 661
    .line 662
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 663
    .line 664
    sget v4, Lnet/kaki87/soul2/testing/R$string;->size_height:I

    .line 665
    .line 666
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 667
    .line 668
    .line 669
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 670
    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 677
    .line 678
    const-string v7, "%"

    .line 679
    .line 680
    invoke-static {v4, v5, v7, v3}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 681
    .line 682
    .line 683
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 684
    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .line 689
    .line 690
    iget v5, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 691
    .line 692
    invoke-static {v4, v5, v7, v3}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 693
    .line 694
    .line 695
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->s0:Lcom/mycompany/app/view/MySwitchView;

    .line 696
    .line 697
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->P0:Z

    .line 698
    .line 699
    invoke-virtual {v3, v4, v6}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 700
    .line 701
    .line 702
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 703
    .line 704
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetTabDetail$4;

    .line 705
    .line 706
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$4;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    .line 711
    .line 712
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->s0:Lcom/mycompany/app/view/MySwitchView;

    .line 713
    .line 714
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetTabDetail$5;

    .line 715
    .line 716
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$5;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 717
    .line 718
    .line 719
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    .line 721
    .line 722
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->w0:Lcom/mycompany/app/view/MyLineRelative;

    .line 723
    .line 724
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetTabDetail$6;

    .line 725
    .line 726
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$6;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    .line 731
    .line 732
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->B0:Lcom/mycompany/app/view/MySwitchView;

    .line 733
    .line 734
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 735
    .line 736
    invoke-virtual {v3, v4, v6}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 737
    .line 738
    .line 739
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->A0:Lcom/mycompany/app/view/MyLineFrame;

    .line 740
    .line 741
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetTabDetail$7;

    .line 742
    .line 743
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$7;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    .line 748
    .line 749
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->B0:Lcom/mycompany/app/view/MySwitchView;

    .line 750
    .line 751
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetTabDetail$8;

    .line 752
    .line 753
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$8;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    .line 758
    .line 759
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 760
    .line 761
    invoke-virtual {v3, v6}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 762
    .line 763
    .line 764
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 765
    .line 766
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->b0:I

    .line 767
    .line 768
    sub-int/2addr v4, v2

    .line 769
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 770
    .line 771
    .line 772
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 773
    .line 774
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 775
    .line 776
    sub-int/2addr v4, v2

    .line 777
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 778
    .line 779
    .line 780
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 781
    .line 782
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetTabDetail$9;

    .line 783
    .line 784
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$9;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 788
    .line 789
    .line 790
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 791
    .line 792
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetTabDetail$10;

    .line 793
    .line 794
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$10;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 795
    .line 796
    .line 797
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    .line 799
    .line 800
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 801
    .line 802
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetTabDetail$11;

    .line 803
    .line 804
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$11;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    .line 809
    .line 810
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 811
    .line 812
    invoke-virtual {v2, v6}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 813
    .line 814
    .line 815
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 816
    .line 817
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->d0:I

    .line 818
    .line 819
    sub-int/2addr v3, v1

    .line 820
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 821
    .line 822
    .line 823
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 824
    .line 825
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 826
    .line 827
    sub-int/2addr v3, v1

    .line 828
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 829
    .line 830
    .line 831
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 832
    .line 833
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabDetail$12;

    .line 834
    .line 835
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$12;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 839
    .line 840
    .line 841
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 842
    .line 843
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabDetail$13;

    .line 844
    .line 845
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$13;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    .line 850
    .line 851
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 852
    .line 853
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabDetail$14;

    .line 854
    .line 855
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$14;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    .line 860
    .line 861
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->N0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 862
    .line 863
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabDetail$15;

    .line 864
    .line 865
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$15;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    .line 870
    .line 871
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->O0:Lcom/mycompany/app/view/MyLineText;

    .line 872
    .line 873
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabDetail$16;

    .line 874
    .line 875
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$16;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    .line 880
    .line 881
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 882
    .line 883
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTabDetail$17;

    .line 884
    .line 885
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$17;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 889
    .line 890
    .line 891
    :cond_8
    :goto_5
    return-void
.end method
