.class Lcom/mycompany/app/dialog/DialogTabMain$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$2;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$2;->c:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    const v2, -0x50506

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_20:I

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 61
    .line 62
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 63
    .line 64
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 65
    .line 66
    invoke-virtual {v1, v4, v5}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 70
    .line 71
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_dark_20:I

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 77
    .line 78
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_dark_20:I

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Z:Lcom/google/android/material/tabs/TabLayout;

    .line 84
    .line 85
    const v4, -0x4f4f50

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 94
    .line 95
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->V:Lcom/mycompany/app/view/MyButtonRelative;

    .line 111
    .line 112
    const v2, -0xc0c0c1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->X:Lcom/mycompany/app/view/MyButtonRelative;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->S:Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    const/high16 v2, -0x1000000

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 154
    .line 155
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_20:I

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 161
    .line 162
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 163
    .line 164
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 165
    .line 166
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 170
    .line 171
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_mood_black_20:I

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 177
    .line 178
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_secret_mode_black_20:I

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Z:Lcom/google/android/material/tabs/TabLayout;

    .line 184
    .line 185
    const v2, -0x595616

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 192
    .line 193
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 199
    .line 200
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 206
    .line 207
    const v2, -0xe19938

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->V:Lcom/mycompany/app/view/MyButtonRelative;

    .line 214
    .line 215
    const/high16 v2, 0x21000000

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->X:Lcom/mycompany/app/view/MyButtonRelative;

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgPreColor(I)V

    .line 223
    .line 224
    .line 225
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 238
    .line 239
    .line 240
    :goto_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 241
    .line 242
    const/high16 v2, 0x3f800000    # 1.0f

    .line 243
    .line 244
    const v4, 0x3ecccccd    # 0.4f

    .line 245
    .line 246
    .line 247
    if-eqz v1, :cond_3

    .line 248
    .line 249
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 250
    .line 251
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->W:Landroid/widget/ImageView;

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Y:Landroid/widget/ImageView;

    .line 266
    .line 267
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 268
    .line 269
    .line 270
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 271
    .line 272
    if-eqz v1, :cond_4

    .line 273
    .line 274
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$3;

    .line 275
    .line 276
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$3;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    :cond_4
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->n:Z

    .line 283
    .line 284
    if-eqz v1, :cond_5

    .line 285
    .line 286
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 287
    .line 288
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 289
    .line 290
    .line 291
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->R:Lcom/mycompany/app/view/MyButtonImage;

    .line 292
    .line 293
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$4;

    .line 294
    .line 295
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$4;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->T:Lcom/mycompany/app/view/MyButtonCheck;

    .line 302
    .line 303
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$5;

    .line 304
    .line 305
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$5;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->e0:Lcom/mycompany/app/view/MyScrollBar;

    .line 312
    .line 313
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$6;

    .line 314
    .line 315
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$6;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 319
    .line 320
    .line 321
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 322
    .line 323
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$7;

    .line 324
    .line 325
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$7;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 332
    .line 333
    const/4 v2, 0x0

    .line 334
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 338
    .line 339
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 340
    .line 341
    if-eqz v2, :cond_6

    .line 342
    .line 343
    const v2, -0x7f7f80

    .line 344
    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_6
    const v2, -0x252526

    .line 348
    .line 349
    .line 350
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    .line 352
    .line 353
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 354
    .line 355
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$8;

    .line 356
    .line 357
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$8;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    .line 362
    .line 363
    new-instance v1, Landroid/view/GestureDetector;

    .line 364
    .line 365
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 366
    .line 367
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMain$9;

    .line 368
    .line 369
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogTabMain$9;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 370
    .line 371
    .line 372
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 373
    .line 374
    .line 375
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->B0:Landroid/view/GestureDetector;

    .line 376
    .line 377
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->V:Lcom/mycompany/app/view/MyButtonRelative;

    .line 378
    .line 379
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$10;

    .line 380
    .line 381
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$10;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    .line 386
    .line 387
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->X:Lcom/mycompany/app/view/MyButtonRelative;

    .line 388
    .line 389
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$11;

    .line 390
    .line 391
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$11;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    .line 396
    .line 397
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->O:Lcom/mycompany/app/view/MyMainRelative;

    .line 398
    .line 399
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabMain$12;

    .line 400
    .line 401
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabMain$12;-><init>(Lcom/mycompany/app/dialog/DialogTabMain;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogNormal;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 405
    .line 406
    .line 407
    :cond_7
    :goto_3
    return-void
.end method
