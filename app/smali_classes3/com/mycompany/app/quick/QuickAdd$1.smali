.class Lcom/mycompany/app/quick/QuickAdd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickAdd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$1;->c:Lcom/mycompany/app/quick/QuickAdd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/quick/QuickAdd;->X2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd$1;->c:Lcom/mycompany/app/quick/QuickAdd;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 12
    .line 13
    const v2, -0xe19938

    .line 14
    .line 15
    .line 16
    const v3, -0x50506

    .line 17
    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 36
    .line 37
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 41
    .line 42
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay_dark:I

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 67
    .line 68
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    const v4, -0xc0c0c1

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 114
    .line 115
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 116
    .line 117
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    const v4, -0x3e3e3f

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->k2:Lcom/google/android/material/tabs/TabLayout;

    .line 146
    .line 147
    const v4, -0x4f4f50

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 156
    .line 157
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 158
    .line 159
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    const/high16 v4, -0x1000000

    .line 165
    .line 166
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 170
    .line 171
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 172
    .line 173
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 177
    .line 178
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay:I

    .line 179
    .line 180
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 184
    .line 185
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 189
    .line 190
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 191
    .line 192
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 196
    .line 197
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 201
    .line 202
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 203
    .line 204
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 208
    .line 209
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 210
    .line 211
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 215
    .line 216
    const/high16 v5, 0x21000000

    .line 217
    .line 218
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 222
    .line 223
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 227
    .line 228
    const v5, -0x1f1f20

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 240
    .line 241
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 245
    .line 246
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 247
    .line 248
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 252
    .line 253
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 254
    .line 255
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 259
    .line 260
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 261
    .line 262
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 266
    .line 267
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 271
    .line 272
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 276
    .line 277
    const v4, -0x9e9e9f

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    .line 282
    .line 283
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->k2:Lcom/google/android/material/tabs/TabLayout;

    .line 284
    .line 285
    const v4, -0x595616

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 289
    .line 290
    .line 291
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 292
    .line 293
    new-instance v4, Lcom/mycompany/app/quick/QuickAdd$2;

    .line 294
    .line 295
    invoke-direct {v4, v0}, Lcom/mycompany/app/quick/QuickAdd$2;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    .line 300
    .line 301
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->M2:Ljava/lang/String;

    .line 302
    .line 303
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    const/4 v4, 0x1

    .line 308
    if-nez v1, :cond_2

    .line 309
    .line 310
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->N2:Ljava/lang/String;

    .line 311
    .line 312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-nez v1, :cond_2

    .line 317
    .line 318
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 319
    .line 320
    iget-object v5, v0, Lcom/mycompany/app/quick/QuickAdd;->N2:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 326
    .line 327
    const/4 v5, 0x0

    .line 328
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 332
    .line 333
    iget-object v6, v0, Lcom/mycompany/app/quick/QuickAdd;->M2:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 339
    .line 340
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 344
    .line 345
    const/16 v6, 0x8

    .line 346
    .line 347
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 348
    .line 349
    .line 350
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->g2:Lcom/mycompany/app/view/MyRoundLinear;

    .line 351
    .line 352
    invoke-virtual {v1, v4, v4}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 353
    .line 354
    .line 355
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->g2:Lcom/mycompany/app/view/MyRoundLinear;

    .line 356
    .line 357
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 358
    .line 359
    .line 360
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 361
    .line 362
    new-instance v5, Lcom/mycompany/app/quick/QuickAdd$3;

    .line 363
    .line 364
    invoke-direct {v5, v0}, Lcom/mycompany/app/quick/QuickAdd$3;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    .line 369
    .line 370
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 371
    .line 372
    const-string v5, "example.com"

    .line 373
    .line 374
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 378
    .line 379
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 383
    .line 384
    const v5, -0x252526

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 388
    .line 389
    .line 390
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 391
    .line 392
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 396
    .line 397
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 401
    .line 402
    new-instance v4, Lcom/mycompany/app/quick/QuickAdd$4;

    .line 403
    .line 404
    invoke-direct {v4, v0}, Lcom/mycompany/app/quick/QuickAdd$4;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    .line 409
    .line 410
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 411
    .line 412
    if-eqz v1, :cond_3

    .line 413
    .line 414
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 415
    .line 416
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 417
    .line 418
    int-to-float v2, v2

    .line 419
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyLineView;->c(FI)V

    .line 420
    .line 421
    .line 422
    goto :goto_1

    .line 423
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 424
    .line 425
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineView;->setLineColor(I)V

    .line 426
    .line 427
    .line 428
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 429
    .line 430
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$5;

    .line 431
    .line 432
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$5;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    .line 437
    .line 438
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 439
    .line 440
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$6;

    .line 441
    .line 442
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$6;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 446
    .line 447
    .line 448
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 449
    .line 450
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$7;

    .line 451
    .line 452
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$7;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 456
    .line 457
    .line 458
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 459
    .line 460
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$8;

    .line 461
    .line 462
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$8;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    .line 467
    .line 468
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 469
    .line 470
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$9;

    .line 471
    .line 472
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$9;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 476
    .line 477
    .line 478
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 479
    .line 480
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$10;

    .line 481
    .line 482
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$10;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 486
    .line 487
    .line 488
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 489
    .line 490
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$11;

    .line 491
    .line 492
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$11;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 496
    .line 497
    .line 498
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 499
    .line 500
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$12;

    .line 501
    .line 502
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$12;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    .line 507
    .line 508
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 509
    .line 510
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$13;

    .line 511
    .line 512
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$13;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    .line 517
    .line 518
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 519
    .line 520
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$14;

    .line 521
    .line 522
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$14;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    .line 527
    .line 528
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 529
    .line 530
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$15;

    .line 531
    .line 532
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$15;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    .line 537
    .line 538
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->M2:Ljava/lang/String;

    .line 539
    .line 540
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickAdd;->N2:Ljava/lang/String;

    .line 541
    .line 542
    const/16 v3, 0x12

    .line 543
    .line 544
    invoke-virtual {v0, v3, v1, v2}, Lcom/mycompany/app/quick/QuickAdd;->T0(ILjava/lang/String;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 548
    .line 549
    if-nez v1, :cond_4

    .line 550
    .line 551
    :goto_2
    return-void

    .line 552
    :cond_4
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$16;

    .line 553
    .line 554
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$16;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    .line 559
    .line 560
    return-void
.end method
