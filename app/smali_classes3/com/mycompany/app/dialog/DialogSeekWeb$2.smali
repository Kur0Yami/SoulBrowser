.class Lcom/mycompany/app/dialog/DialogSeekWeb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWeb;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$2;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$2;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->c0:I

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->g0:Z

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->b0:I

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->l0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 10
    .line 11
    if-eqz v4, :cond_5

    .line 12
    .line 13
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->e0:Landroid/content/Context;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekWeb;->M()V

    .line 20
    .line 21
    .line 22
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->x0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    invoke-virtual {v4, v2, v5}, Lcom/mycompany/app/view/MyScrollNavi;->d(ZZ)V

    .line 26
    .line 27
    .line 28
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->y0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-virtual {v4, v2, v6}, Lcom/mycompany/app/view/MyScrollNavi;->d(ZZ)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 35
    .line 36
    sget v4, Lnet/kaki87/soul2/testing/R$string;->web_edit_hint:I

    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 42
    .line 43
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->h0:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 49
    .line 50
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$3;

    .line 51
    .line 52
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$3;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$4;

    .line 61
    .line 62
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$4;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->r0:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$5;

    .line 71
    .line 72
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$5;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    sget v2, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 79
    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 83
    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 87
    .line 88
    const v4, -0xc0c0c1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 96
    .line 97
    const v4, -0x252526

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 101
    .line 102
    .line 103
    :goto_0
    sget v2, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 104
    .line 105
    if-ne v2, v5, :cond_2

    .line 106
    .line 107
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    const/16 v4, 0xb

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 120
    .line 121
    .line 122
    const/16 v4, 0x9

    .line 123
    .line 124
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    .line 126
    .line 127
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 128
    .line 129
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyScrollBar;->setPosLeft(Z)V

    .line 130
    .line 131
    .line 132
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 133
    .line 134
    const/4 v4, 0x4

    .line 135
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->v0:Lcom/mycompany/app/view/MyScrollBar;

    .line 139
    .line 140
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$6;

    .line 141
    .line 142
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$6;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSeekWeb;->Q()V

    .line 149
    .line 150
    .line 151
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->A0:Lcom/mycompany/app/view/MyRoundItem;

    .line 152
    .line 153
    invoke-virtual {v2, v5, v6}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 154
    .line 155
    .line 156
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->H0:Lcom/mycompany/app/view/MyRoundItem;

    .line 157
    .line 158
    invoke-virtual {v2, v6, v5}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 159
    .line 160
    .line 161
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->O0:Lcom/mycompany/app/view/MyRoundItem;

    .line 162
    .line 163
    invoke-virtual {v2, v5, v6}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 164
    .line 165
    .line 166
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    sget v4, Lnet/kaki87/soul2/testing/R$string;->zoom_icon:I

    .line 169
    .line 170
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 171
    .line 172
    .line 173
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    sget v4, Lnet/kaki87/soul2/testing/R$string;->drag_move_guide:I

    .line 176
    .line 177
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 178
    .line 179
    .line 180
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    sget v4, Lnet/kaki87/soul2/testing/R$string;->icon_color:I

    .line 183
    .line 184
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 185
    .line 186
    .line 187
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    sget v4, Lnet/kaki87/soul2/testing/R$string;->zoom_size:I

    .line 190
    .line 191
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 192
    .line 193
    .line 194
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->X0:Z

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogSeekWeb;->L(Z)V

    .line 197
    .line 198
    .line 199
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->B0:Lcom/mycompany/app/view/MySwitchView;

    .line 200
    .line 201
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->X0:Z

    .line 202
    .line 203
    invoke-virtual {v2, v4, v6}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 204
    .line 205
    .line 206
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->A0:Lcom/mycompany/app/view/MyRoundItem;

    .line 207
    .line 208
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$7;

    .line 209
    .line 210
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$7;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->B0:Lcom/mycompany/app/view/MySwitchView;

    .line 217
    .line 218
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$8;

    .line 219
    .line 220
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$8;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->G0:Lcom/mycompany/app/view/MyButtonView;

    .line 227
    .line 228
    sget v4, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 229
    .line 230
    sget v7, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 231
    .line 232
    invoke-static {v4, v7}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonView;->setBgNorColor(I)V

    .line 237
    .line 238
    .line 239
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->G0:Lcom/mycompany/app/view/MyButtonView;

    .line 240
    .line 241
    sget v4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 242
    .line 243
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonView;->d(I)V

    .line 244
    .line 245
    .line 246
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->E0:Lcom/mycompany/app/view/MyLineRelative;

    .line 247
    .line 248
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$9;

    .line 249
    .line 250
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$9;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    .line 255
    .line 256
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    iget v7, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->Y0:I

    .line 264
    .line 265
    const-string v8, "%"

    .line 266
    .line 267
    invoke-static {v4, v7, v8, v2}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 268
    .line 269
    .line 270
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->L0:Landroid/widget/SeekBar;

    .line 271
    .line 272
    invoke-virtual {v2, v6}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 273
    .line 274
    .line 275
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->L0:Landroid/widget/SeekBar;

    .line 276
    .line 277
    sub-int/2addr v1, v3

    .line 278
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 279
    .line 280
    .line 281
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->L0:Landroid/widget/SeekBar;

    .line 282
    .line 283
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->Y0:I

    .line 284
    .line 285
    sub-int/2addr v4, v3

    .line 286
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 287
    .line 288
    .line 289
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->L0:Landroid/widget/SeekBar;

    .line 290
    .line 291
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$10;

    .line 292
    .line 293
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$10;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 297
    .line 298
    .line 299
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 300
    .line 301
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$11;

    .line 302
    .line 303
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$11;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->N0:Lcom/mycompany/app/view/MyButtonImage;

    .line 310
    .line 311
    new-instance v4, Lcom/mycompany/app/dialog/DialogSeekWeb$12;

    .line 312
    .line 313
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$12;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->P0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 320
    .line 321
    sget v4, Lnet/kaki87/soul2/testing/R$string;->default_size:I

    .line 322
    .line 323
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 324
    .line 325
    .line 326
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->Q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 327
    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    iget v7, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->Z0:I

    .line 334
    .line 335
    invoke-static {v4, v7, v8, v2}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 336
    .line 337
    .line 338
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->R0:Landroid/widget/SeekBar;

    .line 339
    .line 340
    invoke-virtual {v2, v6}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 341
    .line 342
    .line 343
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->R0:Landroid/widget/SeekBar;

    .line 344
    .line 345
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->R0:Landroid/widget/SeekBar;

    .line 349
    .line 350
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->Z0:I

    .line 351
    .line 352
    sub-int/2addr v2, v3

    .line 353
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->R0:Landroid/widget/SeekBar;

    .line 357
    .line 358
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$13;

    .line 359
    .line 360
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$13;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 364
    .line 365
    .line 366
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->S0:Lcom/mycompany/app/view/MyButtonImage;

    .line 367
    .line 368
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$14;

    .line 369
    .line 370
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$14;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    .line 375
    .line 376
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->T0:Lcom/mycompany/app/view/MyButtonImage;

    .line 377
    .line 378
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$15;

    .line 379
    .line 380
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$15;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    .line 385
    .line 386
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->V0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 387
    .line 388
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$16;

    .line 389
    .line 390
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$16;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    .line 395
    .line 396
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->W0:Lcom/mycompany/app/view/MyLineText;

    .line 397
    .line 398
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$17;

    .line 399
    .line 400
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$17;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    .line 405
    .line 406
    new-instance v1, Landroid/view/GestureDetector;

    .line 407
    .line 408
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->e0:Landroid/content/Context;

    .line 409
    .line 410
    new-instance v3, Lcom/mycompany/app/dialog/DialogSeekWeb$18;

    .line 411
    .line 412
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$18;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 413
    .line 414
    .line 415
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 416
    .line 417
    .line 418
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->c1:Landroid/view/GestureDetector;

    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_4

    .line 425
    .line 426
    invoke-virtual {v0, v5}, Lcom/mycompany/app/dialog/DialogSeekWeb;->H(Z)V

    .line 427
    .line 428
    .line 429
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb;->l0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 430
    .line 431
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$19;

    .line 432
    .line 433
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekWeb$19;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 437
    .line 438
    .line 439
    :cond_5
    :goto_1
    return-void
.end method
