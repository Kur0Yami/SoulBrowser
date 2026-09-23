.class Lcom/mycompany/app/dialog/DialogWebView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$2;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$2;->c:Lcom/mycompany/app/dialog/DialogWebView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->f0:Z

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->g0:I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->o0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 8
    .line 9
    if-eqz v3, :cond_1b

    .line 10
    .line 11
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_0
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x0

    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->Q0:Lcom/mycompany/app/view/MyLineText;

    .line 23
    .line 24
    if-eqz v3, :cond_4

    .line 25
    .line 26
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyLineText;->setDrawLine(Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-ne v2, v4, :cond_2

    .line 31
    .line 32
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyLineText;->setDrawLine(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v3, 0x4

    .line 39
    if-ne v2, v3, :cond_3

    .line 40
    .line 41
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyLineText;->setDrawLine(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    sget-boolean v3, Lcom/mycompany/app/pref/PrefRead;->N:Z

    .line 48
    .line 49
    iput-boolean v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->A1:Z

    .line 50
    .line 51
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 52
    .line 53
    const v6, -0x1f1f20

    .line 54
    .line 55
    .line 56
    const/4 v7, -0x1

    .line 57
    const v8, -0x50506

    .line 58
    .line 59
    .line 60
    const v9, -0xdededf

    .line 61
    .line 62
    .line 63
    const v10, -0xc0c0c1

    .line 64
    .line 65
    .line 66
    const/high16 v11, -0x1000000

    .line 67
    .line 68
    if-eqz v3, :cond_7

    .line 69
    .line 70
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->w0:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    if-eqz v3, :cond_5

    .line 73
    .line 74
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->x0:Lcom/mycompany/app/view/MyRoundView;

    .line 78
    .line 79
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->y0:Lcom/mycompany/app/view/MyRoundView;

    .line 83
    .line 84
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->z0:Lcom/mycompany/app/view/MyEditPure;

    .line 88
    .line 89
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 93
    .line 94
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_20:I

    .line 100
    .line 101
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->C0:Landroid/widget/FrameLayout;

    .line 110
    .line 111
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->D0:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {v3, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->E0:Lcom/mycompany/app/view/MyRoundView;

    .line 120
    .line 121
    if-eqz v3, :cond_6

    .line 122
    .line 123
    invoke-virtual {v3, v9}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 124
    .line 125
    .line 126
    :cond_6
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->F0:Lcom/mycompany/app/view/MyEditPure;

    .line 127
    .line 128
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_24:I

    .line 134
    .line 135
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 136
    .line 137
    .line 138
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    .line 141
    .line 142
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 143
    .line 144
    .line 145
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 151
    .line 152
    invoke-virtual {v3, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->K0:Lcom/mycompany/app/view/MyProgressBar;

    .line 156
    .line 157
    const v12, -0x37000001

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v12, v11}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 161
    .line 162
    .line 163
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    .line 164
    .line 165
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 166
    .line 167
    invoke-virtual {v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 168
    .line 169
    .line 170
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    .line 171
    .line 172
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->w0:Landroid/widget/LinearLayout;

    .line 177
    .line 178
    const v12, -0x70708

    .line 179
    .line 180
    .line 181
    if-eqz v3, :cond_8

    .line 182
    .line 183
    invoke-virtual {v3, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    .line 185
    .line 186
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->x0:Lcom/mycompany/app/view/MyRoundView;

    .line 187
    .line 188
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->y0:Lcom/mycompany/app/view/MyRoundView;

    .line 192
    .line 193
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 194
    .line 195
    .line 196
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->z0:Lcom/mycompany/app/view/MyEditPure;

    .line 197
    .line 198
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    .line 200
    .line 201
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 202
    .line 203
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    .line 205
    .line 206
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 207
    .line 208
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_20:I

    .line 209
    .line 210
    invoke-virtual {v3, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 211
    .line 212
    .line 213
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 214
    .line 215
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 216
    .line 217
    .line 218
    :cond_8
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->C0:Landroid/widget/FrameLayout;

    .line 219
    .line 220
    invoke-virtual {v3, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 221
    .line 222
    .line 223
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->D0:Landroid/view/View;

    .line 224
    .line 225
    invoke-virtual {v3, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 226
    .line 227
    .line 228
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->E0:Lcom/mycompany/app/view/MyRoundView;

    .line 229
    .line 230
    if-eqz v3, :cond_9

    .line 231
    .line 232
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 233
    .line 234
    .line 235
    :cond_9
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->F0:Lcom/mycompany/app/view/MyEditPure;

    .line 236
    .line 237
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    .line 239
    .line 240
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 241
    .line 242
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_black_24:I

    .line 243
    .line 244
    invoke-virtual {v3, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 245
    .line 246
    .line 247
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 248
    .line 249
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 250
    .line 251
    invoke-virtual {v3, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 252
    .line 253
    .line 254
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 255
    .line 256
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 257
    .line 258
    .line 259
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 260
    .line 261
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 262
    .line 263
    .line 264
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->K0:Lcom/mycompany/app/view/MyProgressBar;

    .line 265
    .line 266
    const v13, -0xc6b655

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v13, v12}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 270
    .line 271
    .line 272
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    .line 273
    .line 274
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 275
    .line 276
    invoke-virtual {v3, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 277
    .line 278
    .line 279
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    .line 280
    .line 281
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    .line 283
    .line 284
    :goto_1
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 285
    .line 286
    if-eqz v3, :cond_a

    .line 287
    .line 288
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 289
    .line 290
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 291
    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_a
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->I0:Landroid/widget/FrameLayout;

    .line 295
    .line 296
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 297
    .line 298
    .line 299
    :goto_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->N0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 300
    .line 301
    const/4 v11, 0x1

    .line 302
    invoke-virtual {v3, v1, v11}, Lcom/mycompany/app/view/MyScrollNavi;->d(ZZ)V

    .line 303
    .line 304
    .line 305
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->O0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 306
    .line 307
    invoke-virtual {v3, v1, v5}, Lcom/mycompany/app/view/MyScrollNavi;->d(ZZ)V

    .line 308
    .line 309
    .line 310
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->z0:Lcom/mycompany/app/view/MyEditPure;

    .line 311
    .line 312
    if-eqz v1, :cond_d

    .line 313
    .line 314
    const-string v3, "\uac24\ub7ec\ub9ac"

    .line 315
    .line 316
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->l1:Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_b

    .line 326
    .line 327
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->z0:Lcom/mycompany/app/view/MyEditPure;

    .line 328
    .line 329
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->l1:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->z0:Lcom/mycompany/app/view/MyEditPure;

    .line 335
    .line 336
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView$3;

    .line 337
    .line 338
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebView$3;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 342
    .line 343
    .line 344
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 345
    .line 346
    const-string v3, "\uac80\uc0c9\uc5b4"

    .line 347
    .line 348
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->m1:Ljava/lang/String;

    .line 352
    .line 353
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-nez v1, :cond_c

    .line 358
    .line 359
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 360
    .line 361
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->m1:Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 367
    .line 368
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView$4;

    .line 369
    .line 370
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebView$4;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 374
    .line 375
    .line 376
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 377
    .line 378
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView$5;

    .line 379
    .line 380
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebView$5;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    .line 385
    .line 386
    :cond_d
    if-ne v2, v4, :cond_e

    .line 387
    .line 388
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->F0:Lcom/mycompany/app/view/MyEditPure;

    .line 389
    .line 390
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 391
    .line 392
    .line 393
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->F0:Lcom/mycompany/app/view/MyEditPure;

    .line 394
    .line 395
    sget v2, Lnet/kaki87/soul2/testing/R$string;->show_license:I

    .line 396
    .line 397
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 398
    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->F0:Lcom/mycompany/app/view/MyEditPure;

    .line 402
    .line 403
    sget v2, Lnet/kaki87/soul2/testing/R$string;->web_edit_hint:I

    .line 404
    .line 405
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->F0:Lcom/mycompany/app/view/MyEditPure;

    .line 409
    .line 410
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->i0:Ljava/lang/String;

    .line 411
    .line 412
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    .line 414
    .line 415
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->F0:Lcom/mycompany/app/view/MyEditPure;

    .line 416
    .line 417
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$6;

    .line 418
    .line 419
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$6;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 423
    .line 424
    .line 425
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 426
    .line 427
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$7;

    .line 428
    .line 429
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$7;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 436
    .line 437
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$8;

    .line 438
    .line 439
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$8;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    .line 444
    .line 445
    sget v1, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 446
    .line 447
    if-eqz v1, :cond_11

    .line 448
    .line 449
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 450
    .line 451
    if-eqz v1, :cond_f

    .line 452
    .line 453
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L0:Lcom/mycompany/app/view/MyScrollBar;

    .line 454
    .line 455
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 456
    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L0:Lcom/mycompany/app/view/MyScrollBar;

    .line 460
    .line 461
    const v2, -0x252526

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 465
    .line 466
    .line 467
    :goto_4
    sget v1, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 468
    .line 469
    if-ne v1, v11, :cond_10

    .line 470
    .line 471
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L0:Lcom/mycompany/app/view/MyScrollBar;

    .line 472
    .line 473
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    .line 479
    if-eqz v1, :cond_10

    .line 480
    .line 481
    const/16 v2, 0xb

    .line 482
    .line 483
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 484
    .line 485
    .line 486
    const/16 v2, 0x9

    .line 487
    .line 488
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 489
    .line 490
    .line 491
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L0:Lcom/mycompany/app/view/MyScrollBar;

    .line 492
    .line 493
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyScrollBar;->setPosLeft(Z)V

    .line 494
    .line 495
    .line 496
    :cond_10
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->L0:Lcom/mycompany/app/view/MyScrollBar;

    .line 497
    .line 498
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$9;

    .line 499
    .line 500
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$9;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 504
    .line 505
    .line 506
    :cond_11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->P0:Lcom/mycompany/app/view/MyLineText;

    .line 507
    .line 508
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$10;

    .line 509
    .line 510
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$10;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    .line 515
    .line 516
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->Q0:Lcom/mycompany/app/view/MyLineText;

    .line 517
    .line 518
    if-eqz v1, :cond_13

    .line 519
    .line 520
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 521
    .line 522
    if-eqz v2, :cond_12

    .line 523
    .line 524
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 525
    .line 526
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 527
    .line 528
    .line 529
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->Q0:Lcom/mycompany/app/view/MyLineText;

    .line 530
    .line 531
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    .line 533
    .line 534
    goto :goto_5

    .line 535
    :cond_12
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 536
    .line 537
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 538
    .line 539
    .line 540
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->Q0:Lcom/mycompany/app/view/MyLineText;

    .line 541
    .line 542
    const v2, -0xe19938

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    .line 547
    .line 548
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->Q0:Lcom/mycompany/app/view/MyLineText;

    .line 549
    .line 550
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$11;

    .line 551
    .line 552
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$11;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    .line 557
    .line 558
    :cond_13
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->R0:Lcom/mycompany/app/view/MyButtonImage;

    .line 559
    .line 560
    if-eqz v1, :cond_16

    .line 561
    .line 562
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 563
    .line 564
    if-eqz v2, :cond_14

    .line 565
    .line 566
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 567
    .line 568
    .line 569
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->R0:Lcom/mycompany/app/view/MyButtonImage;

    .line 570
    .line 571
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 572
    .line 573
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 574
    .line 575
    .line 576
    goto :goto_6

    .line 577
    :cond_14
    const/high16 v2, 0x21000000

    .line 578
    .line 579
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 580
    .line 581
    .line 582
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->R0:Lcom/mycompany/app/view/MyButtonImage;

    .line 583
    .line 584
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 585
    .line 586
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 587
    .line 588
    .line 589
    :goto_6
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->e0:Z

    .line 590
    .line 591
    if-eqz v1, :cond_15

    .line 592
    .line 593
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->j1:Z

    .line 594
    .line 595
    if-nez v1, :cond_15

    .line 596
    .line 597
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->R0:Lcom/mycompany/app/view/MyButtonImage;

    .line 598
    .line 599
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 600
    .line 601
    .line 602
    :cond_15
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->R0:Lcom/mycompany/app/view/MyButtonImage;

    .line 603
    .line 604
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$12;

    .line 605
    .line 606
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$12;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    .line 611
    .line 612
    :cond_16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->v1:Lcom/mycompany/app/view/MyButtonImage;

    .line 613
    .line 614
    if-eqz v1, :cond_18

    .line 615
    .line 616
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 617
    .line 618
    if-eqz v2, :cond_17

    .line 619
    .line 620
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_dark_18:I

    .line 621
    .line 622
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 623
    .line 624
    .line 625
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->v1:Lcom/mycompany/app/view/MyButtonImage;

    .line 626
    .line 627
    invoke-virtual {v1, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 628
    .line 629
    .line 630
    goto :goto_7

    .line 631
    :cond_17
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_black_18:I

    .line 632
    .line 633
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 634
    .line 635
    .line 636
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->v1:Lcom/mycompany/app/view/MyButtonImage;

    .line 637
    .line 638
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 639
    .line 640
    .line 641
    :goto_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->w1:Lcom/mycompany/app/view/MyCoverView;

    .line 642
    .line 643
    sget v2, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 644
    .line 645
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 646
    .line 647
    add-int/2addr v2, v3

    .line 648
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->setForeSize(I)V

    .line 649
    .line 650
    .line 651
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->v1:Lcom/mycompany/app/view/MyButtonImage;

    .line 652
    .line 653
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 654
    .line 655
    .line 656
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->v1:Lcom/mycompany/app/view/MyButtonImage;

    .line 657
    .line 658
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$13;

    .line 659
    .line 660
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$13;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    .line 665
    .line 666
    :cond_18
    new-instance v1, Landroid/view/GestureDetector;

    .line 667
    .line 668
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 669
    .line 670
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebView$14;

    .line 671
    .line 672
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebView$14;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 673
    .line 674
    .line 675
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 676
    .line 677
    .line 678
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->S0:Landroid/view/GestureDetector;

    .line 679
    .line 680
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->q0:Lcom/mycompany/app/view/MyAdFrame;

    .line 681
    .line 682
    if-eqz v1, :cond_1a

    .line 683
    .line 684
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView$18;

    .line 685
    .line 686
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogWebView$18;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 687
    .line 688
    .line 689
    iput-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

    .line 690
    .line 691
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->o0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 692
    .line 693
    const/4 v2, 0x0

    .line 694
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 695
    .line 696
    .line 697
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->q0:Lcom/mycompany/app/view/MyAdFrame;

    .line 698
    .line 699
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$15;

    .line 700
    .line 701
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$15;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    .line 706
    .line 707
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 708
    .line 709
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 710
    .line 711
    if-eqz v2, :cond_19

    .line 712
    .line 713
    move v7, v9

    .line 714
    :cond_19
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 715
    .line 716
    .line 717
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->v0:Lcom/mycompany/app/view/MyRoundItem;

    .line 718
    .line 719
    sget v2, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 720
    .line 721
    iput-boolean v11, v1, Lcom/mycompany/app/view/MyRoundItem;->n:Z

    .line 722
    .line 723
    iput-boolean v5, v1, Lcom/mycompany/app/view/MyRoundItem;->o:Z

    .line 724
    .line 725
    iput v2, v1, Lcom/mycompany/app/view/MyRoundItem;->q:I

    .line 726
    .line 727
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundItem;->e()V

    .line 728
    .line 729
    .line 730
    :cond_1a
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 731
    .line 732
    .line 733
    move-result v1

    .line 734
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogWebView;->U(Z)V

    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogWebViewUrlBar;->a(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 735
    .line 736
    .line 737
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->o0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 738
    .line 739
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebView$16;

    .line 740
    .line 741
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebView$16;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 745
    .line 746
    .line 747
    :cond_1b
    :goto_8
    return-void
.end method
