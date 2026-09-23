.class Lcom/mycompany/app/dialog/DialogPassSave$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassSave;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassSave;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassSave$3;->c:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassSave$3;->c:Lcom/mycompany/app/dialog/DialogPassSave;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const v2, -0x70708

    .line 16
    .line 17
    .line 18
    const/high16 v3, -0x1000000

    .line 19
    .line 20
    const v4, -0x50506

    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const v5, -0x3e3e3f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 39
    .line 40
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_dark_24:I

    .line 41
    .line 42
    invoke-virtual {v1, v2, v5}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    const v2, -0xc0c0c1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    const v2, -0x252526

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 77
    .line 78
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    const v5, -0x9e9e9f

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 110
    .line 111
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_black_24:I

    .line 112
    .line 113
    invoke-virtual {v1, v2, v5}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    const v2, -0xbbbbbc

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 145
    .line 146
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    const v2, -0xe19938

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_location:I

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save:I

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    .line 179
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v1

    .line 184
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->m3(J)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    const/4 v5, 0x1

    .line 193
    const/4 v6, 0x0

    .line 194
    if-nez v2, :cond_2

    .line 195
    .line 196
    const-string v2, "."

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_2

    .line 203
    .line 204
    invoke-static {v5, v6, v1}, Landroid/support/v4/media/a;->d(IILjava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_3

    .line 213
    .line 214
    const-string v1, "Soul_passwords"

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_3
    const-string v2, "Soul_passwords_"

    .line 218
    .line 219
    invoke-static {v2, v1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    :goto_1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->o0:Ljava/lang/String;

    .line 224
    .line 225
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->o0:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 233
    .line 234
    if-nez v2, :cond_4

    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-nez v2, :cond_5

    .line 243
    .line 244
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->p0:Ljava/lang/String;

    .line 245
    .line 246
    :cond_5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->r0:Z

    .line 247
    .line 248
    if-eqz v1, :cond_6

    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 251
    .line 252
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    goto :goto_2

    .line 257
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->p0:Ljava/lang/String;

    .line 258
    .line 259
    :goto_2
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    const/16 v7, 0x8

    .line 272
    .line 273
    if-eqz v2, :cond_7

    .line 274
    .line 275
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->q0:Ljava/lang/String;

    .line 276
    .line 277
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 278
    .line 279
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    .line 284
    sget v2, Lnet/kaki87/soul2/testing/R$string;->not_selected:I

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 290
    .line 291
    const v2, -0xbbcca

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->f0:Lcom/mycompany/app/view/MyLineLinear;

    .line 298
    .line 299
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyLineLinear;->setDrawLine(Z)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 303
    .line 304
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogPassSave;->x0:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    .line 314
    .line 315
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 316
    .line 317
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 318
    .line 319
    if-eqz v8, :cond_8

    .line 320
    .line 321
    move v3, v4

    .line 322
    :cond_8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    .line 324
    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_9

    .line 330
    .line 331
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->q0:Ljava/lang/String;

    .line 332
    .line 333
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 334
    .line 335
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->f0:Lcom/mycompany/app/view/MyLineLinear;

    .line 339
    .line 340
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyLineLinear;->setDrawLine(Z)V

    .line 341
    .line 342
    .line 343
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 344
    .line 345
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 346
    .line 347
    .line 348
    goto :goto_3

    .line 349
    :cond_9
    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->f0:Lcom/mycompany/app/view/MyLineLinear;

    .line 353
    .line 354
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyLineLinear;->setDrawLine(Z)V

    .line 355
    .line 356
    .line 357
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 358
    .line 359
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->q0:Ljava/lang/String;

    .line 363
    .line 364
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 365
    .line 366
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 370
    .line 371
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->k7(Landroid/widget/EditText;Z)V

    .line 372
    .line 373
    .line 374
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 375
    .line 376
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassSave$4;

    .line 377
    .line 378
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassSave$4;-><init>(Lcom/mycompany/app/dialog/DialogPassSave;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 385
    .line 386
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassSave$5;

    .line 387
    .line 388
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassSave$5;-><init>(Lcom/mycompany/app/dialog/DialogPassSave;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 392
    .line 393
    .line 394
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->j0:Lcom/mycompany/app/view/MyLineRelative;

    .line 395
    .line 396
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassSave$6;

    .line 397
    .line 398
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassSave$6;-><init>(Lcom/mycompany/app/dialog/DialogPassSave;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 405
    .line 406
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassSave$7;

    .line 407
    .line 408
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassSave$7;-><init>(Lcom/mycompany/app/dialog/DialogPassSave;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    .line 413
    .line 414
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassSave;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 415
    .line 416
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassSave$8;

    .line 417
    .line 418
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassSave$8;-><init>(Lcom/mycompany/app/dialog/DialogPassSave;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 422
    .line 423
    .line 424
    :cond_a
    :goto_4
    return-void
.end method
