.class Lcom/mycompany/app/setting/SettingImageTap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingImageTap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingImageTap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingImageTap$1;->c:Lcom/mycompany/app/setting/SettingImageTap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingImageTap$1;->c:Lcom/mycompany/app/setting/SettingImageTap;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_8

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 45
    .line 46
    const v2, -0xdededf

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    const v2, -0xc0c0c1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 98
    .line 99
    const/4 v2, -0x1

    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    const/high16 v2, 0x21000000

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_2

    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    sget v2, Lnet/kaki87/soul2/testing/R$string;->view_land:I

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    sget v2, Lnet/kaki87/soul2/testing/R$string;->view_port:I

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    .line 140
    .line 141
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    new-instance v2, Lcom/mycompany/app/setting/SettingImageTap$2;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingImageTap$2;-><init>(Lcom/mycompany/app/setting/SettingImageTap;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    new-instance v2, Lcom/mycompany/app/setting/SettingImageTap$3;

    .line 154
    .line 155
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingImageTap$3;-><init>(Lcom/mycompany/app/setting/SettingImageTap;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 162
    .line 163
    new-instance v2, Lcom/mycompany/app/setting/SettingImageTap$4;

    .line 164
    .line 165
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingImageTap$4;-><init>(Lcom/mycompany/app/setting/SettingImageTap;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    const/4 v9, 0x0

    .line 172
    move v1, v9

    .line 173
    :goto_2
    const/4 v2, 0x3

    .line 174
    const/4 v3, 0x2

    .line 175
    if-ge v1, v2, :cond_7

    .line 176
    .line 177
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 178
    .line 179
    if-eqz v2, :cond_3

    .line 180
    .line 181
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 182
    .line 183
    aget-object v2, v2, v1

    .line 184
    .line 185
    invoke-virtual {v2, v7}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 189
    .line 190
    aget-object v2, v2, v1

    .line 191
    .line 192
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 197
    .line 198
    aget-object v2, v2, v1

    .line 199
    .line 200
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 201
    .line 202
    .line 203
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 204
    .line 205
    aget-object v2, v2, v1

    .line 206
    .line 207
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    :goto_3
    if-ge v1, v3, :cond_6

    .line 211
    .line 212
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 213
    .line 214
    if-eqz v2, :cond_4

    .line 215
    .line 216
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 217
    .line 218
    aget-object v2, v2, v1

    .line 219
    .line 220
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 221
    .line 222
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 227
    .line 228
    aget-object v2, v2, v1

    .line 229
    .line 230
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 231
    .line 232
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 233
    .line 234
    .line 235
    :goto_4
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 236
    .line 237
    aget-object v2, v2, v1

    .line 238
    .line 239
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 247
    .line 248
    aget-object v2, v2, v1

    .line 249
    .line 250
    new-instance v3, Lcom/mycompany/app/setting/SettingImageTap$5;

    .line 251
    .line 252
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingImageTap$5;-><init>(Lcom/mycompany/app/setting/SettingImageTap;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 259
    .line 260
    aget-object v2, v2, v1

    .line 261
    .line 262
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    if-eqz v8, :cond_5

    .line 267
    .line 268
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingImageTap;->S1:[I

    .line 269
    .line 270
    aget v3, v3, v1

    .line 271
    .line 272
    const/4 v4, 0x0

    .line 273
    const/4 v5, 0x1

    .line 274
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingImageTap;->H0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_5
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingImageTap;->R1:[I

    .line 279
    .line 280
    aget v3, v3, v1

    .line 281
    .line 282
    const/4 v4, 0x0

    .line 283
    const/4 v5, 0x0

    .line 284
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingImageTap;->H0(ILandroid/view/ViewGroup$LayoutParams;IZZ)Z

    .line 285
    .line 286
    .line 287
    :cond_6
    :goto_5
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->Q1:[I

    .line 288
    .line 289
    aget v2, v2, v1

    .line 290
    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/setting/SettingImageTap;->I0(II)V

    .line 292
    .line 293
    .line 294
    add-int/lit8 v1, v1, 0x1

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 298
    .line 299
    aget-object v1, v1, v3

    .line 300
    .line 301
    const/16 v2, 0x8

    .line 302
    .line 303
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    .line 305
    .line 306
    move v1, v9

    .line 307
    :goto_6
    if-ge v1, v3, :cond_8

    .line 308
    .line 309
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingImageTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 310
    .line 311
    aget-object v2, v2, v1

    .line 312
    .line 313
    new-instance v4, Lcom/mycompany/app/setting/SettingImageTap$6;

    .line 314
    .line 315
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    add-int/lit8 v1, v1, 0x1

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 325
    .line 326
    aget-object v1, v1, v9

    .line 327
    .line 328
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_hori:I

    .line 329
    .line 330
    const v4, -0x1e595616

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v4, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 334
    .line 335
    .line 336
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 337
    .line 338
    const/4 v2, 0x1

    .line 339
    aget-object v1, v1, v2

    .line 340
    .line 341
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_hori:I

    .line 342
    .line 343
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 344
    .line 345
    .line 346
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->j:Z

    .line 347
    .line 348
    if-eqz v1, :cond_a

    .line 349
    .line 350
    :goto_7
    if-ge v9, v3, :cond_9

    .line 351
    .line 352
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 353
    .line 354
    aget-object v1, v1, v9

    .line 355
    .line 356
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->setNotiTop(Z)V

    .line 357
    .line 358
    .line 359
    add-int/lit8 v9, v9, 0x1

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingImageTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 363
    .line 364
    new-instance v2, Lcom/mycompany/app/setting/SettingImageTap$7;

    .line 365
    .line 366
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingImageTap$7;-><init>(Lcom/mycompany/app/setting/SettingImageTap;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 370
    .line 371
    .line 372
    :cond_a
    :goto_8
    return-void
.end method
