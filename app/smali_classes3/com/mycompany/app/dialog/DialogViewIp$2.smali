.class Lcom/mycompany/app/dialog/DialogViewIp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewIp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewIp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewIp$2;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewIp$2;->c:Lcom/mycompany/app/dialog/DialogViewIp;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    const/4 v3, 0x4

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->p0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 21
    .line 22
    const v5, -0xd2d2d3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 29
    .line 30
    const v6, -0x50506

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 39
    .line 40
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    const v7, -0xc0c0c1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_24:I

    .line 54
    .line 55
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 61
    .line 62
    .line 63
    move v1, v4

    .line 64
    :goto_0
    if-ge v1, v2, :cond_1

    .line 65
    .line 66
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 67
    .line 68
    aget-object v8, v8, v1

    .line 69
    .line 70
    invoke-virtual {v8, v5, v7}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move v1, v4

    .line 77
    :goto_1
    if-ge v1, v3, :cond_4

    .line 78
    .line 79
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->v0:[Landroid/widget/TextView;

    .line 80
    .line 81
    aget-object v2, v2, v1

    .line 82
    .line 83
    const v5, -0x3e3e3f

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 90
    .line 91
    aget-object v2, v2, v1

    .line 92
    .line 93
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->p0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 100
    .line 101
    const v5, -0x70708

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 108
    .line 109
    const/high16 v6, -0x1000000

    .line 110
    .line 111
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    .line 117
    .line 118
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    const v7, -0x1f1f20

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_24:I

    .line 132
    .line 133
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 137
    .line 138
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 139
    .line 140
    .line 141
    move v1, v4

    .line 142
    :goto_2
    if-ge v1, v2, :cond_3

    .line 143
    .line 144
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 145
    .line 146
    aget-object v8, v8, v1

    .line 147
    .line 148
    invoke-virtual {v8, v5, v7}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_3
    move v1, v4

    .line 155
    :goto_3
    if-ge v1, v3, :cond_4

    .line 156
    .line 157
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->v0:[Landroid/widget/TextView;

    .line 158
    .line 159
    aget-object v2, v2, v1

    .line 160
    .line 161
    const v5, -0x9e9e9f

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    .line 166
    .line 167
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->w0:[Landroid/widget/TextView;

    .line 168
    .line 169
    aget-object v2, v2, v1

    .line 170
    .line 171
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewIp;->P()V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 181
    .line 182
    const-string v2, "x.x.x.x"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 188
    .line 189
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewIp;->d0:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->q0:Lcom/mycompany/app/view/MyEditPure;

    .line 195
    .line 196
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewIp$3;

    .line 197
    .line 198
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewIp$3;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 205
    .line 206
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewIp$4;

    .line 207
    .line 208
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewIp$4;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->s0:Lcom/mycompany/app/view/MyButtonImage;

    .line 215
    .line 216
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewIp$5;

    .line 217
    .line 218
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewIp$5;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 225
    .line 226
    aget-object v1, v1, v4

    .line 227
    .line 228
    const-string v2, "0"

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 234
    .line 235
    const/4 v2, 0x1

    .line 236
    aget-object v1, v1, v2

    .line 237
    .line 238
    const-string v5, "64"

    .line 239
    .line 240
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 244
    .line 245
    const/4 v5, 0x2

    .line 246
    aget-object v1, v1, v5

    .line 247
    .line 248
    const-string v6, "128"

    .line 249
    .line 250
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 254
    .line 255
    const/4 v6, 0x3

    .line 256
    aget-object v1, v1, v6

    .line 257
    .line 258
    const-string v7, "192"

    .line 259
    .line 260
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 264
    .line 265
    aget-object v1, v1, v3

    .line 266
    .line 267
    const-string v7, "255"

    .line 268
    .line 269
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->v0:[Landroid/widget/TextView;

    .line 273
    .line 274
    aget-object v1, v1, v4

    .line 275
    .line 276
    const-string v7, "\uc778\ud130\ub137 \uc11c\ube44\uc2a4 \uc81c\uacf5\uc5c5\uccb4"

    .line 277
    .line 278
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    .line 280
    .line 281
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->v0:[Landroid/widget/TextView;

    .line 282
    .line 283
    aget-object v1, v1, v2

    .line 284
    .line 285
    const-string v7, "\uad6d\uac00"

    .line 286
    .line 287
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->v0:[Landroid/widget/TextView;

    .line 291
    .line 292
    aget-object v1, v1, v5

    .line 293
    .line 294
    const-string v7, "\uc9c0\uc5ed/\ub3c4"

    .line 295
    .line 296
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->v0:[Landroid/widget/TextView;

    .line 300
    .line 301
    aget-object v1, v1, v6

    .line 302
    .line 303
    const-string v7, "\ub3c4\uc2dc"

    .line 304
    .line 305
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 309
    .line 310
    aget-object v1, v1, v4

    .line 311
    .line 312
    new-instance v7, Lcom/mycompany/app/dialog/DialogViewIp$6;

    .line 313
    .line 314
    invoke-direct {v7, v0}, Lcom/mycompany/app/dialog/DialogViewIp$6;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 321
    .line 322
    aget-object v1, v1, v2

    .line 323
    .line 324
    new-instance v7, Lcom/mycompany/app/dialog/DialogViewIp$7;

    .line 325
    .line 326
    invoke-direct {v7, v0}, Lcom/mycompany/app/dialog/DialogViewIp$7;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 333
    .line 334
    aget-object v1, v1, v5

    .line 335
    .line 336
    new-instance v5, Lcom/mycompany/app/dialog/DialogViewIp$8;

    .line 337
    .line 338
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogViewIp$8;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 345
    .line 346
    aget-object v1, v1, v6

    .line 347
    .line 348
    new-instance v5, Lcom/mycompany/app/dialog/DialogViewIp$9;

    .line 349
    .line 350
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogViewIp$9;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->t0:[Lcom/mycompany/app/view/MyButtonText;

    .line 357
    .line 358
    aget-object v1, v1, v3

    .line 359
    .line 360
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewIp$10;

    .line 361
    .line 362
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogViewIp$10;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 369
    .line 370
    if-eqz v1, :cond_6

    .line 371
    .line 372
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewIp$14;

    .line 373
    .line 374
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogViewIp$14;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 375
    .line 376
    .line 377
    iput-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

    .line 378
    .line 379
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 380
    .line 381
    const/4 v3, 0x0

    .line 382
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 386
    .line 387
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewIp$11;

    .line 388
    .line 389
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogViewIp$11;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->n0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 396
    .line 397
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 398
    .line 399
    if-eqz v3, :cond_5

    .line 400
    .line 401
    const v3, -0xdededf

    .line 402
    .line 403
    .line 404
    goto :goto_4

    .line 405
    :cond_5
    const/4 v3, -0x1

    .line 406
    :goto_4
    sget v5, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 407
    .line 408
    iput v3, v1, Lcom/mycompany/app/view/MyRoundLinear;->n:I

    .line 409
    .line 410
    iput v5, v1, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 411
    .line 412
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 413
    .line 414
    .line 415
    :cond_6
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogViewIp;->L(Z)V

    .line 420
    .line 421
    .line 422
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewIp;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 423
    .line 424
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewIp$12;

    .line 425
    .line 426
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewIp$12;-><init>(Lcom/mycompany/app/dialog/DialogViewIp;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 430
    .line 431
    .line 432
    :cond_7
    :goto_5
    return-void
.end method
