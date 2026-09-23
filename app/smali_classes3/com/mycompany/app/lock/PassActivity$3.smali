.class Lcom/mycompany/app/lock/PassActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PassActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PassActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PassActivity$3;->c:Lcom/mycompany/app/lock/PassActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity$3;->c:Lcom/mycompany/app/lock/PassActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    const/high16 v3, -0x1000000

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->j1:Landroid/widget/ImageView;

    .line 22
    .line 23
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_dark_84:I

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    const v4, -0x50506

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->l1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonRelative;->setBgNorColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const v5, -0xc0c0c1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 64
    .line 65
    const v4, -0xd8d8d9

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    if-eqz v1, :cond_8

    .line 83
    .line 84
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->j1:Landroid/widget/ImageView;

    .line 91
    .line 92
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_black_84:I

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->l1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 103
    .line 104
    const/4 v4, -0x1

    .line 105
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonRelative;->setBgNorColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    const/high16 v4, 0x21000000

    .line 118
    .line 119
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 120
    .line 121
    .line 122
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 123
    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 130
    .line 131
    const v3, -0x1f1f20

    .line 132
    .line 133
    .line 134
    const v4, -0x2f2f30

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 138
    .line 139
    .line 140
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 141
    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 147
    .line 148
    .line 149
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 154
    .line 155
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 156
    .line 157
    .line 158
    :cond_8
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 159
    .line 160
    const/16 v3, 0x81

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 166
    .line 167
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 175
    .line 176
    new-instance v3, Lcom/mycompany/app/lock/PassActivity$4;

    .line 177
    .line 178
    invoke-direct {v3, v0}, Lcom/mycompany/app/lock/PassActivity$4;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 185
    .line 186
    new-instance v3, Lcom/mycompany/app/lock/PassActivity$5;

    .line 187
    .line 188
    invoke-direct {v3, v0}, Lcom/mycompany/app/lock/PassActivity$5;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 195
    .line 196
    const/4 v3, 0x0

    .line 197
    if-eqz v1, :cond_b

    .line 198
    .line 199
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 200
    .line 201
    if-eqz v4, :cond_9

    .line 202
    .line 203
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 204
    .line 205
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_9
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 210
    .line 211
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 212
    .line 213
    .line 214
    :goto_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 215
    .line 216
    if-nez v1, :cond_a

    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 219
    .line 220
    const v4, 0x3e4ccccd    # 0.2f

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

    .line 224
    .line 225
    .line 226
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 227
    .line 228
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 232
    .line 233
    new-instance v4, Lcom/mycompany/app/lock/PassActivity$6;

    .line 234
    .line 235
    invoke-direct {v4, v0}, Lcom/mycompany/app/lock/PassActivity$6;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    :cond_b
    iget v1, v0, Lcom/mycompany/app/lock/PassActivity;->s1:I

    .line 242
    .line 243
    const/4 v4, 0x1

    .line 244
    if-ne v1, v4, :cond_f

    .line 245
    .line 246
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 247
    .line 248
    if-eqz v1, :cond_14

    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 251
    .line 252
    if-nez v1, :cond_c

    .line 253
    .line 254
    goto/16 :goto_3

    .line 255
    .line 256
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 257
    .line 258
    sget v4, Lnet/kaki87/soul2/testing/R$string;->pass_hint:I

    .line 259
    .line 260
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 269
    .line 270
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 274
    .line 275
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 276
    .line 277
    const v4, -0x252526

    .line 278
    .line 279
    .line 280
    const v5, -0x7f7f80

    .line 281
    .line 282
    .line 283
    if-eqz v2, :cond_d

    .line 284
    .line 285
    move v2, v5

    .line 286
    goto :goto_2

    .line 287
    :cond_d
    move v2, v4

    .line 288
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    .line 290
    .line 291
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 292
    .line 293
    sget v2, Lnet/kaki87/soul2/testing/R$string;->continue_input:I

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 299
    .line 300
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 304
    .line 305
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 306
    .line 307
    if-eqz v2, :cond_e

    .line 308
    .line 309
    move v4, v5

    .line 310
    :cond_e
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 314
    .line 315
    new-instance v2, Lcom/mycompany/app/lock/PassActivity$7;

    .line 316
    .line 317
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PassActivity$7;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    .line 322
    .line 323
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 324
    .line 325
    new-instance v2, Lcom/mycompany/app/lock/PassActivity$8;

    .line 326
    .line 327
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PassActivity$8;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_5

    .line 334
    .line 335
    :cond_f
    const/4 v3, 0x2

    .line 336
    if-ne v1, v3, :cond_11

    .line 337
    .line 338
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 339
    .line 340
    if-nez v1, :cond_10

    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_10
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 344
    .line 345
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    .line 350
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 354
    .line 355
    sget v2, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 356
    .line 357
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 361
    .line 362
    new-instance v2, Lcom/mycompany/app/lock/PassActivity$9;

    .line 363
    .line 364
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PassActivity$9;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_11
    const/4 v3, 0x3

    .line 372
    if-ne v1, v3, :cond_13

    .line 373
    .line 374
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 375
    .line 376
    if-nez v1, :cond_12

    .line 377
    .line 378
    goto :goto_3

    .line 379
    :cond_12
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 380
    .line 381
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 385
    .line 386
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 390
    .line 391
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 392
    .line 393
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 397
    .line 398
    new-instance v2, Lcom/mycompany/app/lock/PassActivity$10;

    .line 399
    .line 400
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PassActivity$10;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_13
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 408
    .line 409
    if-nez v1, :cond_15

    .line 410
    .line 411
    :cond_14
    :goto_3
    return-void

    .line 412
    :cond_15
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 413
    .line 414
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 418
    .line 419
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    .line 421
    .line 422
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 423
    .line 424
    if-eqz v1, :cond_16

    .line 425
    .line 426
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 427
    .line 428
    sget v2, Lnet/kaki87/soul2/testing/R$string;->normal_start:I

    .line 429
    .line 430
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 431
    .line 432
    .line 433
    goto :goto_4

    .line 434
    :cond_16
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 435
    .line 436
    sget v2, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 437
    .line 438
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 439
    .line 440
    .line 441
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 442
    .line 443
    new-instance v2, Lcom/mycompany/app/lock/PassActivity$11;

    .line 444
    .line 445
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PassActivity$11;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    .line 450
    .line 451
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 452
    .line 453
    new-instance v2, Lcom/mycompany/app/lock/PassActivity$12;

    .line 454
    .line 455
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PassActivity$12;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 459
    .line 460
    .line 461
    return-void
.end method
