.class Lcom/mycompany/app/setting/SettingSwipe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSwipe;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSwipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$1;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe$1;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 10
    .line 11
    const/high16 v6, -0x1000000

    .line 12
    .line 13
    const v7, -0x50506

    .line 14
    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_20:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 52
    .line 53
    const v2, -0xdededf

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    const v2, -0xc0c0c1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 103
    .line 104
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 110
    .line 111
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_20:I

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 117
    .line 118
    const/4 v2, -0x1

    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    const/high16 v2, 0x21000000

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 142
    .line 143
    .line 144
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_2

    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    sget v2, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    sget v2, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    .line 164
    .line 165
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 166
    .line 167
    new-instance v2, Lcom/mycompany/app/setting/SettingSwipe$2;

    .line 168
    .line 169
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingSwipe$2;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 176
    .line 177
    new-instance v2, Lcom/mycompany/app/setting/SettingSwipe$3;

    .line 178
    .line 179
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingSwipe$3;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 186
    .line 187
    new-instance v2, Lcom/mycompany/app/setting/SettingSwipe$4;

    .line 188
    .line 189
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingSwipe$4;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 196
    .line 197
    new-instance v2, Lcom/mycompany/app/setting/SettingSwipe$5;

    .line 198
    .line 199
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingSwipe$5;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    const/4 v9, 0x0

    .line 206
    move v1, v9

    .line 207
    :goto_2
    const/4 v2, 0x5

    .line 208
    const/4 v3, 0x4

    .line 209
    if-ge v1, v2, :cond_6

    .line 210
    .line 211
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 212
    .line 213
    if-eqz v2, :cond_3

    .line 214
    .line 215
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 216
    .line 217
    aget-object v2, v2, v1

    .line 218
    .line 219
    invoke-virtual {v2, v7}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 220
    .line 221
    .line 222
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 223
    .line 224
    aget-object v2, v2, v1

    .line 225
    .line 226
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 227
    .line 228
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    .line 230
    .line 231
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 232
    .line 233
    aget-object v2, v2, v1

    .line 234
    .line 235
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 240
    .line 241
    aget-object v2, v2, v1

    .line 242
    .line 243
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 244
    .line 245
    .line 246
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 247
    .line 248
    aget-object v2, v2, v1

    .line 249
    .line 250
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 251
    .line 252
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    .line 254
    .line 255
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 256
    .line 257
    aget-object v2, v2, v1

    .line 258
    .line 259
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    .line 261
    .line 262
    :goto_3
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 263
    .line 264
    aget-object v2, v2, v1

    .line 265
    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 274
    .line 275
    aget-object v2, v2, v1

    .line 276
    .line 277
    new-instance v4, Lcom/mycompany/app/setting/SettingSwipe$6;

    .line 278
    .line 279
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingSwipe$6;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    .line 284
    .line 285
    if-ge v1, v3, :cond_5

    .line 286
    .line 287
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->K1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 288
    .line 289
    aget-object v2, v2, v1

    .line 290
    .line 291
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    if-eqz v8, :cond_4

    .line 296
    .line 297
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingSwipe;->U1:[I

    .line 298
    .line 299
    aget v3, v3, v1

    .line 300
    .line 301
    const/4 v4, 0x0

    .line 302
    const/4 v5, 0x1

    .line 303
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingSwipe;->I0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_4
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingSwipe;->T1:[I

    .line 308
    .line 309
    aget v3, v3, v1

    .line 310
    .line 311
    const/4 v4, 0x0

    .line 312
    const/4 v5, 0x0

    .line 313
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingSwipe;->I0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 314
    .line 315
    .line 316
    :cond_5
    :goto_4
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->S1:[I

    .line 317
    .line 318
    aget v2, v2, v1

    .line 319
    .line 320
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/setting/SettingSwipe;->J0(II)V

    .line 321
    .line 322
    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_6
    move v1, v9

    .line 327
    :goto_5
    if-ge v1, v3, :cond_7

    .line 328
    .line 329
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 330
    .line 331
    aget-object v2, v2, v1

    .line 332
    .line 333
    new-instance v4, Lcom/mycompany/app/setting/SettingSwipe$7;

    .line 334
    .line 335
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    .line 340
    .line 341
    add-int/lit8 v1, v1, 0x1

    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 345
    .line 346
    aget-object v1, v1, v9

    .line 347
    .line 348
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_up:I

    .line 349
    .line 350
    const v3, -0x1e595616

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 357
    .line 358
    const/4 v2, 0x1

    .line 359
    aget-object v1, v1, v2

    .line 360
    .line 361
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_up:I

    .line 362
    .line 363
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 364
    .line 365
    .line 366
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 367
    .line 368
    const/4 v4, 0x2

    .line 369
    aget-object v1, v1, v4

    .line 370
    .line 371
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_hori:I

    .line 372
    .line 373
    invoke-virtual {v1, v3, v5}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 374
    .line 375
    .line 376
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->M1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 377
    .line 378
    const/4 v5, 0x3

    .line 379
    aget-object v1, v1, v5

    .line 380
    .line 381
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_hori:I

    .line 382
    .line 383
    invoke-virtual {v1, v3, v6}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 384
    .line 385
    .line 386
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->x:Z

    .line 387
    .line 388
    if-eqz v1, :cond_8

    .line 389
    .line 390
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 391
    .line 392
    aget-object v1, v1, v4

    .line 393
    .line 394
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->setNotiTop(Z)V

    .line 395
    .line 396
    .line 397
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->L1:[Lcom/mycompany/app/view/MyLineText;

    .line 398
    .line 399
    aget-object v1, v1, v5

    .line 400
    .line 401
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->setNotiTop(Z)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 405
    .line 406
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 410
    .line 411
    new-instance v2, Lcom/mycompany/app/setting/SettingSwipe$8;

    .line 412
    .line 413
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingSwipe$8;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 417
    .line 418
    .line 419
    :cond_8
    :goto_6
    return-void
.end method
