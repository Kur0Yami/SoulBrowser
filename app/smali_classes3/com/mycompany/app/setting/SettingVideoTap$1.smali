.class Lcom/mycompany/app/setting/SettingVideoTap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoTap;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoTap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoTap$1;->c:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoTap$1;->c:Lcom/mycompany/app/setting/SettingVideoTap;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->I1:Lcom/mycompany/app/view/MyRoundItem;

    .line 98
    .line 99
    const/4 v2, -0x1

    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    const/high16 v2, 0x21000000

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->F1:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoTap$2;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingVideoTap$2;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoTap$3;

    .line 154
    .line 155
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingVideoTap$3;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 162
    .line 163
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoTap$4;

    .line 164
    .line 165
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingVideoTap$4;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

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
    const/4 v2, 0x2

    .line 174
    const/4 v3, 0x3

    .line 175
    if-ge v1, v3, :cond_6

    .line 176
    .line 177
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 178
    .line 179
    if-eqz v3, :cond_3

    .line 180
    .line 181
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 182
    .line 183
    aget-object v3, v3, v1

    .line 184
    .line 185
    invoke-virtual {v3, v7}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 189
    .line 190
    aget-object v3, v3, v1

    .line 191
    .line 192
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 193
    .line 194
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 198
    .line 199
    aget-object v3, v3, v1

    .line 200
    .line 201
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_3
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 206
    .line 207
    aget-object v3, v3, v1

    .line 208
    .line 209
    invoke-virtual {v3, v6}, Lcom/mycompany/app/view/MyLineFrame;->setLineColor(I)V

    .line 210
    .line 211
    .line 212
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 213
    .line 214
    aget-object v3, v3, v1

    .line 215
    .line 216
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 217
    .line 218
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 219
    .line 220
    .line 221
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 222
    .line 223
    aget-object v3, v3, v1

    .line 224
    .line 225
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    .line 227
    .line 228
    :goto_3
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 229
    .line 230
    aget-object v3, v3, v1

    .line 231
    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 240
    .line 241
    aget-object v3, v3, v1

    .line 242
    .line 243
    new-instance v4, Lcom/mycompany/app/setting/SettingVideoTap$5;

    .line 244
    .line 245
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingVideoTap$5;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    if-ge v1, v2, :cond_5

    .line 252
    .line 253
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingVideoTap;->J1:[Lcom/mycompany/app/view/MyLineFrame;

    .line 254
    .line 255
    aget-object v2, v2, v1

    .line 256
    .line 257
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    .line 263
    if-eqz v8, :cond_4

    .line 264
    .line 265
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->S1:[I

    .line 266
    .line 267
    aget v3, v3, v1

    .line 268
    .line 269
    const/4 v4, 0x0

    .line 270
    const/4 v5, 0x1

    .line 271
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingVideoTap;->H0(ILandroid/widget/RelativeLayout$LayoutParams;IZZ)Z

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_4
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingVideoTap;->R1:[I

    .line 276
    .line 277
    aget v3, v3, v1

    .line 278
    .line 279
    const/4 v4, 0x0

    .line 280
    const/4 v5, 0x0

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/setting/SettingVideoTap;->H0(ILandroid/widget/RelativeLayout$LayoutParams;IZZ)Z

    .line 282
    .line 283
    .line 284
    :cond_5
    :goto_4
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingVideoTap;->Q1:[I

    .line 285
    .line 286
    aget v2, v2, v1

    .line 287
    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/setting/SettingVideoTap;->I0(II)V

    .line 289
    .line 290
    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_6
    move v1, v9

    .line 295
    :goto_5
    if-ge v1, v2, :cond_7

    .line 296
    .line 297
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingVideoTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 298
    .line 299
    aget-object v4, v4, v1

    .line 300
    .line 301
    new-instance v5, Lcom/mycompany/app/setting/SettingVideoTap$6;

    .line 302
    .line 303
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    add-int/lit8 v1, v1, 0x1

    .line 310
    .line 311
    goto :goto_5

    .line 312
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 313
    .line 314
    aget-object v1, v1, v9

    .line 315
    .line 316
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_hori:I

    .line 317
    .line 318
    const v4, -0x1e595616

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v4, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 322
    .line 323
    .line 324
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->L1:[Lcom/mycompany/app/view/MyRoundImage;

    .line 325
    .line 326
    const/4 v2, 0x1

    .line 327
    aget-object v1, v1, v2

    .line 328
    .line 329
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_hori:I

    .line 330
    .line 331
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 332
    .line 333
    .line 334
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->l:Z

    .line 335
    .line 336
    if-eqz v1, :cond_9

    .line 337
    .line 338
    :goto_6
    if-ge v9, v3, :cond_8

    .line 339
    .line 340
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->K1:[Lcom/mycompany/app/view/MyLineText;

    .line 341
    .line 342
    aget-object v1, v1, v9

    .line 343
    .line 344
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->setNotiTop(Z)V

    .line 345
    .line 346
    .line 347
    add-int/lit8 v9, v9, 0x1

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoTap;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 351
    .line 352
    new-instance v2, Lcom/mycompany/app/setting/SettingVideoTap$7;

    .line 353
    .line 354
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingVideoTap$7;-><init>(Lcom/mycompany/app/setting/SettingVideoTap;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 358
    .line 359
    .line 360
    :cond_9
    :goto_7
    return-void
.end method
