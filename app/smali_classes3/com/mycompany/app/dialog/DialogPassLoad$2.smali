.class Lcom/mycompany/app/dialog/DialogPassLoad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPassLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPassLoad$2;->c:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPassLoad$2;->c:Lcom/mycompany/app/dialog/DialogPassLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const v2, -0x50506

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    const v3, -0xc0c0c1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    const v4, -0x252526

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    const v4, -0x3e3e3f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 75
    .line 76
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_dark_24:I

    .line 77
    .line 78
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_dark_24:I

    .line 79
    .line 80
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 84
    .line 85
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_dark_24:I

    .line 86
    .line 87
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_dark_24:I

    .line 88
    .line 89
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->p0:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 95
    .line 96
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 105
    .line 106
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 107
    .line 108
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    .line 118
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 119
    .line 120
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 139
    .line 140
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 141
    .line 142
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 143
    .line 144
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    const/high16 v2, -0x1000000

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    const v3, -0x70708

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 180
    .line 181
    const v3, -0xbbbbbc

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    const v3, -0x9e9e9f

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 211
    .line 212
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_black_24:I

    .line 213
    .line 214
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_black_24:I

    .line 215
    .line 216
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 220
    .line 221
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_black_24:I

    .line 222
    .line 223
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_black_24:I

    .line 224
    .line 225
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->p0:Landroid/widget/FrameLayout;

    .line 229
    .line 230
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 231
    .line 232
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 241
    .line 242
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 248
    .line 249
    const v2, -0xe19938

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 256
    .line 257
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 258
    .line 259
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 268
    .line 269
    const v2, -0x1f1f20

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 281
    .line 282
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 283
    .line 284
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 285
    .line 286
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 292
    .line 293
    .line 294
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->l0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 295
    .line 296
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassLoad$3;

    .line 297
    .line 298
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassLoad$3;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->o0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 305
    .line 306
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassLoad$4;

    .line 307
    .line 308
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassLoad$4;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    .line 313
    .line 314
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->p0:Landroid/widget/FrameLayout;

    .line 315
    .line 316
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassLoad$5;

    .line 317
    .line 318
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassLoad$5;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    .line 323
    .line 324
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 325
    .line 326
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassLoad$6;

    .line 327
    .line 328
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassLoad$6;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    .line 333
    .line 334
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 335
    .line 336
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassLoad$7;

    .line 337
    .line 338
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassLoad$7;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 345
    .line 346
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassLoad$8;

    .line 347
    .line 348
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassLoad$8;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->b0:Ljava/lang/String;

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogPassLoad;->B(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPassLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 360
    .line 361
    new-instance v2, Lcom/mycompany/app/dialog/DialogPassLoad$9;

    .line 362
    .line 363
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPassLoad$9;-><init>(Lcom/mycompany/app/dialog/DialogPassLoad;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 367
    .line 368
    .line 369
    :cond_2
    :goto_1
    return-void
.end method
