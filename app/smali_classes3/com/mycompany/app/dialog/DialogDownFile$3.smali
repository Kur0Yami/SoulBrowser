.class Lcom/mycompany/app/dialog/DialogDownFile$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFile;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFile$3;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFile$3;->c:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

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
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const v2, -0x3e3e3f

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    const v2, -0xc0c0c1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    const v3, -0x252526

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    const v3, -0x50506

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->q0:Lcom/mycompany/app/view/MyLineRelative;

    .line 65
    .line 66
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    const v3, -0xafafb0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    const v2, -0x9e9e9f

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    const v2, -0x70708

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    const v3, -0xbbbbbc

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    const/high16 v3, -0x1000000

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->q0:Lcom/mycompany/app/view/MyLineRelative;

    .line 151
    .line 152
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 160
    .line 161
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    const v3, -0xe19938

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 173
    .line 174
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 185
    .line 186
    const v2, -0x1f1f20

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 190
    .line 191
    .line 192
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 193
    .line 194
    const/4 v2, 0x1

    .line 195
    if-eqz v1, :cond_4

    .line 196
    .line 197
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownFile$13;

    .line 198
    .line 199
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogDownFile$13;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 200
    .line 201
    .line 202
    iput-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 205
    .line 206
    const/high16 v3, 0x43aa0000    # 340.0f

    .line 207
    .line 208
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    iput v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->f0:I

    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 219
    .line 220
    if-nez v1, :cond_2

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_2
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownFile$12;

    .line 224
    .line 225
    invoke-direct {v3}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 234
    .line 235
    .line 236
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->i0:Lcom/mycompany/app/view/MyLineFrame;

    .line 237
    .line 238
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 239
    .line 240
    if-eqz v3, :cond_3

    .line 241
    .line 242
    const v3, -0xdededf

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_3
    const/4 v3, -0x1

    .line 247
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 251
    .line 252
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownFile$4;

    .line 253
    .line 254
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogDownFile$4;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    :cond_4
    const/4 v1, 0x0

    .line 261
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->Q0:Z

    .line 262
    .line 263
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownFile;->d0:Lcom/mycompany/app/view/MyAdFrame;

    .line 264
    .line 265
    if-eqz v3, :cond_6

    .line 266
    .line 267
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownFile;->e0:Lcom/mycompany/app/view/MyAdNative;

    .line 268
    .line 269
    if-nez v3, :cond_5

    .line 270
    .line 271
    move v3, v1

    .line 272
    goto :goto_3

    .line 273
    :cond_5
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyAdNative;->p()Z

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    :goto_3
    if-nez v3, :cond_7

    .line 278
    .line 279
    :cond_6
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->Q0:Z

    .line 280
    .line 281
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 282
    .line 283
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownFile;->A0:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .line 287
    .line 288
    :cond_7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->B0:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogDownFile;->I(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 294
    .line 295
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->k7(Landroid/widget/EditText;Z)V

    .line 296
    .line 297
    .line 298
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 299
    .line 300
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFile$5;

    .line 301
    .line 302
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFile$5;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 309
    .line 310
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFile$6;

    .line 311
    .line 312
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFile$6;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->q0:Lcom/mycompany/app/view/MyLineRelative;

    .line 319
    .line 320
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFile$7;

    .line 321
    .line 322
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFile$7;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    .line 327
    .line 328
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 329
    .line 330
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFile$8;

    .line 331
    .line 332
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFile$8;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 339
    .line 340
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFile$9;

    .line 341
    .line 342
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFile$9;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownFile;->G(Z)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 356
    .line 357
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFile$10;

    .line 358
    .line 359
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFile$10;-><init>(Lcom/mycompany/app/dialog/DialogDownFile;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 363
    .line 364
    .line 365
    :cond_8
    :goto_4
    return-void
.end method
